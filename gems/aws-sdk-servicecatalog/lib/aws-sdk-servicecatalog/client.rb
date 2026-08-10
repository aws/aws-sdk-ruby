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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:servicecatalog)

module Aws::ServiceCatalog
  # An API client for Aws::ServiceCatalog.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWS242ServiceCatalogService
    @identifier = :servicecatalog

    add_plugin(::Aws::ServiceCatalog::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ServiceCatalog::EndpointProvider)
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Accepts an offer to share the specified portfolio.</p>
    # @param [Hash, Types::AcceptPortfolioShareInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :portfolio_share_type
    #   <p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Accept imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     portfolio_share_type: "IMPORTED" # One of: ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #   }
    #   options = {}
    #   response = client.accept_portfolio_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptPortfolioShareOutput]
    def accept_portfolio_share(params = {}, options = {})
      request = build_request(:accept_portfolio_share, params)
      request.send_request(options)
    end

    # <p>Associates the specified budget with the specified resource.</p>
    # @param [Hash, Types::AssociateBudgetWithResourceInput] params
    # @option params [String] :budget_name
    #   <p>The name of the budget you want to associate.</p>
    # @option params [String] :resource_id
    #   <p> The resource identifier. Either a portfolio-id or a product-id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     budget_name: "BudgetName", # required
    #     resource_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.associate_budget_with_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateBudgetWithResourceOutput]
    def associate_budget_with_resource(params = {}, options = {})
      request = build_request(:associate_budget_with_resource, params)
      request.send_request(options)
    end

    # <p>Associates the specified principal ARN with the specified portfolio.</p>
    #          <p>If you share the portfolio with principal name sharing enabled, the <code>PrincipalARN</code> association is 
    #          included in the share. </p>
    #          <p>The <code>PortfolioID</code>, <code>PrincipalARN</code>, and <code>PrincipalType</code> parameters are
    #       required. </p>
    #          <p>You can associate a maximum of 10 Principals with a portfolio using <code>PrincipalType</code> as <code>IAM_PATTERN</code>. </p>
    #          <note>
    #             <p>When you associate a principal with portfolio, a potential privilege escalation path may occur when that portfolio is 
    #          then shared with other accounts. For a user in a recipient account who is <i>not</i> an Service Catalog Admin, 
    #          but still has the ability to create Principals (Users/Groups/Roles), that user could create a role that matches a principal 
    #          name association for the portfolio. Although this user may not know which principal names are associated through 
    #          Service Catalog, they may be able to guess the user. If this potential escalation path is a concern, then 
    #          Service Catalog recommends using <code>PrincipalType</code> as <code>IAM</code>. With this configuration, 
    #          the <code>PrincipalARN</code> must already exist in the recipient account before it can be associated. </p>
    #          </note>
    # @param [Hash, Types::AssociatePrincipalWithPortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal (user, role, or group). If the <code>PrincipalType</code> is <code>IAM</code>, the supported value is a 
    #            fully defined 
    #            <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM Amazon Resource Name (ARN)</a>. 
    #            If the <code>PrincipalType</code> is <code>IAM_PATTERN</code>, 
    #            the supported value is an <code>IAM</code> ARN <i>without an AccountID</i> in the following format:</p>
    #            <p>
    #               <i>arn:partition:iam:::resource-type/resource-id</i>
    #            </p>
    #            <p>The ARN resource-id can be either:</p>
    #            <ul>
    #               <li>
    #                  <p>A fully formed resource-id. For example, <i>arn:aws:iam:::role/resource-name</i> or 
    #               <i>arn:aws:iam:::role/resource-path/resource-name</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A wildcard ARN. The wildcard ARN accepts <code>IAM_PATTERN</code> values with a 
    #                  "*" or "?" in the resource-id segment of the ARN. For example <i>arn:partition:service:::resource-type/resource-path/resource-name</i>. 
    #                  The new symbols are exclusive to the <b>resource-path</b> and <b>resource-name</b> 
    #                  and cannot replace the <b>resource-type</b> or other 
    #               ARN values. </p>
    #                  <p>The ARN path and principal name allow unlimited wildcard characters.</p>
    #               </li>
    #            </ul>
    #            <p>Examples of an <b>acceptable</b> wildcard ARN:</p>
    #            <ul>
    #               <li>
    #                  <p>arn:aws:iam:::role/ResourceName_*</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:iam:::role/*/ResourceName_?</p>
    #               </li>
    #            </ul>
    #            <p>Examples of an <b>unacceptable</b> wildcard ARN:</p>
    #            <ul>
    #               <li>
    #                  <p>arn:aws:iam:::*/ResourceName</p>
    #               </li>
    #            </ul>
    #            <p>You can associate multiple <code>IAM_PATTERN</code>s even if the account has no principal 
    #            with that name. </p>
    #            <p>The "?" wildcard character matches zero or one of any character. This is similar to ".?" in regular 
    #                     regex context. The "*" wildcard character matches any number of any characters. 
    #                     This is similar to ".*" in regular regex context.</p>
    #            <p>In the IAM Principal ARN format (<i>arn:partition:iam:::resource-type/resource-path/resource-name</i>), 
    #            valid resource-type values include <b>user/</b>, <b>group/</b>, 
    #               or <b>role/</b>.  The "?" and "*" characters
    #                     are allowed only after the resource-type in the resource-id segment. 
    #                     You can use special characters anywhere within the resource-id. </p>
    #            <p>The "*" character also matches the "/" character, allowing paths to be formed <i>within</i> the 
    #                     resource-id. For example, <i>arn:aws:iam:::role/<b>*</b>/ResourceName_?</i> 
    #                     matches both <i>arn:aws:iam:::role/pathA/pathB/ResourceName_1</i> 
    #                     and 
    #                     <i>arn:aws:iam:::role/pathA/ResourceName_1</i>. </p>
    # @option params [String] :principal_type
    #   <p>The principal type. The supported value is <code>IAM</code> if you use a fully defined Amazon Resource Name 
    #            (ARN), or <code>IAM_PATTERN</code> if you use an ARN with no <code>accountID</code>, 
    #            with or without wildcard characters. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     principal_arn: "PrincipalARN", # required
    #     principal_type: "IAM" # One of: ["IAM", "IAM_PATTERN"], # required
    #   }
    #   options = {}
    #   response = client.associate_principal_with_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociatePrincipalWithPortfolioOutput]
    def associate_principal_with_portfolio(params = {}, options = {})
      request = build_request(:associate_principal_with_portfolio, params)
      request.send_request(options)
    end

    # <p>Associates the specified product with the specified portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::AssociateProductWithPortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :source_portfolio_id
    #   <p>The identifier of the source portfolio.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     portfolio_id: "Id", # required
    #     source_portfolio_id: "Id"
    #   }
    #   options = {}
    #   response = client.associate_product_with_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateProductWithPortfolioOutput]
    def associate_product_with_portfolio(params = {}, options = {})
      request = build_request(:associate_product_with_portfolio, params)
      request.send_request(options)
    end

    # <p>Associates a self-service action with a provisioning artifact.</p>
    # @param [Hash, Types::AssociateServiceActionWithProvisioningArtifactInput] params
    # @option params [String] :product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     service_action_id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.associate_service_action_with_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateServiceActionWithProvisioningArtifactOutput]
    def associate_service_action_with_provisioning_artifact(params = {}, options = {})
      request = build_request(:associate_service_action_with_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Associate the specified TagOption with the specified portfolio or product.</p>
    # @param [Hash, Types::AssociateTagOptionWithResourceInput] params
    # @option params [String] :resource_id
    #   <p>The resource identifier.</p>
    # @option params [String] :tag_option_id
    #   <p>The TagOption identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tag_option_id: "TagOptionId", # required
    #   }
    #   options = {}
    #   response = client.associate_tag_option_with_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateTagOptionWithResourceOutput]
    def associate_tag_option_with_resource(params = {}, options = {})
      request = build_request(:associate_tag_option_with_resource, params)
      request.send_request(options)
    end

    # <p>Associates multiple self-service actions with provisioning artifacts.</p>
    # @param [Hash, Types::BatchAssociateServiceActionWithProvisioningArtifactInput] params
    # @option params [Array<Types::ServiceActionAssociation>] :service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_action_associations: [ # required
    #       {
    #         service_action_id: "Id", # required
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #       }
    #     ],
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.batch_associate_service_action_with_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_service_action_associations: [
    #       {
    #         service_action_id: "Id",
    #         product_id: "Id",
    #         provisioning_artifact_id: "Id",
    #         error_code: "DUPLICATE_RESOURCE" # One of: ["DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING", "INVALID_PARAMETER"],
    #         error_message: "ServiceActionAssociationErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateServiceActionWithProvisioningArtifactOutput]
    def batch_associate_service_action_with_provisioning_artifact(params = {}, options = {})
      request = build_request(:batch_associate_service_action_with_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Disassociates a batch of self-service actions from the specified provisioning artifact.</p>
    # @param [Hash, Types::BatchDisassociateServiceActionFromProvisioningArtifactInput] params
    # @option params [Array<Types::ServiceActionAssociation>] :service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_action_associations: [ # required
    #       {
    #         service_action_id: "Id", # required
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #       }
    #     ],
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.batch_disassociate_service_action_from_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_service_action_associations: [
    #       {
    #         service_action_id: "Id",
    #         product_id: "Id",
    #         provisioning_artifact_id: "Id",
    #         error_code: "DUPLICATE_RESOURCE" # One of: ["DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING", "INVALID_PARAMETER"],
    #         error_message: "ServiceActionAssociationErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput]
    def batch_disassociate_service_action_from_provisioning_artifact(params = {}, options = {})
      request = build_request(:batch_disassociate_service_action_from_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Copies the specified source product to the specified target product or a new
    #          product.</p>
    #          <p>You can copy a product to the same account or another account. You can copy a product
    #          to the same Region or another Region. If you copy a product to another account, you must
    #          first share the product in a portfolio using <a>CreatePortfolioShare</a>.</p>
    #          <p>This operation is performed asynchronously. To track the progress of the
    #          operation, use <a>DescribeCopyProductStatus</a>.</p>
    # @param [Hash, Types::CopyProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :source_product_arn
    #   <p>The Amazon Resource Name (ARN) of the source product.</p>
    # @option params [String] :target_product_id
    #   <p>The identifier of the target product. By default, a new product is created.</p>
    # @option params [String] :target_product_name
    #   <p>A name for the target product. The default is the name of the source product.</p>
    # @option params [Array<Hash<String, String>>] :source_provisioning_artifact_identifiers
    #   <p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy. 
    #            By default, all provisioning artifacts are copied.</p>
    # @option params [Array<String>] :copy_options
    #   <p>The copy options. If the value is <code>CopyTags</code>, the tags from the source
    #            product are copied to the target product.</p>
    # @option params [String] :idempotency_token
    #   <p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     source_product_arn: "ProductArn", # required
    #     target_product_id: "Id",
    #     target_product_name: "ProductViewName",
    #     source_provisioning_artifact_identifiers: [
    #       {
    #         "ProvisioningArtifactPropertyName" => "ProvisioningArtifactPropertyValue"
    #       }
    #     ],
    #     copy_options: ["CopyTags" # One of: ["CopyTags"]],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.copy_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     copy_product_token: "Id"
    #   }
    # @return [Types::CopyProductOutput]
    def copy_product(params = {}, options = {})
      request = build_request(:copy_product, params)
      request.send_request(options)
    end

    # <p>Creates a constraint.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::CreateConstraintInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be 
    #                  account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STACKSET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>The description of the constraint.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     product_id: "Id", # required
    #     parameters: "ConstraintParameters", # required
    #     type: "ConstraintType", # required
    #     description: "ConstraintDescription",
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_constraint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     constraint_detail: {
    #       constraint_id: "Id",
    #       type: "ConstraintType",
    #       description: "ConstraintDescription",
    #       owner: "AccountId",
    #       product_id: "Id",
    #       portfolio_id: "Id"
    #     },
    #     constraint_parameters: "ConstraintParameters",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"]
    #   }
    # @return [Types::CreateConstraintOutput]
    def create_constraint(params = {}, options = {})
      request = build_request(:create_constraint, params)
      request.send_request(options)
    end

    # <p>Creates a portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::CreatePortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :display_name
    #   <p>The name to use for display purposes.</p>
    # @option params [String] :description
    #   <p>The description of the portfolio.</p>
    # @option params [String] :provider_name
    #   <p>The name of the portfolio provider.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     display_name: "PortfolioDisplayName", # required
    #     description: "PortfolioDescription",
    #     provider_name: "ProviderName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_detail: {
    #       id: "Id",
    #       arn: "ResourceARN",
    #       display_name: "PortfolioDisplayName",
    #       description: "PortfolioDescription",
    #       created_time: Time.now,
    #       provider_name: "ProviderName"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreatePortfolioOutput]
    def create_portfolio(params = {}, options = {})
      request = build_request(:create_portfolio, params)
      request.send_request(options)
    end

    # <p>Shares the specified portfolio with the specified account or organization node.
    #          Shares to an organization node can only be created by the management account of an
    #          organization or by a delegated administrator. You can share portfolios to an organization,
    #          an organizational unit, or a specific account.</p>
    #          <p>Note that if a delegated admin is de-registered, they can no longer create portfolio shares.</p>
    #          <p>
    #             <code>AWSOrganizationsAccess</code> must be enabled in order to create a portfolio share to an organization node.</p>
    #          <p>You can't share a shared resource, including portfolios that contain a shared product.</p>
    #          <p>If the portfolio share with the specified account or organization node already exists, this action will have no effect 
    #          and will not return an error. To update an existing share, you must use the <code> UpdatePortfolioShare</code> API instead. </p>
    #          <note>
    #             <p>When you associate a principal with portfolio, a potential privilege escalation path may occur when that portfolio is 
    #          then shared with other accounts. For a user in a recipient account who is <i>not</i> an Service Catalog Admin, 
    #          but still has the ability to create Principals (Users/Groups/Roles), that user could create a role that matches a principal 
    #          name association for the portfolio. Although this user may not know which principal names are associated through 
    #          Service Catalog, they may be able to guess the user. If this potential escalation path is a concern, then 
    #          Service Catalog recommends using <code>PrincipalType</code> as <code>IAM</code>. With this configuration, 
    #          the <code>PrincipalARN</code> must already exist in the recipient account before it can be associated. </p>
    #          </note>
    # @param [Hash, Types::CreatePortfolioShareInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID. For example, <code>123456789012</code>.</p>
    # @option params [Types::OrganizationNode] :organization_node
    #   <p>The organization node to whom you are going to share. When you pass <code>OrganizationNode</code>, it creates <code>PortfolioShare</code> for all of the Amazon Web Services accounts that are associated to the <code>OrganizationNode</code>. 
    #         The output returns a <code>PortfolioShareToken</code>, which enables the administrator to monitor the status of the <code>PortfolioShare</code> creation process.</p>
    # @option params [Boolean] :share_tag_options
    #   <p>Enables or disables <code>TagOptions </code> sharing when creating the portfolio share. If this flag is not 
    #            provided, TagOptions sharing is disabled.</p>
    # @option params [Boolean] :share_principals
    #   <p>This parameter is only supported for portfolios with an <b>OrganizationalNode</b> 
    #         Type of <code>ORGANIZATION</code> or <code>ORGANIZATIONAL_UNIT</code>. </p>
    #            <p>Enables or disables <code>Principal</code> sharing when creating the portfolio share. If you do 
    #            <b>not</b> provide this flag, principal sharing is disabled. </p>
    #            <p>When you enable Principal Name Sharing for a portfolio share, the share recipient
    #            account end users with a principal that matches any of the associated IAM
    #            patterns can provision products from the portfolio. Once
    #            shared, the share recipient can view associations of <code>PrincipalType</code>: 
    #            <code>IAM_PATTERN</code> on their portfolio. You can create the principals in the recipient account before or 
    #            after creating the share. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId",
    #     organization_node: {
    #       type: "ORGANIZATION" # One of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"],
    #       value: "OrganizationNodeValue"
    #     },
    #     share_tag_options: false,
    #     share_principals: false
    #   }
    #   options = {}
    #   response = client.create_portfolio_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_share_token: "Id"
    #   }
    # @return [Types::CreatePortfolioShareOutput]
    def create_portfolio_share(params = {}, options = {})
      request = build_request(:create_portfolio_share, params)
      request.send_request(options)
    end

    # <p>Creates a product.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    #          <p>The user or role that performs this operation must have the
    #             <code>cloudformation:GetTemplate</code> IAM policy permission. This policy permission is
    #          required when using the <code>ImportFromPhysicalId</code> template source in the
    #          information data section.</p>
    # @param [Hash, Types::CreateProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the product.</p>
    # @option params [String] :owner
    #   <p>The owner of the product.</p>
    # @option params [String] :description
    #   <p>The description of the product.</p>
    # @option params [String] :distributor
    #   <p>The distributor of the product.</p>
    # @option params [String] :support_description
    #   <p>The support information about the product.</p>
    # @option params [String] :support_email
    #   <p>The contact email for product support.</p>
    # @option params [String] :support_url
    #   <p>The contact URL for product support.</p>
    #            <p>
    #               <code>^https?:\/\// </code>/ is the pattern used to validate SupportUrl.</p>
    # @option params [String] :product_type
    #   <p>The type of product.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    # @option params [Types::ProvisioningArtifactProperties] :provisioning_artifact_parameters
    #   <p>The configuration of the provisioning artifact. </p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @option params [Types::SourceConnection] :source_connection
    #   <p>Specifies connection details for the created product and syncs the product to the connection source
    #            artifact. This automatically manages the product's artifacts based on changes to the source.
    #            The <code>SourceConnection</code> parameter consists of the following sub-fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConnectionParamters</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     name: "ProductViewName", # required
    #     owner: "ProductViewOwner", # required
    #     description: "ProductViewShortDescription",
    #     distributor: "ProductViewOwner",
    #     support_description: "SupportDescription",
    #     support_email: "SupportEmail",
    #     support_url: "SupportUrl",
    #     product_type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     provisioning_artifact_parameters: {
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactDescription",
    #       info: {
    #         "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue"
    #       },
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       disable_template_validation: false
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #     source_connection: {
    #       type: "CODESTAR" # One of: ["CODESTAR"],
    #       connection_parameters: { # required
    #         code_star: {
    #           connection_arn: "CodeStarConnectionArn", # required
    #           repository: "Repository", # required
    #           branch: "RepositoryBranch", # required
    #           artifact_path: "RepositoryArtifactPath", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_detail: {
    #       product_view_summary: {
    #         id: "Id",
    #         product_id: "Id",
    #         name: "ProductViewName",
    #         owner: "ProductViewOwner",
    #         short_description: "ProductViewShortDescription",
    #         type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #         distributor: "ProductViewDistributor",
    #         has_default_path: false,
    #         support_email: "SupportEmail",
    #         support_description: "SupportDescription",
    #         support_url: "SupportUrl"
    #       },
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"],
    #       product_arn: "ResourceARN",
    #       created_time: Time.now,
    #       source_connection: {
    #         type: "CODESTAR" # One of: ["CODESTAR"],
    #         connection_parameters: {
    #           code_star: {
    #             connection_arn: "CodeStarConnectionArn", # required
    #             repository: "Repository", # required
    #             branch: "RepositoryBranch", # required
    #             artifact_path: "RepositoryArtifactPath", # required
    #           }
    #         },
    #         last_sync: {
    #           last_sync_time: Time.now,
    #           last_sync_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"],
    #           last_sync_status_message: "LastSyncStatusMessage",
    #           last_successful_sync_time: Time.now,
    #           last_successful_sync_provisioning_artifact_id: "Id"
    #         }
    #       }
    #     },
    #     provisioning_artifact_detail: {
    #       id: "Id",
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactName",
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       created_time: Time.now,
    #       active: false,
    #       guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"],
    #       source_revision: "SourceRevision"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateProductOutput]
    def create_product(params = {}, options = {})
      request = build_request(:create_product, params)
      request.send_request(options)
    end

    # <p>Creates a plan.</p>
    #          <p>A plan includes the list of resources to be  
    #          created (when provisioning a new product) or modified (when updating a provisioned product)
    #          when the plan is executed.</p>
    #          <p>You can create one plan for each provisioned product. To create a plan for an existing 
    #          provisioned product, the product status must be AVAILABLE or TAINTED.</p>
    #          <p>To view the resource changes in the change set, use <a>DescribeProvisionedProductPlan</a>.
    #          To create or modify the provisioned product, use <a>ExecuteProvisionedProductPlan</a>.</p>
    # @param [Hash, Types::CreateProvisionedProductPlanInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :plan_name
    #   <p>The name of the plan.</p>
    # @option params [String] :plan_type
    #   <p>The plan type.</p>
    # @option params [Array<String>] :notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    # @option params [String] :path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the Amazon Web Services account and cannot be updated after the product is provisioned.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    #            <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     plan_name: "ProvisionedProductPlanName", # required
    #     plan_type: "CLOUDFORMATION" # One of: ["CLOUDFORMATION"], # required
    #     notification_arns: ["NotificationArn"],
    #     path_id: "Id",
    #     product_id: "Id", # required
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     provisioning_artifact_id: "Id", # required
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_provisioned_product_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     plan_name: "ProvisionedProductPlanName",
    #     plan_id: "Id",
    #     provision_product_id: "Id",
    #     provisioned_product_name: "ProvisionedProductName",
    #     provisioning_artifact_id: "Id"
    #   }
    # @return [Types::CreateProvisionedProductPlanOutput]
    def create_provisioned_product_plan(params = {}, options = {})
      request = build_request(:create_provisioned_product_plan, params)
      request.send_request(options)
    end

    # <p>Creates a provisioning artifact (also known as a version) for the specified product.</p>
    #          <p>You cannot create a provisioning artifact for a product that was shared with you.</p>
    #          <p>The user or role that performs this operation must have the <code>cloudformation:GetTemplate</code>
    #          IAM policy permission. This policy permission is required when using the
    #          <code>ImportFromPhysicalId</code> template source in the information data section.</p>
    # @param [Hash, Types::CreateProvisioningArtifactInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [Types::ProvisioningArtifactProperties] :parameters
    #   <p>The configuration for the provisioning artifact.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     parameters: { # required
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactDescription",
    #       info: {
    #         "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue"
    #       },
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       disable_template_validation: false
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioning_artifact_detail: {
    #       id: "Id",
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactName",
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       created_time: Time.now,
    #       active: false,
    #       guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"],
    #       source_revision: "SourceRevision"
    #     },
    #     info: {
    #       "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue"
    #     },
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"]
    #   }
    # @return [Types::CreateProvisioningArtifactOutput]
    def create_provisioning_artifact(params = {}, options = {})
      request = build_request(:create_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Creates a self-service action.</p>
    # @param [Hash, Types::CreateServiceActionInput] params
    # @option params [String] :name
    #   <p>The self-service action name.</p>
    # @option params [String] :definition_type
    #   <p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    # @option params [Hash<String, String>] :definition
    #   <p>The self-service action definition. Can be one of the following:</p>
    #            <dl>
    #               <dt>Name</dt>
    #               <dd>
    #                  <p>The name of the Amazon Web Services Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>
    #                  <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>
    #               </dd>
    #               <dt>Version</dt>
    #               <dd>
    #                  <p>The Amazon Web Services Systems Manager automation document version. For example, <code>"Version": "1"</code>
    #                  </p>
    #               </dd>
    #               <dt>AssumeRole</dt>
    #               <dd>
    #                  <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p>
    #                  <p>To reuse the provisioned product launch role, set to <code>"AssumeRole": "LAUNCH_ROLE"</code>.</p>
    #               </dd>
    #               <dt>Parameters</dt>
    #               <dd>
    #                  <p>The list of parameters in JSON format.</p>
    #                  <p>For example: <code>[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]</code> or <code>[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]</code>.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :description
    #   <p>The self-service action description.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceActionName", # required
    #     definition_type: "SSM_AUTOMATION" # One of: ["SSM_AUTOMATION"], # required
    #     definition: { # required
    #       "ServiceActionDefinitionKey" => "ServiceActionDefinitionValue"
    #     },
    #     description: "ServiceActionDescription",
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.create_service_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_action_detail: {
    #       service_action_summary: {
    #         id: "Id",
    #         name: "ServiceActionName",
    #         description: "ServiceActionDescription",
    #         definition_type: "SSM_AUTOMATION" # One of: ["SSM_AUTOMATION"]
    #       },
    #       definition: {
    #         "ServiceActionDefinitionKey" => "ServiceActionDefinitionValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateServiceActionOutput]
    def create_service_action(params = {}, options = {})
      request = build_request(:create_service_action, params)
      request.send_request(options)
    end

    # <p>Creates a TagOption.</p>
    # @param [Hash, Types::CreateTagOptionInput] params
    # @option params [String] :key
    #   <p>The TagOption key.</p>
    # @option params [String] :value
    #   <p>The TagOption value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key: "TagOptionKey", # required
    #     value: "TagOptionValue", # required
    #   }
    #   options = {}
    #   response = client.create_tag_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_option_detail: {
    #       key: "TagOptionKey",
    #       value: "TagOptionValue",
    #       active: false,
    #       id: "TagOptionId",
    #       owner: "Owner"
    #     }
    #   }
    # @return [Types::CreateTagOptionOutput]
    def create_tag_option(params = {}, options = {})
      request = build_request(:create_tag_option, params)
      request.send_request(options)
    end

    # <p>Deletes the specified constraint.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::DeleteConstraintInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The identifier of the constraint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_constraint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConstraintOutput]
    def delete_constraint(params = {}, options = {})
      request = build_request(:delete_constraint, params)
      request.send_request(options)
    end

    # <p>Deletes the specified portfolio.</p>
    #          <p>You cannot delete a portfolio if it was shared with you or if it has associated 
    #          products, users, constraints, or shared accounts.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::DeletePortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The portfolio identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePortfolioOutput]
    def delete_portfolio(params = {}, options = {})
      request = build_request(:delete_portfolio, params)
      request.send_request(options)
    end

    # <p>Stops sharing the specified portfolio with the specified account or organization
    #          node. Shares to an organization node can only be deleted by the management account of an
    #          organization or by a delegated administrator.</p>
    #          <p>Note that if a delegated admin is de-registered, portfolio shares created from that account are removed.</p>
    # @param [Hash, Types::DeletePortfolioShareInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    # @option params [Types::OrganizationNode] :organization_node
    #   <p>The organization node to whom you are going to stop sharing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId",
    #     organization_node: {
    #       type: "ORGANIZATION" # One of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"],
    #       value: "OrganizationNodeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_portfolio_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_share_token: "Id"
    #   }
    # @return [Types::DeletePortfolioShareOutput]
    def delete_portfolio_share(params = {}, options = {})
      request = build_request(:delete_portfolio_share, params)
      request.send_request(options)
    end

    # <p>Deletes the specified product.</p>
    #          <p>You cannot delete a product if it was shared with you or is associated with a portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::DeleteProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The product identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProductOutput]
    def delete_product(params = {}, options = {})
      request = build_request(:delete_product, params)
      request.send_request(options)
    end

    # <p>Deletes the specified plan.</p>
    # @param [Hash, Types::DeleteProvisionedProductPlanInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :plan_id
    #   <p>The plan identifier.</p>
    # @option params [Boolean] :ignore_errors
    #   <p>If set to true, Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     ignore_errors: false
    #   }
    #   options = {}
    #   response = client.delete_provisioned_product_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProvisionedProductPlanOutput]
    def delete_provisioned_product_plan(params = {}, options = {})
      request = build_request(:delete_provisioned_product_plan, params)
      request.send_request(options)
    end

    # <p>Deletes the specified provisioning artifact (also known as a version) for the specified product.</p>
    #          <p>You cannot delete a provisioning artifact associated with a product that was shared with you. 
    #          You cannot delete the last provisioning artifact for a product, because a product must have at 
    #          least one provisioning artifact.</p>
    # @param [Hash, Types::DeleteProvisioningArtifactInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProvisioningArtifactOutput]
    def delete_provisioning_artifact(params = {}, options = {})
      request = build_request(:delete_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Deletes a self-service action.</p>
    # @param [Hash, Types::DeleteServiceActionInput] params
    # @option params [String] :id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.delete_service_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceActionOutput]
    def delete_service_action(params = {}, options = {})
      request = build_request(:delete_service_action, params)
      request.send_request(options)
    end

    # <p>Deletes the specified TagOption.</p>
    #          <p>You cannot delete a TagOption if it is associated with a product or portfolio.</p>
    # @param [Hash, Types::DeleteTagOptionInput] params
    # @option params [String] :id
    #   <p>The TagOption identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TagOptionId", # required
    #   }
    #   options = {}
    #   response = client.delete_tag_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTagOptionOutput]
    def delete_tag_option(params = {}, options = {})
      request = build_request(:delete_tag_option, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified constraint.</p>
    # @param [Hash, Types::DescribeConstraintInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The identifier of the constraint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.describe_constraint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     constraint_detail: {
    #       constraint_id: "Id",
    #       type: "ConstraintType",
    #       description: "ConstraintDescription",
    #       owner: "AccountId",
    #       product_id: "Id",
    #       portfolio_id: "Id"
    #     },
    #     constraint_parameters: "ConstraintParameters",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"]
    #   }
    # @return [Types::DescribeConstraintOutput]
    def describe_constraint(params = {}, options = {})
      request = build_request(:describe_constraint, params)
      request.send_request(options)
    end

    # <p>Gets the status of the specified copy product operation.</p>
    # @param [Hash, Types::DescribeCopyProductStatusInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :copy_product_token
    #   <p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     copy_product_token: "Id", # required
    #   }
    #   options = {}
    #   response = client.describe_copy_product_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     copy_product_status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED"],
    #     target_product_id: "Id",
    #     status_detail: "StatusDetail"
    #   }
    # @return [Types::DescribeCopyProductStatusOutput]
    def describe_copy_product_status(params = {}, options = {})
      request = build_request(:describe_copy_product_status, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified portfolio.</p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::DescribePortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The portfolio identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.describe_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_detail: {
    #       id: "Id",
    #       arn: "ResourceARN",
    #       display_name: "PortfolioDisplayName",
    #       description: "PortfolioDescription",
    #       created_time: Time.now,
    #       provider_name: "ProviderName"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     tag_options: [
    #       {
    #         key: "TagOptionKey",
    #         value: "TagOptionValue",
    #         active: false,
    #         id: "TagOptionId",
    #         owner: "Owner"
    #       }
    #     ],
    #     budgets: [
    #       {
    #         budget_name: "BudgetName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribePortfolioOutput]
    def describe_portfolio(params = {}, options = {})
      request = build_request(:describe_portfolio, params)
      request.send_request(options)
    end

    # <p>Gets the status of the specified portfolio share operation. This API can only be called
    #          by the management account in the organization or by a delegated admin.</p>
    # @param [Hash, Types::DescribePortfolioShareStatusInput] params
    # @option params [String] :portfolio_share_token
    #   <p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portfolio_share_token: "Id", # required
    #   }
    #   options = {}
    #   response = client.describe_portfolio_share_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_share_token: "Id",
    #     portfolio_id: "Id",
    #     organization_node_value: "OrganizationNodeValue",
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"],
    #     share_details: {
    #       successful_shares: ["AccountId"],
    #       share_errors: [
    #         {
    #           accounts: ["AccountId"],
    #           message: "Message",
    #           error: "Error"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribePortfolioShareStatusOutput]
    def describe_portfolio_share_status(params = {}, options = {})
      request = build_request(:describe_portfolio_share_status, params)
      request.send_request(options)
    end

    # <p>Returns a summary of each of the portfolio shares that were created for the specified portfolio.</p>
    #          <p>You can use this API to determine which accounts or organizational nodes this
    #          portfolio have been shared, whether the recipient entity has imported the share, and
    #          whether TagOptions are included with the share.</p>
    #          <p>The <code>PortfolioId</code> and <code>Type</code> parameters are both required.</p>
    # @param [Hash, Types::DescribePortfolioSharesInput] params
    # @option params [String] :portfolio_id
    #   <p>The unique identifier of the portfolio for which shares will be retrieved.</p>
    # @option params [String] :type
    #   <p>The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following:</p>
    #            <p>1. <code>ACCOUNT</code> - Represents an external account to account share.</p>
    #            <p>2. <code>ORGANIZATION</code> - Represents a share to an organization. This share is available to every account in the organization.</p>
    #            <p>3. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an organizational unit.</p>
    #            <p>4. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to an account in the organization.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     portfolio_id: "Id", # required
    #     type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"], # required
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_portfolio_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_page_token: "PageToken",
    #     portfolio_share_details: [
    #       {
    #         principal_id: "Id",
    #         type: "ACCOUNT" # One of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"],
    #         accepted: false,
    #         share_tag_options: false,
    #         share_principals: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribePortfolioSharesOutput]
    def describe_portfolio_shares(params = {}, options = {})
      request = build_request(:describe_portfolio_shares, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified product.</p>
    #          <note>
    #             <p>
    #             Running this operation 
    #             with administrator access 
    #             results 
    #             in a failure. 
    #             <a>DescribeProductAsAdmin</a> should be used instead. 
    #          </p>
    #          </note>
    # @param [Hash, Types::DescribeProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The product identifier.</p>
    # @option params [String] :name
    #   <p>The product name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id",
    #     name: "ProductViewName"
    #   }
    #   options = {}
    #   response = client.describe_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_summary: {
    #       id: "Id",
    #       product_id: "Id",
    #       name: "ProductViewName",
    #       owner: "ProductViewOwner",
    #       short_description: "ProductViewShortDescription",
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       distributor: "ProductViewDistributor",
    #       has_default_path: false,
    #       support_email: "SupportEmail",
    #       support_description: "SupportDescription",
    #       support_url: "SupportUrl"
    #     },
    #     provisioning_artifacts: [
    #       {
    #         id: "Id",
    #         name: "ProvisioningArtifactName",
    #         description: "ProvisioningArtifactDescription",
    #         created_time: Time.now,
    #         guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"]
    #       }
    #     ],
    #     budgets: [
    #       {
    #         budget_name: "BudgetName"
    #       }
    #     ],
    #     launch_paths: [
    #       {
    #         id: "Id",
    #         name: "PortfolioName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProductOutput]
    def describe_product(params = {}, options = {})
      request = build_request(:describe_product, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified product. This operation is run with administrator access.</p>
    # @param [Hash, Types::DescribeProductAsAdminInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The product identifier.</p>
    # @option params [String] :name
    #   <p>The product name.</p>
    # @option params [String] :source_portfolio_id
    #   <p>The unique identifier of the shared portfolio that the specified product is associated
    #            with.</p>
    #            <p>You can provide this parameter to retrieve the shared TagOptions associated with the
    #            product. If this parameter is provided and if TagOptions sharing is enabled in the
    #            portfolio share, the API returns both local and shared TagOptions associated with the
    #            product. Otherwise only local TagOptions will be returned. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id",
    #     name: "ProductViewName",
    #     source_portfolio_id: "Id"
    #   }
    #   options = {}
    #   response = client.describe_product_as_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_detail: {
    #       product_view_summary: {
    #         id: "Id",
    #         product_id: "Id",
    #         name: "ProductViewName",
    #         owner: "ProductViewOwner",
    #         short_description: "ProductViewShortDescription",
    #         type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #         distributor: "ProductViewDistributor",
    #         has_default_path: false,
    #         support_email: "SupportEmail",
    #         support_description: "SupportDescription",
    #         support_url: "SupportUrl"
    #       },
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"],
    #       product_arn: "ResourceARN",
    #       created_time: Time.now,
    #       source_connection: {
    #         type: "CODESTAR" # One of: ["CODESTAR"],
    #         connection_parameters: {
    #           code_star: {
    #             connection_arn: "CodeStarConnectionArn", # required
    #             repository: "Repository", # required
    #             branch: "RepositoryBranch", # required
    #             artifact_path: "RepositoryArtifactPath", # required
    #           }
    #         },
    #         last_sync: {
    #           last_sync_time: Time.now,
    #           last_sync_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"],
    #           last_sync_status_message: "LastSyncStatusMessage",
    #           last_successful_sync_time: Time.now,
    #           last_successful_sync_provisioning_artifact_id: "Id"
    #         }
    #       }
    #     },
    #     provisioning_artifact_summaries: [
    #       {
    #         id: "Id",
    #         name: "ProvisioningArtifactName",
    #         description: "ProvisioningArtifactDescription",
    #         created_time: Time.now,
    #         provisioning_artifact_metadata: {
    #           "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue"
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     tag_options: [
    #       {
    #         key: "TagOptionKey",
    #         value: "TagOptionValue",
    #         active: false,
    #         id: "TagOptionId",
    #         owner: "Owner"
    #       }
    #     ],
    #     budgets: [
    #       {
    #         budget_name: "BudgetName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProductAsAdminOutput]
    def describe_product_as_admin(params = {}, options = {})
      request = build_request(:describe_product_as_admin, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified product.</p>
    # @param [Hash, Types::DescribeProductViewInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The product view identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.describe_product_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_summary: {
    #       id: "Id",
    #       product_id: "Id",
    #       name: "ProductViewName",
    #       owner: "ProductViewOwner",
    #       short_description: "ProductViewShortDescription",
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       distributor: "ProductViewDistributor",
    #       has_default_path: false,
    #       support_email: "SupportEmail",
    #       support_description: "SupportDescription",
    #       support_url: "SupportUrl"
    #     },
    #     provisioning_artifacts: [
    #       {
    #         id: "Id",
    #         name: "ProvisioningArtifactName",
    #         description: "ProvisioningArtifactDescription",
    #         created_time: Time.now,
    #         guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProductViewOutput]
    def describe_product_view(params = {}, options = {})
      request = build_request(:describe_product_view, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified provisioned product.</p>
    # @param [Hash, Types::DescribeProvisionedProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The provisioned product identifier. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    # @option params [String] :name
    #   <p>The name of the provisioned product. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id",
    #     name: "ProvisionedProductName"
    #   }
    #   options = {}
    #   response = client.describe_provisioned_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_product_detail: {
    #       name: "ProvisionedProductNameOrArn",
    #       arn: "ProvisionedProductNameOrArn",
    #       type: "ProvisionedProductType",
    #       id: "ProvisionedProductId",
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"],
    #       status_message: "ProvisionedProductStatusMessage",
    #       created_time: Time.now,
    #       idempotency_token: "IdempotencyToken",
    #       last_record_id: "LastRequestId",
    #       last_provisioning_record_id: "Id",
    #       last_successful_provisioning_record_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       launch_role_arn: "RoleArn"
    #     },
    #     cloud_watch_dashboards: [
    #       {
    #         name: "CloudWatchDashboardName"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProvisionedProductOutput]
    def describe_provisioned_product(params = {}, options = {})
      request = build_request(:describe_provisioned_product, params)
      request.send_request(options)
    end

    # <p>Gets information about the resource changes for the specified plan.</p>
    # @param [Hash, Types::DescribeProvisionedProductPlanInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :plan_id
    #   <p>The plan identifier.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.describe_provisioned_product_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_product_plan_details: {
    #       created_time: Time.now,
    #       path_id: "Id",
    #       product_id: "Id",
    #       plan_name: "ProvisionedProductPlanName",
    #       plan_id: "Id",
    #       provision_product_id: "Id",
    #       provision_product_name: "ProvisionedProductName",
    #       plan_type: "CLOUDFORMATION" # One of: ["CLOUDFORMATION"],
    #       provisioning_artifact_id: "Id",
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_SUCCESS", "CREATE_FAILED", "EXECUTE_IN_PROGRESS", "EXECUTE_SUCCESS", "EXECUTE_FAILED"],
    #       updated_time: Time.now,
    #       notification_arns: ["NotificationArn"],
    #       provisioning_parameters: [
    #         {
    #           key: "ParameterKey",
    #           value: "ParameterValue",
    #           use_previous_value: false
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       status_message: "StatusMessage"
    #     },
    #     resource_changes: [
    #       {
    #         action: "ADD" # One of: ["ADD", "MODIFY", "REMOVE"],
    #         logical_resource_id: "LogicalResourceId",
    #         physical_resource_id: "PhysicalResourceId",
    #         resource_type: "PlanResourceType",
    #         replacement: "TRUE" # One of: ["TRUE", "FALSE", "CONDITIONAL"],
    #         scope: ["PROPERTIES" # One of: ["PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"]],
    #         details: [
    #           {
    #             target: {
    #               attribute: "PROPERTIES" # One of: ["PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"],
    #               name: "PropertyName",
    #               requires_recreation: "NEVER" # One of: ["NEVER", "CONDITIONALLY", "ALWAYS"]
    #             },
    #             evaluation: "STATIC" # One of: ["STATIC", "DYNAMIC"],
    #             causing_entity: "CausingEntity"
    #           }
    #         ]
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::DescribeProvisionedProductPlanOutput]
    def describe_provisioned_product_plan(params = {}, options = {})
      request = build_request(:describe_provisioned_product_plan, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified provisioning artifact (also known as a version) for the specified product.</p>
    # @param [Hash, Types::DescribeProvisioningArtifactInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :provisioning_artifact_name
    #   <p>The provisioning artifact name.</p>
    # @option params [String] :product_name
    #   <p>The product name.</p>
    # @option params [Boolean] :verbose
    #   <p>Indicates whether a verbose level of detail is enabled.</p>
    # @option params [Boolean] :include_provisioning_artifact_parameters
    #   <p>Indicates if the API call response does or does not include additional details about the provisioning parameters. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     provisioning_artifact_id: "Id",
    #     product_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     product_name: "ProductViewName",
    #     verbose: false,
    #     include_provisioning_artifact_parameters: false
    #   }
    #   options = {}
    #   response = client.describe_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioning_artifact_detail: {
    #       id: "Id",
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactName",
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       created_time: Time.now,
    #       active: false,
    #       guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"],
    #       source_revision: "SourceRevision"
    #     },
    #     info: {
    #       "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue"
    #     },
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"],
    #     provisioning_artifact_parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         default_value: "DefaultValue",
    #         parameter_type: "ParameterType",
    #         is_no_echo: false,
    #         description: "Description",
    #         parameter_constraints: {
    #           allowed_values: ["String"],
    #           allowed_pattern: "String",
    #           constraint_description: "String",
    #           max_length: "String",
    #           min_length: "String",
    #           max_value: "String",
    #           min_value: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProvisioningArtifactOutput]
    def describe_provisioning_artifact(params = {}, options = {})
      request = build_request(:describe_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Gets information about the configuration required to provision the specified product using
    #          the specified provisioning artifact.</p>
    #          <p>If the output contains a TagOption key with an empty list of values, there is a
    #          TagOption conflict for that key. The end user cannot take action to fix the conflict, and
    #          launch is not blocked. In subsequent calls to <a>ProvisionProduct</a>,
    #          do not include conflicted TagOption keys as tags, or this causes the error 
    #          "Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>". 
    #          Tag the provisioned product with the value <code>sc-tagoption-conflict-portfolioId-productId</code>.</p>
    # @param [Hash, Types::DescribeProvisioningParametersInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier. You must provide the product name or ID, but not both.</p>
    # @option params [String] :product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    # @option params [String] :provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    # @option params [String] :path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    # @option params [String] :path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id",
    #     product_name: "ProductViewName",
    #     provisioning_artifact_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     path_id: "Id",
    #     path_name: "PortfolioDisplayName"
    #   }
    #   options = {}
    #   response = client.describe_provisioning_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioning_artifact_parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         default_value: "DefaultValue",
    #         parameter_type: "ParameterType",
    #         is_no_echo: false,
    #         description: "Description",
    #         parameter_constraints: {
    #           allowed_values: ["String"],
    #           allowed_pattern: "String",
    #           constraint_description: "String",
    #           max_length: "String",
    #           min_length: "String",
    #           max_value: "String",
    #           min_value: "String"
    #         }
    #       }
    #     ],
    #     constraint_summaries: [
    #       {
    #         type: "ConstraintType",
    #         description: "ConstraintDescription"
    #       }
    #     ],
    #     usage_instructions: [
    #       {
    #         type: "InstructionType",
    #         value: "InstructionValue"
    #       }
    #     ],
    #     tag_options: [
    #       {
    #         key: "TagOptionKey",
    #         values: ["TagOptionValue"]
    #       }
    #     ],
    #     provisioning_artifact_preferences: {
    #       stack_set_accounts: ["AccountId"],
    #       stack_set_regions: ["Region"]
    #     },
    #     provisioning_artifact_outputs: [
    #       {
    #         key: "ProvisioningArtifactOutputKey",
    #         description: "OutputDescription"
    #       }
    #     ],
    #     provisioning_artifact_output_keys: [
    #       {
    #         key: "ProvisioningArtifactOutputKey",
    #         description: "OutputDescription"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeProvisioningParametersOutput]
    def describe_provisioning_parameters(params = {}, options = {})
      request = build_request(:describe_provisioning_parameters, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified request operation.</p>
    #          <p>Use this operation after calling a request operation (for example, <a>ProvisionProduct</a>, 
    #          <a>TerminateProvisionedProduct</a>, or <a>UpdateProvisionedProduct</a>).
    #       </p>
    #          <note>
    #             <p>If a provisioned product was transferred to a new owner using <a>UpdateProvisionedProductProperties</a>, the new owner 
    #       will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to 
    #       use <a>ListRecordHistory</a> to see the product's history from when he was the owner.</p>
    #          </note>
    # @param [Hash, Types::DescribeRecordInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The record identifier of the provisioned product. This identifier is returned by the
    #            request operation.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.describe_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     },
    #     record_outputs: [
    #       {
    #         output_key: "OutputKey",
    #         output_value: "OutputValue",
    #         description: "Description"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::DescribeRecordOutput]
    def describe_record(params = {}, options = {})
      request = build_request(:describe_record, params)
      request.send_request(options)
    end

    # <p>Describes a self-service action.</p>
    # @param [Hash, Types::DescribeServiceActionInput] params
    # @option params [String] :id
    #   <p>The self-service action identifier.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.describe_service_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_action_detail: {
    #       service_action_summary: {
    #         id: "Id",
    #         name: "ServiceActionName",
    #         description: "ServiceActionDescription",
    #         definition_type: "SSM_AUTOMATION" # One of: ["SSM_AUTOMATION"]
    #       },
    #       definition: {
    #         "ServiceActionDefinitionKey" => "ServiceActionDefinitionValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeServiceActionOutput]
    def describe_service_action(params = {}, options = {})
      request = build_request(:describe_service_action, params)
      request.send_request(options)
    end

    # <p>Finds the default parameters for a specific self-service action on a specific provisioned product and returns a map of the results to the user.</p>
    # @param [Hash, Types::DescribeServiceActionExecutionParametersInput] params
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioned_product_id: "Id", # required
    #     service_action_id: "Id", # required
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.describe_service_action_execution_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_action_parameters: [
    #       {
    #         name: "ExecutionParameterKey",
    #         type: "ExecutionParameterType",
    #         default_values: ["ExecutionParameterValue"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServiceActionExecutionParametersOutput]
    def describe_service_action_execution_parameters(params = {}, options = {})
      request = build_request(:describe_service_action_execution_parameters, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified TagOption.</p>
    # @param [Hash, Types::DescribeTagOptionInput] params
    # @option params [String] :id
    #   <p>The TagOption identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TagOptionId", # required
    #   }
    #   options = {}
    #   response = client.describe_tag_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_option_detail: {
    #       key: "TagOptionKey",
    #       value: "TagOptionValue",
    #       active: false,
    #       id: "TagOptionId",
    #       owner: "Owner"
    #     }
    #   }
    # @return [Types::DescribeTagOptionOutput]
    def describe_tag_option(params = {}, options = {})
      request = build_request(:describe_tag_option, params)
      request.send_request(options)
    end

    # <p>Disable portfolio sharing through the Organizations service. This command will not
    #          delete your current shares, but prevents you from creating new shares throughout your
    #          organization. Current shares are not kept in sync with your organization structure if the structure
    #          changes after calling this API. Only the management account in the organization can call this API.</p>
    #          <p>You cannot call this API if there are active delegated administrators in the organization.</p>
    #          <p>Note that a delegated administrator is not authorized to invoke <code>DisableAWSOrganizationsAccess</code>.</p>
    #          <important>
    #             <p>If you share an Service Catalog portfolio in an organization within 
    #          Organizations, and then disable Organizations access for Service Catalog, 
    #          the portfolio access permissions will not sync with the latest changes to the organization 
    #          structure. Specifically, accounts that you removed from the organization after 
    #          disabling Service Catalog access will retain access to the previously shared portfolio.</p>
    #          </important>
    # @param [Hash, Types::DisableAWSOrganizationsAccessInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_aws_organizations_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableAWSOrganizationsAccessOutput]
    def disable_aws_organizations_access(params = {}, options = {})
      request = build_request(:disable_aws_organizations_access, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified budget from the specified resource.</p>
    # @param [Hash, Types::DisassociateBudgetFromResourceInput] params
    # @option params [String] :budget_name
    #   <p>The name of the budget you want to disassociate.</p>
    # @option params [String] :resource_id
    #   <p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     budget_name: "BudgetName", # required
    #     resource_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.disassociate_budget_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateBudgetFromResourceOutput]
    def disassociate_budget_from_resource(params = {}, options = {})
      request = build_request(:disassociate_budget_from_resource, params)
      request.send_request(options)
    end

    # <p>Disassociates a previously associated principal ARN from a specified
    #          portfolio.</p>
    #          <p>The <code>PrincipalType</code> and <code>PrincipalARN</code> must match the 
    #          <code>AssociatePrincipalWithPortfolio</code> call request details. For example,
    #          to disassociate an association created with a <code>PrincipalARN</code> of <code>PrincipalType</code>
    #          IAM you must use the <code>PrincipalType</code> IAM when calling <code>DisassociatePrincipalFromPortfolio</code>. </p>
    #          <p>For portfolios that have been shared with principal name sharing enabled: after disassociating a principal,
    #    share recipient accounts will no longer be able to provision products in this portfolio using a role matching the name 
    #    of the associated principal. </p>
    #          <p>For more information, review <a href="https://docs.aws.amazon.com/cli/latest/reference/servicecatalog/associate-principal-with-portfolio.html#options">associate-principal-with-portfolio</a> 
    #          in the Amazon Web Services CLI Command Reference. </p>
    #          <note>
    #             <p>If you disassociate a principal from a portfolio, with PrincipalType as <code>IAM</code>, the same principal will 
    #             still have access to the portfolio if it matches one of the associated principals of type <code>IAM_PATTERN</code>. 
    #             To fully remove access for a principal, verify all the associated Principals of type <code>IAM_PATTERN</code>, 
    #             and then ensure you disassociate any <code>IAM_PATTERN</code> principals that match the principal 
    #             whose access you are removing.</p>
    #          </note>
    # @param [Hash, Types::DisassociatePrincipalFromPortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal (user, role, or group). This field allows an ARN with no <code>accountID</code> with or without wildcard characters if 
    #            <code>PrincipalType</code> is <code>IAM_PATTERN</code>.</p>
    # @option params [String] :principal_type
    #   <p>The supported value is <code>IAM</code> if you use a fully defined ARN, or <code>IAM_PATTERN</code>
    #            if you specify an <code>IAM</code> ARN with no AccountId, with or without wildcard characters. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     principal_arn: "PrincipalARN", # required
    #     principal_type: "IAM" # One of: ["IAM", "IAM_PATTERN"]
    #   }
    #   options = {}
    #   response = client.disassociate_principal_from_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociatePrincipalFromPortfolioOutput]
    def disassociate_principal_from_portfolio(params = {}, options = {})
      request = build_request(:disassociate_principal_from_portfolio, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified product from the specified portfolio. </p>
    #          <p>A delegated admin is authorized to invoke this command.</p>
    # @param [Hash, Types::DisassociateProductFromPortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     portfolio_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.disassociate_product_from_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateProductFromPortfolioOutput]
    def disassociate_product_from_portfolio(params = {}, options = {})
      request = build_request(:disassociate_product_from_portfolio, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified self-service action association from the specified provisioning artifact.</p>
    # @param [Hash, Types::DisassociateServiceActionFromProvisioningArtifactInput] params
    # @option params [String] :product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     service_action_id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.disassociate_service_action_from_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateServiceActionFromProvisioningArtifactOutput]
    def disassociate_service_action_from_provisioning_artifact(params = {}, options = {})
      request = build_request(:disassociate_service_action_from_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified TagOption from the specified resource.</p>
    # @param [Hash, Types::DisassociateTagOptionFromResourceInput] params
    # @option params [String] :resource_id
    #   <p>The resource identifier.</p>
    # @option params [String] :tag_option_id
    #   <p>The TagOption identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tag_option_id: "TagOptionId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_tag_option_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateTagOptionFromResourceOutput]
    def disassociate_tag_option_from_resource(params = {}, options = {})
      request = build_request(:disassociate_tag_option_from_resource, params)
      request.send_request(options)
    end

    # <p>Enable portfolio sharing feature through Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the
    #          current structure. This API can only be called by the management account in the organization.</p>
    #          <p>When you call this API, Service Catalog calls <code>organizations:EnableAWSServiceAccess</code> on your behalf so that your shares stay in sync with any changes in your Organizations structure.</p>
    #          <p>Note that a delegated administrator is not authorized to invoke <code>EnableAWSOrganizationsAccess</code>.</p>
    #          <important>
    #             <p>If you have previously disabled Organizations access for Service Catalog, and then 
    #          enable access again, the portfolio access permissions might not sync with the latest changes to 
    #          the organization structure. Specifically, accounts that you removed from the organization after 
    #          disabling Service Catalog access, and before you enabled access again, can retain access to the 
    #          previously shared portfolio. As a result, an account that has been removed from the organization 
    #          might still be able to create or manage Amazon Web Services resources when it is no longer 
    #          authorized to do so. Amazon Web Services is working to resolve this issue.</p>
    #          </important>
    # @param [Hash, Types::EnableAWSOrganizationsAccessInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_aws_organizations_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableAWSOrganizationsAccessOutput]
    def enable_aws_organizations_access(params = {}, options = {})
      request = build_request(:enable_aws_organizations_access, params)
      request.send_request(options)
    end

    # <p>Provisions or modifies a product based on the resource changes for the specified plan.</p>
    # @param [Hash, Types::ExecuteProvisionedProductPlanInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :plan_id
    #   <p>The plan identifier.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.execute_provisioned_product_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::ExecuteProvisionedProductPlanOutput]
    def execute_provisioned_product_plan(params = {}, options = {})
      request = build_request(:execute_provisioned_product_plan, params)
      request.send_request(options)
    end

    # <p>Executes a self-service action against a provisioned product.</p>
    # @param [Hash, Types::ExecuteProvisionedProductServiceActionInput] params
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    # @option params [String] :execute_token
    #   <p>An idempotency token that uniquely identifies the execute request.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will 
    #               override the default value generated by Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for 
    #               any special parameters such as <code>TARGET</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioned_product_id: "Id", # required
    #     service_action_id: "Id", # required
    #     execute_token: "IdempotencyToken", # required
    #     accept_language: "AcceptLanguage",
    #     parameters: {
    #       "ExecutionParameterKey" => ["ExecutionParameterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.execute_provisioned_product_service_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::ExecuteProvisionedProductServiceActionOutput]
    def execute_provisioned_product_service_action(params = {}, options = {})
      request = build_request(:execute_provisioned_product_service_action, params)
      request.send_request(options)
    end

    # <p>Get the Access Status for Organizations portfolio share feature. This API can only be
    #          called by the management account in the organization or by a delegated admin.</p>
    # @param [Hash, Types::GetAWSOrganizationsAccessStatusInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_aws_organizations_access_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_status: "ENABLED" # One of: ["ENABLED", "UNDER_CHANGE", "DISABLED"]
    #   }
    # @return [Types::GetAWSOrganizationsAccessStatusOutput]
    def get_aws_organizations_access_status(params = {}, options = {})
      request = build_request(:get_aws_organizations_access_status, params)
      request.send_request(options)
    end

    # <p>This API takes either a <code>ProvisonedProductId</code> or a <code>ProvisionedProductName</code>, along with a list of one or more output keys, and responds with the key/value pairs of those outputs.</p>
    # @param [Hash, Types::GetProvisionedProductOutputsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product that you want the outputs from.</p>
    # @option params [String] :provisioned_product_name
    #   <p>The name of the provisioned product that you want the outputs from.</p>
    # @option params [Array<String>] :output_keys
    #   <p>The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_id: "Id",
    #     provisioned_product_name: "ProvisionedProductName",
    #     output_keys: ["OutputKey"],
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.get_provisioned_product_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outputs: [
    #       {
    #         output_key: "OutputKey",
    #         output_value: "OutputValue",
    #         description: "Description"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::GetProvisionedProductOutputsOutput]
    def get_provisioned_product_outputs(params = {}, options = {})
      request = build_request(:get_provisioned_product_outputs, params)
      request.send_request(options)
    end

    # <p>
    #          Requests the import of a resource as an Service Catalog provisioned product 
    #          that is associated to an Service Catalog product and provisioning artifact. 
    #          Once imported, all supported governance actions are supported on the provisioned product.
    #       </p>
    #          <p>
    #          Resource import only supports CloudFormation stack ARNs. CloudFormation StackSets,
    #          and non-root nested stacks, are not supported.
    #       </p>
    #          <p>
    #          The CloudFormation stack must have one 
    #          of the following statuses 
    #          to be imported: <code>CREATE_COMPLETE</code>, <code>UPDATE_COMPLETE</code>, 
    #          <code>UPDATE_ROLLBACK_COMPLETE</code>, <code>IMPORT_COMPLETE</code>, and 
    #          <code>IMPORT_ROLLBACK_COMPLETE</code>.
    #       </p>
    #          <p>
    #          Import of the resource requires that the CloudFormation stack template matches 
    #          the associated Service Catalog product provisioning artifact.
    #       </p>
    #          <note>
    #             <p>
    #             When you import an existing CloudFormation stack 
    #             into a portfolio, Service Catalog does not apply the product's associated constraints 
    #             during the import process. Service Catalog applies the constraints 
    #             after you call <code>UpdateProvisionedProduct</code> for the provisioned product.
    #          </p>
    #          </note>
    #          <p>
    #          The user or role that performs this operation must have the <code>cloudformation:GetTemplate</code> 
    #          and <code>cloudformation:DescribeStacks</code> IAM policy permissions.
    #       </p>
    #          <p>You can only import one provisioned product at a time. The product's CloudFormation stack must have the 
    #          <code>IMPORT_COMPLETE</code> status before you import another. </p>
    # @param [Hash, Types::ImportAsProvisionedProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    # @option params [String] :provisioned_product_name
    #   <p>The user-friendly name of the provisioned product. The value must be unique for the Amazon Web Services account. 
    #            The name cannot be updated after the product is provisioned. </p>
    # @option params [String] :physical_id
    #   <p>The unique identifier of the resource to be imported. It only currently supports
    #            CloudFormation stack IDs.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     physical_id: "PhysicalId", # required
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.import_as_provisioned_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::ImportAsProvisionedProductOutput]
    def import_as_provisioned_product(params = {}, options = {})
      request = build_request(:import_as_provisioned_product, params)
      request.send_request(options)
    end

    # <p>Lists all imported portfolios for which account-to-account shares were accepted by
    #          this account. By specifying the <code>PortfolioShareType</code>, you can list portfolios for which
    #          organizational shares were accepted by this account.</p>
    # @param [Hash, Types::ListAcceptedPortfolioSharesInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :portfolio_share_type
    #   <p>The type of shared portfolios to list. The default is to list imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - List portfolios accepted and shared via organizational sharing by the management account or delegated administrator of your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Deprecated type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - List imported portfolios that have been accepted and
    #                  shared through account-to-account sharing.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     page_token: "PageToken",
    #     page_size: 1,
    #     portfolio_share_type: "IMPORTED" # One of: ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #   }
    #   options = {}
    #   response = client.list_accepted_portfolio_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_details: [
    #       {
    #         id: "Id",
    #         arn: "ResourceARN",
    #         display_name: "PortfolioDisplayName",
    #         description: "PortfolioDescription",
    #         created_time: Time.now,
    #         provider_name: "ProviderName"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListAcceptedPortfolioSharesOutput]
    def list_accepted_portfolio_shares(params = {}, options = {})
      request = build_request(:list_accepted_portfolio_shares, params)
      request.send_request(options)
    end

    # <p>Lists all the budgets associated to the specified resource.</p>
    # @param [Hash, Types::ListBudgetsForResourceInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_id
    #   <p>The resource identifier.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     resource_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_budgets_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     budgets: [
    #       {
    #         budget_name: "BudgetName"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListBudgetsForResourceOutput]
    def list_budgets_for_resource(params = {}, options = {})
      request = build_request(:list_budgets_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the constraints for the specified portfolio and product.</p>
    # @param [Hash, Types::ListConstraintsForPortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     product_id: "Id",
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_constraints_for_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     constraint_details: [
    #       {
    #         constraint_id: "Id",
    #         type: "ConstraintType",
    #         description: "ConstraintDescription",
    #         owner: "AccountId",
    #         product_id: "Id",
    #         portfolio_id: "Id"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListConstraintsForPortfolioOutput]
    def list_constraints_for_portfolio(params = {}, options = {})
      request = build_request(:list_constraints_for_portfolio, params)
      request.send_request(options)
    end

    # <p>
    #          Lists the paths 
    #          to the specified product. 
    #          A path describes
    #          how the user
    #          gets access 
    #          to a specified product
    #          and is necessary 
    #          when provisioning a product. 
    #          A path also determines the constraints 
    #          that are put on a product. 
    #          A path is dependent 
    #          on a specific product, porfolio, and principal.
    #       </p>
    #          <note>
    #             <p>
    #             When provisioning a product 
    #             that's been added 
    #             to a portfolio, 
    #             you must grant your user, group, or role access 
    #             to the portfolio. 
    #             For more information, 
    #             see <a href="https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html">Granting users access</a> 
    #             in the <i>Service Catalog User Guide</i>.
    #          </p>
    #          </note>
    # @param [Hash, Types::ListLaunchPathsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_launch_paths(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch_path_summaries: [
    #       {
    #         id: "Id",
    #         constraint_summaries: [
    #           {
    #             type: "ConstraintType",
    #             description: "ConstraintDescription"
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         name: "PortfolioName"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListLaunchPathsOutput]
    def list_launch_paths(params = {}, options = {})
      request = build_request(:list_launch_paths, params)
      request.send_request(options)
    end

    # <p>Lists the organization nodes that have access to the specified portfolio. This API can
    #          only be called by the management account in the organization or by a delegated
    #          admin.</p>
    #          <p>If a delegated admin is de-registered, they can no longer perform this operation.</p>
    # @param [Hash, Types::ListOrganizationPortfolioAccessInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>
    # @option params [String] :organization_node_type
    #   <p>The organization node type that will be returned in the output.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p>
    #               </li>
    #            </ul>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     organization_node_type: "ORGANIZATION" # One of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"], # required
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_organization_portfolio_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_nodes: [
    #       {
    #         type: "ORGANIZATION" # One of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"],
    #         value: "OrganizationNodeValue"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListOrganizationPortfolioAccessOutput]
    def list_organization_portfolio_access(params = {}, options = {})
      request = build_request(:list_organization_portfolio_access, params)
      request.send_request(options)
    end

    # <p>Lists the account IDs that have access to the specified portfolio.</p>
    #          <p>A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.</p>
    # @param [Hash, Types::ListPortfolioAccessInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :organization_parent_id
    #   <p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     organization_parent_id: "Id",
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_portfolio_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: ["AccountId"],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListPortfolioAccessOutput]
    def list_portfolio_access(params = {}, options = {})
      request = build_request(:list_portfolio_access, params)
      request.send_request(options)
    end

    # <p>Lists all portfolios in the catalog.</p>
    # @param [Hash, Types::ListPortfoliosInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_portfolios(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_details: [
    #       {
    #         id: "Id",
    #         arn: "ResourceARN",
    #         display_name: "PortfolioDisplayName",
    #         description: "PortfolioDescription",
    #         created_time: Time.now,
    #         provider_name: "ProviderName"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListPortfoliosOutput]
    def list_portfolios(params = {}, options = {})
      request = build_request(:list_portfolios, params)
      request.send_request(options)
    end

    # <p>Lists all portfolios that the specified product is associated with.</p>
    # @param [Hash, Types::ListPortfoliosForProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_portfolios_for_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_details: [
    #       {
    #         id: "Id",
    #         arn: "ResourceARN",
    #         display_name: "PortfolioDisplayName",
    #         description: "PortfolioDescription",
    #         created_time: Time.now,
    #         provider_name: "ProviderName"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListPortfoliosForProductOutput]
    def list_portfolios_for_product(params = {}, options = {})
      request = build_request(:list_portfolios_for_product, params)
      request.send_request(options)
    end

    # <p>Lists all <code>PrincipalARN</code>s and corresponding <code>PrincipalType</code>s associated with the specified portfolio.</p>
    # @param [Hash, Types::ListPrincipalsForPortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_principals_for_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principals: [
    #       {
    #         principal_arn: "PrincipalARN",
    #         principal_type: "IAM" # One of: ["IAM", "IAM_PATTERN"]
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListPrincipalsForPortfolioOutput]
    def list_principals_for_portfolio(params = {}, options = {})
      request = build_request(:list_principals_for_portfolio, params)
      request.send_request(options)
    end

    # <p>Lists the plans for the specified provisioned product or all plans to which the user has access.</p>
    # @param [Hash, Types::ListProvisionedProductPlansInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :provision_product_id
    #   <p>The product identifier.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     provision_product_id: "Id",
    #     page_size: 1,
    #     page_token: "PageToken",
    #     access_level_filter: {
    #       key: "Account" # One of: ["Account", "Role", "User"],
    #       value: "AccessLevelFilterValue"
    #     }
    #   }
    #   options = {}
    #   response = client.list_provisioned_product_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_product_plans: [
    #       {
    #         plan_name: "ProvisionedProductPlanName",
    #         plan_id: "Id",
    #         provision_product_id: "Id",
    #         provision_product_name: "ProvisionedProductName",
    #         plan_type: "CLOUDFORMATION" # One of: ["CLOUDFORMATION"],
    #         provisioning_artifact_id: "Id"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListProvisionedProductPlansOutput]
    def list_provisioned_product_plans(params = {}, options = {})
      request = build_request(:list_provisioned_product_plans, params)
      request.send_request(options)
    end

    # <p>Lists all provisioning artifacts (also known as versions) for the specified product.</p>
    # @param [Hash, Types::ListProvisioningArtifactsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.list_provisioning_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioning_artifact_details: [
    #       {
    #         id: "Id",
    #         name: "ProvisioningArtifactName",
    #         description: "ProvisioningArtifactName",
    #         type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #         created_time: Time.now,
    #         active: false,
    #         guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"],
    #         source_revision: "SourceRevision"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListProvisioningArtifactsOutput]
    def list_provisioning_artifacts(params = {}, options = {})
      request = build_request(:list_provisioning_artifacts, params)
      request.send_request(options)
    end

    # <p>Lists all provisioning artifacts (also known as versions) for the specified self-service action.</p>
    # @param [Hash, Types::ListProvisioningArtifactsForServiceActionInput] params
    # @option params [String] :service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_action_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.list_provisioning_artifacts_for_service_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioning_artifact_views: [
    #       {
    #         product_view_summary: {
    #           id: "Id",
    #           product_id: "Id",
    #           name: "ProductViewName",
    #           owner: "ProductViewOwner",
    #           short_description: "ProductViewShortDescription",
    #           type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #           distributor: "ProductViewDistributor",
    #           has_default_path: false,
    #           support_email: "SupportEmail",
    #           support_description: "SupportDescription",
    #           support_url: "SupportUrl"
    #         },
    #         provisioning_artifact: {
    #           id: "Id",
    #           name: "ProvisioningArtifactName",
    #           description: "ProvisioningArtifactDescription",
    #           created_time: Time.now,
    #           guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"]
    #         }
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListProvisioningArtifactsForServiceActionOutput]
    def list_provisioning_artifacts_for_service_action(params = {}, options = {})
      request = build_request(:list_provisioning_artifacts_for_service_action, params)
      request.send_request(options)
    end

    # <p>Lists the specified requests or all performed requests.</p>
    # @param [Hash, Types::ListRecordHistoryInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    # @option params [Types::ListRecordHistorySearchFilter] :search_filter
    #   <p>The search filter to scope the results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account" # One of: ["Account", "Role", "User"],
    #       value: "AccessLevelFilterValue"
    #     },
    #     search_filter: {
    #       key: "SearchFilterKey",
    #       value: "SearchFilterValue"
    #     },
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_record_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_details: [
    #       {
    #         record_id: "Id",
    #         provisioned_product_name: "ProvisionedProductName",
    #         status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #         created_time: Time.now,
    #         updated_time: Time.now,
    #         provisioned_product_type: "ProvisionedProductType",
    #         record_type: "RecordType",
    #         provisioned_product_id: "Id",
    #         product_id: "Id",
    #         provisioning_artifact_id: "Id",
    #         path_id: "Id",
    #         record_errors: [
    #           {
    #             code: "ErrorCode",
    #             description: "ErrorDescription"
    #           }
    #         ],
    #         record_tags: [
    #           {
    #             key: "RecordTagKey",
    #             value: "RecordTagValue"
    #           }
    #         ],
    #         launch_role_arn: "RoleArn"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListRecordHistoryOutput]
    def list_record_history(params = {}, options = {})
      request = build_request(:list_record_history, params)
      request.send_request(options)
    end

    # <p>Lists the resources associated with the specified TagOption.</p>
    # @param [Hash, Types::ListResourcesForTagOptionInput] params
    # @option params [String] :tag_option_id
    #   <p>The TagOption identifier.</p>
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Portfolio</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Product</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tag_option_id: "TagOptionId", # required
    #     resource_type: "ResourceType",
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_resources_for_tag_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_details: [
    #       {
    #         id: "ResourceDetailId",
    #         arn: "ResourceDetailARN",
    #         name: "ResourceDetailName",
    #         description: "ResourceDetailDescription",
    #         created_time: Time.now
    #       }
    #     ],
    #     page_token: "PageToken"
    #   }
    # @return [Types::ListResourcesForTagOptionOutput]
    def list_resources_for_tag_option(params = {}, options = {})
      request = build_request(:list_resources_for_tag_option, params)
      request.send_request(options)
    end

    # <p>Lists all self-service actions.</p>
    # @param [Hash, Types::ListServiceActionsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_service_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_action_summaries: [
    #       {
    #         id: "Id",
    #         name: "ServiceActionName",
    #         description: "ServiceActionDescription",
    #         definition_type: "SSM_AUTOMATION" # One of: ["SSM_AUTOMATION"]
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListServiceActionsOutput]
    def list_service_actions(params = {}, options = {})
      request = build_request(:list_service_actions, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.</p>
    # @param [Hash, Types::ListServiceActionsForProvisioningArtifactInput] params
    # @option params [String] :product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.list_service_actions_for_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_action_summaries: [
    #       {
    #         id: "Id",
    #         name: "ServiceActionName",
    #         description: "ServiceActionDescription",
    #         definition_type: "SSM_AUTOMATION" # One of: ["SSM_AUTOMATION"]
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListServiceActionsForProvisioningArtifactOutput]
    def list_service_actions_for_provisioning_artifact(params = {}, options = {})
      request = build_request(:list_service_actions_for_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Returns summary information about stack instances that are associated with the specified <code>CFN_STACKSET</code> type provisioned product. You can filter for stack instances that are associated with a specific Amazon Web Services account name or Region. </p>
    # @param [Hash, Types::ListStackInstancesForProvisionedProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_stack_instances_for_provisioned_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stack_instances: [
    #       {
    #         account: "AccountId",
    #         region: "Region",
    #         stack_instance_status: "CURRENT" # One of: ["CURRENT", "OUTDATED", "INOPERABLE"]
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ListStackInstancesForProvisionedProductOutput]
    def list_stack_instances_for_provisioned_product(params = {}, options = {})
      request = build_request(:list_stack_instances_for_provisioned_product, params)
      request.send_request(options)
    end

    # <p>Lists the specified TagOptions or all TagOptions.</p>
    # @param [Hash, Types::ListTagOptionsInput] params
    # @option params [Types::ListTagOptionsFilters] :filters
    #   <p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       key: "TagOptionKey",
    #       value: "TagOptionValue",
    #       active: false
    #     },
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.list_tag_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_option_details: [
    #       {
    #         key: "TagOptionKey",
    #         value: "TagOptionValue",
    #         active: false,
    #         id: "TagOptionId",
    #         owner: "Owner"
    #       }
    #     ],
    #     page_token: "PageToken"
    #   }
    # @return [Types::ListTagOptionsOutput]
    def list_tag_options(params = {}, options = {})
      request = build_request(:list_tag_options, params)
      request.send_request(options)
    end

    # <p>
    #          Notifies the result 
    #          of the provisioning engine execution.
    #       </p>
    # @param [Hash, Types::NotifyProvisionProductEngineWorkflowResultInput] params
    # @option params [String] :workflow_token
    #   <p>
    #            The encrypted contents 
    #            of the provisioning engine execution payload 
    #            that Service Catalog sends 
    #            after the Terraform product provisioning workflow starts.
    #         </p>
    # @option params [String] :record_id
    #   <p>
    #            The identifier 
    #            of the record.
    #         </p>
    # @option params [String] :status
    #   <p>
    #            The status 
    #            of the provisioning engine execution.
    #         </p>
    # @option params [String] :failure_reason
    #   <p>
    #            The reason 
    #            why the provisioning engine execution failed.
    #         </p>
    # @option params [Types::EngineWorkflowResourceIdentifier] :resource_identifier
    #   <p>
    #            The ID 
    #            for the provisioned product resources 
    #            that are part 
    #            of a resource group.
    #         </p>
    # @option params [Array<Types::RecordOutput>] :outputs
    #   <p>
    #            The output 
    #            of the provisioning engine execution.
    #         </p>
    # @option params [String] :idempotency_token
    #   <p>
    #            The idempotency token 
    #            that identifies the provisioning engine execution.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_token: "EngineWorkflowToken", # required
    #     record_id: "Id", # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #     failure_reason: "EngineWorkflowFailureReason",
    #     resource_identifier: {
    #       unique_tag: {
    #         key: "UniqueTagKey",
    #         value: "UniqueTagValue"
    #       }
    #     },
    #     outputs: [
    #       {
    #         output_key: "OutputKey",
    #         output_value: "OutputValue",
    #         description: "Description"
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.notify_provision_product_engine_workflow_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyProvisionProductEngineWorkflowResultOutput]
    def notify_provision_product_engine_workflow_result(params = {}, options = {})
      request = build_request(:notify_provision_product_engine_workflow_result, params)
      request.send_request(options)
    end

    # <p>
    #          Notifies the result 
    #          of the terminate engine execution.
    #       </p>
    # @param [Hash, Types::NotifyTerminateProvisionedProductEngineWorkflowResultInput] params
    # @option params [String] :workflow_token
    #   <p>
    #            The encrypted contents 
    #            of the terminate engine execution payload 
    #            that Service Catalog sends 
    #            after the Terraform product terminate workflow starts.
    #         </p>
    # @option params [String] :record_id
    #   <p>
    #            The identifier 
    #            of the record.
    #         </p>
    # @option params [String] :status
    #   <p>
    #            The status 
    #            of the terminate engine execution.
    #         </p>
    # @option params [String] :failure_reason
    #   <p>
    #            The reason 
    #            why the terminate engine execution failed.
    #         </p>
    # @option params [String] :idempotency_token
    #   <p>
    #            The idempotency token 
    #            that identifies the terminate engine execution.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_token: "EngineWorkflowToken", # required
    #     record_id: "Id", # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #     failure_reason: "EngineWorkflowFailureReason",
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.notify_terminate_provisioned_product_engine_workflow_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyTerminateProvisionedProductEngineWorkflowResultOutput]
    def notify_terminate_provisioned_product_engine_workflow_result(params = {}, options = {})
      request = build_request(:notify_terminate_provisioned_product_engine_workflow_result, params)
      request.send_request(options)
    end

    # <p>
    #          Notifies the result 
    #          of the update engine execution.
    #       </p>
    # @param [Hash, Types::NotifyUpdateProvisionedProductEngineWorkflowResultInput] params
    # @option params [String] :workflow_token
    #   <p>
    #            The encrypted contents 
    #            of the update engine execution payload 
    #            that Service Catalog sends 
    #            after the Terraform product update workflow starts.
    #         </p>
    # @option params [String] :record_id
    #   <p>
    #            The identifier 
    #            of the record.
    #         </p>
    # @option params [String] :status
    #   <p>
    #            The status 
    #            of the update engine execution.
    #         </p>
    # @option params [String] :failure_reason
    #   <p>
    #            The reason 
    #            why the update engine execution failed.
    #         </p>
    # @option params [Array<Types::RecordOutput>] :outputs
    #   <p>
    #            The output 
    #            of the update engine execution.
    #         </p>
    # @option params [String] :idempotency_token
    #   <p>
    #            The idempotency token 
    #            that identifies the update engine execution.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_token: "EngineWorkflowToken", # required
    #     record_id: "Id", # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"], # required
    #     failure_reason: "EngineWorkflowFailureReason",
    #     outputs: [
    #       {
    #         output_key: "OutputKey",
    #         output_value: "OutputValue",
    #         description: "Description"
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.notify_update_provisioned_product_engine_workflow_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyUpdateProvisionedProductEngineWorkflowResultOutput]
    def notify_update_provisioned_product_engine_workflow_result(params = {}, options = {})
      request = build_request(:notify_update_provisioned_product_engine_workflow_result, params)
      request.send_request(options)
    end

    # <p>
    #          Provisions the specified product.
    #       </p>
    #          <p>
    #          A provisioned product is a resourced instance 
    #          of a product. 
    #          For example, 
    #          provisioning a product 
    #          that's based 
    #          on an CloudFormation template 
    #          launches an CloudFormation stack and its underlying resources.
    #          You can check the status 
    #          of this request 
    #          using <a>DescribeRecord</a>.
    #       </p>
    #          <p>
    #          If the request contains a tag key 
    #          with an empty list 
    #          of values, 
    #          there's a tag conflict 
    #          for that key. 
    #          Don't include conflicted keys 
    #          as tags, 
    #          or this will cause the error "Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>".
    #       </p>
    #          <note>
    #             <p>
    #             When provisioning a product 
    #             that's been added 
    #             to a portfolio, 
    #             you must grant your user, group, or role access 
    #             to the portfolio. 
    #             For more information, 
    #             see <a href="https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html">Granting users access</a> 
    #             in the <i>Service Catalog User Guide</i>.
    #          </p>
    #          </note>
    # @param [Hash, Types::ProvisionProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier. You must provide the name or ID, but not both.</p>
    # @option params [String] :product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    # @option params [String] :provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    # @option params [String] :path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    # @option params [String] :path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    # @option params [String] :provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the Amazon Web Services account and cannot be updated after the product is provisioned.</p>
    # @option params [Array<Types::ProvisioningParameter>] :provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    # @option params [Types::ProvisioningPreferences] :provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags.</p>
    # @option params [Array<String>] :notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    # @option params [String] :provision_token
    #   <p>An idempotency token that uniquely identifies the provisioning request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id",
    #     product_name: "ProductViewName",
    #     provisioning_artifact_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     path_id: "Id",
    #     path_name: "PortfolioDisplayName",
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue"
    #       }
    #     ],
    #     provisioning_preferences: {
    #       stack_set_accounts: ["AccountId"],
    #       stack_set_regions: ["Region"],
    #       stack_set_failure_tolerance_count: 1,
    #       stack_set_failure_tolerance_percentage: 1,
    #       stack_set_max_concurrency_count: 1,
    #       stack_set_max_concurrency_percentage: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     notification_arns: ["NotificationArn"],
    #     provision_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.provision_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::ProvisionProductOutput]
    def provision_product(params = {}, options = {})
      request = build_request(:provision_product, params)
      request.send_request(options)
    end

    # <p>Rejects an offer to share the specified portfolio.</p>
    # @param [Hash, Types::RejectPortfolioShareInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :portfolio_share_type
    #   <p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Reject imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     portfolio_share_type: "IMPORTED" # One of: ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #   }
    #   options = {}
    #   response = client.reject_portfolio_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RejectPortfolioShareOutput]
    def reject_portfolio_share(params = {}, options = {})
      request = build_request(:reject_portfolio_share, params)
      request.send_request(options)
    end

    # <p>Lists the provisioned products that are available (not terminated).</p>
    #          <p>To use additional filtering, see <a>SearchProvisionedProducts</a>.</p>
    # @param [Hash, Types::ScanProvisionedProductsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account" # One of: ["Account", "Role", "User"],
    #       value: "AccessLevelFilterValue"
    #     },
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.scan_provisioned_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_products: [
    #       {
    #         name: "ProvisionedProductNameOrArn",
    #         arn: "ProvisionedProductNameOrArn",
    #         type: "ProvisionedProductType",
    #         id: "ProvisionedProductId",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"],
    #         status_message: "ProvisionedProductStatusMessage",
    #         created_time: Time.now,
    #         idempotency_token: "IdempotencyToken",
    #         last_record_id: "LastRequestId",
    #         last_provisioning_record_id: "Id",
    #         last_successful_provisioning_record_id: "Id",
    #         product_id: "Id",
    #         provisioning_artifact_id: "Id",
    #         launch_role_arn: "RoleArn"
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::ScanProvisionedProductsOutput]
    def scan_provisioned_products(params = {}, options = {})
      request = build_request(:scan_provisioned_products, params)
      request.send_request(options)
    end

    # <p>Gets information about the products to which the caller has access.</p>
    # @param [Hash, Types::SearchProductsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>The search filters. If no search filters are specified, the output includes
    #            all products to which the caller has access.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    # @option params [String] :sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     filters: {
    #       "ProductViewFilterBy" => ["ProductViewFilterValue"]
    #     },
    #     page_size: 1,
    #     sort_by: "Title" # One of: ["Title", "VersionCount", "CreationDate"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.search_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_summaries: [
    #       {
    #         id: "Id",
    #         product_id: "Id",
    #         name: "ProductViewName",
    #         owner: "ProductViewOwner",
    #         short_description: "ProductViewShortDescription",
    #         type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #         distributor: "ProductViewDistributor",
    #         has_default_path: false,
    #         support_email: "SupportEmail",
    #         support_description: "SupportDescription",
    #         support_url: "SupportUrl"
    #       }
    #     ],
    #     product_view_aggregations: {
    #       "ProductViewAggregationType" => [
    #         {
    #           value: "AttributeValue",
    #           approximate_count: 1
    #         }
    #       ]
    #     },
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::SearchProductsOutput]
    def search_products(params = {}, options = {})
      request = build_request(:search_products, params)
      request.send_request(options)
    end

    # <p>Gets information about the products for the specified portfolio or all products.</p>
    # @param [Hash, Types::SearchProductsAsAdminInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The portfolio identifier.</p>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>The search filters. If no search filters are specified, the output includes all products 
    #            to which the administrator has access.</p>
    # @option params [String] :sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    # @option params [String] :sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :product_source
    #   <p>Access level of the source of the product.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id",
    #     filters: {
    #       "ProductViewFilterBy" => ["ProductViewFilterValue"]
    #     },
    #     sort_by: "Title" # One of: ["Title", "VersionCount", "CreationDate"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     page_token: "PageToken",
    #     page_size: 1,
    #     product_source: "ACCOUNT" # One of: ["ACCOUNT"]
    #   }
    #   options = {}
    #   response = client.search_products_as_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_details: [
    #       {
    #         product_view_summary: {
    #           id: "Id",
    #           product_id: "Id",
    #           name: "ProductViewName",
    #           owner: "ProductViewOwner",
    #           short_description: "ProductViewShortDescription",
    #           type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #           distributor: "ProductViewDistributor",
    #           has_default_path: false,
    #           support_email: "SupportEmail",
    #           support_description: "SupportDescription",
    #           support_url: "SupportUrl"
    #         },
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"],
    #         product_arn: "ResourceARN",
    #         created_time: Time.now,
    #         source_connection: {
    #           type: "CODESTAR" # One of: ["CODESTAR"],
    #           connection_parameters: {
    #             code_star: {
    #               connection_arn: "CodeStarConnectionArn", # required
    #               repository: "Repository", # required
    #               branch: "RepositoryBranch", # required
    #               artifact_path: "RepositoryArtifactPath", # required
    #             }
    #           },
    #           last_sync: {
    #             last_sync_time: Time.now,
    #             last_sync_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"],
    #             last_sync_status_message: "LastSyncStatusMessage",
    #             last_successful_sync_time: Time.now,
    #             last_successful_sync_provisioning_artifact_id: "Id"
    #           }
    #         }
    #       }
    #     ],
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::SearchProductsAsAdminOutput]
    def search_products_as_admin(params = {}, options = {})
      request = build_request(:search_products_as_admin, params)
      request.send_request(options)
    end

    # <p>Gets information about the provisioned products that meet the specified criteria.</p>
    # @param [Hash, Types::SearchProvisionedProductsInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   <p>The access level to use to obtain results. The default is
    #            <code>Account</code>.</p>
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>The search filters.</p>
    #            <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>, 
    #            <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>,
    #            <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>, 
    #            <code>provisioningArtifactId</code>, <code>type</code>, <code>status</code>,
    #            <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>, 
    #            <code>productName</code>, and <code>provisioningArtifactName</code>.</p>
    #            <p>Example: <code>"SearchQuery":["status:AVAILABLE"]</code>
    #            </p>
    # @option params [String] :sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>, 
    #            and <code>lastRecordId</code>.</p>
    # @option params [String] :sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of items to return with this call.</p>
    # @option params [String] :page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account" # One of: ["Account", "Role", "User"],
    #       value: "AccessLevelFilterValue"
    #     },
    #     filters: {
    #       "ProvisionedProductViewFilterBy" => ["ProvisionedProductViewFilterValue"]
    #     },
    #     sort_by: "SortField",
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     page_size: 1,
    #     page_token: "PageToken"
    #   }
    #   options = {}
    #   response = client.search_provisioned_products(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_products: [
    #       {
    #         name: "ProvisionedProductNameOrArn",
    #         arn: "ProvisionedProductNameOrArn",
    #         type: "ProvisionedProductType",
    #         id: "Id",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"],
    #         status_message: "ProvisionedProductStatusMessage",
    #         created_time: Time.now,
    #         idempotency_token: "IdempotencyToken",
    #         last_record_id: "Id",
    #         last_provisioning_record_id: "Id",
    #         last_successful_provisioning_record_id: "Id",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         physical_id: "PhysicalId",
    #         product_id: "Id",
    #         product_name: "ProductViewName",
    #         provisioning_artifact_id: "Id",
    #         provisioning_artifact_name: "ProvisioningArtifactName",
    #         user_arn: "UserArn",
    #         user_arn_session: "UserArnSession"
    #       }
    #     ],
    #     total_results_count: 1,
    #     next_page_token: "PageToken"
    #   }
    # @return [Types::SearchProvisionedProductsOutput]
    def search_provisioned_products(params = {}, options = {})
      request = build_request(:search_provisioned_products, params)
      request.send_request(options)
    end

    # <p>Terminates the specified provisioned product.</p>
    #          <p>This operation does not delete any records associated with the provisioned product.</p>
    #          <p>You can check the status of this request using <a>DescribeRecord</a>.</p>
    # @param [Hash, Types::TerminateProvisionedProductInput] params
    # @option params [String] :provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    # @option params [String] :terminate_token
    #   <p>An idempotency token that uniquely identifies the termination request. This token is
    #            only valid during the termination process. After the provisioned product is terminated,
    #            subsequent requests to terminate the same provisioned product always return
    #            <b>ResourceNotFound</b>.</p>
    # @option params [Boolean] :ignore_errors
    #   <p>If set to true, Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :retain_physical_resources
    #   <p>When this boolean parameter is set to true, the <code>TerminateProvisionedProduct</code> API deletes
    #            the Service Catalog provisioned product. However, it does not remove the CloudFormation
    #            stack, stack set, or the underlying resources of the deleted provisioned product. The
    #            default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioned_product_name: "ProvisionedProductNameOrArn",
    #     provisioned_product_id: "Id",
    #     terminate_token: "IdempotencyToken", # required
    #     ignore_errors: false,
    #     accept_language: "AcceptLanguage",
    #     retain_physical_resources: false
    #   }
    #   options = {}
    #   response = client.terminate_provisioned_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::TerminateProvisionedProductOutput]
    def terminate_provisioned_product(params = {}, options = {})
      request = build_request(:terminate_provisioned_product, params)
      request.send_request(options)
    end

    # <p>Updates the specified constraint.</p>
    # @param [Hash, Types::UpdateConstraintInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The identifier of the constraint.</p>
    # @option params [String] :description
    #   <p>The updated description of the constraint.</p>
    # @option params [String] :parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be 
    #                     account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     description: "ConstraintDescription",
    #     parameters: "ConstraintParameters"
    #   }
    #   options = {}
    #   response = client.update_constraint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     constraint_detail: {
    #       constraint_id: "Id",
    #       type: "ConstraintType",
    #       description: "ConstraintDescription",
    #       owner: "AccountId",
    #       product_id: "Id",
    #       portfolio_id: "Id"
    #     },
    #     constraint_parameters: "ConstraintParameters",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"]
    #   }
    # @return [Types::UpdateConstraintOutput]
    def update_constraint(params = {}, options = {})
      request = build_request(:update_constraint, params)
      request.send_request(options)
    end

    # <p>Updates the specified portfolio.</p>
    #          <p>You cannot update a product that was shared with you.</p>
    # @param [Hash, Types::UpdatePortfolioInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The portfolio identifier.</p>
    # @option params [String] :display_name
    #   <p>The name to use for display purposes.</p>
    # @option params [String] :description
    #   <p>The updated description of the portfolio.</p>
    # @option params [String] :provider_name
    #   <p>The updated name of the portfolio provider.</p>
    # @option params [Array<Types::Tag>] :add_tags
    #   <p>The tags to add.</p>
    # @option params [Array<String>] :remove_tags
    #   <p>The tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     display_name: "PortfolioDisplayName",
    #     description: "PortfolioDescription",
    #     provider_name: "ProviderName",
    #     add_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     remove_tags: ["TagKey"]
    #   }
    #   options = {}
    #   response = client.update_portfolio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_detail: {
    #       id: "Id",
    #       arn: "ResourceARN",
    #       display_name: "PortfolioDisplayName",
    #       description: "PortfolioDescription",
    #       created_time: Time.now,
    #       provider_name: "ProviderName"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdatePortfolioOutput]
    def update_portfolio(params = {}, options = {})
      request = build_request(:update_portfolio, params)
      request.send_request(options)
    end

    # <p>Updates the specified portfolio share. You can use this API to enable or disable <code>TagOptions</code> sharing 
    #          or Principal sharing for an existing portfolio share. </p>
    #          <p>The portfolio share cannot be updated if the <code>CreatePortfolioShare</code> operation is <code>IN_PROGRESS</code>, as the share is not available to recipient entities. 
    #          In this case, you must wait for the portfolio share to be completed.</p>
    #          <p>You must provide the <code>accountId</code> or organization node in the input, but not both.</p>
    #          <p>If the portfolio is shared to both an external account and an organization node, and both shares need to be updated, you must invoke <code>UpdatePortfolioShare</code> separately for each share type. </p>
    #          <p>This API cannot be used for removing the portfolio share. You must use <code>DeletePortfolioShare</code> API for that action. </p>
    #          <note>
    #             <p>When you associate a principal with portfolio, a potential privilege escalation path may occur when that portfolio is 
    #          then shared with other accounts. For a user in a recipient account who is <i>not</i> an Service Catalog Admin, 
    #          but still has the ability to create Principals (Users/Groups/Roles), that user could create a role that matches a principal 
    #          name association for the portfolio. Although this user may not know which principal names are associated through 
    #          Service Catalog, they may be able to guess the user. If this potential escalation path is a concern, then 
    #          Service Catalog recommends using <code>PrincipalType</code> as <code>IAM</code>. With this configuration, 
    #          the <code>PrincipalARN</code> must already exist in the recipient account before it can be associated. </p>
    #          </note>
    # @param [Hash, Types::UpdatePortfolioShareInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :portfolio_id
    #   <p>The unique identifier of the portfolio for which the share will be updated.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account Id of the recipient account. This field is required when updating an external account to account type share.</p>
    # @option params [Types::OrganizationNode] :organization_node
    #   <p>Information about the organization node.</p>
    # @option params [Boolean] :share_tag_options
    #   <p>Enables or disables <code>TagOptions</code> sharing for the portfolio share. If this field is not provided, the current state of 
    #            TagOptions sharing on the portfolio share will not be modified.</p>
    # @option params [Boolean] :share_principals
    #   <p>A flag to enables or disables <code>Principals</code> sharing in the portfolio. If this field is not provided,
    #            the current state of the <code>Principals</code> sharing on the portfolio share will not be modified. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId",
    #     organization_node: {
    #       type: "ORGANIZATION" # One of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"],
    #       value: "OrganizationNodeValue"
    #     },
    #     share_tag_options: false,
    #     share_principals: false
    #   }
    #   options = {}
    #   response = client.update_portfolio_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     portfolio_share_token: "Id",
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"]
    #   }
    # @return [Types::UpdatePortfolioShareOutput]
    def update_portfolio_share(params = {}, options = {})
      request = build_request(:update_portfolio_share, params)
      request.send_request(options)
    end

    # <p>Updates the specified product.</p>
    # @param [Hash, Types::UpdateProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :id
    #   <p>The product identifier.</p>
    # @option params [String] :name
    #   <p>The updated product name.</p>
    # @option params [String] :owner
    #   <p>The updated owner of the product.</p>
    # @option params [String] :description
    #   <p>The updated description of the product.</p>
    # @option params [String] :distributor
    #   <p>The updated distributor of the product.</p>
    # @option params [String] :support_description
    #   <p>The updated support description for the product.</p>
    # @option params [String] :support_email
    #   <p>The updated support email for the product.</p>
    # @option params [String] :support_url
    #   <p>The updated support URL for the product.</p>
    # @option params [Array<Types::Tag>] :add_tags
    #   <p>The tags to add to the product.</p>
    # @option params [Array<String>] :remove_tags
    #   <p>The tags to remove from the product.</p>
    # @option params [Types::SourceConnection] :source_connection
    #   <p>Specifies connection details for the updated product and syncs the product to the connection source
    #            artifact. This automatically manages the product's artifacts based on changes to the source.
    #            The <code>SourceConnection</code> parameter consists of the following sub-fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConnectionParamters</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     name: "ProductViewName",
    #     owner: "ProductViewOwner",
    #     description: "ProductViewShortDescription",
    #     distributor: "ProductViewOwner",
    #     support_description: "SupportDescription",
    #     support_email: "SupportEmail",
    #     support_url: "SupportUrl",
    #     add_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     remove_tags: ["TagKey"],
    #     source_connection: {
    #       type: "CODESTAR" # One of: ["CODESTAR"],
    #       connection_parameters: { # required
    #         code_star: {
    #           connection_arn: "CodeStarConnectionArn", # required
    #           repository: "Repository", # required
    #           branch: "RepositoryBranch", # required
    #           artifact_path: "RepositoryArtifactPath", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     product_view_detail: {
    #       product_view_summary: {
    #         id: "Id",
    #         product_id: "Id",
    #         name: "ProductViewName",
    #         owner: "ProductViewOwner",
    #         short_description: "ProductViewShortDescription",
    #         type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #         distributor: "ProductViewDistributor",
    #         has_default_path: false,
    #         support_email: "SupportEmail",
    #         support_description: "SupportDescription",
    #         support_url: "SupportUrl"
    #       },
    #       status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"],
    #       product_arn: "ResourceARN",
    #       created_time: Time.now,
    #       source_connection: {
    #         type: "CODESTAR" # One of: ["CODESTAR"],
    #         connection_parameters: {
    #           code_star: {
    #             connection_arn: "CodeStarConnectionArn", # required
    #             repository: "Repository", # required
    #             branch: "RepositoryBranch", # required
    #             artifact_path: "RepositoryArtifactPath", # required
    #           }
    #         },
    #         last_sync: {
    #           last_sync_time: Time.now,
    #           last_sync_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED"],
    #           last_sync_status_message: "LastSyncStatusMessage",
    #           last_successful_sync_time: Time.now,
    #           last_successful_sync_provisioning_artifact_id: "Id"
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateProductOutput]
    def update_product(params = {}, options = {})
      request = build_request(:update_product, params)
      request.send_request(options)
    end

    # <p>Requests updates to the configuration of the specified provisioned product.</p>
    #          <p>If there are tags associated with the object, they cannot be updated or added.
    #          Depending on the specific updates requested, this operation can update with no
    #          interruption, with some interruption, or replace the provisioned product entirely.</p>
    #          <p>You can check the status of this request using <a>DescribeRecord</a>.</p>
    # @param [Hash, Types::UpdateProvisionedProductInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>
    # @option params [String] :product_id
    #   <p>The identifier of the product. You must provide the name or ID, but not both.</p>
    # @option params [String] :product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    # @option params [String] :provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    # @option params [String] :path_id
    #   <p>The path identifier. This value is optional if the product 
    #            has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>
    # @option params [String] :path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   <p>The new parameters.</p>
    # @option params [Types::UpdateProvisioningPreferences] :provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    # @option params [String] :update_token
    #   <p>The idempotency token that uniquely identifies the provisioning update request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_name: "ProvisionedProductNameOrArn",
    #     provisioned_product_id: "Id",
    #     product_id: "Id",
    #     product_name: "ProductViewName",
    #     provisioning_artifact_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     path_id: "Id",
    #     path_name: "PortfolioDisplayName",
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false
    #       }
    #     ],
    #     provisioning_preferences: {
    #       stack_set_accounts: ["AccountId"],
    #       stack_set_regions: ["Region"],
    #       stack_set_failure_tolerance_count: 1,
    #       stack_set_failure_tolerance_percentage: 1,
    #       stack_set_max_concurrency_count: 1,
    #       stack_set_max_concurrency_percentage: 1,
    #       stack_set_operation_type: "CREATE" # One of: ["CREATE", "UPDATE", "DELETE"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     update_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.update_provisioned_product(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     record_detail: {
    #       record_id: "Id",
    #       provisioned_product_name: "ProvisionedProductName",
    #       status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"],
    #       created_time: Time.now,
    #       updated_time: Time.now,
    #       provisioned_product_type: "ProvisionedProductType",
    #       record_type: "RecordType",
    #       provisioned_product_id: "Id",
    #       product_id: "Id",
    #       provisioning_artifact_id: "Id",
    #       path_id: "Id",
    #       record_errors: [
    #         {
    #           code: "ErrorCode",
    #           description: "ErrorDescription"
    #         }
    #       ],
    #       record_tags: [
    #         {
    #           key: "RecordTagKey",
    #           value: "RecordTagValue"
    #         }
    #       ],
    #       launch_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::UpdateProvisionedProductOutput]
    def update_provisioned_product(params = {}, options = {})
      request = build_request(:update_provisioned_product, params)
      request.send_request(options)
    end

    # <p>Requests updates to the properties of the specified provisioned product.</p>
    # @param [Hash, Types::UpdateProvisionedProductPropertiesInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    # @option params [Hash<String, String>] :provisioned_product_properties
    #   <p>A map that contains the provisioned product properties to be updated.</p>
    #            <p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows an
    #            administrator to call <code>UpdateProvisionedProductProperties</code> to update the launch
    #            role that is associated with a provisioned product. This role is used when an end user
    #            calls a provisioning operation such as <code>UpdateProvisionedProduct</code>,
    #               <code>TerminateProvisionedProduct</code>, or
    #               <code>ExecuteProvisionedProductServiceAction</code>. Only a role ARN is valid. A user ARN is invalid. </p>
    #            <p>The <code>OWNER</code> key accepts user ARNs, IAM role ARNs, and STS 
    #            assumed-role ARNs. The owner is the user that has permission to see, update, terminate, and 
    #            execute service actions in the provisioned product.</p>
    #            <p>The administrator can change the owner of a provisioned product to another IAM or STS entity within the 
    #            same account. Both end user owners and administrators can see ownership history of the provisioned 
    #            product using the <code>ListRecordHistory</code> API. The new owner can describe all past records 
    #            for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no 
    #            longer use <code>DescribeRecord</code>, but can still see the product's history from when he was 
    #            an owner using <code>ListRecordHistory</code>.</p>
    #            <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or 
    #            Service Catalog console such as update, terminate, and execute service actions. 
    #            If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through 
    #            API or the Service Catalog console on that provisioned product.</p>
    # @option params [String] :idempotency_token
    #   <p>The idempotency token that uniquely identifies the provisioning product update request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_id: "Id", # required
    #     provisioned_product_properties: { # required
    #       "PropertyKey" => "PropertyValue"
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   }
    #   options = {}
    #   response = client.update_provisioned_product_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioned_product_id: "Id",
    #     provisioned_product_properties: {
    #       "PropertyKey" => "PropertyValue"
    #     },
    #     record_id: "Id",
    #     status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #   }
    # @return [Types::UpdateProvisionedProductPropertiesOutput]
    def update_provisioned_product_properties(params = {}, options = {})
      request = build_request(:update_provisioned_product_properties, params)
      request.send_request(options)
    end

    # <p>Updates the specified provisioning artifact (also known as a version) for the specified product.</p>
    #          <p>You cannot update a provisioning artifact for a product that was shared with you.</p>
    # @param [Hash, Types::UpdateProvisioningArtifactInput] params
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @option params [String] :product_id
    #   <p>The product identifier.</p>
    # @option params [String] :provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    # @option params [String] :name
    #   <p>The updated name of the provisioning artifact.</p>
    # @option params [String] :description
    #   <p>The updated description of the provisioning artifact.</p>
    # @option params [Boolean] :active
    #   <p>Indicates whether the product version is active.</p>
    #            <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>
    # @option params [String] :guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #            <p>The <code>DEFAULT</code> value indicates that the product version is active.</p>
    #            <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform
    #             users that the product version is deprecated. Users are able to make updates to a provisioned product 
    #             of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     name: "ProvisioningArtifactName",
    #     description: "ProvisioningArtifactDescription",
    #     active: false,
    #     guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"]
    #   }
    #   options = {}
    #   response = client.update_provisioning_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provisioning_artifact_detail: {
    #       id: "Id",
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactName",
    #       type: "CLOUD_FORMATION_TEMPLATE" # One of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"],
    #       created_time: Time.now,
    #       active: false,
    #       guidance: "DEFAULT" # One of: ["DEFAULT", "DEPRECATED"],
    #       source_revision: "SourceRevision"
    #     },
    #     info: {
    #       "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue"
    #     },
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "FAILED"]
    #   }
    # @return [Types::UpdateProvisioningArtifactOutput]
    def update_provisioning_artifact(params = {}, options = {})
      request = build_request(:update_provisioning_artifact, params)
      request.send_request(options)
    end

    # <p>Updates a self-service action.</p>
    # @param [Hash, Types::UpdateServiceActionInput] params
    # @option params [String] :id
    #   <p>The self-service action identifier.</p>
    # @option params [String] :name
    #   <p>The self-service action name.</p>
    # @option params [Hash<String, String>] :definition
    #   <p>A map that defines the self-service action.</p>
    # @option params [String] :description
    #   <p>The self-service action description.</p>
    # @option params [String] :accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     name: "ServiceActionName",
    #     definition: {
    #       "ServiceActionDefinitionKey" => "ServiceActionDefinitionValue"
    #     },
    #     description: "ServiceActionDescription",
    #     accept_language: "AcceptLanguage"
    #   }
    #   options = {}
    #   response = client.update_service_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_action_detail: {
    #       service_action_summary: {
    #         id: "Id",
    #         name: "ServiceActionName",
    #         description: "ServiceActionDescription",
    #         definition_type: "SSM_AUTOMATION" # One of: ["SSM_AUTOMATION"]
    #       },
    #       definition: {
    #         "ServiceActionDefinitionKey" => "ServiceActionDefinitionValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateServiceActionOutput]
    def update_service_action(params = {}, options = {})
      request = build_request(:update_service_action, params)
      request.send_request(options)
    end

    # <p>Updates the specified TagOption.</p>
    # @param [Hash, Types::UpdateTagOptionInput] params
    # @option params [String] :id
    #   <p>The TagOption identifier.</p>
    # @option params [String] :value
    #   <p>The updated value.</p>
    # @option params [Boolean] :active
    #   <p>The updated active state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TagOptionId", # required
    #     value: "TagOptionValue",
    #     active: false
    #   }
    #   options = {}
    #   response = client.update_tag_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_option_detail: {
    #       key: "TagOptionKey",
    #       value: "TagOptionValue",
    #       active: false,
    #       id: "TagOptionId",
    #       owner: "Owner"
    #     }
    #   }
    # @return [Types::UpdateTagOptionOutput]
    def update_tag_option(params = {}, options = {})
      request = build_request(:update_tag_option, params)
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
      context[:gem_name] = 'aws-sdk-servicecatalog'
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
