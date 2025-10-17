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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::TaxSettings
  # An API client for Aws::TaxSettings.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::TaxSettings

    add_plugin(::Aws::TaxSettings::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::TaxSettings::EndpointProvider)
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

    # <p>Deletes tax registration for multiple accounts in batch. This can be used to delete tax
    #       registrations for up to five accounts in one batch. </p>
    #          <note>
    #             <p>This API operation can't be used to delete your tax registration in Brazil. Use the <a href="https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods">Payment preferences</a> page in the Billing and Cost Management console instead.</p>
    #          </note>
    # @param [Hash, Types::BatchDeleteTaxRegistrationRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>List of unique account identifiers. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         message: "ErrorMessage", # required
    #         code: "ErrorCode"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteTaxRegistrationResponse]
    def batch_delete_tax_registration(params = {}, options = {})
      request = build_request(:batch_delete_tax_registration, params)
      request.send_request(options)
    end

    # <p>Get the active tax exemptions for a given list of accounts. The IAM action is <code>tax:GetExemptions</code>.
    #     </p>
    # @param [Hash, Types::BatchGetTaxExemptionsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>
    #         List of unique account identifiers.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_tax_exemptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tax_exemption_details_map: {
    #       "AccountId" => {
    #         tax_exemptions: [
    #           {
    #             authority: { # required
    #               country: "CountryCode", # required
    #               state: "State"
    #             },
    #             tax_exemption_type: { # required
    #               display_name: "DisplayName",
    #               description: "GenericString",
    #               applicable_jurisdictions: [
    #                 {
    #                   country: "CountryCode", # required
    #                   state: "State"
    #                 }
    #               ]
    #             },
    #             effective_date: Time.now,
    #             expiration_date: Time.now,
    #             system_effective_date: Time.now,
    #             status: "None" # One of: ["None", "Valid", "Expired", "Pending"]
    #           }
    #         ],
    #         heritage_obtained_details: false,
    #         heritage_obtained_parent_entity: "GenericString",
    #         heritage_obtained_reason: "GenericString"
    #       }
    #     },
    #     failed_accounts: ["AccountId"]
    #   }
    # @return [Types::BatchGetTaxExemptionsResponse]
    def batch_get_tax_exemptions(params = {}, options = {})
      request = build_request(:batch_get_tax_exemptions, params)
      request.send_request(options)
    end

    # <p>Adds or updates tax registration for multiple accounts in batch. This can be used to add
    #       or update tax registrations for up to five accounts in one batch. You can't set a TRN if there's a pending TRN. You'll need to delete the pending TRN first.</p>
    #          <p>To call this API operation for specific countries, see the following country-specific
    #       requirements.</p>
    #          <p>
    #             <b>Bangladesh</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the tax registration certificate document in the
    #             <code>taxRegistrationDocuments</code> field of the <code>VerificationDetails</code>
    #           object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Brazil</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must complete the tax registration process in the <a href="https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods">Payment preferences</a> page in the Billing and Cost Management console. After your TRN and billing address are verified, you can call this API operation.</p>
    #             </li>
    #             <li>
    #                <p>For Amazon Web Services accounts created through Organizations, you can call this API operation when you don't have a billing address.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Georgia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The valid <code>personType</code> values are <code>Physical Person</code> and <code>Business</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Indonesia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PutTaxRegistration</code>: The use of this operation to submit tax information is subject to the <a href="http://aws.amazon.com/service-terms/">Amazon Web Services service terms</a>. By submitting, you’re providing consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided by you with the Directorate General of Taxes of Indonesia in accordance with the Minister of Finance Regulation (PMK) Number 112/PMK.03/2022.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BatchPutTaxRegistration</code>: The use of this operation to submit tax information is subject to the <a href="http://aws.amazon.com/service-terms/">Amazon Web Services service terms</a>. By submitting, you’re providing consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided by you with the Directorate General of Taxes of Indonesia in accordance with the Minister of Finance Regulation (PMK) Number 112/PMK.03/2022, through our third-party partner PT Achilles Advanced Management (OnlinePajak).</p>
    #             </li>
    #             <li>
    #                <p>You must specify the <code>taxRegistrationNumberType</code> in the <code>indonesiaAdditionalInfo</code> field of the <code>additionalTaxInformation</code> object.</p>
    #             </li>
    #             <li>
    #                <p>If you specify <code>decisionNumber</code>, you must specify the <code>ppnExceptionDesignationCode</code> in the <code>indonesiaAdditionalInfo</code> field of the <code>additionalTaxInformation</code> object. If the <code>taxRegistrationNumberType</code> is set to NPWP or NITKU, valid values for <code>ppnExceptionDesignationCode</code> are either <code>01</code>, <code>02</code>, <code>03</code>, <code>07</code>, or <code>08</code>.</p>
    #                <p>For other <code>taxRegistrationNumberType</code> values, <code>ppnExceptionDesignationCode</code> must be either <code>01</code>, <code>07</code>, or <code>08</code>.</p>
    #             </li>
    #             <li>
    #                <p>If <code>ppnExceptionDesignationCode</code> is <code>07</code>, you must specify the <code>decisionNumber</code> in the <code>indonesiaAdditionalInfo</code> field of the <code>additionalTaxInformation</code> object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Kenya</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>personType</code> in the <code>kenyaAdditionalInfo</code>
    #           field of the <code>additionalTaxInformation</code> object.</p>
    #             </li>
    #             <li>
    #                <p>If the <code>personType</code> is <code>Physical Person</code>, you must specify the
    #           tax registration certificate document in the <code>taxRegistrationDocuments</code> field
    #           of the <code>VerificationDetails</code> object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Malaysia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The sector valid values are <code>Business</code> and <code>Individual</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RegistrationType</code> valid values are <code>NRIC</code> for individual, and TIN and sales and service tax (SST) for Business.</p>
    #             </li>
    #             <li>
    #                <p>For individual, you can specify the <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with NRIC type, and a valid <code>MyKad</code> or NRIC number.</p>
    #             </li>
    #             <li>
    #                <p>For business, you must specify a <code>businessRegistrationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a TIN type and tax identification number.</p>
    #             </li>
    #             <li>
    #                <p>For business resellers, you must specify a <code>businessRegistrationNumber</code> and <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a sales and service tax (SST) type and a valid SST number.</p>
    #             </li>
    #             <li>
    #                <p>For business resellers with service codes, you must specify <code>businessRegistrationNumber</code>, <code>taxInformationNumber</code>, and distinct <code>serviceTaxCodes</code> in <code>MalaysiaAdditionalInfo</code> with a SST type and valid sales and service tax (SST) number. By using this API operation, Amazon Web Services registers your self-declaration that you’re an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD), and have a valid SST number.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services reserves the right to seek additional information and/or take other actions to
    #           support your self-declaration as appropriate.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services is currently registered under the following service tax codes. You must include
    #           at least one of the service tax codes in the service tax code strings to declare yourself
    #           as an authorized registered business reseller.</p>
    #                <p>Taxable service and service tax codes:</p>
    #                <p>Consultancy - 9907061674</p>
    #                <p>Training or coaching service - 9907071685</p>
    #                <p>IT service - 9907101676</p>
    #                <p>Digital services and electronic medium - 9907121690</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Nepal</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The sector valid values are <code>Business</code> and <code>Individual</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Saudi Arabia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For <code>address</code>, you must specify <code>addressLine3</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>South Korea</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>certifiedEmailId</code> and <code>legalName</code> in the
    #             <code>TaxRegistrationEntry</code> object. Use Korean characters for
    #             <code>legalName</code>.</p>
    #             </li>
    #             <li>
    #                <p>You must specify the <code>businessRepresentativeName</code>,
    #             <code>itemOfBusiness</code>, and <code>lineOfBusiness</code> in the
    #             <code>southKoreaAdditionalInfo</code> field of the <code>additionalTaxInformation</code>
    #           object. Use Korean characters for these fields.</p>
    #             </li>
    #             <li>
    #                <p>You must specify the tax registration certificate document in the
    #             <code>taxRegistrationDocuments</code> field of the <code>VerificationDetails</code>
    #           object.</p>
    #             </li>
    #             <li>
    #                <p>For the <code>address</code> object, use Korean characters for <code>addressLine1</code>, <code>addressLine2</code>
    #                   <code>city</code>, <code>postalCode</code>, and <code>stateOrRegion</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Spain</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>registrationType</code> in the
    #             <code>spainAdditionalInfo</code> field of the <code>additionalTaxInformation</code>
    #           object.</p>
    #             </li>
    #             <li>
    #                <p>If the <code>registrationType</code> is <code>Local</code>, you must specify the tax
    #           registration certificate document in the <code>taxRegistrationDocuments</code> field of
    #           the <code>VerificationDetails</code> object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Turkey</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>sector</code> in the <code>taxRegistrationEntry</code> object.</p>
    #             </li>
    #             <li>
    #                <p>If your <code>sector</code> is <code>Business</code>, <code>Individual</code>, or
    #           <code>Government</code>:</p>
    #                <ul>
    #                   <li>
    #                      <p>Specify the <code>taxOffice</code>. If your
    #                 <code>sector</code> is <code>Individual</code>, don't enter this value.</p>
    #                   </li>
    #                   <li>
    #                      <p>(Optional) Specify the <code>kepEmailId</code>. If your
    #                 <code>sector</code> is <code>Individual</code>, don't enter this value.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Note:</b> In the  <b>Tax Settings</b> page of the Billing console, <code>Government</code> appears as <b>Public institutions</b>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>If your <code>sector</code> is <code>Business</code> and you're subject to KDV tax,
    #           you must specify your industry in the <code>industries</code> field.</p>
    #             </li>
    #             <li>
    #                <p>For <code>address</code>, you must specify <code>districtOrCounty</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Ukraine</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The sector valid values are <code>Business</code> and <code>Individual</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::BatchPutTaxRegistrationRequest] params
    # @option params [Array<String>] :account_ids
    #   <p> List of unique account identifiers.</p>
    # @option params [Types::TaxRegistrationEntry] :tax_registration_entry
    #   <p>Your TRN information that will be stored to the accounts mentioned in
    #           <code>putEntries</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #     tax_registration_entry: { # required
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT" # One of: ["VAT", "GST", "CPF", "CNPJ", "SST", "TIN", "NRIC"], # required
    #       legal_name: "LegalName",
    #       legal_address: {
    #         address_line1: "AddressLine1", # required
    #         address_line2: "AddressLine2",
    #         address_line3: "AddressLine3",
    #         district_or_county: "District",
    #         city: "City", # required
    #         state_or_region: "State",
    #         postal_code: "PostalCode", # required
    #         country_code: "CountryCode", # required
    #       },
    #       sector: "Business" # One of: ["Business", "Individual", "Government"],
    #       additional_tax_information: {
    #         malaysia_additional_info: {
    #           service_tax_codes: ["Consultancy" # One of: ["Consultancy", "Digital Service And Electronic Medium", "IT Services", "Training Or Coaching"]],
    #           tax_information_number: "TaxInformationNumber",
    #           business_registration_number: "BusinessRegistrationNumber"
    #         },
    #         israel_additional_info: {
    #           dealer_type: "Authorized" # One of: ["Authorized", "Non-authorized"], # required
    #           customer_type: "Business" # One of: ["Business", "Individual"], # required
    #         },
    #         estonia_additional_info: {
    #           registry_commercial_code: "RegistryCommercialCode", # required
    #         },
    #         canada_additional_info: {
    #           provincial_sales_tax_id: "CanadaProvincialSalesTaxIdString",
    #           canada_quebec_sales_tax_number: "CanadaQuebecSalesTaxNumberString",
    #           canada_retail_sales_tax_number: "CanadaRetailSalesTaxNumberString",
    #           is_reseller_account: false
    #         },
    #         spain_additional_info: {
    #           registration_type: "Intra-EU" # One of: ["Intra-EU", "Local"], # required
    #         },
    #         kenya_additional_info: {
    #           person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #         },
    #         south_korea_additional_info: {
    #           business_representative_name: "BusinessRepresentativeName", # required
    #           line_of_business: "LineOfBusiness", # required
    #           item_of_business: "ItemOfBusiness", # required
    #         },
    #         turkey_additional_info: {
    #           tax_office: "TaxOffice",
    #           kep_email_id: "KepEmailId",
    #           secondary_tax_id: "SecondaryTaxId",
    #           industries: "CirculatingOrg" # One of: ["CirculatingOrg", "ProfessionalOrg", "Banks", "Insurance", "PensionAndBenefitFunds", "DevelopmentAgencies"]
    #         },
    #         georgia_additional_info: {
    #           person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #         },
    #         italy_additional_info: {
    #           sdi_account_id: "SdiAccountId",
    #           cig_number: "CigNumber",
    #           cup_number: "CupNumber",
    #           tax_code: "TaxCode"
    #         },
    #         romania_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "LocalRegistrationNumber"], # required
    #         },
    #         ukraine_additional_info: {
    #           ukraine_trn_type: "Business" # One of: ["Business", "Individual"], # required
    #         },
    #         poland_additional_info: {
    #           individual_registration_number: "IndividualRegistrationNumber",
    #           is_group_vat_enabled: false
    #         },
    #         saudi_arabia_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "TaxIdentificationNumber", "CommercialRegistrationNumber"]
    #         },
    #         indonesia_additional_info: {
    #           tax_registration_number_type: "NIK" # One of: ["NIK", "PassportNumber", "NPWP", "NITKU"],
    #           ppn_exception_designation_code: "PpnExceptionDesignationCode",
    #           decision_number: "DecisionNumber"
    #         },
    #         vietnam_additional_info: {
    #           enterprise_identification_number: "EnterpriseIdentificationNumber",
    #           electronic_transaction_code_number: "ElectronicTransactionCodeNumber",
    #           payment_voucher_number: "PaymentVoucherNumber",
    #           payment_voucher_number_date: "DateString"
    #         },
    #         egypt_additional_info: {
    #           unique_identification_number: "UniqueIdentificationNumber",
    #           unique_identification_number_expiration_date: "DateString"
    #         },
    #         greece_additional_info: {
    #           contracting_authority_code: "ContractingAuthorityCode"
    #         },
    #         uzbekistan_additional_info: {
    #           tax_registration_number_type: "Business" # One of: ["Business", "Individual"],
    #           vat_registration_number: "VatRegistrationNumber"
    #         }
    #       },
    #       verification_details: {
    #         date_of_birth: "DateOfBirth",
    #         tax_registration_documents: [
    #           {
    #             s3_location: {
    #               bucket: "S3BucketName", # required
    #               key: "S3Key", # required
    #             },
    #             file: {
    #               file_name: "TaxDocumentName", # required
    #               file_content: "data", # required
    #             }
    #           }
    #         ]
    #       },
    #       certified_email_id: "CertifiedEmailId"
    #     }
    #   }
    #   options = {}
    #   response = client.batch_put_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Verified" # One of: ["Verified", "Pending", "Deleted", "Rejected"],
    #     errors: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         message: "ErrorMessage", # required
    #         code: "ErrorCode"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutTaxRegistrationResponse]
    def batch_put_tax_registration(params = {}, options = {})
      request = build_request(:batch_put_tax_registration, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a supplemental tax registration for a single account.
    #     </p>
    # @param [Hash, Types::DeleteSupplementalTaxRegistrationRequest] params
    # @option params [String] :authority_id
    #   <p>
    #         The unique authority Id for the supplemental TRN information that needs to be deleted.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authority_id: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_supplemental_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSupplementalTaxRegistrationResponse]
    def delete_supplemental_tax_registration(params = {}, options = {})
      request = build_request(:delete_supplemental_tax_registration, params)
      request.send_request(options)
    end

    # <p>Deletes tax registration for a single account. </p>
    #          <note>
    #             <p>This API operation can't be used to delete your tax registration in Brazil. Use the <a href="https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods">Payment preferences</a> page in the Billing and Cost Management console instead.</p>
    #          </note>
    # @param [Hash, Types::DeleteTaxRegistrationRequest] params
    # @option params [String] :account_id
    #   <p>Unique account identifier for the TRN information that needs to be deleted. If this isn't
    #         passed, the account ID corresponding to the credentials of the API caller will be used for
    #         this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTaxRegistrationResponse]
    def delete_tax_registration(params = {}, options = {})
      request = build_request(:delete_tax_registration, params)
      request.send_request(options)
    end

    # <p>Get supported tax exemption types. The IAM action is <code>tax:GetExemptions</code>.
    #     </p>
    # @param [Hash, Types::GetTaxExemptionTypesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_tax_exemption_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tax_exemption_types: [
    #       {
    #         display_name: "DisplayName",
    #         description: "GenericString",
    #         applicable_jurisdictions: [
    #           {
    #             country: "CountryCode", # required
    #             state: "State"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetTaxExemptionTypesResponse]
    def get_tax_exemption_types(params = {}, options = {})
      request = build_request(:get_tax_exemption_types, params)
      request.send_request(options)
    end

    # <p>The get account tax inheritance status.
    #     </p>
    # @param [Hash, Types::GetTaxInheritanceRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_tax_inheritance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     heritage_status: "OptIn" # One of: ["OptIn", "OptOut"]
    #   }
    # @return [Types::GetTaxInheritanceResponse]
    def get_tax_inheritance(params = {}, options = {})
      request = build_request(:get_tax_inheritance, params)
      request.send_request(options)
    end

    # <p>Retrieves tax registration for a single account.</p>
    # @param [Hash, Types::GetTaxRegistrationRequest] params
    # @option params [String] :account_id
    #   <p>Your unique account identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tax_registration: {
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT" # One of: ["VAT", "GST", "CPF", "CNPJ", "SST", "TIN", "NRIC"], # required
    #       legal_name: "LegalName", # required
    #       status: "Verified" # One of: ["Verified", "Pending", "Deleted", "Rejected"], # required
    #       sector: "Business" # One of: ["Business", "Individual", "Government"],
    #       tax_document_metadatas: [
    #         {
    #           tax_document_access_token: "TaxDocumentAccessToken", # required
    #           tax_document_name: "TaxDocumentName", # required
    #         }
    #       ],
    #       certified_email_id: "CertifiedEmailId",
    #       additional_tax_information: {
    #         malaysia_additional_info: {
    #           service_tax_codes: ["Consultancy" # One of: ["Consultancy", "Digital Service And Electronic Medium", "IT Services", "Training Or Coaching"]],
    #           tax_information_number: "TaxInformationNumber",
    #           business_registration_number: "BusinessRegistrationNumber"
    #         },
    #         israel_additional_info: {
    #           dealer_type: "Authorized" # One of: ["Authorized", "Non-authorized"], # required
    #           customer_type: "Business" # One of: ["Business", "Individual"], # required
    #         },
    #         estonia_additional_info: {
    #           registry_commercial_code: "RegistryCommercialCode", # required
    #         },
    #         canada_additional_info: {
    #           provincial_sales_tax_id: "CanadaProvincialSalesTaxIdString",
    #           canada_quebec_sales_tax_number: "CanadaQuebecSalesTaxNumberString",
    #           canada_retail_sales_tax_number: "CanadaRetailSalesTaxNumberString",
    #           is_reseller_account: false
    #         },
    #         brazil_additional_info: {
    #           ccm_code: "CcmCode",
    #           legal_nature_code: "LegalNatureCode"
    #         },
    #         spain_additional_info: {
    #           registration_type: "Intra-EU" # One of: ["Intra-EU", "Local"], # required
    #         },
    #         kenya_additional_info: {
    #           person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #         },
    #         south_korea_additional_info: {
    #           business_representative_name: "BusinessRepresentativeName", # required
    #           line_of_business: "LineOfBusiness", # required
    #           item_of_business: "ItemOfBusiness", # required
    #         },
    #         turkey_additional_info: {
    #           tax_office: "TaxOffice",
    #           kep_email_id: "KepEmailId",
    #           secondary_tax_id: "SecondaryTaxId",
    #           industries: "CirculatingOrg" # One of: ["CirculatingOrg", "ProfessionalOrg", "Banks", "Insurance", "PensionAndBenefitFunds", "DevelopmentAgencies"]
    #         },
    #         georgia_additional_info: {
    #           person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #         },
    #         italy_additional_info: {
    #           sdi_account_id: "SdiAccountId",
    #           cig_number: "CigNumber",
    #           cup_number: "CupNumber",
    #           tax_code: "TaxCode"
    #         },
    #         romania_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "LocalRegistrationNumber"], # required
    #         },
    #         ukraine_additional_info: {
    #           ukraine_trn_type: "Business" # One of: ["Business", "Individual"], # required
    #         },
    #         poland_additional_info: {
    #           individual_registration_number: "IndividualRegistrationNumber",
    #           is_group_vat_enabled: false
    #         },
    #         saudi_arabia_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "TaxIdentificationNumber", "CommercialRegistrationNumber"]
    #         },
    #         india_additional_info: {
    #           pan: "Pan"
    #         },
    #         indonesia_additional_info: {
    #           tax_registration_number_type: "NIK" # One of: ["NIK", "PassportNumber", "NPWP", "NITKU"],
    #           ppn_exception_designation_code: "PpnExceptionDesignationCode",
    #           decision_number: "DecisionNumber"
    #         },
    #         vietnam_additional_info: {
    #           enterprise_identification_number: "EnterpriseIdentificationNumber",
    #           electronic_transaction_code_number: "ElectronicTransactionCodeNumber",
    #           payment_voucher_number: "PaymentVoucherNumber",
    #           payment_voucher_number_date: "DateString"
    #         },
    #         egypt_additional_info: {
    #           unique_identification_number: "UniqueIdentificationNumber",
    #           unique_identification_number_expiration_date: "DateString"
    #         },
    #         greece_additional_info: {
    #           contracting_authority_code: "ContractingAuthorityCode"
    #         },
    #         uzbekistan_additional_info: {
    #           tax_registration_number_type: "Business" # One of: ["Business", "Individual"],
    #           vat_registration_number: "VatRegistrationNumber"
    #         }
    #       },
    #       legal_address: { # required
    #         address_line1: "AddressLine1", # required
    #         address_line2: "AddressLine2",
    #         address_line3: "AddressLine3",
    #         district_or_county: "District",
    #         city: "City", # required
    #         state_or_region: "State",
    #         postal_code: "PostalCode", # required
    #         country_code: "CountryCode", # required
    #       }
    #     }
    #   }
    # @return [Types::GetTaxRegistrationResponse]
    def get_tax_registration(params = {}, options = {})
      request = build_request(:get_tax_registration, params)
      request.send_request(options)
    end

    # <p>Downloads your tax documents to the Amazon S3 bucket that you specify in your
    #       request.</p>
    # @param [Hash, Types::GetTaxRegistrationDocumentRequest] params
    # @option params [Types::DestinationS3Location] :destination_s3_location
    #   <p>The Amazon S3 bucket that you specify to download your tax documents to.</p>
    # @option params [Types::TaxDocumentMetadata] :tax_document_metadata
    #   <p>The metadata for your tax document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_s3_location: {
    #       bucket: "S3BucketName", # required
    #       prefix: "S3Prefix"
    #     },
    #     tax_document_metadata: { # required
    #       tax_document_access_token: "TaxDocumentAccessToken", # required
    #       tax_document_name: "TaxDocumentName", # required
    #     }
    #   }
    #   options = {}
    #   response = client.get_tax_registration_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_file_path: "DestinationFilePath",
    #     presigned_s3_url: "Url"
    #   }
    # @return [Types::GetTaxRegistrationDocumentResponse]
    def get_tax_registration_document(params = {}, options = {})
      request = build_request(:get_tax_registration_document, params)
      request.send_request(options)
    end

    # <p>
    #       Retrieves supplemental tax registrations for a single account.
    #     </p>
    # @param [Hash, Types::ListSupplementalTaxRegistrationsRequest] params
    # @option params [Integer] :max_results
    #   <p>
    #         The number of <code>taxRegistrations</code> results you want in one response.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token to retrieve the next set of results. 
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationTokenString"
    #   }
    #   options = {}
    #   response = client.list_supplemental_tax_registrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tax_registrations: [ # required
    #       {
    #         registration_id: "RegistrationId", # required
    #         registration_type: "VAT" # One of: ["VAT"], # required
    #         legal_name: "LegalName", # required
    #         address: { # required
    #           address_line1: "AddressLine1", # required
    #           address_line2: "AddressLine2",
    #           address_line3: "AddressLine3",
    #           district_or_county: "District",
    #           city: "City", # required
    #           state_or_region: "State",
    #           postal_code: "PostalCode", # required
    #           country_code: "CountryCode", # required
    #         },
    #         authority_id: "GenericString", # required
    #         status: "Verified" # One of: ["Verified", "Pending", "Deleted", "Rejected"], # required
    #       }
    #     ],
    #     next_token: "PaginationTokenString"
    #   }
    # @return [Types::ListSupplementalTaxRegistrationsResponse]
    def list_supplemental_tax_registrations(params = {}, options = {})
      request = build_request(:list_supplemental_tax_registrations, params)
      request.send_request(options)
    end

    # <p>Retrieves the tax exemption of accounts listed in a consolidated billing family. The IAM action is <code>tax:GetExemptions</code>.</p>
    # @param [Hash, Types::ListTaxExemptionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The number of results you want in one response.
    #       </p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationTokenString"
    #   }
    #   options = {}
    #   response = client.list_tax_exemptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationTokenString",
    #     tax_exemption_details_map: {
    #       "AccountId" => {
    #         tax_exemptions: [
    #           {
    #             authority: { # required
    #               country: "CountryCode", # required
    #               state: "State"
    #             },
    #             tax_exemption_type: { # required
    #               display_name: "DisplayName",
    #               description: "GenericString",
    #               applicable_jurisdictions: [
    #                 {
    #                   country: "CountryCode", # required
    #                   state: "State"
    #                 }
    #               ]
    #             },
    #             effective_date: Time.now,
    #             expiration_date: Time.now,
    #             system_effective_date: Time.now,
    #             status: "None" # One of: ["None", "Valid", "Expired", "Pending"]
    #           }
    #         ],
    #         heritage_obtained_details: false,
    #         heritage_obtained_parent_entity: "GenericString",
    #         heritage_obtained_reason: "GenericString"
    #       }
    #     }
    #   }
    # @return [Types::ListTaxExemptionsResponse]
    def list_tax_exemptions(params = {}, options = {})
      request = build_request(:list_tax_exemptions, params)
      request.send_request(options)
    end

    # <p>Retrieves the tax registration of accounts listed in a consolidated billing family. This
    #       can be used to retrieve up to 100 accounts' tax registrations in one call (default 50).
    #     </p>
    # @param [Hash, Types::ListTaxRegistrationsRequest] params
    # @option params [Integer] :max_results
    #   <p>Number of <code>accountDetails</code> results you want in one response. </p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationTokenString"
    #   }
    #   options = {}
    #   response = client.list_tax_registrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId",
    #         tax_registration: {
    #           registration_id: "RegistrationId", # required
    #           registration_type: "VAT" # One of: ["VAT", "GST", "CPF", "CNPJ", "SST", "TIN", "NRIC"], # required
    #           legal_name: "LegalName", # required
    #           status: "Verified" # One of: ["Verified", "Pending", "Deleted", "Rejected"], # required
    #           sector: "Business" # One of: ["Business", "Individual", "Government"],
    #           tax_document_metadatas: [
    #             {
    #               tax_document_access_token: "TaxDocumentAccessToken", # required
    #               tax_document_name: "TaxDocumentName", # required
    #             }
    #           ],
    #           certified_email_id: "CertifiedEmailId",
    #           additional_tax_information: {
    #             malaysia_additional_info: {
    #               service_tax_codes: ["Consultancy" # One of: ["Consultancy", "Digital Service And Electronic Medium", "IT Services", "Training Or Coaching"]],
    #               tax_information_number: "TaxInformationNumber",
    #               business_registration_number: "BusinessRegistrationNumber"
    #             },
    #             israel_additional_info: {
    #               dealer_type: "Authorized" # One of: ["Authorized", "Non-authorized"], # required
    #               customer_type: "Business" # One of: ["Business", "Individual"], # required
    #             },
    #             estonia_additional_info: {
    #               registry_commercial_code: "RegistryCommercialCode", # required
    #             },
    #             canada_additional_info: {
    #               provincial_sales_tax_id: "CanadaProvincialSalesTaxIdString",
    #               canada_quebec_sales_tax_number: "CanadaQuebecSalesTaxNumberString",
    #               canada_retail_sales_tax_number: "CanadaRetailSalesTaxNumberString",
    #               is_reseller_account: false
    #             },
    #             brazil_additional_info: {
    #               ccm_code: "CcmCode",
    #               legal_nature_code: "LegalNatureCode"
    #             },
    #             spain_additional_info: {
    #               registration_type: "Intra-EU" # One of: ["Intra-EU", "Local"], # required
    #             },
    #             kenya_additional_info: {
    #               person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #             },
    #             south_korea_additional_info: {
    #               business_representative_name: "BusinessRepresentativeName", # required
    #               line_of_business: "LineOfBusiness", # required
    #               item_of_business: "ItemOfBusiness", # required
    #             },
    #             turkey_additional_info: {
    #               tax_office: "TaxOffice",
    #               kep_email_id: "KepEmailId",
    #               secondary_tax_id: "SecondaryTaxId",
    #               industries: "CirculatingOrg" # One of: ["CirculatingOrg", "ProfessionalOrg", "Banks", "Insurance", "PensionAndBenefitFunds", "DevelopmentAgencies"]
    #             },
    #             georgia_additional_info: {
    #               person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #             },
    #             italy_additional_info: {
    #               sdi_account_id: "SdiAccountId",
    #               cig_number: "CigNumber",
    #               cup_number: "CupNumber",
    #               tax_code: "TaxCode"
    #             },
    #             romania_additional_info: {
    #               tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "LocalRegistrationNumber"], # required
    #             },
    #             ukraine_additional_info: {
    #               ukraine_trn_type: "Business" # One of: ["Business", "Individual"], # required
    #             },
    #             poland_additional_info: {
    #               individual_registration_number: "IndividualRegistrationNumber",
    #               is_group_vat_enabled: false
    #             },
    #             saudi_arabia_additional_info: {
    #               tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "TaxIdentificationNumber", "CommercialRegistrationNumber"]
    #             },
    #             india_additional_info: {
    #               pan: "Pan"
    #             },
    #             indonesia_additional_info: {
    #               tax_registration_number_type: "NIK" # One of: ["NIK", "PassportNumber", "NPWP", "NITKU"],
    #               ppn_exception_designation_code: "PpnExceptionDesignationCode",
    #               decision_number: "DecisionNumber"
    #             },
    #             vietnam_additional_info: {
    #               enterprise_identification_number: "EnterpriseIdentificationNumber",
    #               electronic_transaction_code_number: "ElectronicTransactionCodeNumber",
    #               payment_voucher_number: "PaymentVoucherNumber",
    #               payment_voucher_number_date: "DateString"
    #             },
    #             egypt_additional_info: {
    #               unique_identification_number: "UniqueIdentificationNumber",
    #               unique_identification_number_expiration_date: "DateString"
    #             },
    #             greece_additional_info: {
    #               contracting_authority_code: "ContractingAuthorityCode"
    #             },
    #             uzbekistan_additional_info: {
    #               tax_registration_number_type: "Business" # One of: ["Business", "Individual"],
    #               vat_registration_number: "VatRegistrationNumber"
    #             }
    #           },
    #           jurisdiction: { # required
    #             state_or_region: "State",
    #             country_code: "CountryCode", # required
    #           }
    #         },
    #         tax_inheritance_details: {
    #           parent_entity_id: "AccountId",
    #           inheritance_obtained_reason: "InheritanceObtainedReason"
    #         },
    #         account_meta_data: {
    #           account_name: "AccountName",
    #           seller: "Seller",
    #           address: {
    #             address_line1: "AddressLine1", # required
    #             address_line2: "AddressLine2",
    #             address_line3: "AddressLine3",
    #             district_or_county: "District",
    #             city: "City", # required
    #             state_or_region: "State",
    #             postal_code: "PostalCode", # required
    #             country_code: "CountryCode", # required
    #           },
    #           address_type: "TaxAddress" # One of: ["TaxAddress", "BillingAddress", "ContactAddress"],
    #           address_role_map: {
    #             "AddressRoleType" => {
    #               state_or_region: "State",
    #               country_code: "CountryCode", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationTokenString"
    #   }
    # @return [Types::ListTaxRegistrationsResponse]
    def list_tax_registrations(params = {}, options = {})
      request = build_request(:list_tax_registrations, params)
      request.send_request(options)
    end

    # <p>
    #       Stores supplemental tax registration for a single account.
    #     </p>
    # @param [Hash, Types::PutSupplementalTaxRegistrationRequest] params
    # @option params [Types::SupplementalTaxRegistrationEntry] :tax_registration_entry
    #   <p>
    #         The supplemental TRN information that will be stored for the caller account ID.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tax_registration_entry: { # required
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT" # One of: ["VAT"], # required
    #       legal_name: "LegalName", # required
    #       address: { # required
    #         address_line1: "AddressLine1", # required
    #         address_line2: "AddressLine2",
    #         address_line3: "AddressLine3",
    #         district_or_county: "District",
    #         city: "City", # required
    #         state_or_region: "State",
    #         postal_code: "PostalCode", # required
    #         country_code: "CountryCode", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_supplemental_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authority_id: "GenericString", # required
    #     status: "Verified" # One of: ["Verified", "Pending", "Deleted", "Rejected"], # required
    #   }
    # @return [Types::PutSupplementalTaxRegistrationResponse]
    def put_supplemental_tax_registration(params = {}, options = {})
      request = build_request(:put_supplemental_tax_registration, params)
      request.send_request(options)
    end

    # <p>Adds the tax exemption for a single account or all accounts listed in a consolidated billing family. The IAM action is <code>tax:UpdateExemptions</code>.
    #     </p>
    # @param [Hash, Types::PutTaxExemptionRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>
    #         The list of unique account identifiers.
    #       </p>
    # @option params [Types::Authority] :authority
    #   <p>The address domain associate with the tax information.
    #       </p>
    # @option params [String] :exemption_type
    #   <p>The exemption type. Use the supported tax exemption type description.
    #       </p>
    # @option params [Types::ExemptionCertificate] :exemption_certificate
    #   <p>The exemption certificate.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #     authority: { # required
    #       country: "CountryCode", # required
    #       state: "State"
    #     },
    #     exemption_type: "GenericString", # required
    #     exemption_certificate: { # required
    #       document_name: "ExemptionDocumentName", # required
    #       document_file: "data", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_tax_exemption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     case_id: "GenericString"
    #   }
    # @return [Types::PutTaxExemptionResponse]
    def put_tax_exemption(params = {}, options = {})
      request = build_request(:put_tax_exemption, params)
      request.send_request(options)
    end

    # <p>The updated tax inheritance status.
    #     </p>
    # @param [Hash, Types::PutTaxInheritanceRequest] params
    # @option params [String] :heritage_status
    #   <p>The tax inheritance status.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     heritage_status: "OptIn" # One of: ["OptIn", "OptOut"]
    #   }
    #   options = {}
    #   response = client.put_tax_inheritance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutTaxInheritanceResponse]
    def put_tax_inheritance(params = {}, options = {})
      request = build_request(:put_tax_inheritance, params)
      request.send_request(options)
    end

    # <p>Adds or updates tax registration for a single account. You can't set a TRN if there's a pending TRN. You'll need to delete the pending TRN first.</p>
    #          <p>To call this API operation for specific countries, see the following country-specific
    #       requirements.</p>
    #          <p>
    #             <b>Bangladesh</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the tax registration certificate document in the
    #             <code>taxRegistrationDocuments</code> field of the <code>VerificationDetails</code>
    #           object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Brazil</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must complete the tax registration process in the <a href="https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods">Payment preferences</a> page in the Billing and Cost Management console. After your TRN and billing address are verified, you can call this API operation.</p>
    #             </li>
    #             <li>
    #                <p>For Amazon Web Services accounts created through Organizations, you can call this API operation when you don't have a billing address.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Georgia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The valid <code>personType</code> values are <code>Physical Person</code> and <code>Business</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Indonesia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PutTaxRegistration</code>: The use of this operation to submit tax information is subject to the <a href="http://aws.amazon.com/service-terms/">Amazon Web Services service terms</a>. By submitting, you’re providing consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided by you with the Directorate General of Taxes of Indonesia in accordance with the Minister of Finance Regulation (PMK) Number 112/PMK.03/2022.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>BatchPutTaxRegistration</code>: The use of this operation to submit tax information is subject to the <a href="http://aws.amazon.com/service-terms/">Amazon Web Services service terms</a>. By submitting, you’re providing consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided by you with the Directorate General of Taxes of Indonesia in accordance with the Minister of Finance Regulation (PMK) Number 112/PMK.03/2022, through our third-party partner PT Achilles Advanced Management (OnlinePajak).</p>
    #             </li>
    #             <li>
    #                <p>You must specify the <code>taxRegistrationNumberType</code> in the <code>indonesiaAdditionalInfo</code> field of the <code>additionalTaxInformation</code> object.</p>
    #             </li>
    #             <li>
    #                <p>If you specify <code>decisionNumber</code>, you must specify the <code>ppnExceptionDesignationCode</code> in the <code>indonesiaAdditionalInfo</code> field of the <code>additionalTaxInformation</code> object. If the <code>taxRegistrationNumberType</code> is set to NPWP or NITKU, valid values for <code>ppnExceptionDesignationCode</code> are either <code>01</code>, <code>02</code>, <code>03</code>, <code>07</code>, or <code>08</code>.</p>
    #                <p>For other <code>taxRegistrationNumberType</code> values, <code>ppnExceptionDesignationCode</code> must be either <code>01</code>, <code>07</code>, or <code>08</code>.</p>
    #             </li>
    #             <li>
    #                <p>If <code>ppnExceptionDesignationCode</code> is <code>07</code>, you must specify the <code>decisionNumber</code> in the <code>indonesiaAdditionalInfo</code> field of the <code>additionalTaxInformation</code> object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Kenya</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>personType</code> in the <code>kenyaAdditionalInfo</code>
    #           field of the <code>additionalTaxInformation</code> object.</p>
    #             </li>
    #             <li>
    #                <p>If the <code>personType</code> is <code>Physical Person</code>, you must specify the
    #           tax registration certificate document in the <code>taxRegistrationDocuments</code> field
    #           of the <code>VerificationDetails</code> object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Malaysia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The sector valid values are <code>Business</code> and <code>Individual</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RegistrationType</code> valid values are <code>NRIC</code> for individual, and TIN and sales and service tax (SST) for Business.</p>
    #             </li>
    #             <li>
    #                <p>For individual, you can specify the <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with NRIC type, and a valid <code>MyKad</code> or NRIC number.</p>
    #             </li>
    #             <li>
    #                <p>For business, you must specify a <code>businessRegistrationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a TIN type and tax identification number.</p>
    #             </li>
    #             <li>
    #                <p>For business resellers, you must specify a <code>businessRegistrationNumber</code> and <code>taxInformationNumber</code> in <code>MalaysiaAdditionalInfo</code> with a sales and service tax (SST) type and a valid SST number.</p>
    #             </li>
    #             <li>
    #                <p>For business resellers with service codes, you must specify <code>businessRegistrationNumber</code>, <code>taxInformationNumber</code>, and distinct <code>serviceTaxCodes</code> in <code>MalaysiaAdditionalInfo</code> with a SST type and valid sales and service tax (SST) number. By using this API operation, Amazon Web Services registers your self-declaration that you’re an authorized business reseller registered with the Royal Malaysia Customs Department (RMCD), and have a valid SST number.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services reserves the right to seek additional information and/or take other actions to
    #           support your self-declaration as appropriate.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services is currently registered under the following service tax codes. You must include
    #           at least one of the service tax codes in the service tax code strings to declare yourself
    #           as an authorized registered business reseller.</p>
    #                <p>Taxable service and service tax codes:</p>
    #                <p>Consultancy - 9907061674</p>
    #                <p>Training or coaching service - 9907071685</p>
    #                <p>IT service - 9907101676</p>
    #                <p>Digital services and electronic medium - 9907121690</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Nepal</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The sector valid values are <code>Business</code> and <code>Individual</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Saudi Arabia</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For <code>address</code>, you must specify <code>addressLine3</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>South Korea</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>certifiedEmailId</code> and <code>legalName</code> in the
    #             <code>TaxRegistrationEntry</code> object. Use Korean characters for
    #             <code>legalName</code>.</p>
    #             </li>
    #             <li>
    #                <p>You must specify the <code>businessRepresentativeName</code>,
    #             <code>itemOfBusiness</code>, and <code>lineOfBusiness</code> in the
    #             <code>southKoreaAdditionalInfo</code> field of the <code>additionalTaxInformation</code>
    #           object. Use Korean characters for these fields.</p>
    #             </li>
    #             <li>
    #                <p>You must specify the tax registration certificate document in the
    #             <code>taxRegistrationDocuments</code> field of the <code>VerificationDetails</code>
    #           object.</p>
    #             </li>
    #             <li>
    #                <p>For the <code>address</code> object, use Korean characters for <code>addressLine1</code>, <code>addressLine2</code>
    #                   <code>city</code>, <code>postalCode</code>, and <code>stateOrRegion</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Spain</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>registrationType</code> in the
    #             <code>spainAdditionalInfo</code> field of the <code>additionalTaxInformation</code>
    #           object.</p>
    #             </li>
    #             <li>
    #                <p>If the <code>registrationType</code> is <code>Local</code>, you must specify the tax
    #           registration certificate document in the <code>taxRegistrationDocuments</code> field of
    #           the <code>VerificationDetails</code> object.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Turkey</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>You must specify the <code>sector</code> in the <code>taxRegistrationEntry</code> object.</p>
    #             </li>
    #             <li>
    #                <p>If your <code>sector</code> is <code>Business</code>, <code>Individual</code>, or
    #           <code>Government</code>:</p>
    #                <ul>
    #                   <li>
    #                      <p>Specify the <code>taxOffice</code>. If your
    #                 <code>sector</code> is <code>Individual</code>, don't enter this value.</p>
    #                   </li>
    #                   <li>
    #                      <p>(Optional) Specify the <code>kepEmailId</code>. If your
    #                 <code>sector</code> is <code>Individual</code>, don't enter this value.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Note:</b> In the  <b>Tax Settings</b> page of the Billing console, <code>Government</code> appears as <b>Public institutions</b>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>If your <code>sector</code> is <code>Business</code> and you're subject to KDV tax,
    #           you must specify your industry in the <code>industries</code> field.</p>
    #             </li>
    #             <li>
    #                <p>For <code>address</code>, you must specify <code>districtOrCounty</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Ukraine</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>The sector valid values are <code>Business</code> and <code>Individual</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutTaxRegistrationRequest] params
    # @option params [String] :account_id
    #   <p>Your unique account identifier. </p>
    # @option params [Types::TaxRegistrationEntry] :tax_registration_entry
    #   <p> Your TRN information that will be stored to the account mentioned in
    #           <code>accountId</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     tax_registration_entry: { # required
    #       registration_id: "RegistrationId", # required
    #       registration_type: "VAT" # One of: ["VAT", "GST", "CPF", "CNPJ", "SST", "TIN", "NRIC"], # required
    #       legal_name: "LegalName",
    #       legal_address: {
    #         address_line1: "AddressLine1", # required
    #         address_line2: "AddressLine2",
    #         address_line3: "AddressLine3",
    #         district_or_county: "District",
    #         city: "City", # required
    #         state_or_region: "State",
    #         postal_code: "PostalCode", # required
    #         country_code: "CountryCode", # required
    #       },
    #       sector: "Business" # One of: ["Business", "Individual", "Government"],
    #       additional_tax_information: {
    #         malaysia_additional_info: {
    #           service_tax_codes: ["Consultancy" # One of: ["Consultancy", "Digital Service And Electronic Medium", "IT Services", "Training Or Coaching"]],
    #           tax_information_number: "TaxInformationNumber",
    #           business_registration_number: "BusinessRegistrationNumber"
    #         },
    #         israel_additional_info: {
    #           dealer_type: "Authorized" # One of: ["Authorized", "Non-authorized"], # required
    #           customer_type: "Business" # One of: ["Business", "Individual"], # required
    #         },
    #         estonia_additional_info: {
    #           registry_commercial_code: "RegistryCommercialCode", # required
    #         },
    #         canada_additional_info: {
    #           provincial_sales_tax_id: "CanadaProvincialSalesTaxIdString",
    #           canada_quebec_sales_tax_number: "CanadaQuebecSalesTaxNumberString",
    #           canada_retail_sales_tax_number: "CanadaRetailSalesTaxNumberString",
    #           is_reseller_account: false
    #         },
    #         spain_additional_info: {
    #           registration_type: "Intra-EU" # One of: ["Intra-EU", "Local"], # required
    #         },
    #         kenya_additional_info: {
    #           person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #         },
    #         south_korea_additional_info: {
    #           business_representative_name: "BusinessRepresentativeName", # required
    #           line_of_business: "LineOfBusiness", # required
    #           item_of_business: "ItemOfBusiness", # required
    #         },
    #         turkey_additional_info: {
    #           tax_office: "TaxOffice",
    #           kep_email_id: "KepEmailId",
    #           secondary_tax_id: "SecondaryTaxId",
    #           industries: "CirculatingOrg" # One of: ["CirculatingOrg", "ProfessionalOrg", "Banks", "Insurance", "PensionAndBenefitFunds", "DevelopmentAgencies"]
    #         },
    #         georgia_additional_info: {
    #           person_type: "Legal Person" # One of: ["Legal Person", "Physical Person", "Business"], # required
    #         },
    #         italy_additional_info: {
    #           sdi_account_id: "SdiAccountId",
    #           cig_number: "CigNumber",
    #           cup_number: "CupNumber",
    #           tax_code: "TaxCode"
    #         },
    #         romania_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "LocalRegistrationNumber"], # required
    #         },
    #         ukraine_additional_info: {
    #           ukraine_trn_type: "Business" # One of: ["Business", "Individual"], # required
    #         },
    #         poland_additional_info: {
    #           individual_registration_number: "IndividualRegistrationNumber",
    #           is_group_vat_enabled: false
    #         },
    #         saudi_arabia_additional_info: {
    #           tax_registration_number_type: "TaxRegistrationNumber" # One of: ["TaxRegistrationNumber", "TaxIdentificationNumber", "CommercialRegistrationNumber"]
    #         },
    #         indonesia_additional_info: {
    #           tax_registration_number_type: "NIK" # One of: ["NIK", "PassportNumber", "NPWP", "NITKU"],
    #           ppn_exception_designation_code: "PpnExceptionDesignationCode",
    #           decision_number: "DecisionNumber"
    #         },
    #         vietnam_additional_info: {
    #           enterprise_identification_number: "EnterpriseIdentificationNumber",
    #           electronic_transaction_code_number: "ElectronicTransactionCodeNumber",
    #           payment_voucher_number: "PaymentVoucherNumber",
    #           payment_voucher_number_date: "DateString"
    #         },
    #         egypt_additional_info: {
    #           unique_identification_number: "UniqueIdentificationNumber",
    #           unique_identification_number_expiration_date: "DateString"
    #         },
    #         greece_additional_info: {
    #           contracting_authority_code: "ContractingAuthorityCode"
    #         },
    #         uzbekistan_additional_info: {
    #           tax_registration_number_type: "Business" # One of: ["Business", "Individual"],
    #           vat_registration_number: "VatRegistrationNumber"
    #         }
    #       },
    #       verification_details: {
    #         date_of_birth: "DateOfBirth",
    #         tax_registration_documents: [
    #           {
    #             s3_location: {
    #               bucket: "S3BucketName", # required
    #               key: "S3Key", # required
    #             },
    #             file: {
    #               file_name: "TaxDocumentName", # required
    #               file_content: "data", # required
    #             }
    #           }
    #         ]
    #       },
    #       certified_email_id: "CertifiedEmailId"
    #     }
    #   }
    #   options = {}
    #   response = client.put_tax_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Verified" # One of: ["Verified", "Pending", "Deleted", "Rejected"]
    #   }
    # @return [Types::PutTaxRegistrationResponse]
    def put_tax_registration(params = {}, options = {})
      request = build_request(:put_tax_registration, params)
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
      context[:gem_name] = 'aws-sdk-taxsettings'
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
