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
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Route53Domains
  # An API client for Aws::Route53Domains.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Route53DomainsV20140515

    add_plugin(::Aws::Route53Domains::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    # @option options [Aws::Route53Domains::EndpointProvider] :endpoint_provider
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

    # <p>Accepts the transfer of a domain from another Amazon Web Services account to the
    # 				currentAmazon Web Services account. You initiate a transfer between Amazon Web Services accounts using <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.</p>
    #          <p>If you use the CLI command at <a href="https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html">accept-domain-transfer-from-another-aws-account</a>, use JSON format as input
    # 			instead of text because otherwise CLI will throw an error from domain
    # 			transfer input that includes single quotes.</p>
    #          <p>Use either <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> to determine whether the operation succeeded. <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> provides additional information, for example,
    # 				<code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>. </p>
    # @param [Hash, Types::AcceptDomainTransferFromAnotherAwsAccountRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account
    #   			submitted a <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a> request. </p>
    # @option params [String] :password
    #   <p>The password that was returned by the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a> request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     password: "Password", # required
    #   }
    #   options = {}
    #   response = client.accept_domain_transfer_from_another_aws_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::AcceptDomainTransferFromAnotherAwsAccountResponse]
    def accept_domain_transfer_from_another_aws_account(params = {}, options = {})
      request = build_request(:accept_domain_transfer_from_another_aws_account, params)
      request.send_request(options)
    end

    # <p> Creates a delegation signer (DS) record in the registry zone for this domain
    # 			name.</p>
    #          <p>Note that creating DS record at the registry impacts DNSSEC validation of your DNS
    # 			records. This action may render your domain name unavailable on the internet if the
    # 			steps are completed in the wrong order, or with incorrect timing. For more information
    # 			about DNSSEC signing, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec.html">Configuring DNSSEC
    # 				signing</a> in the <i>Route 53 developer
    # 			guide</i>.</p>
    # @param [Hash, Types::AssociateDelegationSignerToDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [Types::DnssecSigningAttributes] :signing_attributes
    #   <p>The information about a key, including the algorithm, public key-value, and
    #   			flags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     signing_attributes: { # required
    #       algorithm: 1,
    #       flags: 1,
    #       public_key: "DnssecPublicKey"
    #     }
    #   }
    #   options = {}
    #   response = client.associate_delegation_signer_to_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::AssociateDelegationSignerToDomainResponse]
    def associate_delegation_signer_to_domain(params = {}, options = {})
      request = build_request(:associate_delegation_signer_to_domain, params)
      request.send_request(options)
    end

    # <p>Cancels the transfer of a domain from the current Amazon Web Services account to
    # 			another Amazon Web Services account. You initiate a transfer betweenAmazon Web Services accounts using <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>. </p>
    #          <important>
    #             <p>You must cancel the transfer before the other Amazon Web Services account accepts
    # 				the transfer using <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>.</p>
    #          </important>
    #          <p>Use either <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> to determine whether the operation succeeded. <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> provides additional information, for example,
    # 				<code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>. </p>
    # @param [Hash, Types::CancelDomainTransferToAnotherAwsAccountRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to cancel the transfer to another Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.cancel_domain_transfer_to_another_aws_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::CancelDomainTransferToAnotherAwsAccountResponse]
    def cancel_domain_transfer_to_another_aws_account(params = {}, options = {})
      request = build_request(:cancel_domain_transfer_to_another_aws_account, params)
      request.send_request(options)
    end

    # <p>This operation checks the availability of one domain name. Note that if the
    # 			availability status of a domain is pending, you must submit another request to determine
    # 			the availability of the domain name.</p>
    # @param [Hash, Types::CheckDomainAvailabilityRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to get availability for. The top-level domain
    #   			(TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Internationalized domain names are not supported for some top-level domains. To
    #   			determine whether the TLD that you want to use supports internationalized domain names,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a>. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting Internationalized Domain Names</a>. </p>
    # @option params [String] :idn_lang_code
    #   <p>Reserved for future use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     idn_lang_code: "LangCode"
    #   }
    #   options = {}
    #   response = client.check_domain_availability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability: "AVAILABLE" # One of: ["AVAILABLE", "AVAILABLE_RESERVED", "AVAILABLE_PREORDER", "UNAVAILABLE", "UNAVAILABLE_PREMIUM", "UNAVAILABLE_RESTRICTED", "RESERVED", "DONT_KNOW", "INVALID_NAME_FOR_TLD", "PENDING"]
    #   }
    # @return [Types::CheckDomainAvailabilityResponse]
    def check_domain_availability(params = {}, options = {})
      request = build_request(:check_domain_availability, params)
      request.send_request(options)
    end

    # <p>Checks whether a domain name can be transferred to Amazon Route 53. </p>
    # @param [Hash, Types::CheckDomainTransferabilityRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain
    #   			(TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :auth_code
    #   <p>If the registrar for the top-level domain (TLD) requires an authorization code to
    #   			transfer the domain, the code that you got from the current registrar for the
    #   			domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     auth_code: "DomainAuthCode"
    #   }
    #   options = {}
    #   response = client.check_domain_transferability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transferability: {
    #       transferable: "TRANSFERABLE" # One of: ["TRANSFERABLE", "UNTRANSFERABLE", "DONT_KNOW", "DOMAIN_IN_OWN_ACCOUNT", "DOMAIN_IN_ANOTHER_ACCOUNT", "PREMIUM_DOMAIN"]
    #     },
    #     message: "Message"
    #   }
    # @return [Types::CheckDomainTransferabilityResponse]
    def check_domain_transferability(params = {}, options = {})
      request = build_request(:check_domain_transferability, params)
      request.send_request(options)
    end

    # <p>This operation deletes the specified domain. This action is permanent. For more
    # 			information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html">Deleting a domain name
    # 				registration</a>.</p>
    #          <p>To transfer the domain registration to another registrar, use the transfer process
    # 			that’s provided by the registrar to which you want to transfer the registration.
    # 			Otherwise, the following apply:</p>
    #          <ol>
    #             <li>
    #                <p>You can’t get a refund for the cost of a deleted domain registration.</p>
    #             </li>
    #             <li>
    #                <p>The registry for the top-level domain might hold the domain name for a brief
    # 					time before releasing it for other users to register (varies by registry).
    # 				</p>
    #             </li>
    #             <li>
    #                <p>When the registration has been deleted, we'll send you a confirmation to the
    # 					registrant contact. The email will come from
    # 						<code>noreply@domainnameverification.net</code> or
    # 						<code>noreply@registrar.amazon.com</code>.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteDomainRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the domain to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DeleteDomainResponse]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>This operation deletes the specified tags for a domain.</p>
    #          <p>All tag operations are eventually consistent; subsequent operations might not
    # 			immediately represent all issued operations.</p>
    # @param [Hash, Types::DeleteTagsForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The domain for which you want to delete one or more tags.</p>
    # @option params [Array<String>] :tags_to_delete
    #   <p>A list of tag keys to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     tags_to_delete: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.delete_tags_for_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTagsForDomainResponse]
    def delete_tags_for_domain(params = {}, options = {})
      request = build_request(:delete_tags_for_domain, params)
      request.send_request(options)
    end

    # <p>This operation disables automatic renewal of domain registration for the specified
    # 			domain.</p>
    # @param [Hash, Types::DisableDomainAutoRenewRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to disable automatic renewal for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.disable_domain_auto_renew(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableDomainAutoRenewResponse]
    def disable_domain_auto_renew(params = {}, options = {})
      request = build_request(:disable_domain_auto_renew, params)
      request.send_request(options)
    end

    # <p>This operation removes the transfer lock on the domain (specifically the
    # 				<code>clientTransferProhibited</code> status) to allow domain transfers. We
    # 			recommend you refrain from performing this action unless you intend to transfer the
    # 			domain to a different registrar. Successful submission returns an operation ID that you
    # 			can use to track the progress and completion of the action. If the request is not
    # 			completed successfully, the domain registrant will be notified by email.</p>
    # @param [Hash, Types::DisableDomainTransferLockRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to remove the transfer lock for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.disable_domain_transfer_lock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DisableDomainTransferLockResponse]
    def disable_domain_transfer_lock(params = {}, options = {})
      request = build_request(:disable_domain_transfer_lock, params)
      request.send_request(options)
    end

    # <p>Deletes a delegation signer (DS) record in the registry zone for this domain
    # 			name.</p>
    # @param [Hash, Types::DisassociateDelegationSignerFromDomainRequest] params
    # @option params [String] :domain_name
    #   <p>Name of the domain.</p>
    # @option params [String] :id
    #   <p>An internal identification number assigned to each DS record after it’s created. You
    #   			can retrieve it as part of DNSSEC information returned by <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetDomainDetail.html">GetDomainDetail</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_delegation_signer_from_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DisassociateDelegationSignerFromDomainResponse]
    def disassociate_delegation_signer_from_domain(params = {}, options = {})
      request = build_request(:disassociate_delegation_signer_from_domain, params)
      request.send_request(options)
    end

    # <p>This operation configures Amazon Route 53 to automatically renew the specified domain
    # 			before the domain registration expires. The cost of renewing your domain registration is
    # 			billed to your Amazon Web Services account.</p>
    #          <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs
    # 			and their renewal policies, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains That You Can
    # 				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    # 				Guide</i>. Route 53 requires that you renew before the end of the renewal
    # 			period so we can complete processing before the deadline.</p>
    # @param [Hash, Types::EnableDomainAutoRenewRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to enable automatic renewal for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.enable_domain_auto_renew(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableDomainAutoRenewResponse]
    def enable_domain_auto_renew(params = {}, options = {})
      request = build_request(:enable_domain_auto_renew, params)
      request.send_request(options)
    end

    # <p>This operation sets the transfer lock on the domain (specifically the
    # 				<code>clientTransferProhibited</code> status) to prevent domain transfers.
    # 			Successful submission returns an operation ID that you can use to track the progress and
    # 			completion of the action. If the request is not completed successfully, the domain
    # 			registrant will be notified by email.</p>
    # @param [Hash, Types::EnableDomainTransferLockRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to set the transfer lock for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.enable_domain_transfer_lock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::EnableDomainTransferLockResponse]
    def enable_domain_transfer_lock(params = {}, options = {})
      request = build_request(:enable_domain_transfer_lock, params)
      request.send_request(options)
    end

    # <p>For operations that require confirmation that the email address for the registrant
    # 			contact is valid, such as registering a new domain, this operation returns information
    # 			about whether the registrant contact has responded.</p>
    #          <p>If you want us to resend the email, use the
    # 				<code>ResendContactReachabilityEmail</code> operation.</p>
    # @param [Hash, Types::GetContactReachabilityStatusRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want to know whether the registrant contact has
    #   			confirmed that the email address is valid.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName"
    #   }
    #   options = {}
    #   response = client.get_contact_reachability_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "DomainName",
    #     status: "PENDING" # One of: ["PENDING", "DONE", "EXPIRED"]
    #   }
    # @return [Types::GetContactReachabilityStatusResponse]
    def get_contact_reachability_status(params = {}, options = {})
      request = build_request(:get_contact_reachability_status, params)
      request.send_request(options)
    end

    # <p>This operation returns detailed information about a specified domain that is
    # 			associated with the current Amazon Web Services account. Contact information for the
    # 			domain is also returned as part of the output.</p>
    # @param [Hash, Types::GetDomainDetailRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to get detailed information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.get_domain_detail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "DomainName",
    #     nameservers: [
    #       {
    #         name: "HostName", # required
    #         glue_ips: ["GlueIp"]
    #       }
    #     ],
    #     auto_renew: false,
    #     admin_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     registrant_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     tech_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     admin_privacy: false,
    #     registrant_privacy: false,
    #     tech_privacy: false,
    #     registrar_name: "RegistrarName",
    #     who_is_server: "RegistrarWhoIsServer",
    #     registrar_url: "RegistrarUrl",
    #     abuse_contact_email: "Email",
    #     abuse_contact_phone: "ContactNumber",
    #     registry_domain_id: "RegistryDomainId",
    #     creation_date: Time.now,
    #     updated_date: Time.now,
    #     expiration_date: Time.now,
    #     reseller: "Reseller",
    #     dns_sec: "DNSSec",
    #     status_list: ["DomainStatus"],
    #     dnssec_keys: [
    #       {
    #         algorithm: 1,
    #         flags: 1,
    #         public_key: "DnssecPublicKey",
    #         digest_type: 1,
    #         digest: "String",
    #         key_tag: 1,
    #         id: "String"
    #       }
    #     ],
    #     billing_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     billing_privacy: false
    #   }
    # @return [Types::GetDomainDetailResponse]
    def get_domain_detail(params = {}, options = {})
      request = build_request(:get_domain_detail, params)
      request.send_request(options)
    end

    # <p>The GetDomainSuggestions operation returns a list of suggested domain names.</p>
    # @param [Hash, Types::GetDomainSuggestionsRequest] params
    # @option params [String] :domain_name
    #   <p>A domain name that you want to use as the basis for a list of possible domain names.
    #   			The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a
    #   			list of supported TLDs, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Internationalized domain names are not supported for some top-level domains. To
    #   			determine whether the TLD that you want to use supports internationalized domain names,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a>. </p>
    # @option params [Integer] :suggestion_count
    #   <p>The number of suggested domain names that you want Route 53 to return. Specify a value
    #   			between 1 and 50.</p>
    # @option params [Boolean] :only_available
    #   <p>If <code>OnlyAvailable</code> is <code>true</code>, Route 53 returns only domain names
    #   			that are available. If <code>OnlyAvailable</code> is <code>false</code>, Route 53
    #   			returns domain names without checking whether they're available to be registered. To
    #   			determine whether the domain is available, you can call
    #   				<code>checkDomainAvailability</code> for each suggestion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     suggestion_count: 1, # required
    #     only_available: false, # required
    #   }
    #   options = {}
    #   response = client.get_domain_suggestions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suggestions_list: [
    #       {
    #         domain_name: "DomainName",
    #         availability: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetDomainSuggestionsResponse]
    def get_domain_suggestions(params = {}, options = {})
      request = build_request(:get_domain_suggestions, params)
      request.send_request(options)
    end

    # <p>This operation returns the current status of an operation that is not
    # 			completed.</p>
    # @param [Hash, Types::GetOperationDetailRequest] params
    # @option params [String] :operation_id
    #   <p>The identifier for the operation for which you want to get the status. Route 53
    #   			returned the identifier in the response to the original request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_id: "OperationId", # required
    #   }
    #   options = {}
    #   response = client.get_operation_detail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId",
    #     status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"],
    #     message: "ErrorMessage",
    #     domain_name: "DomainName",
    #     type: "REGISTER_DOMAIN" # One of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN", "RELEASE_TO_GANDI", "TRANSFER_ON_RENEW", "RESTORE_DOMAIN"],
    #     submitted_date: Time.now,
    #     last_updated_date: Time.now,
    #     status_flag: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "PENDING_CUSTOMER_ACTION", "PENDING_AUTHORIZATION", "PENDING_PAYMENT_VERIFICATION", "PENDING_SUPPORT_CASE"]
    #   }
    # @return [Types::GetOperationDetailResponse]
    def get_operation_detail(params = {}, options = {})
      request = build_request(:get_operation_detail, params)
      request.send_request(options)
    end

    # <p>This operation returns all the domain names registered with Amazon Route 53 for the
    # 			current Amazon Web Services account if no filtering conditions are used.</p>
    # @param [Hash, Types::ListDomainsRequest] params
    # @option params [Array<Types::FilterCondition>] :filter_conditions
    #   <p>A complex type that contains information about the filters applied during the
    #   				<code>ListDomains</code> request. The filter conditions can include domain name and
    #   			domain expiration.</p>
    # @option params [Types::SortCondition] :sort_condition
    #   <p>A complex type that contains information about the requested ordering of domains in
    #   			the returned list.</p>
    # @option params [String] :marker
    #   <p>For an initial request for a list of domains, omit this element. If the number of
    #   			domains that are associated with the current Amazon Web Services account is greater than
    #   			the value that you specified for <code>MaxItems</code>, you can use <code>Marker</code>
    #   			to return additional domains. Get the value of <code>NextPageMarker</code> from the
    #   			previous response, and submit another request that includes the value of
    #   				<code>NextPageMarker</code> in the <code>Marker</code> element.</p>
    #            <p>Constraints: The marker must match the value specified in the previous request.</p>
    # @option params [Integer] :max_items
    #   <p>Number of domains to be returned.</p>
    #            <p>Default: 20</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_conditions: [
    #       {
    #         name: "DomainName" # One of: ["DomainName", "Expiry"], # required
    #         operator: "LE" # One of: ["LE", "GE", "BEGINS_WITH"], # required
    #         values: ["Value"], # required
    #       }
    #     ],
    #     sort_condition: {
    #       name: "DomainName" # One of: ["DomainName", "Expiry"], # required
    #       sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #     },
    #     marker: "PageMarker",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domains: [
    #       {
    #         domain_name: "DomainName",
    #         auto_renew: false,
    #         transfer_lock: false,
    #         expiry: Time.now
    #       }
    #     ],
    #     next_page_marker: "PageMarker"
    #   }
    # @return [Types::ListDomainsResponse]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Returns information about all of the operations that return an operation ID and that
    # 			have ever been performed on domains that were registered by the current account. </p>
    #          <p>This command runs only in the us-east-1 Region.</p>
    # @param [Hash, Types::ListOperationsRequest] params
    # @option params [Time] :submitted_since
    #   <p>An optional parameter that lets you get information about all the operations that you
    #   			submitted after a specified date and time. Specify the date and time in Unix time format
    #   			and Coordinated Universal time (UTC).</p>
    # @option params [String] :marker
    #   <p>For an initial request for a list of operations, omit this element. If the number of
    #   			operations that are not yet complete is greater than the value that you specified for
    #   				<code>MaxItems</code>, you can use <code>Marker</code> to return additional
    #   			operations. Get the value of <code>NextPageMarker</code> from the previous response, and
    #   			submit another request that includes the value of <code>NextPageMarker</code> in the
    #   				<code>Marker</code> element.</p>
    # @option params [Integer] :max_items
    #   <p>Number of domains to be returned.</p>
    #            <p>Default: 20</p>
    # @option params [Array<String>] :status
    #   <p> The status of the operations. </p>
    # @option params [Array<String>] :type
    #   <p> An arrays of the domains operation types. </p>
    # @option params [String] :sort_by
    #   <p> The sort type for returned values. </p>
    # @option params [String] :sort_order
    #   <p> The sort order for returned values, either ascending or descending. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     submitted_since: Time.now,
    #     marker: "PageMarker",
    #     max_items: 1,
    #     status: ["SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"]],
    #     type: ["REGISTER_DOMAIN" # One of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN", "RELEASE_TO_GANDI", "TRANSFER_ON_RENEW", "RESTORE_DOMAIN"]],
    #     sort_by: "SubmittedDate" # One of: ["SubmittedDate"],
    #     sort_order: "ASC" # One of: ["ASC", "DESC"]
    #   }
    #   options = {}
    #   response = client.list_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         operation_id: "OperationId",
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "ERROR", "SUCCESSFUL", "FAILED"],
    #         type: "REGISTER_DOMAIN" # One of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN", "RELEASE_TO_GANDI", "TRANSFER_ON_RENEW", "RESTORE_DOMAIN"],
    #         submitted_date: Time.now,
    #         domain_name: "DomainName",
    #         message: "ErrorMessage",
    #         status_flag: "PENDING_ACCEPTANCE" # One of: ["PENDING_ACCEPTANCE", "PENDING_CUSTOMER_ACTION", "PENDING_AUTHORIZATION", "PENDING_PAYMENT_VERIFICATION", "PENDING_SUPPORT_CASE"],
    #         last_updated_date: Time.now
    #       }
    #     ],
    #     next_page_marker: "PageMarker"
    #   }
    # @return [Types::ListOperationsResponse]
    def list_operations(params = {}, options = {})
      request = build_request(:list_operations, params)
      request.send_request(options)
    end

    # <p>Lists the following prices for either all the TLDs supported by Route 53, or
    # 			the specified TLD:</p>
    #          <ul>
    #             <li>
    #                <p>Registration</p>
    #             </li>
    #             <li>
    #                <p>Transfer</p>
    #             </li>
    #             <li>
    #                <p>Owner change</p>
    #             </li>
    #             <li>
    #                <p>Domain renewal</p>
    #             </li>
    #             <li>
    #                <p>Domain restoration</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListPricesRequest] params
    # @option params [String] :tld
    #   <p>The TLD for which you want to receive the pricing information. For example.
    #   				<code>.net</code>.</p>
    #            <p>If a <code>Tld</code> value is not provided, a list of prices for all TLDs supported
    #   			by Route 53 is returned.</p>
    # @option params [String] :marker
    #   <p>For an initial request for a list of prices, omit this element. If the number of
    #   			prices that are not yet complete is greater than the value that you specified for
    #   				<code>MaxItems</code>, you can use <code>Marker</code> to return additional prices.
    #   			Get the value of <code>NextPageMarker</code> from the previous response, and submit
    #   			another request that includes the value of <code>NextPageMarker</code> in the
    #   				<code>Marker</code> element. </p>
    #            <p>Used only for all TLDs. If you specify a TLD, don't specify a
    #   			<code>Marker</code>.</p>
    # @option params [Integer] :max_items
    #   <p>Number of <code>Prices</code> to be returned.</p>
    #            <p>Used only for all TLDs. If you specify a TLD, don't specify a
    #   			<code>MaxItems</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tld: "TldName",
    #     marker: "PageMarker",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_prices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prices: [
    #       {
    #         name: "DomainPriceName",
    #         registration_price: {
    #           price: 1.0, # required
    #           currency: "Currency", # required
    #         },
    #         transfer_price: {
    #           price: 1.0, # required
    #           currency: "Currency", # required
    #         },
    #         renewal_price: {
    #           price: 1.0, # required
    #           currency: "Currency", # required
    #         },
    #         change_ownership_price: {
    #           price: 1.0, # required
    #           currency: "Currency", # required
    #         },
    #         restoration_price: {
    #           price: 1.0, # required
    #           currency: "Currency", # required
    #         }
    #       }
    #     ],
    #     next_page_marker: "PageMarker"
    #   }
    # @return [Types::ListPricesResponse]
    def list_prices(params = {}, options = {})
      request = build_request(:list_prices, params)
      request.send_request(options)
    end

    # <p>This operation returns all of the tags that are associated with the specified
    # 			domain.</p>
    #          <p>All tag operations are eventually consistent; subsequent operations might not
    # 			immediately represent all issued operations.</p>
    # @param [Hash, Types::ListTagsForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The domain for which you want to get a list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForDomainResponse]
    def list_tags_for_domain(params = {}, options = {})
      request = build_request(:list_tags_for_domain, params)
      request.send_request(options)
    end

    # <p> Moves a domain from Amazon Web Services to another registrar. </p>
    #          <p>Supported actions:</p>
    #          <ul>
    #             <li>
    #                <p>Changes the IPS tags of a .uk domain, and pushes it to transit. Transit means
    # 					that the domain is ready to be transferred to another registrar.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PushDomainRequest] params
    # @option params [String] :domain_name
    #   <p> Name of the domain. </p>
    # @option params [String] :target
    #   <p> New IPS tag for the domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     target: "Label", # required
    #   }
    #   options = {}
    #   response = client.push_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def push_domain(params = {}, options = {})
      request = build_request(:push_domain, params)
      request.send_request(options)
    end

    # <p>This operation registers a domain. For some top-level domains (TLDs), this operation
    # 			requires extra parameters.</p>
    #          <p>When you register a domain, Amazon Route 53 does the following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a Route 53 hosted zone that has the same name as the domain. Route 53
    # 					assigns four name servers to your hosted zone and automatically updates your
    # 					domain registration with the names of these name servers.</p>
    #             </li>
    #             <li>
    #                <p>Enables auto renew, so your domain registration will renew automatically each
    # 					year. We'll notify you in advance of the renewal date so you can choose whether
    # 					to renew the registration.</p>
    #             </li>
    #             <li>
    #                <p>Optionally enables privacy protection, so WHOIS queries return contact for the registrar
    # 					or the phrase "REDACTED FOR PRIVACY", or "On behalf of <domain name> owner."
    # 					If you don't enable privacy protection, WHOIS queries return the information
    # 					that you entered for the administrative, registrant, and technical
    # 					contacts.</p>
    #                <note>
    #                   <p>While some domains may allow different privacy settings per contact, we recommend
    # 						specifying the same privacy setting for all contacts.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>If registration is successful, returns an operation ID that you can use to
    # 					track the progress and completion of the action. If the request is not completed
    # 					successfully, the domain registrant is notified by email.</p>
    #             </li>
    #             <li>
    #                <p>Charges your Amazon Web Services account an amount based on the top-level
    # 					domain. For more information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RegisterDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name that you want to register. The top-level domain (TLD), such as .com,
    #   			must be a TLD that Route 53 supports. For a list of supported TLDs, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can Register with Amazon Route 53</a> in the <i>Amazon
    #   				Route 53 Developer Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Internationalized domain names are not supported for some top-level domains. To
    #   			determine whether the TLD that you want to use supports internationalized domain names,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a>. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns">Formatting Internationalized Domain Names</a>. </p>
    # @option params [String] :idn_lang_code
    #   <p>Reserved for future use.</p>
    # @option params [Integer] :duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered
    #   			for a minimum of one year. The maximum period depends on the top-level domain. For the
    #   			range of valid values for your domain, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>Default: 1</p>
    # @option params [Boolean] :auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (<code>true</code>) or not
    #   				(<code>false</code>). Auto renewal only takes effect after the account is
    #   			charged.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Types::ContactDetail] :admin_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    # @option params [Types::ContactDetail] :registrant_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    # @option params [Types::ContactDetail] :tech_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    # @option params [Boolean] :privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the admin contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Boolean] :privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (the domain owner).</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Boolean] :privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Types::ContactDetail] :billing_contact
    #   <p>Provides detailed contact information. For information about the values that you
    #   			specify for each element, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html">ContactDetail</a>.</p>
    # @option params [Boolean] :privacy_protect_billing_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the billing contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     idn_lang_code: "LangCode",
    #     duration_in_years: 1, # required
    #     auto_renew: false,
    #     admin_contact: { # required
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     registrant_contact: { # required
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     tech_contact: { # required
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     privacy_protect_admin_contact: false,
    #     privacy_protect_registrant_contact: false,
    #     privacy_protect_tech_contact: false,
    #     billing_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     privacy_protect_billing_contact: false
    #   }
    #   options = {}
    #   response = client.register_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::RegisterDomainResponse]
    def register_domain(params = {}, options = {})
      request = build_request(:register_domain, params)
      request.send_request(options)
    end

    # <p>Rejects the transfer of a domain from another Amazon Web Services account to the
    # 			current Amazon Web Services account. You initiate a transfer betweenAmazon Web Services accounts using <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>. </p>
    #          <p>Use either <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> to determine whether the operation succeeded. <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> provides additional information, for example,
    # 				<code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>. </p>
    # @param [Hash, Types::RejectDomainTransferFromAnotherAwsAccountRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that was specified when another Amazon Web Services account
    #   			submitted a <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a> request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.reject_domain_transfer_from_another_aws_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::RejectDomainTransferFromAnotherAwsAccountResponse]
    def reject_domain_transfer_from_another_aws_account(params = {}, options = {})
      request = build_request(:reject_domain_transfer_from_another_aws_account, params)
      request.send_request(options)
    end

    # <p>This operation renews a domain for the specified number of years. The cost of renewing
    # 			your domain is billed to your Amazon Web Services account.</p>
    #          <p>We recommend that you renew your domain several weeks before the expiration date. Some
    # 			TLD registries delete domains before the expiration date if you haven't renewed far
    # 			enough in advance. For more information about renewing domain registration, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing
    # 				Registration for a Domain</a> in the <i>Amazon Route 53 Developer
    # 				Guide</i>.</p>
    # @param [Hash, Types::RenewDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to renew.</p>
    # @option params [Integer] :duration_in_years
    #   <p>The number of years that you want to renew the domain for. The maximum number of years
    #   			depends on the top-level domain. For the range of valid values for your domain, see
    #   				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>Default: 1</p>
    # @option params [Integer] :current_expiry_year
    #   <p>The year when the registration for the domain is set to expire. This value must match
    #   			the current expiration date for the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     duration_in_years: 1,
    #     current_expiry_year: 1, # required
    #   }
    #   options = {}
    #   response = client.renew_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::RenewDomainResponse]
    def renew_domain(params = {}, options = {})
      request = build_request(:renew_domain, params)
      request.send_request(options)
    end

    # <p>For operations that require confirmation that the email address for the registrant
    # 			contact is valid, such as registering a new domain, this operation resends the
    # 			confirmation email to the current email address for the registrant contact.</p>
    # @param [Hash, Types::ResendContactReachabilityEmailRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain for which you want Route 53 to resend a confirmation email to
    #   			the registrant contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName"
    #   }
    #   options = {}
    #   response = client.resend_contact_reachability_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "DomainName",
    #     email_address: "Email",
    #     is_already_verified: false
    #   }
    # @return [Types::ResendContactReachabilityEmailResponse]
    def resend_contact_reachability_email(params = {}, options = {})
      request = build_request(:resend_contact_reachability_email, params)
      request.send_request(options)
    end

    # <p> Resend the form of authorization email for this operation. </p>
    # @param [Hash, Types::ResendOperationAuthorizationRequest] params
    # @option params [String] :operation_id
    #   <p> Operation ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_id: "OperationId", # required
    #   }
    #   options = {}
    #   response = client.resend_operation_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def resend_operation_authorization(params = {}, options = {})
      request = build_request(:resend_operation_authorization, params)
      request.send_request(options)
    end

    # <p>This operation returns the authorization code for the domain. To transfer a domain to
    # 			another registrar, you provide this value to the new registrar.</p>
    # @param [Hash, Types::RetrieveDomainAuthCodeRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to get an authorization code for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.retrieve_domain_auth_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auth_code: "DomainAuthCode"
    #   }
    # @return [Types::RetrieveDomainAuthCodeResponse]
    def retrieve_domain_auth_code(params = {}, options = {})
      request = build_request(:retrieve_domain_auth_code, params)
      request.send_request(options)
    end

    # <p>Transfers a domain from another registrar to Amazon Route 53. </p>
    #          <p>For more information about transferring domains, see the following topics:</p>
    #          <ul>
    #             <li>
    #                <p>For transfer requirements, a detailed procedure, and information about viewing
    # 					the status of a domain that you're transferring to Route 53, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a Domain to Amazon Route 53</a> in the
    # 						<i>Amazon Route 53 Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>For information about how to transfer a domain from one Amazon Web Services account to another, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>. </p>
    #             </li>
    #             <li>
    #                <p>For information about how to transfer a domain to another domain registrar,
    # 					see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html">Transferring a Domain from Amazon Route 53 to Another Registrar</a> in
    # 					the <i>Amazon Route 53 Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>During the transfer of any country code top-level domains (ccTLDs) to Route 53, except for .cc and .tv, 
    # 			updates to the owner contact are ignored and the owner contact data from the registry is used. 
    # 			You can
    # 			update the owner contact after the transfer is complete. For more information, see
    # 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainContact.html">UpdateDomainContact</a>.</p>
    #          </important>
    #          <p>If the registrar for your domain is also the DNS service provider for the domain, we
    # 			highly recommend that you transfer your DNS service to Route 53 or to another DNS
    # 			service provider before you transfer your registration. Some registrars provide free DNS
    # 			service when you purchase a domain registration. When you transfer the registration, the
    # 			previous registrar will not renew your domain registration and could end your DNS
    # 			service at any time.</p>
    #          <important>
    #             <p>If the registrar for your domain is also the DNS service provider for the domain
    # 				and you don't transfer DNS service to another provider, your website, email, and the
    # 				web applications associated with the domain might become unavailable.</p>
    #          </important>
    #          <p>If the transfer is successful, this method returns an operation ID that you can use to
    # 			track the progress and completion of the action. If the transfer doesn't complete
    # 			successfully, the domain registrant will be notified by email.</p>
    # @param [Hash, Types::TransferDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to transfer to Route 53. The top-level domain
    #   			(TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs,
    #   			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains that You Can
    #   				Register with Amazon Route 53</a> in the <i>Amazon Route 53 Developer
    #   				Guide</i>.</p>
    #            <p>The domain name can contain only the following characters:</p>
    #            <ul>
    #               <li>
    #                  <p>Letters a through z. Domain names are not case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Numbers 0 through 9.</p>
    #               </li>
    #               <li>
    #                  <p>Hyphen (-). You can't specify a hyphen at the beginning or end of a label.
    #   				</p>
    #               </li>
    #               <li>
    #                  <p>Period (.) to separate the labels in the name, such as the <code>.</code> in
    #   						<code>example.com</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :idn_lang_code
    #   <p>Reserved for future use.</p>
    # @option params [Integer] :duration_in_years
    #   <p>The number of years that you want to register the domain for. Domains are registered
    #   			for a minimum of one year. The maximum period depends on the top-level domain.</p>
    #            <p>Default: 1</p>
    # @option params [Array<Types::Nameserver>] :nameservers
    #   <p>Contains details for the host and glue IP addresses.</p>
    # @option params [String] :auth_code
    #   <p>The authorization code for the domain. You get this value from the current
    #   			registrar.</p>
    # @option params [Boolean] :auto_renew
    #   <p>Indicates whether the domain will be automatically renewed (true) or not (false). Auto
    #   			renewal only takes effect after the account is charged.</p>
    #            <p>Default: true</p>
    # @option params [Types::ContactDetail] :admin_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Types::ContactDetail] :registrant_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Types::ContactDetail] :tech_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Boolean] :privacy_protect_admin_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information for the
    #   			registrar, the phrase "REDACTED FOR PRIVACY", or "On behalf of <domain name>
    #   			owner.".</p>
    #            <note>
    #               <p>While some domains may allow different privacy settings per contact, we recommend
    #   				specifying the same privacy setting for all contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Boolean] :privacy_protect_registrant_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (domain owner).</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Boolean] :privacy_protect_tech_contact
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    #            <p>Default: <code>true</code>
    #            </p>
    # @option params [Types::ContactDetail] :billing_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Boolean] :privacy_protect_billing_contact
    #   <p>
    #   			Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the billing contact.
    #   		</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     idn_lang_code: "LangCode",
    #     duration_in_years: 1, # required
    #     nameservers: [
    #       {
    #         name: "HostName", # required
    #         glue_ips: ["GlueIp"]
    #       }
    #     ],
    #     auth_code: "DomainAuthCode",
    #     auto_renew: false,
    #     admin_contact: { # required
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     registrant_contact: { # required
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     tech_contact: { # required
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     privacy_protect_admin_contact: false,
    #     privacy_protect_registrant_contact: false,
    #     privacy_protect_tech_contact: false,
    #     billing_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     privacy_protect_billing_contact: false
    #   }
    #   options = {}
    #   response = client.transfer_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::TransferDomainResponse]
    def transfer_domain(params = {}, options = {})
      request = build_request(:transfer_domain, params)
      request.send_request(options)
    end

    # <p>Transfers a domain from the current Amazon Web Services account to another Amazon Web Services account. Note the following:</p>
    #          <ul>
    #             <li>
    #                <p>The Amazon Web Services account that you're transferring the domain to must
    # 					accept the transfer. If the other account doesn't accept the transfer within 3
    # 					days, we cancel the transfer. See <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>. </p>
    #             </li>
    #             <li>
    #                <p>You can cancel the transfer before the other account accepts it. See <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html">CancelDomainTransferToAnotherAwsAccount</a>. </p>
    #             </li>
    #             <li>
    #                <p>The other account can reject the transfer. See <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html">RejectDomainTransferFromAnotherAwsAccount</a>. </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>When you transfer a domain from one Amazon Web Services account to another, Route
    # 				53 doesn't transfer the hosted zone that is associated with the domain. DNS
    # 				resolution isn't affected if the domain and the hosted zone are owned by separate
    # 				accounts, so transferring the hosted zone is optional. For information about
    # 				transferring the hosted zone to another Amazon Web Services account, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html">Migrating a
    # 					Hosted Zone to a Different Amazon Web Services Account</a> in the
    # 					<i>Amazon Route 53 Developer Guide</i>.</p>
    #          </important>
    #          <p>Use either <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a> or <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> to determine whether the operation succeeded. <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> provides additional information, for example,
    # 				<code>Domain Transfer from Aws Account 111122223333 has been cancelled</code>. </p>
    # @param [Hash, Types::TransferDomainToAnotherAwsAccountRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to transfer from the current Amazon Web Services account to another account.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the Amazon Web Services account that you want to transfer the domain
    #   			to, for example, <code>111122223333</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.transfer_domain_to_another_aws_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId",
    #     password: "Password"
    #   }
    # @return [Types::TransferDomainToAnotherAwsAccountResponse]
    def transfer_domain_to_another_aws_account(params = {}, options = {})
      request = build_request(:transfer_domain_to_another_aws_account, params)
      request.send_request(options)
    end

    # <p>This operation updates the contact information for a particular domain. You must
    # 			specify information for at least one contact: registrant, administrator, or
    # 			technical.</p>
    #          <p>If the update is successful, this method returns an operation ID that you can use to
    # 			track the progress and completion of the operation. If the request is not completed
    # 			successfully, the domain registrant will be notified by email.</p>
    # @param [Hash, Types::UpdateDomainContactRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update contact information for.</p>
    # @option params [Types::ContactDetail] :admin_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Types::ContactDetail] :registrant_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Types::ContactDetail] :tech_contact
    #   <p>Provides detailed contact information.</p>
    # @option params [Types::Consent] :consent
    #   <p> Customer's consent for the owner change request. Required if the domain is not free (consent price is more than $0.00).</p>
    # @option params [Types::ContactDetail] :billing_contact
    #   <p>Provides detailed contact information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     admin_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     registrant_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     tech_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     },
    #     consent: {
    #       max_price: 1.0, # required
    #       currency: "Currency", # required
    #     },
    #     billing_contact: {
    #       first_name: "ContactName",
    #       last_name: "ContactName",
    #       contact_type: "PERSON" # One of: ["PERSON", "COMPANY", "ASSOCIATION", "PUBLIC_BODY", "RESELLER"],
    #       organization_name: "ContactName",
    #       address_line1: "AddressLine",
    #       address_line2: "AddressLine",
    #       city: "City",
    #       state: "State",
    #       country_code: "AC" # One of: ["AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TP", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"],
    #       zip_code: "ZipCode",
    #       phone_number: "ContactNumber",
    #       email: "Email",
    #       fax: "ContactNumber",
    #       extra_params: [
    #         {
    #           name: "DUNS_NUMBER" # One of: ["DUNS_NUMBER", "BRAND_NUMBER", "BIRTH_DEPARTMENT", "BIRTH_DATE_IN_YYYY_MM_DD", "BIRTH_COUNTRY", "BIRTH_CITY", "DOCUMENT_NUMBER", "AU_ID_NUMBER", "AU_ID_TYPE", "CA_LEGAL_TYPE", "CA_BUSINESS_ENTITY_TYPE", "CA_LEGAL_REPRESENTATIVE", "CA_LEGAL_REPRESENTATIVE_CAPACITY", "ES_IDENTIFICATION", "ES_IDENTIFICATION_TYPE", "ES_LEGAL_FORM", "FI_BUSINESS_NUMBER", "FI_ID_NUMBER", "FI_NATIONALITY", "FI_ORGANIZATION_TYPE", "IT_NATIONALITY", "IT_PIN", "IT_REGISTRANT_ENTITY_TYPE", "RU_PASSPORT_DATA", "SE_ID_NUMBER", "SG_ID_NUMBER", "VAT_NUMBER", "UK_CONTACT_TYPE", "UK_COMPANY_NUMBER", "EU_COUNTRY_OF_CITIZENSHIP", "AU_PRIORITY_TOKEN", "AU_ELIGIBILITY_TYPE", "AU_POLICY_REASON", "AU_REGISTRANT_NAME"], # required
    #           value: "ExtraParamValue", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdateDomainContactResponse]
    def update_domain_contact(params = {}, options = {})
      request = build_request(:update_domain_contact, params)
      request.send_request(options)
    end

    # <p>This operation updates the specified domain contact's privacy setting. When privacy
    # 			protection is enabled, your contact information is replaced with contact information for
    # 			the registrar or with the phrase "REDACTED FOR PRIVACY", or "On behalf of <domain
    # 			name> owner."</p>
    #          <note>
    #             <p>While some domains may allow different privacy settings per contact, we recommend
    # 				specifying the same privacy setting for all contacts.</p>
    #          </note>
    #          <p>This operation affects only the contact information for the specified contact type
    # 			(administrative, registrant, or technical). If the request succeeds, Amazon Route 53
    # 			returns an operation ID that you can use with <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a> to track the progress and completion of the action. If
    # 			the request doesn't complete successfully, the domain registrant will be notified by
    # 			email.</p>
    #          <important>
    #             <p>By disabling the privacy service via API, you consent to the publication of the
    # 				contact information provided for this domain via the public WHOIS database. You
    # 				certify that you are the registrant of this domain name and have the authority to
    # 				make this decision. You may withdraw your consent at any time by enabling privacy
    # 				protection using either <code>UpdateDomainContactPrivacy</code> or the Route 53
    # 				console. Enabling privacy protection removes the contact information provided for
    # 				this domain from the WHOIS database. For more information on our privacy practices,
    # 				see <a href="https://aws.amazon.com/privacy/">https://aws.amazon.com/privacy/</a>.</p>
    #          </important>
    # @param [Hash, Types::UpdateDomainContactPrivacyRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to update the privacy setting for.</p>
    # @option params [Boolean] :admin_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the admin contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    # @option params [Boolean] :registrant_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the registrant contact (domain owner).</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    # @option params [Boolean] :tech_privacy
    #   <p>Whether you want to conceal contact information from WHOIS queries. If you specify
    #   				<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the technical contact.</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    # @option params [Boolean] :billing_privacy
    #   <p>
    #   			Whether you want to conceal contact information from WHOIS queries. If you specify
    #   			<code>true</code>, WHOIS ("who is") queries return contact information either for
    #   			Amazon Registrar or for our registrar associate,
    #   			Gandi. If you specify <code>false</code>, WHOIS queries return the
    #   			information that you entered for the billing contact.
    #   		</p>
    #            <note>
    #               <p>You must specify the same privacy setting for the administrative, billing, registrant, and
    #   				technical contacts.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     admin_privacy: false,
    #     registrant_privacy: false,
    #     tech_privacy: false,
    #     billing_privacy: false
    #   }
    #   options = {}
    #   response = client.update_domain_contact_privacy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdateDomainContactPrivacyResponse]
    def update_domain_contact_privacy(params = {}, options = {})
      request = build_request(:update_domain_contact_privacy, params)
      request.send_request(options)
    end

    # <p>This operation replaces the current set of name servers for the domain with the
    # 			specified set of name servers. If you use Amazon Route 53 as your DNS service, specify
    # 			the four name servers in the delegation set for the hosted zone for the domain.</p>
    #          <p>If successful, this operation returns an operation ID that you can use to track the
    # 			progress and completion of the action. If the request is not completed successfully, the
    # 			domain registrant will be notified by email.</p>
    # @param [Hash, Types::UpdateDomainNameserversRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want to change name servers for.</p>
    # @option params [String] :fi_auth_key
    #   <p>The authorization key for .fi domains</p>
    # @option params [Array<Types::Nameserver>] :nameservers
    #   <p>A list of new name servers for the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     fi_auth_key: "FIAuthKey",
    #     nameservers: [ # required
    #       {
    #         name: "HostName", # required
    #         glue_ips: ["GlueIp"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_domain_nameservers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdateDomainNameserversResponse]
    def update_domain_nameservers(params = {}, options = {})
      request = build_request(:update_domain_nameservers, params)
      request.send_request(options)
    end

    # <p>This operation adds or updates tags for a specified domain.</p>
    #          <p>All tag operations are eventually consistent; subsequent operations might not
    # 			immediately represent all issued operations.</p>
    # @param [Hash, Types::UpdateTagsForDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The domain for which you want to add or update tags.</p>
    # @option params [Array<Types::Tag>] :tags_to_update
    #   <p>A list of the tag keys and values that you want to add or update. If you specify a key
    #   			that already exists, the corresponding value will be replaced.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     tags_to_update: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_tags_for_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTagsForDomainResponse]
    def update_tags_for_domain(params = {}, options = {})
      request = build_request(:update_tags_for_domain, params)
      request.send_request(options)
    end

    # <p>Returns all the domain-related billing records for the current Amazon Web Services account for a specified period</p>
    # @param [Hash, Types::ViewBillingRequest] params
    # @option params [Time] :start
    #   <p>The beginning date and time for the time period for which you want a list of billing
    #   			records. Specify the date and time in Unix time format and Coordinated Universal time
    #   			(UTC).</p>
    # @option params [Time] :end
    #   <p>The end date and time for the time period for which you want a list of billing
    #   			records. Specify the date and time in Unix time format and Coordinated Universal time
    #   			(UTC).</p>
    # @option params [String] :marker
    #   <p>For an initial request for a list of billing records, omit this element. If the number
    #   			of billing records that are associated with the current Amazon Web Services account
    #   			during the specified period is greater than the value that you specified for
    #   				<code>MaxItems</code>, you can use <code>Marker</code> to return additional billing
    #   			records. Get the value of <code>NextPageMarker</code> from the previous response, and
    #   			submit another request that includes the value of <code>NextPageMarker</code> in the
    #   				<code>Marker</code> element. </p>
    #            <p>Constraints: The marker must match the value of <code>NextPageMarker</code> that was
    #   			returned in the previous response.</p>
    # @option params [Integer] :max_items
    #   <p>The number of billing records to be returned.</p>
    #            <p>Default: 20</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start: Time.now,
    #     end: Time.now,
    #     marker: "PageMarker",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.view_billing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_page_marker: "PageMarker",
    #     billing_records: [
    #       {
    #         domain_name: "DomainName",
    #         operation: "REGISTER_DOMAIN" # One of: ["REGISTER_DOMAIN", "DELETE_DOMAIN", "TRANSFER_IN_DOMAIN", "UPDATE_DOMAIN_CONTACT", "UPDATE_NAMESERVER", "CHANGE_PRIVACY_PROTECTION", "DOMAIN_LOCK", "ENABLE_AUTORENEW", "DISABLE_AUTORENEW", "ADD_DNSSEC", "REMOVE_DNSSEC", "EXPIRE_DOMAIN", "TRANSFER_OUT_DOMAIN", "CHANGE_DOMAIN_OWNER", "RENEW_DOMAIN", "PUSH_DOMAIN", "INTERNAL_TRANSFER_OUT_DOMAIN", "INTERNAL_TRANSFER_IN_DOMAIN", "RELEASE_TO_GANDI", "TRANSFER_ON_RENEW", "RESTORE_DOMAIN"],
    #         invoice_id: "InvoiceId",
    #         bill_date: Time.now,
    #         price: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::ViewBillingResponse]
    def view_billing(params = {}, options = {})
      request = build_request(:view_billing, params)
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
      context[:gem_name] = 'aws-sdk-route53domains'
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
