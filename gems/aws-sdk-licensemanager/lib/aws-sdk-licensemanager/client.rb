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

module Aws::LicenseManager
  # An API client for Aws::LicenseManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSLicenseManager

    add_plugin(::Aws::LicenseManager::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LicenseManager::EndpointProvider)
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

    # <p>Accepts the specified grant.</p>
    # @param [Hash, Types::AcceptGrantRequest] params
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.accept_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_arn: "Arn",
    #     status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"],
    #     version: "String"
    #   }
    # @return [Types::AcceptGrantResponse]
    def accept_grant(params = {}, options = {})
      request = build_request(:accept_grant, params)
      request.send_request(options)
    end

    # <p>Checks in the specified license. Check in a license when it is no longer in use.</p>
    # @param [Hash, Types::CheckInLicenseRequest] params
    # @option params [String] :license_consumption_token
    #   <p>License consumption token.</p>
    # @option params [String] :beneficiary
    #   <p>License beneficiary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_consumption_token: "String", # required
    #     beneficiary: "String"
    #   }
    #   options = {}
    #   response = client.check_in_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CheckInLicenseResponse]
    def check_in_license(params = {}, options = {})
      request = build_request(:check_in_license, params)
      request.send_request(options)
    end

    # <p>Checks out the specified license for offline use.</p>
    # @param [Hash, Types::CheckoutBorrowLicenseRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license. The license must use the borrow consumption configuration.</p>
    # @option params [Array<Types::EntitlementData>] :entitlements
    #   <p>License entitlements. Partial checkouts are not supported.</p>
    # @option params [String] :digital_signature_method
    #   <p>Digital signature method. The possible value is JSON Web Signature (JWS) algorithm PS384.
    #            For more information, see <a href="https://tools.ietf.org/html/rfc7518#section-3.5">RFC 7518 Digital Signature with RSASSA-PSS</a>.</p>
    # @option params [String] :node_id
    #   <p>Node ID.</p>
    # @option params [Array<Types::Metadata>] :checkout_metadata
    #   <p>Information about constraints.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #       }
    #     ],
    #     digital_signature_method: "JWT_PS384" # One of: ["JWT_PS384"], # required
    #     node_id: "String",
    #     checkout_metadata: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ],
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.checkout_borrow_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_arn: "Arn",
    #     license_consumption_token: "String",
    #     entitlements_allowed: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #       }
    #     ],
    #     node_id: "String",
    #     signed_token: "SignedToken",
    #     issued_at: "ISO8601DateTime",
    #     expiration: "ISO8601DateTime",
    #     checkout_metadata: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CheckoutBorrowLicenseResponse]
    def checkout_borrow_license(params = {}, options = {})
      request = build_request(:checkout_borrow_license, params)
      request.send_request(options)
    end

    # <p>Checks out the specified license.</p>
    #          <note>
    #             <p>If the account that created the license is the same that is performing the check out, you must
    #             specify the account as the beneficiary.</p>
    #          </note>
    # @param [Hash, Types::CheckoutLicenseRequest] params
    # @option params [String] :product_sku
    #   <p>Product SKU.</p>
    # @option params [String] :checkout_type
    #   <p>Checkout type.</p>
    # @option params [String] :key_fingerprint
    #   <p>Key fingerprint identifying the license.</p>
    # @option params [Array<Types::EntitlementData>] :entitlements
    #   <p>License entitlements.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :beneficiary
    #   <p>License beneficiary.</p>
    # @option params [String] :node_id
    #   <p>Node ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_sku: "String", # required
    #     checkout_type: "PROVISIONAL" # One of: ["PROVISIONAL", "PERPETUAL"], # required
    #     key_fingerprint: "String", # required
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #       }
    #     ],
    #     client_token: "ClientToken", # required
    #     beneficiary: "String",
    #     node_id: "String"
    #   }
    #   options = {}
    #   response = client.checkout_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checkout_type: "PROVISIONAL" # One of: ["PROVISIONAL", "PERPETUAL"],
    #     license_consumption_token: "String",
    #     entitlements_allowed: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #       }
    #     ],
    #     signed_token: "SignedToken",
    #     node_id: "String",
    #     issued_at: "ISO8601DateTime",
    #     expiration: "ISO8601DateTime",
    #     license_arn: "String"
    #   }
    # @return [Types::CheckoutLicenseResponse]
    def checkout_license(params = {}, options = {})
      request = build_request(:checkout_license, params)
      request.send_request(options)
    end

    # <p>Creates a grant for the specified license. A grant shares the use of license
    #          entitlements with a specific Amazon Web Services account, an organization, or an
    #          organizational unit (OU). For more information, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html">Granted licenses in License Manager</a> in the <i>License Manager User Guide</i>.</p>
    # @param [Hash, Types::CreateGrantRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :grant_name
    #   <p>Grant name.</p>
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    # @option params [Array<String>] :principals
    #   <p>The grant principals. You can specify one of the following as an Amazon Resource Name
    #            (ARN):</p>
    #            <ul>
    #               <li>
    #                  <p>An Amazon Web Services account, which includes only the account specified.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>An organizational unit (OU), which includes all accounts in the OU.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>An organization, which will include all accounts across your organization.</p>
    #               </li>
    #            </ul>
    # @option params [String] :home_region
    #   <p>Home Region of the grant.</p>
    # @option params [Array<String>] :allowed_operations
    #   <p>Allowed operations for the grant.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to add to the grant. For more information about tagging support in
    #            License Manager, see the <a href="https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     grant_name: "String", # required
    #     license_arn: "Arn", # required
    #     principals: ["Arn"], # required
    #     home_region: "String", # required
    #     allowed_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_arn: "Arn",
    #     status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"],
    #     version: "String"
    #   }
    # @return [Types::CreateGrantResponse]
    def create_grant(params = {}, options = {})
      request = build_request(:create_grant, params)
      request.send_request(options)
    end

    # <p>Creates a new version of the specified grant. For more information, see
    #          <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html">Granted licenses in License Manager</a> in the <i>License Manager User Guide</i>.</p>
    # @param [Hash, Types::CreateGrantVersionRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    # @option params [String] :grant_name
    #   <p>Grant name.</p>
    # @option params [Array<String>] :allowed_operations
    #   <p>Allowed operations for the grant.</p>
    # @option params [String] :status
    #   <p>Grant status.</p>
    # @option params [String] :status_reason
    #   <p>Grant status reason.</p>
    # @option params [String] :source_version
    #   <p>Current version of the grant.</p>
    # @option params [Types::Options] :options
    #   <p>The options specified for the grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     grant_arn: "Arn", # required
    #     grant_name: "String",
    #     allowed_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]],
    #     status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"],
    #     status_reason: "StatusReasonMessage",
    #     source_version: "String",
    #     options: {
    #       activation_override_behavior: "DISTRIBUTED_GRANTS_ONLY" # One of: ["DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_grant_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_arn: "Arn",
    #     status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"],
    #     version: "String"
    #   }
    # @return [Types::CreateGrantVersionResponse]
    def create_grant_version(params = {}, options = {})
      request = build_request(:create_grant_version, params)
      request.send_request(options)
    end

    # <p>Creates a license.</p>
    # @param [Hash, Types::CreateLicenseRequest] params
    # @option params [String] :license_name
    #   <p>License name.</p>
    # @option params [String] :product_name
    #   <p>Product name.</p>
    # @option params [String] :product_sku
    #   <p>Product SKU.</p>
    # @option params [Types::Issuer] :issuer
    #   <p>License issuer.</p>
    # @option params [String] :home_region
    #   <p>Home Region for the license.</p>
    # @option params [Types::DatetimeRange] :validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    # @option params [Array<Types::Entitlement>] :entitlements
    #   <p>License entitlements.</p>
    # @option params [String] :beneficiary
    #   <p>License beneficiary.</p>
    # @option params [Types::ConsumptionConfiguration] :consumption_configuration
    #   <p>Configuration for consumption of the license. Choose a provisional configuration for workloads
    #             running with continuous connectivity. Choose a borrow configuration for workloads with offline
    #             usage.</p>
    # @option params [Array<Types::Metadata>] :license_metadata
    #   <p>Information about the license.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to add to the license. For more information about tagging support in
    #            License Manager, see the <a href="https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_name: "String", # required
    #     product_name: "String", # required
    #     product_sku: "String", # required
    #     issuer: { # required
    #       name: "String", # required
    #       sign_key: "String"
    #     },
    #     home_region: "String", # required
    #     validity: { # required
    #       begin: "ISO8601DateTime", # required
    #       end: "ISO8601DateTime"
    #     },
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         max_count: 1,
    #         overage: false,
    #         unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #         allow_check_in: false
    #       }
    #     ],
    #     beneficiary: "String", # required
    #     consumption_configuration: { # required
    #       renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #       provisional_configuration: {
    #         max_time_to_live_in_minutes: 1, # required
    #       },
    #       borrow_configuration: {
    #         allow_early_check_in: false, # required
    #         max_time_to_live_in_minutes: 1, # required
    #       }
    #     },
    #     license_metadata: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ],
    #     client_token: "ClientToken", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_arn: "Arn",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"],
    #     version: "String"
    #   }
    # @return [Types::CreateLicenseResponse]
    def create_license(params = {}, options = {})
      request = build_request(:create_license, params)
      request.send_request(options)
    end

    # <p>Creates a license configuration.</p>
    #          <p>A license configuration is an abstraction of a customer license agreement that can be
    #          consumed and enforced by License Manager. Components include specifications for the license
    #          type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, 
    #          Dedicated Instance, Dedicated Host, or all of these), license affinity  to host (how long a 
    #          license must be associated with a host), and the number of licenses purchased and used.</p>
    # @param [Hash, Types::CreateLicenseConfigurationRequest] params
    # @option params [String] :name
    #   <p>Name of the license configuration.</p>
    # @option params [String] :description
    #   <p>Description of the license configuration.</p>
    # @option params [String] :license_counting_type
    #   <p>Dimension used to track the license inventory.</p>
    # @option params [Integer] :license_count
    #   <p>Number of licenses managed by the license configuration.</p>
    # @option params [Boolean] :license_count_hard_limit
    #   <p>Indicates whether hard or soft license enforcement is used. Exceeding a hard limit
    #            blocks the launch of new instances.</p>
    # @option params [Array<String>] :license_rules
    #   <p>License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules 
    #            vary by dimension, as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cores</code> dimension: <code>allowedTenancy</code> |
    #                  <code>licenseAffinityToHost</code> |
    #                  <code>maximumCores</code> | <code>minimumCores</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Instances</code> dimension: <code>allowedTenancy</code> | 
    #                  <code>maximumVcpus</code> | <code>minimumVcpus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sockets</code> dimension: <code>allowedTenancy</code> | 
    #                  <code>licenseAffinityToHost</code> |
    #                  <code>maximumSockets</code> | <code>minimumSockets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vCPUs</code> dimension: <code>allowedTenancy</code> | 
    #                  <code>honorVcpuOptimization</code> | 
    #                  <code>maximumVcpus</code> | <code>minimumVcpus</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The unit for <code>licenseAffinityToHost</code> is days and the range is 1 to 180. The possible 
    #            values for <code>allowedTenancy</code> are <code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and 
    #            <code>EC2-DedicatedInstance</code>. The possible values for <code>honorVcpuOptimization</code> are 
    #            <code>True</code> and <code>False</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to add to the license configuration.</p>
    # @option params [Boolean] :disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    # @option params [Array<Types::ProductInformation>] :product_information_list
    #   <p>Product information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "String",
    #     license_counting_type: "vCPU" # One of: ["vCPU", "Instance", "Core", "Socket"], # required
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     license_rules: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     disassociate_when_not_found: false,
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"],
    #             product_information_filter_comparator: "String", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_license_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_configuration_arn: "String"
    #   }
    # @return [Types::CreateLicenseConfigurationResponse]
    def create_license_configuration(params = {}, options = {})
      request = build_request(:create_license_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new license conversion task.</p>
    # @param [Hash, Types::CreateLicenseConversionTaskForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource you are converting the license type for.</p>
    # @option params [Types::LicenseConversionContext] :source_license_context
    #   <p>Information that identifies the license type you are converting from. 
    #   
    #            For the structure of the source license, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli">Convert a license type using the CLI </a> in the <i>License Manager User Guide</i>.</p>
    # @option params [Types::LicenseConversionContext] :destination_license_context
    #   <p>Information that identifies the license type you are converting to. For the structure of the destination license, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli">Convert a license type using the CLI </a> in the <i>License Manager User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     source_license_context: { # required
    #       usage_operation: "UsageOperation",
    #       product_codes: [
    #         {
    #           product_code_id: "ProductCodeId", # required
    #           product_code_type: "marketplace" # One of: ["marketplace"], # required
    #         }
    #       ]
    #     },
    #     destination_license_context: { # required
    #       usage_operation: "UsageOperation",
    #       product_codes: [
    #         {
    #           product_code_id: "ProductCodeId", # required
    #           product_code_type: "marketplace" # One of: ["marketplace"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_license_conversion_task_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_conversion_task_id: "LicenseConversionTaskId"
    #   }
    # @return [Types::CreateLicenseConversionTaskForResourceResponse]
    def create_license_conversion_task_for_resource(params = {}, options = {})
      request = build_request(:create_license_conversion_task_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a report generator.</p>
    # @param [Hash, Types::CreateLicenseManagerReportGeneratorRequest] params
    # @option params [String] :report_generator_name
    #   <p>Name of the report generator.</p>
    # @option params [Array<String>] :type
    #   <p>Type of reports to generate. The following report types an be generated:</p>
    #            <ul>
    #               <li>
    #                  <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ReportContext] :report_context
    #   <p>Defines the type of license configuration the report generator tracks.</p>
    # @option params [Types::ReportFrequency] :report_frequency
    #   <p>Frequency by which reports are generated.  Reports can be generated daily, monthly, or weekly.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>Description of the report generator.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to add to the report generator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_generator_name: "ReportGeneratorName", # required
    #     type: ["LicenseConfigurationSummaryReport" # One of: ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]], # required
    #     report_context: { # required
    #       license_configuration_arns: ["Arn"], # required
    #     },
    #     report_frequency: { # required
    #       value: 1,
    #       period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #     },
    #     client_token: "ClientRequestToken", # required
    #     description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_license_manager_report_generator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_manager_report_generator_arn: "String"
    #   }
    # @return [Types::CreateLicenseManagerReportGeneratorResponse]
    def create_license_manager_report_generator(params = {}, options = {})
      request = build_request(:create_license_manager_report_generator, params)
      request.send_request(options)
    end

    # <p>Creates a new version of the specified license.</p>
    # @param [Hash, Types::CreateLicenseVersionRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    # @option params [String] :license_name
    #   <p>License name.</p>
    # @option params [String] :product_name
    #   <p>Product name.</p>
    # @option params [Types::Issuer] :issuer
    #   <p>License issuer.</p>
    # @option params [String] :home_region
    #   <p>Home Region of the license.</p>
    # @option params [Types::DatetimeRange] :validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    # @option params [Array<Types::Metadata>] :license_metadata
    #   <p>Information about the license.</p>
    # @option params [Array<Types::Entitlement>] :entitlements
    #   <p>License entitlements.</p>
    # @option params [Types::ConsumptionConfiguration] :consumption_configuration
    #   <p>Configuration for consumption of the license. Choose a provisional configuration for workloads
    #            running with continuous connectivity. Choose a borrow configuration for workloads with offline
    #            usage.</p>
    # @option params [String] :status
    #   <p>License status.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :source_version
    #   <p>Current version of the license.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     license_name: "String", # required
    #     product_name: "String", # required
    #     issuer: { # required
    #       name: "String", # required
    #       sign_key: "String"
    #     },
    #     home_region: "String", # required
    #     validity: { # required
    #       begin: "ISO8601DateTime", # required
    #       end: "ISO8601DateTime"
    #     },
    #     license_metadata: [
    #       {
    #         name: "String",
    #         value: "String"
    #       }
    #     ],
    #     entitlements: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         max_count: 1,
    #         overage: false,
    #         unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #         allow_check_in: false
    #       }
    #     ],
    #     consumption_configuration: { # required
    #       renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #       provisional_configuration: {
    #         max_time_to_live_in_minutes: 1, # required
    #       },
    #       borrow_configuration: {
    #         allow_early_check_in: false, # required
    #         max_time_to_live_in_minutes: 1, # required
    #       }
    #     },
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"], # required
    #     client_token: "ClientToken", # required
    #     source_version: "String"
    #   }
    #   options = {}
    #   response = client.create_license_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_arn: "Arn",
    #     version: "String",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #   }
    # @return [Types::CreateLicenseVersionResponse]
    def create_license_version(params = {}, options = {})
      request = build_request(:create_license_version, params)
      request.send_request(options)
    end

    # <p>Creates a long-lived token.</p>
    #          <p>A refresh token is a JWT token used to get an access token. With an access token,
    #           you can call AssumeRoleWithWebIdentity to get role credentials that you can use to 
    #           call License Manager to manage the specified license.</p>
    # @param [Hash, Types::CreateTokenRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud claim of the
    #             JWT token.</p>
    # @option params [Array<String>] :role_arns
    #   <p>Amazon Resource Name (ARN) of the IAM roles to embed in the token. 
    #            License Manager does not check whether the roles are in use.</p>
    # @option params [Integer] :expiration_in_days
    #   <p>Token expiration, in days, counted from token creation. The default is 365 days.</p>
    # @option params [Array<String>] :token_properties
    #   <p>Data specified by the caller to be included in the JWT token. The data is mapped
    #             to the amr claim of the JWT token.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token, valid for 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     role_arns: ["Arn"],
    #     expiration_in_days: 1,
    #     token_properties: ["String"],
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.create_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_id: "String",
    #     token_type: "REFRESH_TOKEN" # One of: ["REFRESH_TOKEN"],
    #     token: "TokenString"
    #   }
    # @return [Types::CreateTokenResponse]
    def create_token(params = {}, options = {})
      request = build_request(:create_token, params)
      request.send_request(options)
    end

    # <p>Deletes the specified grant.</p>
    # @param [Hash, Types::DeleteGrantRequest] params
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    # @option params [String] :status_reason
    #   <p>The Status reason for the delete request.</p>
    # @option params [String] :version
    #   <p>Current version of the grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_arn: "Arn", # required
    #     status_reason: "StatusReasonMessage",
    #     version: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_arn: "Arn",
    #     status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"],
    #     version: "String"
    #   }
    # @return [Types::DeleteGrantResponse]
    def delete_grant(params = {}, options = {})
      request = build_request(:delete_grant, params)
      request.send_request(options)
    end

    # <p>Deletes the specified license.</p>
    # @param [Hash, Types::DeleteLicenseRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    # @option params [String] :source_version
    #   <p>Current version of the license.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     source_version: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PENDING_DELETE" # One of: ["PENDING_DELETE", "DELETED"],
    #     deletion_date: "ISO8601DateTime"
    #   }
    # @return [Types::DeleteLicenseResponse]
    def delete_license(params = {}, options = {})
      request = build_request(:delete_license, params)
      request.send_request(options)
    end

    # <p>Deletes the specified license configuration.</p>
    #          <p>You cannot delete a license configuration that is in use.</p>
    # @param [Hash, Types::DeleteLicenseConfigurationRequest] params
    # @option params [String] :license_configuration_arn
    #   <p>ID of the license configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_license_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLicenseConfigurationResponse]
    def delete_license_configuration(params = {}, options = {})
      request = build_request(:delete_license_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified report generator.</p>
    #          <p>This action deletes the report generator, which stops it from generating future reports.
    #          The action cannot be reversed. It has no effect on the previous reports from this generator.</p>
    # @param [Hash, Types::DeleteLicenseManagerReportGeneratorRequest] params
    # @option params [String] :license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_manager_report_generator_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_license_manager_report_generator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLicenseManagerReportGeneratorResponse]
    def delete_license_manager_report_generator(params = {}, options = {})
      request = build_request(:delete_license_manager_report_generator, params)
      request.send_request(options)
    end

    # <p>Deletes the specified token. Must be called in the license home Region.</p>
    # @param [Hash, Types::DeleteTokenRequest] params
    # @option params [String] :token_id
    #   <p>Token ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTokenResponse]
    def delete_token(params = {}, options = {})
      request = build_request(:delete_token, params)
      request.send_request(options)
    end

    # <p>Extends the expiration date for license consumption.</p>
    # @param [Hash, Types::ExtendLicenseConsumptionRequest] params
    # @option params [String] :license_consumption_token
    #   <p>License consumption token.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_consumption_token: "String", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.extend_license_consumption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_consumption_token: "String",
    #     expiration: "ISO8601DateTime"
    #   }
    # @return [Types::ExtendLicenseConsumptionResponse]
    def extend_license_consumption(params = {}, options = {})
      request = build_request(:extend_license_consumption, params)
      request.send_request(options)
    end

    # <p>Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens
    #           are valid for one hour.</p>
    # @param [Hash, Types::GetAccessTokenRequest] params
    # @option params [String] :token
    #   <p>Refresh token, encoded as a JWT token.</p>
    # @option params [Array<String>] :token_properties
    #   <p>Token properties to validate against those present in the JWT token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token: "TokenString", # required
    #     token_properties: ["String"]
    #   }
    #   options = {}
    #   response = client.get_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_token: "TokenString"
    #   }
    # @return [Types::GetAccessTokenResponse]
    def get_access_token(params = {}, options = {})
      request = build_request(:get_access_token, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about the specified grant.</p>
    # @param [Hash, Types::GetGrantRequest] params
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    # @option params [String] :version
    #   <p>Grant version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_arn: "Arn", # required
    #     version: "String"
    #   }
    #   options = {}
    #   response = client.get_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant: {
    #       grant_arn: "Arn", # required
    #       grant_name: "String", # required
    #       parent_arn: "Arn", # required
    #       license_arn: "Arn", # required
    #       grantee_principal_arn: "Arn", # required
    #       home_region: "String", # required
    #       grant_status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"], # required
    #       status_reason: "StatusReasonMessage",
    #       version: "String", # required
    #       granted_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]], # required
    #       options: {
    #         activation_override_behavior: "DISTRIBUTED_GRANTS_ONLY" # One of: ["DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"]
    #       }
    #     }
    #   }
    # @return [Types::GetGrantResponse]
    def get_grant(params = {}, options = {})
      request = build_request(:get_grant, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about the specified license.</p>
    # @param [Hash, Types::GetLicenseRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    # @option params [String] :version
    #   <p>License version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     version: "String"
    #   }
    #   options = {}
    #   response = client.get_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license: {
    #       license_arn: "Arn",
    #       license_name: "String",
    #       product_name: "String",
    #       product_sku: "String",
    #       issuer: {
    #         name: "String",
    #         sign_key: "String",
    #         key_fingerprint: "String"
    #       },
    #       home_region: "String",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"],
    #       validity: {
    #         begin: "ISO8601DateTime", # required
    #         end: "ISO8601DateTime"
    #       },
    #       beneficiary: "String",
    #       entitlements: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           max_count: 1,
    #           overage: false,
    #           unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #           allow_check_in: false
    #         }
    #       ],
    #       consumption_configuration: {
    #         renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #         provisional_configuration: {
    #           max_time_to_live_in_minutes: 1, # required
    #         },
    #         borrow_configuration: {
    #           allow_early_check_in: false, # required
    #           max_time_to_live_in_minutes: 1, # required
    #         }
    #       },
    #       license_metadata: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       create_time: "ISO8601DateTime",
    #       version: "String"
    #     }
    #   }
    # @return [Types::GetLicenseResponse]
    def get_license(params = {}, options = {})
      request = build_request(:get_license, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about the specified license configuration.</p>
    # @param [Hash, Types::GetLicenseConfigurationRequest] params
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_license_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_configuration_id: "String",
    #     license_configuration_arn: "String",
    #     name: "String",
    #     description: "String",
    #     license_counting_type: "vCPU" # One of: ["vCPU", "Instance", "Core", "Socket"],
    #     license_rules: ["String"],
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     consumed_licenses: 1,
    #     status: "String",
    #     owner_account_id: "String",
    #     consumed_license_summary_list: [
    #       {
    #         resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #         consumed_licenses: 1
    #       }
    #     ],
    #     managed_resource_summary_list: [
    #       {
    #         resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #         association_count: 1
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"],
    #             product_information_filter_comparator: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     automated_discovery_information: {
    #       last_run_time: Time.now
    #     },
    #     disassociate_when_not_found: false
    #   }
    # @return [Types::GetLicenseConfigurationResponse]
    def get_license_configuration(params = {}, options = {})
      request = build_request(:get_license_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified license type conversion task.</p>
    # @param [Hash, Types::GetLicenseConversionTaskRequest] params
    # @option params [String] :license_conversion_task_id
    #   <p>ID of the license type conversion task to retrieve information on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_conversion_task_id: "LicenseConversionTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_license_conversion_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_conversion_task_id: "LicenseConversionTaskId",
    #     resource_arn: "String",
    #     source_license_context: {
    #       usage_operation: "UsageOperation",
    #       product_codes: [
    #         {
    #           product_code_id: "ProductCodeId", # required
    #           product_code_type: "marketplace" # One of: ["marketplace"], # required
    #         }
    #       ]
    #     },
    #     destination_license_context: {
    #       usage_operation: "UsageOperation",
    #       product_codes: [
    #         {
    #           product_code_id: "ProductCodeId", # required
    #           product_code_type: "marketplace" # One of: ["marketplace"], # required
    #         }
    #       ]
    #     },
    #     status_message: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     start_time: Time.now,
    #     license_conversion_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::GetLicenseConversionTaskResponse]
    def get_license_conversion_task(params = {}, options = {})
      request = build_request(:get_license_conversion_task, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified report generator.</p>
    # @param [Hash, Types::GetLicenseManagerReportGeneratorRequest] params
    # @option params [String] :license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_manager_report_generator_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_license_manager_report_generator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_generator: {
    #       report_generator_name: "String",
    #       report_type: ["LicenseConfigurationSummaryReport" # One of: ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]],
    #       report_context: {
    #         license_configuration_arns: ["Arn"], # required
    #       },
    #       report_frequency: {
    #         value: 1,
    #         period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #       },
    #       license_manager_report_generator_arn: "String",
    #       last_run_status: "String",
    #       last_run_failure_reason: "String",
    #       last_report_generation_time: "String",
    #       report_creator_account: "String",
    #       description: "String",
    #       s3_location: {
    #         bucket: "String",
    #         key_prefix: "String"
    #       },
    #       create_time: "String",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetLicenseManagerReportGeneratorResponse]
    def get_license_manager_report_generator(params = {}, options = {})
      request = build_request(:get_license_manager_report_generator, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about the usage of the specified license.</p>
    # @param [Hash, Types::GetLicenseUsageRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_license_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_usage: {
    #       entitlement_usages: [
    #         {
    #           name: "String", # required
    #           consumed_value: "String", # required
    #           max_count: "String",
    #           unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetLicenseUsageResponse]
    def get_license_usage(params = {}, options = {})
      request = build_request(:get_license_usage, params)
      request.send_request(options)
    end

    # <p>Gets the License Manager settings for the current Region.</p>
    # @param [Hash, Types::GetServiceSettingsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_service_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_bucket_arn: "String",
    #     sns_topic_arn: "String",
    #     organization_configuration: {
    #       enable_integration: false, # required
    #     },
    #     enable_cross_accounts_discovery: false,
    #     license_manager_resource_share_arn: "String"
    #   }
    # @return [Types::GetServiceSettingsResponse]
    def get_service_settings(params = {}, options = {})
      request = build_request(:get_service_settings, params)
      request.send_request(options)
    end

    # <p>Lists the resource associations for the specified license configuration.</p>
    #          <p>Resource associations need not consume licenses from a license configuration. 
    #          For example, an AMI or a stopped instance might not consume a license (depending on 
    #          the license rules).</p>
    # @param [Hash, Types::ListAssociationsForLicenseConfigurationRequest] params
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of a license configuration.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_associations_for_license_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_configuration_associations: [
    #       {
    #         resource_arn: "String",
    #         resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #         resource_owner_id: "String",
    #         association_time: Time.now,
    #         ami_association_scope: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAssociationsForLicenseConfigurationResponse]
    def list_associations_for_license_configuration(params = {}, options = {})
      request = build_request(:list_associations_for_license_configuration, params)
      request.send_request(options)
    end

    # <p>Lists the grants distributed for the specified license.</p>
    # @param [Hash, Types::ListDistributedGrantsRequest] params
    # @option params [Array<String>] :grant_arns
    #   <p>Amazon Resource Names (ARNs) of the grants.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GrantStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranteePrincipalARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseIssuerName</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_distributed_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grants: [
    #       {
    #         grant_arn: "Arn", # required
    #         grant_name: "String", # required
    #         parent_arn: "Arn", # required
    #         license_arn: "Arn", # required
    #         grantee_principal_arn: "Arn", # required
    #         home_region: "String", # required
    #         grant_status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"], # required
    #         status_reason: "StatusReasonMessage",
    #         version: "String", # required
    #         granted_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]], # required
    #         options: {
    #           activation_override_behavior: "DISTRIBUTED_GRANTS_ONLY" # One of: ["DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDistributedGrantsResponse]
    def list_distributed_grants(params = {}, options = {})
      request = build_request(:list_distributed_grants, params)
      request.send_request(options)
    end

    # <p>Lists the license configuration operations that failed.</p>
    # @param [Hash, Types::ListFailuresForLicenseConfigurationOperationsRequest] params
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name of the license configuration.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_failures_for_license_configuration_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_operation_failure_list: [
    #       {
    #         resource_arn: "String",
    #         resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #         error_message: "String",
    #         failure_time: Time.now,
    #         operation_name: "String",
    #         resource_owner_id: "String",
    #         operation_requested_by: "String",
    #         metadata_list: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFailuresForLicenseConfigurationOperationsResponse]
    def list_failures_for_license_configuration_operations(params = {}, options = {})
      request = build_request(:list_failures_for_license_configuration_operations, params)
      request.send_request(options)
    end

    # <p>Lists the license configurations for your account.</p>
    # @param [Hash, Types::ListLicenseConfigurationsRequest] params
    # @option params [Array<String>] :license_configuration_arns
    #   <p>Amazon Resource Names (ARN) of the license configurations.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>licenseCountingType</code> - The dimension for which licenses are counted.
    #                  Possible values are <code>vCPU</code> | <code>Instance</code> | <code>Core</code> | <code>Socket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>enforceLicenseCount</code> - A Boolean value that indicates whether hard license enforcement is used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>usagelimitExceeded</code> - A Boolean value that indicates whether the available licenses have been exceeded.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arns: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_license_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_configurations: [
    #       {
    #         license_configuration_id: "String",
    #         license_configuration_arn: "String",
    #         name: "String",
    #         description: "String",
    #         license_counting_type: "vCPU" # One of: ["vCPU", "Instance", "Core", "Socket"],
    #         license_rules: ["String"],
    #         license_count: 1,
    #         license_count_hard_limit: false,
    #         disassociate_when_not_found: false,
    #         consumed_licenses: 1,
    #         status: "String",
    #         owner_account_id: "String",
    #         consumed_license_summary_list: [
    #           {
    #             resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #             consumed_licenses: 1
    #           }
    #         ],
    #         managed_resource_summary_list: [
    #           {
    #             resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #             association_count: 1
    #           }
    #         ],
    #         product_information_list: [
    #           {
    #             resource_type: "String", # required
    #             product_information_filter_list: [ # required
    #               {
    #                 product_information_filter_name: "String", # required
    #                 product_information_filter_value: ["String"],
    #                 product_information_filter_comparator: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         automated_discovery_information: {
    #           last_run_time: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseConfigurationsResponse]
    def list_license_configurations(params = {}, options = {})
      request = build_request(:list_license_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the license type conversion tasks for your account.</p>
    # @param [Hash, Types::ListLicenseConversionTasksRequest] params
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>
    #            Filters to scope the results. Valid filters are <code>ResourceArns</code> and <code>Status</code>.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_license_conversion_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_conversion_tasks: [
    #       {
    #         license_conversion_task_id: "LicenseConversionTaskId",
    #         resource_arn: "String",
    #         source_license_context: {
    #           usage_operation: "UsageOperation",
    #           product_codes: [
    #             {
    #               product_code_id: "ProductCodeId", # required
    #               product_code_type: "marketplace" # One of: ["marketplace"], # required
    #             }
    #           ]
    #         },
    #         destination_license_context: {
    #           usage_operation: "UsageOperation",
    #           product_codes: [
    #             {
    #               product_code_id: "ProductCodeId", # required
    #               product_code_type: "marketplace" # One of: ["marketplace"], # required
    #             }
    #           ]
    #         },
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #         status_message: "String",
    #         start_time: Time.now,
    #         license_conversion_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseConversionTasksResponse]
    def list_license_conversion_tasks(params = {}, options = {})
      request = build_request(:list_license_conversion_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the report generators for your account.</p>
    # @param [Hash, Types::ListLicenseManagerReportGeneratorsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseConfigurationArn</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_license_manager_report_generators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_generators: [
    #       {
    #         report_generator_name: "String",
    #         report_type: ["LicenseConfigurationSummaryReport" # One of: ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]],
    #         report_context: {
    #           license_configuration_arns: ["Arn"], # required
    #         },
    #         report_frequency: {
    #           value: 1,
    #           period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #         },
    #         license_manager_report_generator_arn: "String",
    #         last_run_status: "String",
    #         last_run_failure_reason: "String",
    #         last_report_generation_time: "String",
    #         report_creator_account: "String",
    #         description: "String",
    #         s3_location: {
    #           bucket: "String",
    #           key_prefix: "String"
    #         },
    #         create_time: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseManagerReportGeneratorsResponse]
    def list_license_manager_report_generators(params = {}, options = {})
      request = build_request(:list_license_manager_report_generators, params)
      request.send_request(options)
    end

    # <p>Describes the license configurations for the specified resource.</p>
    # @param [Hash, Types::ListLicenseSpecificationsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of a resource that has an associated license configuration.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_license_specifications_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #         ami_association_scope: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseSpecificationsForResourceResponse]
    def list_license_specifications_for_resource(params = {}, options = {})
      request = build_request(:list_license_specifications_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all versions of the specified license.</p>
    # @param [Hash, Types::ListLicenseVersionsRequest] params
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_license_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     licenses: [
    #       {
    #         license_arn: "Arn",
    #         license_name: "String",
    #         product_name: "String",
    #         product_sku: "String",
    #         issuer: {
    #           name: "String",
    #           sign_key: "String",
    #           key_fingerprint: "String"
    #         },
    #         home_region: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"],
    #         validity: {
    #           begin: "ISO8601DateTime", # required
    #           end: "ISO8601DateTime"
    #         },
    #         beneficiary: "String",
    #         entitlements: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             max_count: 1,
    #             overage: false,
    #             unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #             allow_check_in: false
    #           }
    #         ],
    #         consumption_configuration: {
    #           renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #           provisional_configuration: {
    #             max_time_to_live_in_minutes: 1, # required
    #           },
    #           borrow_configuration: {
    #             allow_early_check_in: false, # required
    #             max_time_to_live_in_minutes: 1, # required
    #           }
    #         },
    #         license_metadata: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ],
    #         create_time: "ISO8601DateTime",
    #         version: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicenseVersionsResponse]
    def list_license_versions(params = {}, options = {})
      request = build_request(:list_license_versions, params)
      request.send_request(options)
    end

    # <p>Lists the licenses for your account.</p>
    # @param [Hash, Types::ListLicensesRequest] params
    # @option params [Array<String>] :license_arns
    #   <p>Amazon Resource Names (ARNs) of the licenses.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fingerprint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_licenses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     licenses: [
    #       {
    #         license_arn: "Arn",
    #         license_name: "String",
    #         product_name: "String",
    #         product_sku: "String",
    #         issuer: {
    #           name: "String",
    #           sign_key: "String",
    #           key_fingerprint: "String"
    #         },
    #         home_region: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"],
    #         validity: {
    #           begin: "ISO8601DateTime", # required
    #           end: "ISO8601DateTime"
    #         },
    #         beneficiary: "String",
    #         entitlements: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             max_count: 1,
    #             overage: false,
    #             unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #             allow_check_in: false
    #           }
    #         ],
    #         consumption_configuration: {
    #           renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #           provisional_configuration: {
    #             max_time_to_live_in_minutes: 1, # required
    #           },
    #           borrow_configuration: {
    #             allow_early_check_in: false, # required
    #             max_time_to_live_in_minutes: 1, # required
    #           }
    #         },
    #         license_metadata: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ],
    #         create_time: "ISO8601DateTime",
    #         version: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLicensesResponse]
    def list_licenses(params = {}, options = {})
      request = build_request(:list_licenses, params)
      request.send_request(options)
    end

    # <p>Lists grants that are received. Received grants are grants created while specifying the
    #          recipient as this Amazon Web Services account, your organization, or an organizational unit
    #          (OU) to which this member account belongs.</p>
    # @param [Hash, Types::ListReceivedGrantsRequest] params
    # @option params [Array<String>] :grant_arns
    #   <p>Amazon Resource Names (ARNs) of the grants.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseIssuerName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GrantStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranterAccountId</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_received_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grants: [
    #       {
    #         grant_arn: "Arn", # required
    #         grant_name: "String", # required
    #         parent_arn: "Arn", # required
    #         license_arn: "Arn", # required
    #         grantee_principal_arn: "Arn", # required
    #         home_region: "String", # required
    #         grant_status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"], # required
    #         status_reason: "StatusReasonMessage",
    #         version: "String", # required
    #         granted_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]], # required
    #         options: {
    #           activation_override_behavior: "DISTRIBUTED_GRANTS_ONLY" # One of: ["DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListReceivedGrantsResponse]
    def list_received_grants(params = {}, options = {})
      request = build_request(:list_received_grants, params)
      request.send_request(options)
    end

    # <p>Lists the grants received for all accounts in the organization.</p>
    # @param [Hash, Types::ListReceivedGrantsForOrganizationRequest] params
    # @option params [String] :license_arn
    #   <p>The Amazon Resource Name (ARN) of the received license.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ParentArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranteePrincipalArn</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arn: "Arn", # required
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_received_grants_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grants: [
    #       {
    #         grant_arn: "Arn", # required
    #         grant_name: "String", # required
    #         parent_arn: "Arn", # required
    #         license_arn: "Arn", # required
    #         grantee_principal_arn: "Arn", # required
    #         home_region: "String", # required
    #         grant_status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"], # required
    #         status_reason: "StatusReasonMessage",
    #         version: "String", # required
    #         granted_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]], # required
    #         options: {
    #           activation_override_behavior: "DISTRIBUTED_GRANTS_ONLY" # One of: ["DISTRIBUTED_GRANTS_ONLY", "ALL_GRANTS_PERMITTED_BY_ISSUER"]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListReceivedGrantsForOrganizationResponse]
    def list_received_grants_for_organization(params = {}, options = {})
      request = build_request(:list_received_grants_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists received licenses.</p>
    # @param [Hash, Types::ListReceivedLicensesRequest] params
    # @option params [Array<String>] :license_arns
    #   <p>Amazon Resource Names (ARNs) of the licenses.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fingerprint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IssuerName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_arns: ["Arn"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_received_licenses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     licenses: [
    #       {
    #         license_arn: "Arn",
    #         license_name: "String",
    #         product_name: "String",
    #         product_sku: "String",
    #         issuer: {
    #           name: "String",
    #           sign_key: "String",
    #           key_fingerprint: "String"
    #         },
    #         home_region: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"],
    #         validity: {
    #           begin: "ISO8601DateTime", # required
    #           end: "ISO8601DateTime"
    #         },
    #         beneficiary: "String",
    #         entitlements: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             max_count: 1,
    #             overage: false,
    #             unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #             allow_check_in: false
    #           }
    #         ],
    #         consumption_configuration: {
    #           renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #           provisional_configuration: {
    #             max_time_to_live_in_minutes: 1, # required
    #           },
    #           borrow_configuration: {
    #             allow_early_check_in: false, # required
    #             max_time_to_live_in_minutes: 1, # required
    #           }
    #         },
    #         license_metadata: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ],
    #         create_time: "ISO8601DateTime",
    #         version: "String",
    #         received_metadata: {
    #           received_status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "DISABLED", "WORKFLOW_COMPLETED"],
    #           received_status_reason: "StatusReasonMessage",
    #           allowed_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListReceivedLicensesResponse]
    def list_received_licenses(params = {}, options = {})
      request = build_request(:list_received_licenses, params)
      request.send_request(options)
    end

    # <p>Lists the licenses received for all accounts in the organization.</p>
    # @param [Hash, Types::ListReceivedLicensesForOrganizationRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_received_licenses_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     licenses: [
    #       {
    #         license_arn: "Arn",
    #         license_name: "String",
    #         product_name: "String",
    #         product_sku: "String",
    #         issuer: {
    #           name: "String",
    #           sign_key: "String",
    #           key_fingerprint: "String"
    #         },
    #         home_region: "String",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"],
    #         validity: {
    #           begin: "ISO8601DateTime", # required
    #           end: "ISO8601DateTime"
    #         },
    #         beneficiary: "String",
    #         entitlements: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             max_count: 1,
    #             overage: false,
    #             unit: "Count" # One of: ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"], # required
    #             allow_check_in: false
    #           }
    #         ],
    #         consumption_configuration: {
    #           renew_type: "None" # One of: ["None", "Weekly", "Monthly"],
    #           provisional_configuration: {
    #             max_time_to_live_in_minutes: 1, # required
    #           },
    #           borrow_configuration: {
    #             allow_early_check_in: false, # required
    #             max_time_to_live_in_minutes: 1, # required
    #           }
    #         },
    #         license_metadata: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ],
    #         create_time: "ISO8601DateTime",
    #         version: "String",
    #         received_metadata: {
    #           received_status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "DISABLED", "WORKFLOW_COMPLETED"],
    #           received_status_reason: "StatusReasonMessage",
    #           allowed_operations: ["CreateGrant" # One of: ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListReceivedLicensesForOrganizationResponse]
    def list_received_licenses_for_organization(params = {}, options = {})
      request = build_request(:list_received_licenses_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists resources managed using Systems Manager inventory.</p>
    # @param [Hash, Types::ListResourceInventoryRequest] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Array<Types::InventoryFilter>] :filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>account_id</code> - The ID of the Amazon Web Services account that owns the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application_name</code> - The name of the application. 
    #                  Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>license_included</code> - The type of license included. 
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.
    #                  Possible values are <code>sql-server-enterprise</code> | 
    #                  <code>sql-server-standard</code> | 
    #                  <code>sql-server-web</code> |  
    #                  <code>windows-server-datacenter</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code> - The platform of the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resource_id</code> - The ID of the resource. 
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tag:<key></code> - The key/value combination of a tag assigned 
    #                  to the resource. Logical operators are <code>EQUALS</code> (single account) or
    #                  <code>EQUALS</code> | <code>NOT_EQUALS</code> (cross account).</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         condition: "EQUALS" # One of: ["EQUALS", "NOT_EQUALS", "BEGINS_WITH", "CONTAINS"], # required
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_resource_inventory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_inventory_list: [
    #       {
    #         resource_id: "String",
    #         resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #         resource_arn: "String",
    #         platform: "String",
    #         platform_version: "String",
    #         resource_owning_account_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListResourceInventoryResponse]
    def list_resource_inventory(params = {}, options = {})
      request = build_request(:list_resource_inventory, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource. For more information about tagging support in
    #          License Manager, see the <a href="https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html">TagResource</a> operation.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists your tokens.</p>
    # @param [Hash, Types::ListTokensRequest] params
    # @option params [Array<String>] :token_ids
    #   <p>Token IDs.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filter is supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseArns</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_ids: ["String"],
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tokens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tokens: [
    #       {
    #         token_id: "String",
    #         token_type: "String",
    #         license_arn: "String",
    #         expiration_time: "ISO8601DateTime",
    #         token_properties: ["String"],
    #         role_arns: ["Arn"],
    #         status: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTokensResponse]
    def list_tokens(params = {}, options = {})
      request = build_request(:list_tokens, params)
      request.send_request(options)
    end

    # <p>Lists all license usage records for a license configuration, displaying license
    #          consumption details by resource at a selected point in time. Use this action to audit the
    #          current license consumption for any license inventory and configuration.</p>
    # @param [Hash, Types::ListUsageForLicenseConfigurationRequest] params
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resourceArn</code> - The ARN of the license configuration resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resourceType</code> - The resource type (<code>EC2_INSTANCE</code> | 
    #               	<code>EC2_HOST</code> | <code>EC2_AMI</code> | <code>SYSTEMS_MANAGER_MANAGED_INSTANCE</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resourceAccount</code> - The ID of the account that owns the resource.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_usage_for_license_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     license_configuration_usage_list: [
    #       {
    #         resource_arn: "String",
    #         resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"],
    #         resource_status: "String",
    #         resource_owner_id: "String",
    #         association_time: Time.now,
    #         consumed_licenses: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListUsageForLicenseConfigurationResponse]
    def list_usage_for_license_configuration(params = {}, options = {})
      request = build_request(:list_usage_for_license_configuration, params)
      request.send_request(options)
    end

    # <p>Rejects the specified grant.</p>
    # @param [Hash, Types::RejectGrantRequest] params
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.reject_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant_arn: "Arn",
    #     status: "PENDING_WORKFLOW" # One of: ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"],
    #     version: "String"
    #   }
    # @return [Types::RejectGrantResponse]
    def reject_grant(params = {}, options = {})
      request = build_request(:reject_grant, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource. The following resources support
    #          tagging in License Manager:</p>
    #          <ul>
    #             <li>
    #                <p>Licenses</p>
    #             </li>
    #             <li>
    #                <p>Grants</p>
    #             </li>
    #             <li>
    #                <p>License configurations</p>
    #             </li>
    #             <li>
    #                <p>Report generators</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource. The following examples provide an example
    #            ARN for each supported resource in License Manager:</p>
    #            <ul>
    #               <li>
    #                  <p>Licenses -
    #                     <code>arn:aws:license-manager::111122223333:license:l-EXAMPLE2da7646d6861033667f20e895</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Grants -
    #                     <code>arn:aws:license-manager::111122223333:grant:g-EXAMPLE7b19f4a0ab73679b0beb52707</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>License configurations -
    #                     <code>arn:aws:license-manager:us-east-1:111122223333:license-configuration:lic-EXAMPLE6a788d4c8acd4264ff0ecf2ed2d</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Report generators -
    #                     <code>arn:aws:license-manager:us-east-1:111122223333:report-generator:r-EXAMPLE825b4a4f8fe5a3e0c88824e5fc6</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String"
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

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys identifying the tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
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

    # <p>Modifies the attributes of an existing license configuration.</p>
    # @param [Hash, Types::UpdateLicenseConfigurationRequest] params
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    # @option params [String] :license_configuration_status
    #   <p>New status of the license configuration.</p>
    # @option params [Array<String>] :license_rules
    #   <p>New license rule. The only rule that you can add after you create a license
    #             configuration is licenseAffinityToHost.</p>
    # @option params [Integer] :license_count
    #   <p>New number of licenses managed by the license configuration.</p>
    # @option params [Boolean] :license_count_hard_limit
    #   <p>New hard limit of the number of available licenses.</p>
    # @option params [String] :name
    #   <p>New name of the license configuration.</p>
    # @option params [String] :description
    #   <p>New description of the license configuration.</p>
    # @option params [Array<Types::ProductInformation>] :product_information_list
    #   <p>New product information.</p>
    # @option params [Boolean] :disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_configuration_arn: "String", # required
    #     license_configuration_status: "AVAILABLE" # One of: ["AVAILABLE", "DISABLED"],
    #     license_rules: ["String"],
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     name: "String",
    #     description: "String",
    #     product_information_list: [
    #       {
    #         resource_type: "String", # required
    #         product_information_filter_list: [ # required
    #           {
    #             product_information_filter_name: "String", # required
    #             product_information_filter_value: ["String"],
    #             product_information_filter_comparator: "String", # required
    #           }
    #         ]
    #       }
    #     ],
    #     disassociate_when_not_found: false
    #   }
    #   options = {}
    #   response = client.update_license_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLicenseConfigurationResponse]
    def update_license_configuration(params = {}, options = {})
      request = build_request(:update_license_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a report generator.</p>
    #          <p>After you make changes to a report generator, it starts generating new reports within 60 minutes of being updated.</p>
    # @param [Hash, Types::UpdateLicenseManagerReportGeneratorRequest] params
    # @option params [String] :license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator to update.</p>
    # @option params [String] :report_generator_name
    #   <p>Name of the report generator.</p>
    # @option params [Array<String>] :type
    #   <p>Type of reports to generate. The following report types are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ReportContext] :report_context
    #   <p>The report context.</p>
    # @option params [Types::ReportFrequency] :report_frequency
    #   <p>Frequency by which reports are generated.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [String] :description
    #   <p>Description of the report generator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     license_manager_report_generator_arn: "String", # required
    #     report_generator_name: "ReportGeneratorName", # required
    #     type: ["LicenseConfigurationSummaryReport" # One of: ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]], # required
    #     report_context: { # required
    #       license_configuration_arns: ["Arn"], # required
    #     },
    #     report_frequency: { # required
    #       value: 1,
    #       period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #     },
    #     client_token: "ClientRequestToken", # required
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.update_license_manager_report_generator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLicenseManagerReportGeneratorResponse]
    def update_license_manager_report_generator(params = {}, options = {})
      request = build_request(:update_license_manager_report_generator, params)
      request.send_request(options)
    end

    # <p>Adds or removes the specified license configurations for the specified Amazon Web Services resource.</p>
    #          <p>You can update the license specifications of AMIs, instances, and hosts.
    #          You cannot update the license specifications for launch templates and CloudFormation templates, 
    #          as they send license configurations to the operation that creates the resource.</p>
    # @param [Hash, Types::UpdateLicenseSpecificationsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>
    # @option params [Array<Types::LicenseSpecification>] :add_license_specifications
    #   <p>ARNs of the license configurations to add.</p>
    # @option params [Array<Types::LicenseSpecification>] :remove_license_specifications
    #   <p>ARNs of the license configurations to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     add_license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #         ami_association_scope: "String"
    #       }
    #     ],
    #     remove_license_specifications: [
    #       {
    #         license_configuration_arn: "String", # required
    #         ami_association_scope: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_license_specifications_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLicenseSpecificationsForResourceResponse]
    def update_license_specifications_for_resource(params = {}, options = {})
      request = build_request(:update_license_specifications_for_resource, params)
      request.send_request(options)
    end

    # <p>Updates License Manager settings for the current Region.</p>
    # @param [Hash, Types::UpdateServiceSettingsRequest] params
    # @option params [String] :s3_bucket_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.</p>
    # @option params [String] :sns_topic_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.</p>
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   <p>Enables integration with Organizations for cross-account discovery.</p>
    # @option params [Boolean] :enable_cross_accounts_discovery
    #   <p>Activates cross-account discovery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_bucket_arn: "String",
    #     sns_topic_arn: "String",
    #     organization_configuration: {
    #       enable_integration: false, # required
    #     },
    #     enable_cross_accounts_discovery: false
    #   }
    #   options = {}
    #   response = client.update_service_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateServiceSettingsResponse]
    def update_service_settings(params = {}, options = {})
      request = build_request(:update_service_settings, params)
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
      context[:gem_name] = 'aws-sdk-licensemanager'
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
