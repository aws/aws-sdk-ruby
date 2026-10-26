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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:signin)

module Aws::Signin
  # An API client for Aws::Signin.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Signin
    @identifier = :signin

    add_plugin(::Aws::Signin::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Signin::EndpointProvider)
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

    # CreateOAuth2Token API
    #
    # Path: /v1/token
    # Request Method: POST
    # Content-Type: application/json or application/x-www-form-urlencoded
    #
    # This API implements OAuth 2.0 flows for AWS Sign-In CLI clients, supporting both:
    # 1. Authorization code redemption (grant_type=authorization_code) - NOT idempotent
    # 2. Token refresh (grant_type=refresh_token) - Idempotent within token validity window
    #
    # The operation behavior is determined by the grant_type parameter in the request body:
    #
    # **Authorization Code Flow (NOT Idempotent):**
    # - JSON or form-encoded body with client_id, grant_type=authorization_code, code, redirect_uri, code_verifier
    # - Returns access_token, token_type, expires_in, refresh_token, and id_token
    # - Each authorization code can only be used ONCE for security (prevents replay attacks)
    #
    # **Token Refresh Flow (Idempotent):**
    # - JSON or form-encoded body with client_id, grant_type=refresh_token, refresh_token
    # - Returns access_token, token_type, expires_in, and refresh_token (no id_token)
    # - Multiple calls with same refresh_token return consistent results within validity window
    #
    # Authentication and authorization:
    # - Confidential clients: sigv4 signing required with signin:ExchangeToken permissions
    # - CLI clients (public): authn/authz skipped based on client_id & grant_type
    #
    # Note: This operation cannot be marked as @idempotent because it handles both idempotent
    # (token refresh) and non-idempotent (auth code redemption) flows in a single endpoint.
    # @param [Hash, Types::CreateOAuth2TokenRequest] params
    # @option params [Types::CreateOAuth2TokenRequestBody] :token_input
    #   Flattened token operation inputs
    #   The specific operation is determined by grant_type in the request body
    # @example Request syntax with placeholder values
    #   params = {
    #     token_input: { # required
    #       client_id: "ClientId", # required
    #       grant_type: "GrantType", # required
    #       code: "AuthorizationCode",
    #       redirect_uri: "RedirectUri",
    #       code_verifier: "CodeVerifier",
    #       refresh_token: "RefreshToken"
    #     }
    #   }
    #   options = {}
    #   response = client.create_o_auth2_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_output: { # required
    #       access_token: { # required
    #         access_key_id: "String", # required
    #         secret_access_key: "String", # required
    #         session_token: "String", # required
    #       },
    #       token_type: "TokenType", # required
    #       expires_in: 1, # required
    #       refresh_token: "RefreshToken", # required
    #       id_token: "IdToken"
    #     }
    #   }
    # @return [Types::CreateOAuth2TokenResponse]
    def create_o_auth2_token(params = {}, options = {})
      request = build_request(:create_o_auth2_token, params)
      request.send_request(options)
    end

    # Grants permission to exchange client credentials for an OAuth 2.0 access token
    # scoped to a resource that can be used to access AWS services from applications
    # @param [Hash, Types::CreateOAuth2TokenWithIAMRequest] params
    # @option params [String] :grant_type
    #   OAuth 2.0 grant type. Must be "client_credentials".
    # @option params [String] :resource
    #   The OAuth resource for which the access token is requested.
    #   Example: "aws-mcp.amazonaws.com".
    # @example Request syntax with placeholder values
    #   params = {
    #     grant_type: "ClientCredentialsGrantType", # required
    #     resource: "String", # required
    #   }
    #   options = {}
    #   response = client.create_o_auth2_token_with_iam(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_token: "OAuthAccessToken", # required
    #     token_type: "BearerTokenType", # required
    #     expires_in: 1, # required
    #   }
    # @return [Types::CreateOAuth2TokenWithIAMResponse]
    def create_o_auth2_token_with_iam(params = {}, options = {})
      request = build_request(:create_o_auth2_token_with_iam, params)
      request.send_request(options)
    end

    # Delete console authorization configuration with automatic scope detection
    # @param [Hash, Types::DeleteConsoleAuthorizationConfigurationInput] params
    # @option params [String] :target_id
    #   Target account identifier
    # @example Request syntax with placeholder values
    #   params = {
    #     target_id: "TargetId"
    #   }
    #   options = {}
    #   response = client.delete_console_authorization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_id: "TargetId", # required
    #     scope: "String", # required
    #     console_authorization_enabled: false, # required
    #   }
    # @return [Types::DeleteConsoleAuthorizationConfigurationOutput]
    def delete_console_authorization_configuration(params = {}, options = {})
      request = build_request(:delete_console_authorization_configuration, params)
      request.send_request(options)
    end

    # Remove a permission statement from the account's SignIn resource-based policy
    # @param [Hash, Types::DeleteResourcePermissionStatementInput] params
    # @option params [String] :statement_id
    #   Unique identifier of the permission statement to delete
    # @option params [String] :client_token
    #   Idempotency token for the request
    # @example Request syntax with placeholder values
    #   params = {
    #     statement_id: "StatementId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_resource_permission_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePermissionStatementOutput]
    def delete_resource_permission_statement(params = {}, options = {})
      request = build_request(:delete_resource_permission_statement, params)
      request.send_request(options)
    end

    # Get console authorization configuration with automatic scope detection
    # @param [Hash, Types::GetConsoleAuthorizationConfigurationInput] params
    # @option params [String] :target_id
    #   Target account identifier
    # @example Request syntax with placeholder values
    #   params = {
    #     target_id: "TargetId"
    #   }
    #   options = {}
    #   response = client.get_console_authorization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_id: "TargetId", # required
    #     scope: "String", # required
    #     console_authorization_enabled: false, # required
    #   }
    # @return [Types::GetConsoleAuthorizationConfigurationOutput]
    def get_console_authorization_configuration(params = {}, options = {})
      request = build_request(:get_console_authorization_configuration, params)
      request.send_request(options)
    end

    # Retrieve the account's consolidated SignIn resource-based policy
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signin_resource_based_policy: { # required
    #       version: "String",
    #       statement: [
    #         {
    #           effect: "String",
    #           principal: {
    #             "String" => "String"
    #           },
    #           action: ["String"],
    #           resource: "String",
    #           condition: {
    #             "ConditionType" => {
    #               "String" => ["String"]
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # Grants permission to inspect the metadata and state of an OAuth 2.0
    # access token or refresh token
    #
    # Implements RFC 7662 OAuth 2.0 Token Introspection over a SigV4-authenticated
    # endpoint. Inspects the metadata of an access_token or refresh_token issued
    # by AWS Sign-In and returns the claims associated with it.
    #
    # Inactive token semantics (RFC 7662 §2.2): when the supplied token is
    # unknown, expired, revoked, malformed, or owned by a different account,
    # the response body is exactly { "active": false } with all other claims
    # omitted.
    # @param [Hash, Types::IntrospectOAuth2TokenWithIAMRequest] params
    # @option params [String] :token
    #   The string value of the token to introspect.
    #   May be either an access_token or a refresh_token issued by AWS Sign-In.
    # @option params [String] :token_type_hint
    #   Optional hint about the type of the token submitted for introspection.
    #   The server uses this hint to optimize lookup, but still falls back to
    #   the other token type on miss. Allowed values: access_token, refresh_token.
    # @example Request syntax with placeholder values
    #   params = {
    #     token: "IntrospectionToken", # required
    #     token_type_hint: "TokenTypeHint"
    #   }
    #   options = {}
    #   response = client.introspect_o_auth2_token_with_iam(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     active: false, # required
    #     client_id: "String",
    #     user_id: "String",
    #     token_type: "IntrospectedTokenType",
    #     exp: 1,
    #     iat: 1,
    #     nbf: 1,
    #     sub: "String",
    #     aud: "String",
    #     iss: "String",
    #     jti: "String",
    #     account_id: "AccountId",
    #     signin_session: "String",
    #     resource: "String"
    #   }
    # @return [Types::IntrospectOAuth2TokenWithIAMResponse]
    def introspect_o_auth2_token_with_iam(params = {}, options = {})
      request = build_request(:introspect_o_auth2_token_with_iam, params)
      request.send_request(options)
    end

    # Retrieve all permission statements in the account's SignIn resource-based policy
    # @param [Hash, Types::ListResourcePermissionStatementsInput] params
    # @option params [Integer] :max_results
    #   Maximum number of results to return
    # @option params [String] :next_token
    #   Token for pagination
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_resource_permission_statements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_statements: [ # required
    #       {
    #         sid: "StatementId", # required
    #         condition: {
    #           "ConditionType" => {
    #             "String" => ["String"]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourcePermissionStatementsOutput]
    def list_resource_permission_statements(params = {}, options = {})
      request = build_request(:list_resource_permission_statements, params)
      request.send_request(options)
    end

    # Enable console authorization configuration with automatic scope detection
    # @param [Hash, Types::PutConsoleAuthorizationConfigurationInput] params
    # @option params [String] :target_id
    #   Target account identifier
    # @example Request syntax with placeholder values
    #   params = {
    #     target_id: "TargetId"
    #   }
    #   options = {}
    #   response = client.put_console_authorization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target_id: "TargetId", # required
    #     scope: "String", # required
    #     console_authorization_enabled: false, # required
    #   }
    # @return [Types::PutConsoleAuthorizationConfigurationOutput]
    def put_console_authorization_configuration(params = {}, options = {})
      request = build_request(:put_console_authorization_configuration, params)
      request.send_request(options)
    end

    # Create a permission statement in the account's SignIn resource-based policy
    # @param [Hash, Types::PutResourcePermissionStatementInput] params
    # @option params [String] :source_vpc
    #   VPC identifier to restrict console access
    # @option params [String] :signin_source_vpce
    #   SignIn VPC endpoint identifier
    # @option params [String] :console_source_vpce
    #   Console VPC endpoint identifier
    # @option params [String] :vpc_source_ip
    #   Source IP address within VPC
    # @option params [String] :source_ip
    #   Source IP address
    # @option params [String] :requested_region
    #   AWS region where the VPC and VPC endpoint reside
    #   Required when sourceVpc or signinSourceVpce/consoleSourceVpce is provided
    # @option params [String] :excluded_principal
    #   Principal to exclude from the permission statement
    # @option params [String] :client_token
    #   Idempotency token for the request
    # @example Request syntax with placeholder values
    #   params = {
    #     source_vpc: "SourceVpc",
    #     signin_source_vpce: "SourceVpce",
    #     console_source_vpce: "SourceVpce",
    #     vpc_source_ip: "VpcSourceIp",
    #     source_ip: "SourceIp",
    #     requested_region: "RequestedRegion",
    #     excluded_principal: "ExcludedPrincipal",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_resource_permission_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statement_id: "StatementId", # required
    #   }
    # @return [Types::PutResourcePermissionStatementOutput]
    def put_resource_permission_statement(params = {}, options = {})
      request = build_request(:put_resource_permission_statement, params)
      request.send_request(options)
    end

    # Grants permission to revoke an OAuth 2.0 refresh token and its associated refresh tokens
    #
    # Revokes a refresh_token issued by AWS Sign-In, invalidating the entire token
    # chain so that the refresh_token can no longer be used to mint new access_tokens.
    #
    # Idempotency: revoking an already-revoked, expired, or otherwise invalid token
    # still returns 200 OK with an empty body. Only the refresh_token type is accepted.
    # @param [Hash, Types::RevokeOAuth2TokenWithIAMRequest] params
    # @option params [String] :token
    #   The refresh_token to revoke. Must be a refresh_token issued by AWS
    #   Sign-In (prefix "ASOR"); access_tokens are not accepted for revocation.
    # @example Request syntax with placeholder values
    #   params = {
    #     token: "RevocationToken", # required
    #   }
    #   options = {}
    #   response = client.revoke_o_auth2_token_with_iam(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RevokeOAuth2TokenWithIAMResponse]
    def revoke_o_auth2_token_with_iam(params = {}, options = {})
      request = build_request(:revoke_o_auth2_token_with_iam, params)
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
      context[:gem_name] = 'aws-sdk-signin'
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
