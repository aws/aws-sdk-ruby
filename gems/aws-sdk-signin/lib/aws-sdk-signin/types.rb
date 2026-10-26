# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # This module contains the types returned by client operations.
  module Types

    # Error thrown for access denied scenarios with flexible HTTP status mapping
    #
    # Runtime HTTP Status Code Mapping:
    # - HTTP 401 (Unauthorized): TOKEN_EXPIRED, AUTHCODE_EXPIRED
    # - HTTP 403 (Forbidden): USER_CREDENTIALS_CHANGED, INSUFFICIENT_PERMISSIONS
    #
    # The specific HTTP status code is determined at runtime based on the error enum value.
    # Consumers should use the error field to determine the specific access denial reason.
    # @!attribute error
    #   OAuth 2.0 error code indicating the specific type of access denial
    #   Can be TOKEN_EXPIRED, AUTHCODE_EXPIRED, USER_CREDENTIALS_CHANGED, or INSUFFICIENT_PERMISSIONS
    #   @return [String]
    # @!attribute message
    #   Detailed message explaining the access denial
    #   Provides specific information about why access was denied
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # AWS credentials structure containing temporary access credentials
    #
    # Scoped, temporary AWS credentials with a 15-minute duration.
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   AWS access key ID for temporary credentials
    #   @return [String]
    # @!attribute secret_access_key
    #   AWS secret access key for temporary credentials
    #   @return [String]
    # @!attribute session_token
    #   AWS session token for temporary credentials
    #   @return [String]
    class AccessToken < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when request conflicts with current state
    #
    # HTTP Status Code: 409 Conflict
    #
    # Used when the request conflicts with the current state of the resource
    # @!attribute error
    #   OAuth 2.0 error code indicating conflict
    #   Will be CONFLICT
    #   @return [String]
    # @!attribute message
    #   Detailed message explaining the conflict
    #   Provides specific information about what caused the conflict
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input structure for CreateOAuth2Token operation
    #
    # Contains flattened token operation inputs for both authorization code and refresh token flows.
    # The operation type is determined by the grant_type parameter in the request body.
    # @!attribute token_input
    #   Flattened token operation inputs
    #   The specific operation is determined by grant_type in the request body
    #   @return [Types::CreateOAuth2TokenRequestBody]
    class CreateOAuth2TokenRequest < Struct.new(
      nil,
      :token_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Request body payload for CreateOAuth2Token operation
    #
    # The operation type is determined by the grant_type parameter:
    # - grant_type=authorization_code: Requires code, redirect_uri, code_verifier
    # - grant_type=refresh_token: Requires refresh_token
    # @!attribute client_id
    #   The client identifier (ARN) used during Sign-In onboarding
    #   Required for both authorization code and refresh token flows
    #   @return [String]
    # @!attribute grant_type
    #   OAuth 2.0 grant type - determines which flow is used
    #   Must be "authorization_code" or "refresh_token"
    #   @return [String]
    # @!attribute code
    #   The authorization code received from /v1/authorize
    #   Required only when grant_type=authorization_code
    #   @return [String]
    # @!attribute redirect_uri
    #   The redirect URI that must match the original authorization request
    #   Required only when grant_type=authorization_code
    #   @return [String]
    # @!attribute code_verifier
    #   PKCE code verifier to prove possession of the original code challenge
    #   Required only when grant_type=authorization_code
    #   @return [String]
    # @!attribute refresh_token
    #   The refresh token returned from auth_code redemption
    #   Required only when grant_type=refresh_token
    #   @return [String]
    class CreateOAuth2TokenRequestBody < Struct.new(
      nil,
      :client_id,
      :grant_type,
      :code,
      :redirect_uri,
      :code_verifier,
      :refresh_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output structure for CreateOAuth2Token operation
    #
    # Contains flattened token operation outputs for both authorization code and refresh token flows.
    # The response content depends on the grant_type from the original request.
    # @!attribute token_output
    #   Flattened token operation outputs
    #   The specific response fields depend on the grant_type used in the request
    #   @return [Types::CreateOAuth2TokenResponseBody]
    class CreateOAuth2TokenResponse < Struct.new(
      nil,
      :token_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Response body payload for CreateOAuth2Token operation
    #
    # The response content depends on the grant_type from the request:
    # - grant_type=authorization_code: Returns all fields including refresh_token and id_token
    # - grant_type=refresh_token: Returns access_token, token_type, expires_in, refresh_token (no id_token)
    # @!attribute access_token
    #   Scoped-down AWS credentials (15 minute duration)
    #   Present for both authorization code redemption and token refresh
    #   @return [Types::AccessToken]
    # @!attribute token_type
    #   Token type indicating this is AWS SigV4 credentials
    #   Value is "aws_sigv4" for both flows
    #   @return [String]
    # @!attribute expires_in
    #   Time to expiry in seconds (maximum 900)
    #   Present for both authorization code redemption and token refresh
    #   @return [Integer]
    # @!attribute refresh_token
    #   Encrypted refresh token with cnf.jkt (SHA-256 thumbprint of presented jwk)
    #   Always present in responses (required for both flows)
    #   @return [String]
    # @!attribute id_token
    #   ID token containing user identity information
    #   Present only in authorization code redemption response (grant_type=authorization_code)
    #   Not included in token refresh responses
    #   @return [String]
    class CreateOAuth2TokenResponseBody < Struct.new(
      nil,
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input structure for CreateOAuth2TokenWithIAM operation
    # @!attribute grant_type
    #   OAuth 2.0 grant type. Must be "client_credentials".
    #   @return [String]
    # @!attribute resource
    #   The OAuth resource for which the access token is requested.
    #   Example: "aws-mcp.amazonaws.com".
    #   @return [String]
    class CreateOAuth2TokenWithIAMRequest < Struct.new(
      nil,
      :grant_type,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output structure for CreateOAuth2TokenWithIAM operation
    #
    # Contains the JWT access token, token type, and expiration per RFC 6749 §5.1.
    # @!attribute access_token
    #   JWT access token containing principal identity, resource scope, and session metadata
    #   @return [String]
    # @!attribute token_type
    #   Always "Bearer" per OAuth 2.1 specification
    #   @return [String]
    # @!attribute expires_in
    #   Token lifetime in seconds. Value is the minimum of session validity and 1 hour.
    #   @return [Integer]
    class CreateOAuth2TokenWithIAMResponse < Struct.new(
      nil,
      :access_token,
      :token_type,
      :expires_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for DeleteConsoleAuthorizationConfiguration operation
    # @!attribute target_id
    #   Target account identifier
    #   @return [String]
    class DeleteConsoleAuthorizationConfigurationInput < Struct.new(
      nil,
      :target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for DeleteConsoleAuthorizationConfiguration operation
    # @!attribute target_id
    #   Target account identifier
    #   @return [String]
    # @!attribute scope
    #   Authorization scope
    #   @return [String]
    # @!attribute console_authorization_enabled
    #   Whether console authorization is enabled
    #   @return [Boolean]
    class DeleteConsoleAuthorizationConfigurationOutput < Struct.new(
      nil,
      :target_id,
      :scope,
      :console_authorization_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for DeleteResourcePermissionStatement operation
    # @!attribute statement_id
    #   Unique identifier of the permission statement to delete
    #   @return [String]
    # @!attribute client_token
    #   Idempotency token for the request
    #   @return [String]
    class DeleteResourcePermissionStatementInput < Struct.new(
      nil,
      :statement_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for DeleteResourcePermissionStatement operation
    class DeleteResourcePermissionStatementOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for GetConsoleAuthorizationConfiguration operation
    # @!attribute target_id
    #   Target account identifier
    #   @return [String]
    class GetConsoleAuthorizationConfigurationInput < Struct.new(
      nil,
      :target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for GetConsoleAuthorizationConfiguration operation
    # @!attribute target_id
    #   Target account identifier
    #   @return [String]
    # @!attribute scope
    #   Authorization scope
    #   @return [String]
    # @!attribute console_authorization_enabled
    #   Whether console authorization is enabled
    #   @return [Boolean]
    class GetConsoleAuthorizationConfigurationOutput < Struct.new(
      nil,
      :target_id,
      :scope,
      :console_authorization_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for GetResourcePolicy operation
    class GetResourcePolicyInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for GetResourcePolicy operation
    # @!attribute signin_resource_based_policy
    #   The account's SignIn resource-based policy
    #   @return [Types::SigninResourceBasedPolicy]
    class GetResourcePolicyOutput < Struct.new(
      nil,
      :signin_resource_based_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when an internal server error occurs
    #
    # HTTP Status Code: 500 Internal Server Error
    #
    # Used for unexpected server-side errors that prevent request processing.
    # @!attribute error
    #   OAuth 2.0 error code indicating server error
    #   Will be SERVER_ERROR for internal server errors
    #   @return [String]
    # @!attribute message
    #   Detailed message explaining the server error
    #   May include error details for debugging purposes
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input structure for IntrospectOAuth2TokenWithIAM operation
    #
    # RFC 7662 §2.1 introspection request. Contains the token to inspect and an
    # optional hint about the token's type.
    # @!attribute token
    #   The string value of the token to introspect.
    #   May be either an access_token or a refresh_token issued by AWS Sign-In.
    #   @return [String]
    # @!attribute token_type_hint
    #   Optional hint about the type of the token submitted for introspection.
    #   The server uses this hint to optimize lookup, but still falls back to
    #   the other token type on miss. Allowed values: access_token, refresh_token.
    #   @return [String]
    class IntrospectOAuth2TokenWithIAMRequest < Struct.new(
      nil,
      :token,
      :token_type_hint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output structure for IntrospectOAuth2TokenWithIAM operation
    #
    # RFC 7662 §2.2 introspection response. Only `active` is required; all other
    # claims are omitted when the token is inactive.
    # @!attribute active
    #   Indicates whether the token is currently active. `true` only when the
    #   token is valid, has not expired, has not been revoked, and belongs to
    #   the caller's account.
    #   @return [Boolean]
    # @!attribute client_id
    #   Client identifier for the OAuth 2.0 client that requested the token.
    #   @return [String]
    # @!attribute user_id
    #   User identifier matching sts:GetCallerIdentity's `UserId` field for the
    #   token's subject principal (e.g. "AIDAEXAMPLE" for an IAM user, or
    #   "AROAEXAMPLE:session-name" for an assumed role).
    #   @return [String]
    # @!attribute token_type
    #   Indicates which kind of token was introspected.
    #   One of "access_token" or "refresh_token".
    #   @return [String]
    # @!attribute exp
    #   Token expiration time as a NumericDate (Unix epoch seconds).
    #   @return [Integer]
    # @!attribute iat
    #   Token issuance time as a NumericDate (Unix epoch seconds).
    #   @return [Integer]
    # @!attribute nbf
    #   Token "not before" time as a NumericDate (Unix epoch seconds).
    #   @return [Integer]
    # @!attribute sub
    #   Subject of the token: the IAM principal ARN. For assumed-role sessions,
    #   this is the session ARN (matches sts:GetCallerIdentity's `Arn` field),
    #   e.g. arn:aws:sts::123456789012:assumed-role/MyRole/session-name.
    #   @return [String]
    # @!attribute aud
    #   Audience of the token: the OAuth resource the token is scoped to
    #   (for example, "aws-mcp.amazonaws.com"). Omitted for refresh tokens.
    #   @return [String]
    # @!attribute iss
    #   Issuer of the token. Always "signin.amazonaws.com" for AWS Sign-In.
    #   @return [String]
    # @!attribute jti
    #   Unique identifier for the token.
    #   @return [String]
    # @!attribute account_id
    #   12-digit AWS account ID of the token's subject principal.
    #   @return [String]
    # @!attribute signin_session
    #   AWS Sign-In session ARN bound to the token, of the form
    #   arn:aws:signin:{region}:{account}:session/{uuid}.
    #   @return [String]
    # @!attribute resource
    #   The OAuth resource the token is scoped to during Human OAuth flow.
    #   Only present for refresh token introspection.
    #   @return [String]
    class IntrospectOAuth2TokenWithIAMResponse < Struct.new(
      nil,
      :active,
      :client_id,
      :user_id,
      :token_type,
      :exp,
      :iat,
      :nbf,
      :sub,
      :aud,
      :iss,
      :jti,
      :account_id,
      :signin_session,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for ListResourcePermissionStatements operation
    # @!attribute max_results
    #   Maximum number of results to return
    #   @return [Integer]
    # @!attribute next_token
    #   Token for pagination
    #   @return [String]
    class ListResourcePermissionStatementsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for ListResourcePermissionStatements operation
    # @!attribute permission_statements
    #   List of permission statement summaries
    #   @return [Array<Types::PermissionStatementSummary>]
    # @!attribute next_token
    #   Token for next page of results
    #   @return [String]
    class ListResourcePermissionStatementsOutput < Struct.new(
      nil,
      :permission_statements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a permission statement
    # @!attribute sid
    #   Unique identifier for the permission statement
    #   @return [String]
    # @!attribute condition
    #   Condition block for the permission statement
    #   @return [Hash<String, Hash<String, Array<String>>>]
    class PermissionStatementSummary < Struct.new(
      nil,
      :sid,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Individual policy statement within a resource-based policy
    # @!attribute effect
    #   Effect of the policy statement (Allow/Deny)
    #   @return [String]
    # @!attribute principal
    #   Principal the statement applies to
    #   @return [Hash<String, String>]
    # @!attribute action
    #   Actions the statement controls
    #   @return [Array<String>]
    # @!attribute resource
    #   Resource the statement applies to
    #   @return [String]
    # @!attribute condition
    #   Condition block for the statement
    #   @return [Hash<String, Hash<String, Array<String>>>]
    class PolicyStatement < Struct.new(
      nil,
      :effect,
      :principal,
      :action,
      :resource,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for PutConsoleAuthorizationConfiguration operation
    # @!attribute target_id
    #   Target account identifier
    #   @return [String]
    class PutConsoleAuthorizationConfigurationInput < Struct.new(
      nil,
      :target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for PutConsoleAuthorizationConfiguration operation
    # @!attribute target_id
    #   Target account identifier
    #   @return [String]
    # @!attribute scope
    #   Authorization scope
    #   @return [String]
    # @!attribute console_authorization_enabled
    #   Whether console authorization is enabled
    #   @return [Boolean]
    class PutConsoleAuthorizationConfigurationOutput < Struct.new(
      nil,
      :target_id,
      :scope,
      :console_authorization_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for PutResourcePermissionStatement operation
    # @!attribute source_vpc
    #   VPC identifier to restrict console access
    #   @return [String]
    # @!attribute signin_source_vpce
    #   SignIn VPC endpoint identifier
    #   @return [String]
    # @!attribute console_source_vpce
    #   Console VPC endpoint identifier
    #   @return [String]
    # @!attribute vpc_source_ip
    #   Source IP address within VPC
    #   @return [String]
    # @!attribute source_ip
    #   Source IP address
    #   @return [String]
    # @!attribute requested_region
    #   AWS region where the VPC and VPC endpoint reside
    #   Required when sourceVpc or signinSourceVpce/consoleSourceVpce is provided
    #   @return [String]
    # @!attribute excluded_principal
    #   Principal to exclude from the permission statement
    #   @return [String]
    # @!attribute client_token
    #   Idempotency token for the request
    #   @return [String]
    class PutResourcePermissionStatementInput < Struct.new(
      nil,
      :source_vpc,
      :signin_source_vpce,
      :console_source_vpce,
      :vpc_source_ip,
      :source_ip,
      :requested_region,
      :excluded_principal,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output for PutResourcePermissionStatement operation
    # @!attribute statement_id
    #   Unique identifier for the created permission statement
    #   @return [String]
    class PutResourcePermissionStatementOutput < Struct.new(
      nil,
      :statement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when requested resource is not found
    #
    # HTTP Status Code: 404 Not Found
    #
    # Used when the specified resource does not exist
    # @!attribute error
    #   OAuth 2.0 error code indicating resource not found
    #   Will be RESOURCE_NOT_FOUND
    #   @return [String]
    # @!attribute message
    #   Detailed message explaining which resource was not found
    #   Provides specific information about the missing resource
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input structure for RevokeOAuth2TokenWithIAM operation
    #
    # RFC 7009 §2.1 revocation request. Contains the refresh_token to revoke.
    # @!attribute token
    #   The refresh_token to revoke. Must be a refresh_token issued by AWS
    #   Sign-In (prefix "ASOR"); access_tokens are not accepted for revocation.
    #   @return [String]
    class RevokeOAuth2TokenWithIAMRequest < Struct.new(
      nil,
      :token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output structure for RevokeOAuth2TokenWithIAM operation
    #
    # RFC 7009 §2.2 revocation response. The endpoint returns 200 OK with an
    # empty body on success; there are no response fields.
    class RevokeOAuth2TokenWithIAMResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when service quota is exceeded
    #
    # HTTP Status Code: 402 Payment Required (used as quota exceeded indicator)
    #
    # Used when the request would cause a service quota to be exceeded
    # @!attribute error
    #   OAuth 2.0 error code indicating service quota exceeded
    #   Will be SERVICE_QUOTA_EXCEEDED
    #   @return [String]
    # @!attribute message
    #   Detailed message explaining which quota was exceeded
    #   Provides specific information about the limit and current usage
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # SignIn resource-based policy document
    # @!attribute version
    #   Policy version
    #   @return [String]
    # @!attribute statement
    #   Policy statements
    #   @return [Array<Types::PolicyStatement>]
    class SigninResourceBasedPolicy < Struct.new(
      nil,
      :version,
      :statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when rate limit is exceeded
    #
    # HTTP Status Code: 429 Too Many Requests
    #
    # Possible OAuth2ErrorCode values:
    # - INVALID_REQUEST: Rate limiting, too many requests, abuse prevention
    #
    # Possible causes:
    # - Too many token requests from the same client
    # - Rate limiting based on client_id or IP address
    # - Abuse prevention mechanisms triggered
    # - Service protection against excessive token generation
    # @!attribute error
    #   OAuth 2.0 error code indicating the specific type of error
    #   Will be INVALID_REQUEST for rate limiting scenarios
    #   @return [String]
    # @!attribute message
    #   Detailed message about the rate limiting
    #   May include retry-after information or rate limit details
    #   @return [String]
    class TooManyRequestsError < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when request validation fails
    #
    # HTTP Status Code: 400 Bad Request
    #
    # Used for request validation errors such as malformed parameters,
    # missing required fields, or invalid parameter values.
    # @!attribute error
    #   OAuth 2.0 error code indicating validation failure
    #   Will be INVALID_REQUEST for validation errors
    #   @return [String]
    # @!attribute message
    #   Detailed message explaining the validation failure
    #   Provides specific information about which validation failed
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
