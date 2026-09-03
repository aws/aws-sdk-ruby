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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ssooidc)

module Aws::SSOOIDC
  # An API client for Aws::SSOOIDC.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSSSOOIDCService
    @identifier = :ssooidc

    add_plugin(::Aws::SSOOIDC::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SSOOIDC::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Creates and returns access and refresh tokens for clients that are authenticated using
    #       client secrets. The access token can be used to fetch short-lived credentials for the assigned
    #       AWS accounts or to access application APIs using <code>bearer</code> authentication.</p>
    # @param [Hash, Types::CreateTokenRequest] params
    # @option params [String] :client_id
    #   <p>The unique identifier string for the client or application. This value comes from the
    #         result of the <a>RegisterClient</a> API.</p>
    # @option params [String] :client_secret
    #   <p>A secret string generated for the client. This value should come from the persisted result
    #         of the <a>RegisterClient</a> API.</p>
    # @option params [String] :grant_type
    #   <p>Supports the following OAuth grant types: Authorization Code, Device Code, and Refresh
    #         Token. Specify one of the following values, depending on the grant type that you want:</p>
    #            <p>* Authorization Code - <code>authorization_code</code>
    #            </p>
    #            <p>* Device Code - <code>urn:ietf:params:oauth:grant-type:device_code</code>
    #            </p>
    #            <p>* Refresh Token - <code>refresh_token</code>
    #            </p>
    # @option params [String] :device_code
    #   <p>Used only when calling this API for the Device Code grant type. This short-lived code is
    #         used to identify this authorization request. This comes from the result of the <a>StartDeviceAuthorization</a> API.</p>
    # @option params [String] :code
    #   <p>Used only when calling this API for the Authorization Code grant type. The short-lived
    #         code is used to identify this authorization request.</p>
    # @option params [String] :refresh_token
    #   <p>Used only when calling this API for the Refresh Token grant type. This token is used to
    #         refresh short-lived tokens, such as the access token, that might expire.</p>
    #            <p>For more information about the features and limitations of the current IAM Identity Center OIDC
    #         implementation, see <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    # @option params [Array<String>] :scope
    #   <p>The list of scopes for which authorization is requested. This parameter has no effect; the access token will always include all scopes configured during client registration.</p>
    # @option params [String] :redirect_uri
    #   <p>Used only when calling this API for the Authorization Code grant type. This value
    #         specifies the location of the client or application that has registered to receive the
    #         authorization code.</p>
    # @option params [String] :code_verifier
    #   <p>Used only when calling this API for the Authorization Code grant type. This value is
    #         generated by the client and presented to validate the original code challenge value the client
    #         passed at authorization time.</p>
    # @example Call OAuth/OIDC /token endpoint for Device Code grant with Secret authentication
    #   
    #   params = {
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     grant_type: "urn:ietf:params:oauth:grant-type:device-code",
    #     device_code: "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzIn0EXAMPLEDEVICECODE"
    #   }
    #   options = {}
    #   response = client.create_token(params, options)
    #   response.to_h #=>
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN"
    #   }
    # @example Call OAuth/OIDC /token endpoint for Refresh Token grant with Secret authentication
    #   
    #   params = {
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     grant_type: "refresh_token",
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     scope: [
    #       "codewhisperer:completions"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_token(params, options)
    #   response.to_h #=>
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientId", # required
    #     client_secret: "ClientSecret", # required
    #     grant_type: "GrantType", # required
    #     device_code: "DeviceCode",
    #     code: "AuthCode",
    #     refresh_token: "RefreshToken",
    #     scope: ["Scope"],
    #     redirect_uri: "URI",
    #     code_verifier: "CodeVerifier"
    #   }
    #   options = {}
    #   response = client.create_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_token: "AccessToken",
    #     token_type: "TokenType",
    #     expires_in: 1,
    #     refresh_token: "RefreshToken",
    #     id_token: "IdToken"
    #   }
    # @return [Types::CreateTokenResponse]
    def create_token(params = {}, options = {})
      request = build_request(:create_token, params)
      request.send_request(options)
    end

    # <p>Creates and returns access and refresh tokens for authorized client applications that are
    #       authenticated using any IAM entity, such as a service
    #       role or user. These tokens might contain defined scopes that specify permissions such as <code>read:profile</code> or <code>write:data</code>. Through downscoping, you can use the scopes parameter to request tokens with reduced permissions compared to the original client application's permissions or, if applicable, the refresh token's scopes. The access token can be used to fetch short-lived credentials for the assigned
    #       Amazon Web Services accounts or to access application APIs using <code>bearer</code> authentication.</p>
    #          <note>
    #             <p>This API is used with Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv.html">Amazon Web Services Signature
    #           Version 4 for API Requests</a>.</p>
    #          </note>
    # @param [Hash, Types::CreateTokenWithIAMRequest] params
    # @option params [String] :client_id
    #   <p>The unique identifier string for the client or application. This value is an application
    #         ARN that has OAuth grants configured.</p>
    # @option params [String] :grant_type
    #   <p>Supports the following OAuth grant types: Authorization Code, Refresh Token, JWT Bearer,
    #         and Token Exchange. Specify one of the following values, depending on the grant type that you
    #         want:</p>
    #            <p>* Authorization Code - <code>authorization_code</code>
    #            </p>
    #            <p>* Refresh Token - <code>refresh_token</code>
    #            </p>
    #            <p>* JWT Bearer - <code>urn:ietf:params:oauth:grant-type:jwt-bearer</code>
    #            </p>
    #            <p>* Token Exchange - <code>urn:ietf:params:oauth:grant-type:token-exchange</code>
    #            </p>
    # @option params [String] :code
    #   <p>Used only when calling this API for the Authorization Code grant type. This short-lived
    #         code is used to identify this authorization request. The code is obtained through a redirect
    #         from IAM Identity Center to a redirect URI persisted in the Authorization Code GrantOptions for the
    #         application.</p>
    # @option params [String] :refresh_token
    #   <p>Used only when calling this API for the Refresh Token grant type. This token is used to
    #         refresh short-lived tokens, such as the access token, that might expire.</p>
    #            <p>For more information about the features and limitations of the current IAM Identity Center OIDC
    #         implementation, see <i>Considerations for Using this Guide</i> in the <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html">IAM Identity Center
    #           OIDC API Reference</a>.</p>
    # @option params [String] :assertion
    #   <p>Used only when calling this API for the JWT Bearer grant type. This value specifies the
    #         JSON Web Token (JWT) issued by a trusted token issuer. To authorize a trusted token issuer,
    #         configure the JWT Bearer GrantOptions for the application.</p>
    # @option params [Array<String>] :scope
    #   <p>The list of scopes for which authorization is requested. The access token that is issued
    #         is limited to the scopes that are granted. If the value is not specified, IAM Identity Center authorizes all
    #         scopes configured for the application, including the following default scopes:
    #           <code>openid</code>, <code>aws</code>, <code>sts:identity_context</code>.</p>
    # @option params [String] :redirect_uri
    #   <p>Used only when calling this API for the Authorization Code grant type. This value
    #         specifies the location of the client or application that has registered to receive the
    #         authorization code. </p>
    # @option params [String] :subject_token
    #   <p>Used only when calling this API for the Token Exchange grant type. This value specifies
    #         the subject of the exchange. The value of the subject token must be an access token issued by
    #         IAM Identity Center to a different client or application. The access token must have authorized scopes that
    #         indicate the requested application as a target audience.</p>
    # @option params [String] :subject_token_type
    #   <p>Used only when calling this API for the Token Exchange grant type. This value specifies
    #         the type of token that is passed as the subject of the exchange. The following value is
    #         supported:</p>
    #            <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>
    #            </p>
    # @option params [String] :requested_token_type
    #   <p>Used only when calling this API for the Token Exchange grant type. This value specifies
    #         the type of token that the requester can receive. The following values are supported:</p>
    #            <p>* Access Token - <code>urn:ietf:params:oauth:token-type:access_token</code>
    #            </p>
    #            <p>* Refresh Token - <code>urn:ietf:params:oauth:token-type:refresh_token</code>
    #            </p>
    # @option params [String] :code_verifier
    #   <p>Used only when calling this API for the Authorization Code grant type. This value is
    #         generated by the client and presented to validate the original code challenge value the client
    #         passed at authorization time.</p>
    # @example Call OAuth/OIDC /token endpoint for Authorization Code grant with IAM authentication
    #   
    #   params = {
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "authorization_code",
    #     code: "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzg0In0EXAMPLEAUTHCODE",
    #     redirect_uri: "https://mywebapp.example/redirect",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_token_with_iam(params, options)
    #   response.to_h #=>
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     id_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd3M6aWRlbnRpdHlfc3RvcmVfaWQiOiJkLTMzMzMzMzMzMzMiLCJzdWIiOiI3MzA0NDhmMi1lMGExLTcwYTctYzk1NC0wMDAwMDAwMDAwMDAiLCJhd3M6aW5zdGFuY2VfYWNjb3VudCI6IjExMTExMTExMTExMSIsInN0czppZGVudGl0eV9jb250ZXh0IjoiRVhBTVBMRUlERU5USVRZQ09OVEVYVCIsInN0czphdWRpdF9jb250ZXh0IjoiRVhBTVBMRUFVRElUQ09OVEVYVCIsImlzcyI6Imh0dHBzOi8vaWRlbnRpdHljZW50ZXIuYW1hem9uYXdzLmNvbS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmlkZW50aXR5X3N0b3JlX2FybiI6ImFybjphd3M6aWRlbnRpdHlzdG9yZTo6MTExMTExMTExMTExOmlkZW50aXR5c3RvcmUvZC0zMzMzMzMzMzMzIiwiYXVkIjoiYXJuOmF3czpzc286OjEyMzQ1Njc4OTAxMjphcHBsaWNhdGlvbi9zc29pbnMtMTExMTExMTExMTExL2FwbC0yMjIyMjIyMjIyMjIiLCJhd3M6aW5zdGFuY2VfYXJuIjoiYXJuOmF3czpzc286OjppbnN0YW5jZS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmNyZWRlbnRpYWxfaWQiOiJfWlIyTjZhVkJqMjdGUEtheWpfcEtwVjc3QVBERl80MXB4ZXRfWWpJdUpONlVJR2RBdkpFWEFNUExFQ1JFRElEIiwiYXV0aF90aW1lIjoiMjAyMC0wMS0yMlQxMjo0NToyOVoiLCJleHAiOjE1Nzk3Mjk1MjksImlhdCI6MTU3OTcyNTkyOX0.Xyah6qbk78qThzJ41iFU2yfGuRqqtKXHrJYwQ8L9Ip0",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:refresh_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ],
    #     aws_additional_details: {
    #       identity_context: "EXAMPLEIDENTITYCONTEXT"
    #     }
    #   }
    # @example Call OAuth/OIDC /token endpoint for JWT Bearer grant with IAM authentication
    #   
    #   params = {
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "urn:ietf:params:oauth:grant-type:jwt-bearer",
    #     assertion: "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IjFMVE16YWtpaGlSbGFfOHoyQkVKVlhlV01xbyJ9.eyJ2ZXIiOiIyLjAiLCJpc3MiOiJodHRwczovL2xvZ2luLm1pY3Jvc29mdG9ubGluZS5jb20vOTEyMjA0MGQtNmM2Ny00YzViLWIxMTItMzZhMzA0YjY2ZGFkL3YyLjAiLCJzdWIiOiJBQUFBQUFBQUFBQUFBQUFBQUFBQUFJa3pxRlZyU2FTYUZIeTc4MmJidGFRIiwiYXVkIjoiNmNiMDQwMTgtYTNmNS00NmE3LWI5OTUtOTQwYzc4ZjVhZWYzIiwiZXhwIjoxNTM2MzYxNDExLCJpYXQiOjE1MzYyNzQ3MTEsIm5iZiI6MTUzNjI3NDcxMSwibmFtZSI6IkFiZSBMaW5jb2xuIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiQWJlTGlAbWljcm9zb2Z0LmNvbSIsIm9pZCI6IjAwMDAwMDAwLTAwMDAtMDAwMC02NmYzLTMzMzJlY2E3ZWE4MSIsInRpZCI6IjkxMjIwNDBkLTZjNjctNGM1Yi1iMTEyLTM2YTMwNGI2NmRhZCIsIm5vbmNlIjoiMTIzNTIzIiwiYWlvIjoiRGYyVVZYTDFpeCFsTUNXTVNPSkJjRmF0emNHZnZGR2hqS3Y4cTVnMHg3MzJkUjVNQjVCaXN2R1FPN1lXQnlqZDhpUURMcSFlR2JJRGFreXA1bW5PcmNkcUhlWVNubHRlcFFtUnA2QUlaOGpZIn0.1AFWW-Ck5nROwSlltm7GzZvDwUkqvhSQpm55TQsmVo9Y59cLhRXpvB8n-55HCr9Z6G_31_UbeUkoz612I2j_Sm9FFShSDDjoaLQr54CreGIJvjtmS3EkK9a7SJBbcpL1MpUtlfygow39tFjY7EVNW9plWUvRrTgVk7lYLprvfzw-CIqw3gHC-T7IK_m_xkr08INERBtaecwhTeN4chPC4W3jdmw_lIxzC48YoQ0dB1L9-ImX98Egypfrlbm0IBL5spFzL6JDZIRRJOu8vecJvj1mq-IUhGt0MacxX8jdxYLP-KUu2d9MbNKpCKJuZ7p8gwTL5B7NlUdh_dmSviPWrw"
    #   }
    #   options = {}
    #   response = client.create_token_with_iam(params, options)
    #   response.to_h #=>
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     id_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd3M6aWRlbnRpdHlfc3RvcmVfaWQiOiJkLTMzMzMzMzMzMzMiLCJzdWIiOiI3MzA0NDhmMi1lMGExLTcwYTctYzk1NC0wMDAwMDAwMDAwMDAiLCJhd3M6aW5zdGFuY2VfYWNjb3VudCI6IjExMTExMTExMTExMSIsInN0czppZGVudGl0eV9jb250ZXh0IjoiRVhBTVBMRUlERU5USVRZQ09OVEVYVCIsInN0czphdWRpdF9jb250ZXh0IjoiRVhBTVBMRUFVRElUQ09OVEVYVCIsImlzcyI6Imh0dHBzOi8vaWRlbnRpdHljZW50ZXIuYW1hem9uYXdzLmNvbS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmlkZW50aXR5X3N0b3JlX2FybiI6ImFybjphd3M6aWRlbnRpdHlzdG9yZTo6MTExMTExMTExMTExOmlkZW50aXR5c3RvcmUvZC0zMzMzMzMzMzMzIiwiYXVkIjoiYXJuOmF3czpzc286OjEyMzQ1Njc4OTAxMjphcHBsaWNhdGlvbi9zc29pbnMtMTExMTExMTExMTExL2FwbC0yMjIyMjIyMjIyMjIiLCJhd3M6aW5zdGFuY2VfYXJuIjoiYXJuOmF3czpzc286OjppbnN0YW5jZS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmNyZWRlbnRpYWxfaWQiOiJfWlIyTjZhVkJqMjdGUEtheWpfcEtwVjc3QVBERl80MXB4ZXRfWWpJdUpONlVJR2RBdkpFWEFNUExFQ1JFRElEIiwiYXV0aF90aW1lIjoiMjAyMC0wMS0yMlQxMjo0NToyOVoiLCJleHAiOjE1Nzk3Mjk1MjksImlhdCI6MTU3OTcyNTkyOX0.Xyah6qbk78qThzJ41iFU2yfGuRqqtKXHrJYwQ8L9Ip0",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:refresh_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ],
    #     aws_additional_details: {
    #       identity_context: "EXAMPLEIDENTITYCONTEXT"
    #     }
    #   }
    # @example Call OAuth/OIDC /token endpoint for Refresh Token grant with IAM authentication
    #   
    #   params = {
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "refresh_token",
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN"
    #   }
    #   options = {}
    #   response = client.create_token_with_iam(params, options)
    #   response.to_h #=>
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     refresh_token: "aorvJYubGpU6i91YnH7Mfo-AT2fIVa1zCfA_Rvq9yjVKIP3onFmmykuQ7E93y2I-9Nyj-A_sVvMufaLNL0bqnDRtgAkc0:MGUCMFrRsktMRVlWaOR70XGMFGLL0SlcCw4DiYveIiOVx1uK9BbD0gvAddsW3UTLozXKMgIxAJ3qxUvjpnlLIOaaKOoa/FuNgqJVvr9GMwDtnAtlh9iZzAkEXAMPLEREFRESHTOKEN",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:refresh_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ]
    #   }
    # @example Call OAuth/OIDC /token endpoint for Token Exchange grant with IAM authentication
    #   
    #   params = {
    #     client_id: "arn:aws:sso::123456789012:application/ssoins-111111111111/apl-222222222222",
    #     grant_type: "urn:ietf:params:oauth:grant-type:token-exchange",
    #     subject_token: "aoak-Hig8TUDPNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZDIFFERENTACCESSTOKEN",
    #     subject_token_type: "urn:ietf:params:oauth:token-type:access_token",
    #     requested_token_type: "urn:ietf:params:oauth:token-type:access_token"
    #   }
    #   options = {}
    #   response = client.create_token_with_iam(params, options)
    #   response.to_h #=>
    #   {
    #     access_token: "aoal-YigITUDiNX1xZwOMXM5MxOWDL0E0jg9P6_C_jKQPxS_SKCP6f0kh1Up4g7TtvQqkMnD-GJiU_S1gvug6SrggAkc0:MGYCMQD3IatVjV7jAJU91kK3PkS/SfA2wtgWzOgZWDOR7sDGN9t0phCZz5It/aes/3C1Zj0CMQCKWOgRaiz6AIhza3DSXQNMLjRKXC8F8ceCsHlgYLMZ7hZidEXAMPLEACCESSTOKEN",
    #     token_type: "Bearer",
    #     expires_in: 1579729529,
    #     id_token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd3M6aWRlbnRpdHlfc3RvcmVfaWQiOiJkLTMzMzMzMzMzMzMiLCJzdWIiOiI3MzA0NDhmMi1lMGExLTcwYTctYzk1NC0wMDAwMDAwMDAwMDAiLCJhd3M6aW5zdGFuY2VfYWNjb3VudCI6IjExMTExMTExMTExMSIsInN0czppZGVudGl0eV9jb250ZXh0IjoiRVhBTVBMRUlERU5USVRZQ09OVEVYVCIsImlzcyI6Imh0dHBzOi8vaWRlbnRpdHljZW50ZXIuYW1hem9uYXdzLmNvbS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmlkZW50aXR5X3N0b3JlX2FybiI6ImFybjphd3M6aWRlbnRpdHlzdG9yZTo6MTExMTExMTExMTExOmlkZW50aXR5c3RvcmUvZC0zMzMzMzMzMzMzIiwiYXVkIjoiYXJuOmF3czpzc286OjEyMzQ1Njc4OTAxMjphcHBsaWNhdGlvbi9zc29pbnMtMTExMTExMTExMTExL2FwbC0yMjIyMjIyMjIyMjIiLCJhd3M6aW5zdGFuY2VfYXJuIjoiYXJuOmF3czpzc286OjppbnN0YW5jZS9zc29pbnMtMTExMTExMTExMTExIiwiYXdzOmNyZWRlbnRpYWxfaWQiOiJfWlIyTjZhVkJqMjdGUEtheWpfcEtwVjc3QVBERl80MXB4ZXRfWWpJdUpONlVJR2RBdkpFWEFNUExFQ1JFRElEIiwiYXV0aF90aW1lIjoiMjAyMC0wMS0yMlQxMjo0NToyOVoiLCJleHAiOjE1Nzk3Mjk1MjksImlhdCI6MTU3OTcyNTkyOX0.5SYiW1kMsuUr7nna-l5tlakM0GNbMHvIM2_n0QD23jM",
    #     issued_token_type: "urn:ietf:params:oauth:token-type:access_token",
    #     scope: [
    #       "openid",
    #       "aws",
    #       "sts:identity_context"
    #     ],
    #     aws_additional_details: {
    #       identity_context: "EXAMPLEIDENTITYCONTEXT"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientId", # required
    #     grant_type: "GrantType", # required
    #     code: "AuthCode",
    #     refresh_token: "RefreshToken",
    #     assertion: "Assertion",
    #     scope: ["Scope"],
    #     redirect_uri: "URI",
    #     subject_token: "SubjectToken",
    #     subject_token_type: "TokenTypeURI",
    #     requested_token_type: "TokenTypeURI",
    #     code_verifier: "CodeVerifier"
    #   }
    #   options = {}
    #   response = client.create_token_with_iam(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_token: "AccessToken",
    #     token_type: "TokenType",
    #     expires_in: 1,
    #     refresh_token: "RefreshToken",
    #     id_token: "IdToken",
    #     issued_token_type: "TokenTypeURI",
    #     scope: ["Scope"],
    #     aws_additional_details: {
    #       identity_context: "IdentityContext"
    #     }
    #   }
    # @return [Types::CreateTokenWithIAMResponse]
    def create_token_with_iam(params = {}, options = {})
      request = build_request(:create_token_with_iam, params)
      request.send_request(options)
    end

    # <p>Registers a public client with IAM Identity Center. This allows clients to perform authorization using
    #       the authorization code grant with Proof Key for Code Exchange (PKCE) or the device
    #       code grant.</p>
    # @param [Hash, Types::RegisterClientRequest] params
    # @option params [String] :client_name
    #   <p>The friendly name of the client.</p>
    # @option params [String] :client_type
    #   <p>The type of client. The service supports only <code>public</code> as a client type.
    #         Anything other than public will be rejected by the service.</p>
    # @option params [Array<String>] :scopes
    #   <p>The list of scopes that are defined by the client. Upon authorization, this list is used
    #         to restrict permissions when granting an access token.</p>
    # @option params [Array<String>] :redirect_uris
    #   <p>The list of redirect URI that are defined by the client. At completion of authorization,
    #         this list is used to restrict what locations the user agent can be redirected back to.</p>
    # @option params [Array<String>] :grant_types
    #   <p>The list of OAuth 2.0 grant types that are defined by the client. This list is used to
    #         restrict the token granting flows available to the client. Supports the following OAuth 2.0
    #         grant types: Authorization Code, Device Code, and Refresh Token. </p>
    #            <p>* Authorization Code - <code>authorization_code</code>
    #            </p>
    #            <p>* Device Code - <code>urn:ietf:params:oauth:grant-type:device_code</code>
    #            </p>
    #            <p>* Refresh Token - <code>refresh_token</code>
    #            </p>
    # @option params [String] :issuer_url
    #   <p>The IAM Identity Center Issuer URL associated with an instance of IAM Identity Center. This value is needed for user
    #         access to resources through the client.</p>
    # @option params [String] :entitled_application_arn
    #   <p>This IAM Identity Center application ARN is used to define administrator-managed configuration for
    #         public client access to resources. At authorization, the scopes, grants, and redirect URI
    #         available to this client will be restricted by this application resource.</p>
    # @example Call OAuth/OIDC /register-client endpoint
    #   
    #   params = {
    #     client_name: "My IDE Plugin",
    #     client_type: "public",
    #     scopes: [
    #       "sso:account:access",
    #       "codewhisperer:completions"
    #     ],
    #     redirect_uris: [
    #       "127.0.0.1:PORT/oauth/callback"
    #     ],
    #     grant_types: [
    #       "authorization_code",
    #       "refresh_token"
    #     ],
    #     issuer_url: "https://identitycenter.amazonaws.com/ssoins-1111111111111111",
    #     entitled_application_arn: "arn:aws:sso::ACCOUNTID:application/ssoins-1111111111111111/apl-1111111111111111"
    #   }
    #   options = {}
    #   response = client.register_client(params, options)
    #   response.to_h #=>
    #   {
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     client_id_issued_at: 1579725929,
    #     client_secret_expires_at: 1587584729
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_name: "ClientName", # required
    #     client_type: "ClientType", # required
    #     scopes: ["Scope"],
    #     redirect_uris: ["URI"],
    #     grant_types: ["GrantType"],
    #     issuer_url: "URI",
    #     entitled_application_arn: "ArnType"
    #   }
    #   options = {}
    #   response = client.register_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_id: "ClientId",
    #     client_secret: "ClientSecret",
    #     client_id_issued_at: 1,
    #     client_secret_expires_at: 1,
    #     authorization_endpoint: "URI",
    #     token_endpoint: "URI"
    #   }
    # @return [Types::RegisterClientResponse]
    def register_client(params = {}, options = {})
      request = build_request(:register_client, params)
      request.send_request(options)
    end

    # <p>Initiates device authorization by requesting a pair of verification codes from the
    #       authorization service.</p>
    # @param [Hash, Types::StartDeviceAuthorizationRequest] params
    # @option params [String] :client_id
    #   <p>The unique identifier string for the client that is registered with IAM Identity Center. This value
    #         should come from the persisted result of the <a>RegisterClient</a> API
    #         operation.</p>
    # @option params [String] :client_secret
    #   <p>A secret string that is generated for the client. This value should come from the
    #         persisted result of the <a>RegisterClient</a> API operation.</p>
    # @option params [String] :start_url
    #   <p>The URL for the Amazon Web Services access portal. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html">Using
    #           the Amazon Web Services access portal</a> in the <i>IAM Identity Center User Guide</i>.</p>
    # @example Call OAuth/OIDC /start-device-authorization endpoint
    #   
    #   params = {
    #     client_id: "_yzkThXVzLWVhc3QtMQEXAMPLECLIENTID",
    #     client_secret: "VERYLONGSECRETeyJraWQiOiJrZXktMTU2NDAyODA5OSIsImFsZyI6IkhTMzg0In0",
    #     start_url: "https://identitycenter.amazonaws.com/ssoins-111111111111"
    #   }
    #   options = {}
    #   response = client.start_device_authorization(params, options)
    #   response.to_h #=>
    #   {
    #     device_code: "yJraWQiOiJrZXktMTU2Njk2ODA4OCIsImFsZyI6IkhTMzIn0EXAMPLEDEVICECODE",
    #     user_code: "makdfsk83yJraWQiOiJrZXktMTU2Njk2sImFsZyI6IkhTMzIn0EXAMPLEUSERCODE",
    #     verification_uri: "https://directory-alias-example.awsapps.com/start/#/device",
    #     verification_uri_complete: "https://directory-alias-example.awsapps.com/start/#/device?user_code=makdfsk83yJraWQiOiJrZXktMTU2Njk2sImFsZyI6IkhTMzIn0EXAMPLEUSERCODE",
    #     expires_in: 1579729529,
    #     interval: 1
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientId", # required
    #     client_secret: "ClientSecret", # required
    #     start_url: "URI", # required
    #   }
    #   options = {}
    #   response = client.start_device_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_code: "DeviceCode",
    #     user_code: "UserCode",
    #     verification_uri: "URI",
    #     verification_uri_complete: "URI",
    #     expires_in: 1,
    #     interval: 1
    #   }
    # @return [Types::StartDeviceAuthorizationResponse]
    def start_device_authorization(params = {}, options = {})
      request = build_request(:start_device_authorization, params)
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
      context[:gem_name] = 'aws-sdk-ssooidc'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
