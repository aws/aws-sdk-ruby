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

module Aws::CognitoIdentity
  # An API client for Aws::CognitoIdentity.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSCognitoIdentityService

    add_plugin(::Aws::CognitoIdentity::Plugins::Endpoint)
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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::CognitoIdentity::EndpointProvider] :endpoint_provider
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

    # <p>Creates a new identity pool. The identity pool is a store of user identity
    #          information that is specific to your Amazon Web Services account. The keys for
    #             <code>SupportedLoginProviders</code> are as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Facebook: <code>graph.facebook.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Google: <code>accounts.google.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Sign in With Apple: <code>appleid.apple.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Amazon: <code>www.amazon.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Twitter: <code>api.twitter.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Digits: <code>www.digits.com</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>If you don't provide a value for a parameter, Amazon Cognito sets it to its default value. 
    #       </p>
    #          </important>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::CreateIdentityPoolInput] params
    # @option params [String] :identity_pool_name
    #   <p>A string that you provide.</p>
    # @option params [Boolean] :allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    # @option params [Boolean] :allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users. This name acts as a
    #            placeholder that allows your backend and the Cognito service to communicate about the
    #            developer provider. For the <code>DeveloperProviderName</code>, you can use letters as well
    #            as period (<code>.</code>), underscore (<code>_</code>), and dash
    #            (<code>-</code>).</p>
    #            <p>Once you have set a developer provider name, you cannot change it. Please take care
    #            in setting this parameter.</p>
    # @option params [Array<String>] :open_id_connect_provider_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the OpenID Connect providers.</p>
    # @option params [Array<Types::CognitoIdentityProvider>] :cognito_identity_providers
    #   <p>An array of Amazon Cognito user pools and their client IDs.</p>
    # @option params [Array<String>] :saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    # @option params [Hash<String, String>] :identity_pool_tags
    #   <p>Tags to assign to the identity pool. A tag is a label that you can apply to identity
    #            pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId"
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_ar_ns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: ["ARNString"],
    #     identity_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.create_identity_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId"
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_ar_ns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: ["ARNString"],
    #     identity_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    # @return [Types::CreateIdentityPoolOutput]
    def create_identity_pool(params = {}, options = {})
      request = build_request(:create_identity_pool, params)
      request.send_request(options)
    end

    # <p>Deletes identities from an identity pool. You can specify a list of 1-60 identities
    #          that you want to delete.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::DeleteIdentitiesInput] params
    # @option params [Array<String>] :identity_ids_to_delete
    #   <p>A list of 1-60 identities that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_ids_to_delete: ["IdentityId"], # required
    #   }
    #   options = {}
    #   response = client.delete_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_identity_ids: [
    #       {
    #         identity_id: "IdentityId",
    #         error_code: "AccessDenied" # One of: ["AccessDenied", "InternalServerError"]
    #       }
    #     ]
    #   }
    # @return [Types::DeleteIdentitiesResponse]
    def delete_identities(params = {}, options = {})
      request = build_request(:delete_identities, params)
      request.send_request(options)
    end

    # <p>Deletes an identity pool. Once a pool is deleted, users will not be able to
    #          authenticate with the pool.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::DeleteIdentityPoolInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_identity_pool(params = {}, options = {})
      request = build_request(:delete_identity_pool, params)
      request.send_request(options)
    end

    # <p>Returns metadata related to the given identity, including when the identity was
    #          created and any associated linked logins.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::DescribeIdentityInput] params
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_id: "IdentityId", # required
    #   }
    #   options = {}
    #   response = client.describe_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId",
    #     logins: ["IdentityProviderName"],
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeIdentityOutput]
    def describe_identity(params = {}, options = {})
      request = build_request(:describe_identity, params)
      request.send_request(options)
    end

    # <p>Gets details about a particular identity pool, including the pool name, ID
    #          description, creation date, and current number of users.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::DescribeIdentityPoolInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.describe_identity_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId"
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_ar_ns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: ["ARNString"],
    #     identity_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    # @return [Types::DescribeIdentityPoolOutput]
    def describe_identity_pool(params = {}, options = {})
      request = build_request(:describe_identity_pool, params)
      request.send_request(options)
    end

    # <p>Returns credentials for the provided identity ID. Any provided logins will be
    #          validated against supported login providers. If the token is for
    #             <code>cognito-identity.amazonaws.com</code>, it will be passed through to Security Token Service with the appropriate role for the token.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    # @param [Hash, Types::GetCredentialsForIdentityInput] params
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. The
    #            name-value pair will follow the syntax "provider_name":
    #            "provider_user_identifier".</p>
    #            <p>Logins should not be specified when trying to get credentials for an unauthenticated
    #            identity.</p>
    #            <p>The Logins parameter is required when using identities associated with external
    #            identity providers such as Facebook. For examples of <code>Logins</code> maps, see the code
    #            examples in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html">External Identity
    #               Providers</a> section of the Amazon Cognito Developer Guide.</p>
    # @option params [String] :custom_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were
    #            received in the token from the identity provider. For example, a SAML-based identity
    #            provider. This parameter is optional for identity providers that do not support role
    #            customization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_id: "IdentityId", # required
    #     logins: {
    #       "IdentityProviderName" => "IdentityProviderToken"
    #     },
    #     custom_role_arn: "ARNString"
    #   }
    #   options = {}
    #   response = client.get_credentials_for_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId",
    #     credentials: {
    #       access_key_id: "AccessKeyString",
    #       secret_key: "SecretKeyString",
    #       session_token: "SessionTokenString",
    #       expiration: Time.now
    #     }
    #   }
    # @return [Types::GetCredentialsForIdentityResponse]
    def get_credentials_for_identity(params = {}, options = {})
      request = build_request(:get_credentials_for_identity, params)
      request.send_request(options)
    end

    # <p>Generates (or retrieves) IdentityID. Supplying multiple logins will create an
    #          implicit linked account.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    # @param [Hash, Types::GetIdInput] params
    # @option params [String] :account_id
    #   <p>A standard Amazon Web Services account ID (9+ digits).</p>
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. The
    #            available provider names for <code>Logins</code> are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Facebook: <code>graph.facebook.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Cognito user pool:
    #                     <code>cognito-idp.<region>.amazonaws.com/<YOUR_USER_POOL_ID></code>,
    #                  for example, <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Google: <code>accounts.google.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon: <code>www.amazon.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Twitter: <code>api.twitter.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Digits: <code>www.digits.com</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     identity_pool_id: "IdentityPoolId", # required
    #     logins: {
    #       "IdentityProviderName" => "IdentityProviderToken"
    #     }
    #   }
    #   options = {}
    #   response = client.get_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId"
    #   }
    # @return [Types::GetIdResponse]
    def get_id(params = {}, options = {})
      request = build_request(:get_id, params)
      request.send_request(options)
    end

    # <p>Gets the roles for an identity pool.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::GetIdentityPoolRolesInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.get_identity_pool_roles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     roles: {
    #       "RoleType" => "ARNString"
    #     },
    #     role_mappings: {
    #       "IdentityProviderName" => {
    #         type: "Token" # One of: ["Token", "Rules"], # required
    #         ambiguous_role_resolution: "AuthenticatedRole" # One of: ["AuthenticatedRole", "Deny"],
    #         rules_configuration: {
    #           rules: [ # required
    #             {
    #               claim: "ClaimName", # required
    #               match_type: "Equals" # One of: ["Equals", "Contains", "StartsWith", "NotEqual"], # required
    #               value: "ClaimValue", # required
    #               role_arn: "ARNString", # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetIdentityPoolRolesResponse]
    def get_identity_pool_roles(params = {}, options = {})
      request = build_request(:get_identity_pool_roles, params)
      request.send_request(options)
    end

    # <p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by
    #             <a>GetId</a>. You can optionally add additional logins for the identity.
    #          Supplying multiple logins creates an implicit link.</p>
    #          <p>The OpenID token is valid for 10 minutes.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    # @param [Hash, Types::GetOpenIdTokenInput] params
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. When
    #            using graph.facebook.com and www.amazon.com, supply the access_token returned from the
    #            provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any
    #            other OpenID Connect provider, always include the <code>id_token</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_id: "IdentityId", # required
    #     logins: {
    #       "IdentityProviderName" => "IdentityProviderToken"
    #     }
    #   }
    #   options = {}
    #   response = client.get_open_id_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId",
    #     token: "OIDCToken"
    #   }
    # @return [Types::GetOpenIdTokenResponse]
    def get_open_id_token(params = {}, options = {})
      request = build_request(:get_open_id_token, params)
      request.send_request(options)
    end

    # <p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect
    #          token for a user authenticated by your backend authentication process. Supplying multiple
    #          logins will create an implicit linked account. You can only specify one developer provider
    #          as part of the <code>Logins</code> map, which is linked to the identity pool. The developer
    #          provider is the "domain" by which Cognito will refer to your users.</p>
    #          <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity
    #          and to link new logins (that is, user credentials issued by a public provider or developer
    #          provider) to an existing identity. When you want to create a new identity, the
    #             <code>IdentityId</code> should be null. When you want to associate a new login with an
    #          existing authenticated/unauthenticated identity, you can do so by providing the existing
    #             <code>IdentityId</code>. This API will create the identity in the specified
    #             <code>IdentityPoolId</code>.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::GetOpenIdTokenForDeveloperIdentityInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. Each
    #            name-value pair represents a user from a public provider or developer provider. If the user
    #            is from a developer provider, the name-value pair will follow the syntax
    #               <code>"developer_provider_name": "developer_user_identifier"</code>. The developer
    #            provider is the "domain" by which Cognito will refer to your users; you provided this
    #            domain while creating/updating the identity pool. The developer user identifier is an
    #            identifier from your backend that uniquely identifies a user. When you create an identity
    #            pool, you can specify the supported logins.</p>
    # @option params [Hash<String, String>] :principal_tags
    #   <p>Use this operation to configure attribute mappings for custom providers. </p>
    # @option params [Integer] :token_duration
    #   <p>The expiration time of the token, in seconds. You can specify a custom expiration
    #            time for the token so that you can cache it. If you don't provide an expiration time, the
    #            token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary
    #               Amazon Web Services credentials, which are valid for a maximum of one hour. The maximum
    #            token duration you can set is 24 hours. You should take care in setting the expiration time
    #            for a token, as there are significant security implications: an attacker could use a leaked
    #            token to access your Amazon Web Services resources for the token's duration.</p>
    #            <note>
    #               <p>Please provide for a small grace period, usually no more than 5 minutes, to
    #               account for clock skew.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId",
    #     logins: { # required
    #       "IdentityProviderName" => "IdentityProviderToken"
    #     },
    #     principal_tags: {
    #       "PrincipalTagID" => "PrincipalTagValue"
    #     },
    #     token_duration: 1
    #   }
    #   options = {}
    #   response = client.get_open_id_token_for_developer_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId",
    #     token: "OIDCToken"
    #   }
    # @return [Types::GetOpenIdTokenForDeveloperIdentityResponse]
    def get_open_id_token_for_developer_identity(params = {}, options = {})
      request = build_request(:get_open_id_token_for_developer_identity, params)
      request.send_request(options)
    end

    # <p>Use <code>GetPrincipalTagAttributeMap</code> to list all mappings between
    #             <code>PrincipalTags</code> and user attributes.</p>
    # @param [Hash, Types::GetPrincipalTagAttributeMapInput] params
    # @option params [String] :identity_pool_id
    #   <p>You can use this operation to get the ID of the Identity Pool you setup attribute
    #            mappings for.</p>
    # @option params [String] :identity_provider_name
    #   <p>You can use this operation to get the provider name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_provider_name: "IdentityProviderName", # required
    #   }
    #   options = {}
    #   response = client.get_principal_tag_attribute_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     identity_provider_name: "IdentityProviderName",
    #     use_defaults: false,
    #     principal_tags: {
    #       "PrincipalTagID" => "PrincipalTagValue"
    #     }
    #   }
    # @return [Types::GetPrincipalTagAttributeMapResponse]
    def get_principal_tag_attribute_map(params = {}, options = {})
      request = build_request(:get_principal_tag_attribute_map, params)
      request.send_request(options)
    end

    # <p>Lists the identities in an identity pool.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::ListIdentitiesInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of identities to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    # @option params [Boolean] :hide_disabled
    #   <p>An optional boolean parameter that allows you to hide disabled identities. If
    #            omitted, the ListIdentities API will include disabled identities in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     max_results: 1, # required
    #     next_token: "PaginationKey",
    #     hide_disabled: false
    #   }
    #   options = {}
    #   response = client.list_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     identities: [
    #       {
    #         identity_id: "IdentityId",
    #         logins: ["IdentityProviderName"],
    #         creation_date: Time.now,
    #         last_modified_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListIdentitiesResponse]
    def list_identities(params = {}, options = {})
      request = build_request(:list_identities, params)
      request.send_request(options)
    end

    # <p>Lists all of the Cognito identity pools registered for your account.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::ListIdentityPoolsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of identities to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1, # required
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.list_identity_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pools: [
    #       {
    #         identity_pool_id: "IdentityPoolId",
    #         identity_pool_name: "IdentityPoolName"
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListIdentityPoolsResponse]
    def list_identity_pools(params = {}, options = {})
      request = build_request(:list_identity_pools, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are assigned to an Amazon Cognito identity pool.</p>
    #          <p>A tag is a label that you can apply to identity pools to categorize and manage them in
    #          different ways, such as by purpose, owner, environment, or other criteria.</p>
    #          <p>You can use this action up to 10 times per second, per account.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool that the tags are assigned
    #            to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARNString", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves the <code>IdentityID</code> associated with a
    #             <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>
    #          values associated with an <code>IdentityId</code> for an existing identity. Either
    #             <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you
    #          supply only one of these values, the other value will be searched in the database and
    #          returned as a part of the response. If you supply both,
    #             <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If
    #          the values are verified against the database, the response returns both values and is the
    #          same as the request. Otherwise, a <code>ResourceConflictException</code> is
    #          thrown.</p>
    #          <p>
    #             <code>LookupDeveloperIdentity</code> is intended for low-throughput control plane
    #          operations: for example, to enable customer service to locate an identity ID by username.
    #          If you are using it for higher-volume operations such as user authentication, your requests
    #          are likely to be throttled. <a>GetOpenIdTokenForDeveloperIdentity</a> is a
    #          better option for higher-volume operations for user authentication.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::LookupDeveloperIdentityInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @option params [String] :developer_user_identifier
    #   <p>A unique ID used by your backend authentication process to identify a user.
    #            Typically, a developer identity provider would issue many developer user identifiers, in
    #            keeping with the number of users.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of identities to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token. The first call you make will have <code>NextToken</code> set to
    #            null. After that the service will return <code>NextToken</code> values as needed. For
    #            example, let's say you make a request with <code>MaxResults</code> set to 10, and there are
    #            20 matches in the database. The service will return a pagination token as a part of the
    #            response. This token can be used to call the API again and get results starting from the
    #            11th match.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId",
    #     developer_user_identifier: "DeveloperUserIdentifier",
    #     max_results: 1,
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.lookup_developer_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId",
    #     developer_user_identifier_list: ["DeveloperUserIdentifier"],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::LookupDeveloperIdentityResponse]
    def lookup_developer_identity(params = {}, options = {})
      request = build_request(:lookup_developer_identity, params)
      request.send_request(options)
    end

    # <p>Merges two users having different <code>IdentityId</code>s, existing in the same
    #          identity pool, and identified by the same developer provider. You can use this action to
    #          request that discrete users be merged and identified as a single user in the Cognito
    #          environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>)
    #          with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only
    #          developer-authenticated users can be merged. If the users to be merged are associated with
    #          the same public provider, but as two different users, an exception will be
    #          thrown.</p>
    #          <p>The number of linked logins is limited to 20. So, the number of linked logins for the
    #          source user, <code>SourceUserIdentifier</code>, and the destination user,
    #             <code>DestinationUserIdentifier</code>, together should not be larger than 20.
    #          Otherwise, an exception will be thrown.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::MergeDeveloperIdentitiesInput] params
    # @option params [String] :source_user_identifier
    #   <p>User identifier for the source user. The value should be a
    #               <code>DeveloperUserIdentifier</code>.</p>
    # @option params [String] :destination_user_identifier
    #   <p>User identifier for the destination user. The value should be a
    #               <code>DeveloperUserIdentifier</code>.</p>
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users. This is a (pseudo) domain
    #            name that you provide while creating an identity pool. This name acts as a placeholder that
    #            allows your backend and the Cognito service to communicate about the developer provider.
    #            For the <code>DeveloperProviderName</code>, you can use letters as well as period (.),
    #            underscore (_), and dash (-).</p>
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_user_identifier: "DeveloperUserIdentifier", # required
    #     destination_user_identifier: "DeveloperUserIdentifier", # required
    #     developer_provider_name: "DeveloperProviderName", # required
    #     identity_pool_id: "IdentityPoolId", # required
    #   }
    #   options = {}
    #   response = client.merge_developer_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_id: "IdentityId"
    #   }
    # @return [Types::MergeDeveloperIdentitiesResponse]
    def merge_developer_identities(params = {}, options = {})
      request = build_request(:merge_developer_identities, params)
      request.send_request(options)
    end

    # <p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::SetIdentityPoolRolesInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [Hash<String, String>] :roles
    #   <p>The map of roles associated with this pool. For a given role, the key will be either
    #            "authenticated" or "unauthenticated" and the value will be the Role ARN.</p>
    # @option params [Hash<String, Types::RoleMapping>] :role_mappings
    #   <p>How users for a specific identity provider are to mapped to roles. This is a string
    #            to <a>RoleMapping</a> object map. The string identifies the identity provider,
    #            for example, <code>graph.facebook.com</code> or
    #               <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id</code>.</p>
    #            <p>Up to 25 rules can be specified per identity provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     roles: { # required
    #       "RoleType" => "ARNString"
    #     },
    #     role_mappings: {
    #       "IdentityProviderName" => {
    #         type: "Token" # One of: ["Token", "Rules"], # required
    #         ambiguous_role_resolution: "AuthenticatedRole" # One of: ["AuthenticatedRole", "Deny"],
    #         rules_configuration: {
    #           rules: [ # required
    #             {
    #               claim: "ClaimName", # required
    #               match_type: "Equals" # One of: ["Equals", "Contains", "StartsWith", "NotEqual"], # required
    #               value: "ClaimValue", # required
    #               role_arn: "ARNString", # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.set_identity_pool_roles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_identity_pool_roles(params = {}, options = {})
      request = build_request(:set_identity_pool_roles, params)
      request.send_request(options)
    end

    # <p>You can use this operation to use default (username and clientID) attribute or custom
    #          attribute mappings.</p>
    # @param [Hash, Types::SetPrincipalTagAttributeMapInput] params
    # @option params [String] :identity_pool_id
    #   <p>The ID of the Identity Pool you want to set attribute mappings for.</p>
    # @option params [String] :identity_provider_name
    #   <p>The provider name you want to use for attribute mappings.</p>
    # @option params [Boolean] :use_defaults
    #   <p>You can use this operation to use default (username and clientID) attribute
    #            mappings.</p>
    # @option params [Hash<String, String>] :principal_tags
    #   <p>You can use this operation to add principal tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_provider_name: "IdentityProviderName", # required
    #     use_defaults: false,
    #     principal_tags: {
    #       "PrincipalTagID" => "PrincipalTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.set_principal_tag_attribute_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId",
    #     identity_provider_name: "IdentityProviderName",
    #     use_defaults: false,
    #     principal_tags: {
    #       "PrincipalTagID" => "PrincipalTagValue"
    #     }
    #   }
    # @return [Types::SetPrincipalTagAttributeMapResponse]
    def set_principal_tag_attribute_map(params = {}, options = {})
      request = build_request(:set_principal_tag_attribute_map, params)
      request.send_request(options)
    end

    # <p>Assigns a set of tags to the specified Amazon Cognito identity pool. A tag is a label
    #          that you can use to categorize and manage identity pools in different ways, such as by
    #          purpose, owner, environment, or other criteria.</p>
    #          <p>Each tag consists of a key and value, both of which you define. A key is a general
    #          category for more specific values. For example, if you have two versions of an identity
    #          pool, one for testing and another for production, you might assign an
    #             <code>Environment</code> tag key to both identity pools. The value of this key might be
    #             <code>Test</code> for one identity pool and <code>Production</code> for the
    #          other.</p>
    #          <p>Tags are useful for cost tracking and access control. You can activate your tags so that
    #          they appear on the Billing and Cost Management console, where you can track the costs
    #          associated with your identity pools. In an IAM policy, you can constrain
    #          permissions for identity pools based on specific tags or tag values.</p>
    #          <p>You can use this action up to 5 times per second, per account. An identity pool can have
    #          as many as 50 tags.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the identity pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARNString", # required
    #     tags: { # required
    #       "TagKeysType" => "TagValueType"
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

    # <p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked
    #          developer users will be considered new identities next time they are seen. If, for a given
    #          Cognito identity, you remove all federated identities as well as the developer user
    #          identifier, the Cognito identity becomes inaccessible.</p>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::UnlinkDeveloperIdentityInput] params
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    # @option params [String] :developer_user_identifier
    #   <p>A unique ID used by your backend authentication process to identify a user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_id: "IdentityId", # required
    #     identity_pool_id: "IdentityPoolId", # required
    #     developer_provider_name: "DeveloperProviderName", # required
    #     developer_user_identifier: "DeveloperUserIdentifier", # required
    #   }
    #   options = {}
    #   response = client.unlink_developer_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unlink_developer_identity(params = {}, options = {})
      request = build_request(:unlink_developer_identity, params)
      request.send_request(options)
    end

    # <p>Unlinks a federated identity from an existing account. Unlinked logins will be
    #          considered new identities next time they are seen. Removing the last linked login will make
    #          this identity inaccessible.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    # @param [Hash, Types::UnlinkIdentityInput] params
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider
    #            tokens.</p>
    # @option params [Array<String>] :logins_to_remove
    #   <p>Provider names to unlink from this identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_id: "IdentityId", # required
    #     logins: { # required
    #       "IdentityProviderName" => "IdentityProviderToken"
    #     },
    #     logins_to_remove: ["IdentityProviderName"], # required
    #   }
    #   options = {}
    #   response = client.unlink_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unlink_identity(params = {}, options = {})
      request = build_request(:unlink_identity, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified Amazon Cognito identity pool. You can use
    #          this action up to 5 times per second, per account</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the user pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARNString", # required
    #     tag_keys: ["TagKeysType"], # required
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

    # <p>Updates the configuration of an identity pool.</p>
    #          <important>
    #             <p>If you don't provide a value for a parameter, Amazon Cognito sets it to its default value. 
    #       </p>
    #          </important>
    #          <p>You must use Amazon Web Services developer credentials to call this
    #          operation.</p>
    # @param [Hash, Types::UpdateIdentityPoolInput] params
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    # @option params [String] :identity_pool_name
    #   <p>A string that you provide.</p>
    # @option params [Boolean] :allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    # @option params [Boolean] :allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the
    #               <i>Amazon Cognito Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    # @option params [Array<String>] :open_id_connect_provider_ar_ns
    #   <p>The ARNs of the OpenID Connect providers.</p>
    # @option params [Array<Types::CognitoIdentityProvider>] :cognito_identity_providers
    #   <p>A list representing an Amazon Cognito user pool and its client ID.</p>
    # @option params [Array<String>] :saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    # @option params [Hash<String, String>] :identity_pool_tags
    #   <p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
    #            identity pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId"
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_ar_ns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: ["ARNString"],
    #     identity_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.update_identity_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId"
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_ar_ns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: ["ARNString"],
    #     identity_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    # @return [Types::UpdateIdentityPoolOutput]
    def update_identity_pool(params = {}, options = {})
      request = build_request(:update_identity_pool, params)
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
      context[:gem_name] = 'aws-sdk-cognitoidentity'
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
