# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Signin
  module Types

    # Error thrown for access denied scenarios with flexible HTTP status
    # mapping
    #
    # Runtime HTTP Status Code Mapping:
    #
    # * HTTP 401 (Unauthorized): TOKEN\_EXPIRED, AUTHCODE\_EXPIRED
    # * HTTP 403 (Forbidden): USER\_CREDENTIALS\_CHANGED,
    #   INSUFFICIENT\_PERMISSIONS
    #
    # The specific HTTP status code is determined at runtime based on the
    # error enum value. Consumers should use the error field to determine
    # the specific access denial reason.
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating the specific type of access denial
    #   Can be TOKEN\_EXPIRED, AUTHCODE\_EXPIRED,
    #   USER\_CREDENTIALS\_CHANGED, or INSUFFICIENT\_PERMISSIONS
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message explaining the access denial Provides specific
    #   information about why access was denied
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS credentials structure containing temporary access credentials
    #
    # Scoped, temporary AWS credentials with a 15-minute duration.
    #
    # @!attribute [rw] access_key_id
    #   AWS access key ID for temporary credentials
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   AWS secret access key for temporary credentials
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   AWS session token for temporary credentials
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/AccessToken AWS API Documentation
    #
    class AccessToken < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error thrown when request conflicts with current state
    #
    # HTTP Status Code: 409 Conflict
    #
    # Used when the request conflicts with the current state of the resource
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating conflict Will be CONFLICT
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message explaining the conflict Provides specific
    #   information about what caused the conflict
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for CreateOAuth2Token operation
    #
    # Contains flattened token operation inputs for both authorization code
    # and refresh token flows. The operation type is determined by the
    # grant\_type parameter in the request body.
    #
    # @!attribute [rw] token_input
    #   Flattened token operation inputs The specific operation is
    #   determined by grant\_type in the request body
    #   @return [Types::CreateOAuth2TokenRequestBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenRequest AWS API Documentation
    #
    class CreateOAuth2TokenRequest < Struct.new(
      :token_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request body payload for CreateOAuth2Token operation
    #
    # The operation type is determined by the grant\_type parameter:
    #
    # * grant\_type=authorization\_code: Requires code, redirect\_uri,
    #   code\_verifier
    # * grant\_type=refresh\_token: Requires refresh\_token
    #
    # @!attribute [rw] client_id
    #   The client identifier (ARN) used during Sign-In onboarding Required
    #   for both authorization code and refresh token flows
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   OAuth 2.0 grant type - determines which flow is used Must be
    #   "authorization\_code" or "refresh\_token"
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The authorization code received from /v1/authorize Required only
    #   when grant\_type=authorization\_code
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The redirect URI that must match the original authorization request
    #   Required only when grant\_type=authorization\_code
    #   @return [String]
    #
    # @!attribute [rw] code_verifier
    #   PKCE code verifier to prove possession of the original code
    #   challenge Required only when grant\_type=authorization\_code
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token returned from auth\_code redemption Required only
    #   when grant\_type=refresh\_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenRequestBody AWS API Documentation
    #
    class CreateOAuth2TokenRequestBody < Struct.new(
      :client_id,
      :grant_type,
      :code,
      :redirect_uri,
      :code_verifier,
      :refresh_token)
      SENSITIVE = [:refresh_token]
      include Aws::Structure
    end

    # Output structure for CreateOAuth2Token operation
    #
    # Contains flattened token operation outputs for both authorization code
    # and refresh token flows. The response content depends on the
    # grant\_type from the original request.
    #
    # @!attribute [rw] token_output
    #   Flattened token operation outputs The specific response fields
    #   depend on the grant\_type used in the request
    #   @return [Types::CreateOAuth2TokenResponseBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenResponse AWS API Documentation
    #
    class CreateOAuth2TokenResponse < Struct.new(
      :token_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response body payload for CreateOAuth2Token operation
    #
    # The response content depends on the grant\_type from the request:
    #
    # * grant\_type=authorization\_code: Returns all fields including
    #   refresh\_token and id\_token
    # * grant\_type=refresh\_token: Returns access\_token, token\_type,
    #   expires\_in, refresh\_token (no id\_token)
    #
    # @!attribute [rw] access_token
    #   Scoped-down AWS credentials (15 minute duration) Present for both
    #   authorization code redemption and token refresh
    #   @return [Types::AccessToken]
    #
    # @!attribute [rw] token_type
    #   Token type indicating this is AWS SigV4 credentials Value is
    #   "aws\_sigv4" for both flows
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   Time to expiry in seconds (maximum 900) Present for both
    #   authorization code redemption and token refresh
    #   @return [Integer]
    #
    # @!attribute [rw] refresh_token
    #   Encrypted refresh token with cnf.jkt (SHA-256 thumbprint of
    #   presented jwk) Always present in responses (required for both flows)
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   ID token containing user identity information Present only in
    #   authorization code redemption response
    #   (grant\_type=authorization\_code) Not included in token refresh
    #   responses
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenResponseBody AWS API Documentation
    #
    class CreateOAuth2TokenResponseBody < Struct.new(
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token)
      SENSITIVE = [:access_token, :refresh_token]
      include Aws::Structure
    end

    # Input structure for CreateOAuth2TokenWithIAM operation
    #
    # @!attribute [rw] grant_type
    #   OAuth 2.0 grant type. Must be "client\_credentials".
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The OAuth resource for which the access token is requested. Example:
    #   "aws-mcp.amazonaws.com".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenWithIAMRequest AWS API Documentation
    #
    class CreateOAuth2TokenWithIAMRequest < Struct.new(
      :grant_type,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output structure for CreateOAuth2TokenWithIAM operation
    #
    # Contains the JWT access token, token type, and expiration per RFC 6749
    # §5.1.
    #
    # @!attribute [rw] access_token
    #   JWT access token containing principal identity, resource scope, and
    #   session metadata
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Always "Bearer" per OAuth 2.1 specification
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   Token lifetime in seconds. Value is the minimum of session validity
    #   and 1 hour.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenWithIAMResponse AWS API Documentation
    #
    class CreateOAuth2TokenWithIAMResponse < Struct.new(
      :access_token,
      :token_type,
      :expires_in)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Input for DeleteConsoleAuthorizationConfiguration operation
    #
    # @!attribute [rw] target_id
    #   Target account identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/DeleteConsoleAuthorizationConfigurationInput AWS API Documentation
    #
    class DeleteConsoleAuthorizationConfigurationInput < Struct.new(
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for DeleteConsoleAuthorizationConfiguration operation
    #
    # @!attribute [rw] target_id
    #   Target account identifier
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Authorization scope
    #   @return [String]
    #
    # @!attribute [rw] console_authorization_enabled
    #   Whether console authorization is enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/DeleteConsoleAuthorizationConfigurationOutput AWS API Documentation
    #
    class DeleteConsoleAuthorizationConfigurationOutput < Struct.new(
      :target_id,
      :scope,
      :console_authorization_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for DeleteResourcePermissionStatement operation
    #
    # @!attribute [rw] statement_id
    #   Unique identifier of the permission statement to delete
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for the request
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/DeleteResourcePermissionStatementInput AWS API Documentation
    #
    class DeleteResourcePermissionStatementInput < Struct.new(
      :statement_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for DeleteResourcePermissionStatement operation
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/DeleteResourcePermissionStatementOutput AWS API Documentation
    #
    class DeleteResourcePermissionStatementOutput < Aws::EmptyStructure; end

    # Input for GetConsoleAuthorizationConfiguration operation
    #
    # @!attribute [rw] target_id
    #   Target account identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/GetConsoleAuthorizationConfigurationInput AWS API Documentation
    #
    class GetConsoleAuthorizationConfigurationInput < Struct.new(
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for GetConsoleAuthorizationConfiguration operation
    #
    # @!attribute [rw] target_id
    #   Target account identifier
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Authorization scope
    #   @return [String]
    #
    # @!attribute [rw] console_authorization_enabled
    #   Whether console authorization is enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/GetConsoleAuthorizationConfigurationOutput AWS API Documentation
    #
    class GetConsoleAuthorizationConfigurationOutput < Struct.new(
      :target_id,
      :scope,
      :console_authorization_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for GetResourcePolicy operation
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/GetResourcePolicyInput AWS API Documentation
    #
    class GetResourcePolicyInput < Aws::EmptyStructure; end

    # Output for GetResourcePolicy operation
    #
    # @!attribute [rw] signin_resource_based_policy
    #   The account's SignIn resource-based policy
    #   @return [Types::SigninResourceBasedPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/GetResourcePolicyOutput AWS API Documentation
    #
    class GetResourcePolicyOutput < Struct.new(
      :signin_resource_based_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error thrown when an internal server error occurs
    #
    # HTTP Status Code: 500 Internal Server Error
    #
    # Used for unexpected server-side errors that prevent request
    # processing.
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating server error Will be SERVER\_ERROR
    #   for internal server errors
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message explaining the server error May include error
    #   details for debugging purposes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for IntrospectOAuth2TokenWithIAM operation
    #
    # RFC 7662 §2.1 introspection request. Contains the token to inspect and
    # an optional hint about the token's type.
    #
    # @!attribute [rw] token
    #   The string value of the token to introspect. May be either an
    #   access\_token or a refresh\_token issued by AWS Sign-In.
    #   @return [String]
    #
    # @!attribute [rw] token_type_hint
    #   Optional hint about the type of the token submitted for
    #   introspection. The server uses this hint to optimize lookup, but
    #   still falls back to the other token type on miss. Allowed values:
    #   access\_token, refresh\_token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/IntrospectOAuth2TokenWithIAMRequest AWS API Documentation
    #
    class IntrospectOAuth2TokenWithIAMRequest < Struct.new(
      :token,
      :token_type_hint)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # Output structure for IntrospectOAuth2TokenWithIAM operation
    #
    # RFC 7662 §2.2 introspection response. Only `active` is required; all
    # other claims are omitted when the token is inactive.
    #
    # @!attribute [rw] active
    #   Indicates whether the token is currently active. `true` only when
    #   the token is valid, has not expired, has not been revoked, and
    #   belongs to the caller's account.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_id
    #   Client identifier for the OAuth 2.0 client that requested the token.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   User identifier matching sts:GetCallerIdentity's `UserId` field for
    #   the token's subject principal (e.g. "AIDAEXAMPLE" for an IAM user,
    #   or "AROAEXAMPLE:session-name" for an assumed role).
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Indicates which kind of token was introspected. One of
    #   "access\_token" or "refresh\_token".
    #   @return [String]
    #
    # @!attribute [rw] exp
    #   Token expiration time as a NumericDate (Unix epoch seconds).
    #   @return [Integer]
    #
    # @!attribute [rw] iat
    #   Token issuance time as a NumericDate (Unix epoch seconds).
    #   @return [Integer]
    #
    # @!attribute [rw] nbf
    #   Token "not before" time as a NumericDate (Unix epoch seconds).
    #   @return [Integer]
    #
    # @!attribute [rw] sub
    #   Subject of the token: the IAM principal ARN. For assumed-role
    #   sessions, this is the session ARN (matches sts:GetCallerIdentity's
    #   `Arn` field), e.g.
    #   arn:aws:sts::123456789012:assumed-role/MyRole/session-name.
    #   @return [String]
    #
    # @!attribute [rw] aud
    #   Audience of the token: the OAuth resource the token is scoped to
    #   (for example, "aws-mcp.amazonaws.com"). Omitted for refresh tokens.
    #   @return [String]
    #
    # @!attribute [rw] iss
    #   Issuer of the token. Always "signin.amazonaws.com" for AWS Sign-In.
    #   @return [String]
    #
    # @!attribute [rw] jti
    #   Unique identifier for the token.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   12-digit AWS account ID of the token's subject principal.
    #   @return [String]
    #
    # @!attribute [rw] signin_session
    #   AWS Sign-In session ARN bound to the token, of the form
    #   arn:aws:signin:\{region}:\{account}:session/\{uuid}.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The OAuth resource the token is scoped to during Human OAuth flow.
    #   Only present for refresh token introspection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/IntrospectOAuth2TokenWithIAMResponse AWS API Documentation
    #
    class IntrospectOAuth2TokenWithIAMResponse < Struct.new(
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
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListResourcePermissionStatements operation
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ListResourcePermissionStatementsInput AWS API Documentation
    #
    class ListResourcePermissionStatementsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListResourcePermissionStatements operation
    #
    # @!attribute [rw] permission_statements
    #   List of permission statement summaries
    #   @return [Array<Types::PermissionStatementSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ListResourcePermissionStatementsOutput AWS API Documentation
    #
    class ListResourcePermissionStatementsOutput < Struct.new(
      :permission_statements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a permission statement
    #
    # @!attribute [rw] sid
    #   Unique identifier for the permission statement
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   Condition block for the permission statement
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/PermissionStatementSummary AWS API Documentation
    #
    class PermissionStatementSummary < Struct.new(
      :sid,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Individual policy statement within a resource-based policy
    #
    # @!attribute [rw] effect
    #   Effect of the policy statement (Allow/Deny)
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   Principal the statement applies to
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] action
    #   Actions the statement controls
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource
    #   Resource the statement applies to
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   Condition block for the statement
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/PolicyStatement AWS API Documentation
    #
    class PolicyStatement < Struct.new(
      :effect,
      :principal,
      :action,
      :resource,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for PutConsoleAuthorizationConfiguration operation
    #
    # @!attribute [rw] target_id
    #   Target account identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/PutConsoleAuthorizationConfigurationInput AWS API Documentation
    #
    class PutConsoleAuthorizationConfigurationInput < Struct.new(
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for PutConsoleAuthorizationConfiguration operation
    #
    # @!attribute [rw] target_id
    #   Target account identifier
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Authorization scope
    #   @return [String]
    #
    # @!attribute [rw] console_authorization_enabled
    #   Whether console authorization is enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/PutConsoleAuthorizationConfigurationOutput AWS API Documentation
    #
    class PutConsoleAuthorizationConfigurationOutput < Struct.new(
      :target_id,
      :scope,
      :console_authorization_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for PutResourcePermissionStatement operation
    #
    # @!attribute [rw] source_vpc
    #   VPC identifier to restrict console access
    #   @return [String]
    #
    # @!attribute [rw] signin_source_vpce
    #   SignIn VPC endpoint identifier
    #   @return [String]
    #
    # @!attribute [rw] console_source_vpce
    #   Console VPC endpoint identifier
    #   @return [String]
    #
    # @!attribute [rw] vpc_source_ip
    #   Source IP address within VPC
    #   @return [String]
    #
    # @!attribute [rw] source_ip
    #   Source IP address
    #   @return [String]
    #
    # @!attribute [rw] requested_region
    #   AWS region where the VPC and VPC endpoint reside Required when
    #   sourceVpc or signinSourceVpce/consoleSourceVpce is provided
    #   @return [String]
    #
    # @!attribute [rw] excluded_principal
    #   Principal to exclude from the permission statement
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for the request
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/PutResourcePermissionStatementInput AWS API Documentation
    #
    class PutResourcePermissionStatementInput < Struct.new(
      :source_vpc,
      :signin_source_vpce,
      :console_source_vpce,
      :vpc_source_ip,
      :source_ip,
      :requested_region,
      :excluded_principal,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for PutResourcePermissionStatement operation
    #
    # @!attribute [rw] statement_id
    #   Unique identifier for the created permission statement
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/PutResourcePermissionStatementOutput AWS API Documentation
    #
    class PutResourcePermissionStatementOutput < Struct.new(
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error thrown when requested resource is not found
    #
    # HTTP Status Code: 404 Not Found
    #
    # Used when the specified resource does not exist
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating resource not found Will be
    #   RESOURCE\_NOT\_FOUND
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message explaining which resource was not found Provides
    #   specific information about the missing resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for RevokeOAuth2TokenWithIAM operation
    #
    # RFC 7009 §2.1 revocation request. Contains the refresh\_token to
    # revoke.
    #
    # @!attribute [rw] token
    #   The refresh\_token to revoke. Must be a refresh\_token issued by AWS
    #   Sign-In (prefix "ASOR"); access\_tokens are not accepted for
    #   revocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/RevokeOAuth2TokenWithIAMRequest AWS API Documentation
    #
    class RevokeOAuth2TokenWithIAMRequest < Struct.new(
      :token)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # Output structure for RevokeOAuth2TokenWithIAM operation
    #
    # RFC 7009 §2.2 revocation response. The endpoint returns 200 OK with an
    # empty body on success; there are no response fields.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/RevokeOAuth2TokenWithIAMResponse AWS API Documentation
    #
    class RevokeOAuth2TokenWithIAMResponse < Aws::EmptyStructure; end

    # Error thrown when service quota is exceeded
    #
    # HTTP Status Code: 402 Payment Required (used as quota exceeded
    # indicator)
    #
    # Used when the request would cause a service quota to be exceeded
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating service quota exceeded Will be
    #   SERVICE\_QUOTA\_EXCEEDED
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message explaining which quota was exceeded Provides
    #   specific information about the limit and current usage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # SignIn resource-based policy document
    #
    # @!attribute [rw] version
    #   Policy version
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   Policy statements
    #   @return [Array<Types::PolicyStatement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/SigninResourceBasedPolicy AWS API Documentation
    #
    class SigninResourceBasedPolicy < Struct.new(
      :version,
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error thrown when rate limit is exceeded
    #
    # HTTP Status Code: 429 Too Many Requests
    #
    # Possible OAuth2ErrorCode values:
    #
    # * INVALID\_REQUEST: Rate limiting, too many requests, abuse prevention
    #
    # Possible causes:
    #
    # * Too many token requests from the same client
    # * Rate limiting based on client\_id or IP address
    # * Abuse prevention mechanisms triggered
    # * Service protection against excessive token generation
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating the specific type of error Will be
    #   INVALID\_REQUEST for rate limiting scenarios
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message about the rate limiting May include retry-after
    #   information or rate limit details
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/TooManyRequestsError AWS API Documentation
    #
    class TooManyRequestsError < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error thrown when request validation fails
    #
    # HTTP Status Code: 400 Bad Request
    #
    # Used for request validation errors such as malformed parameters,
    # missing required fields, or invalid parameter values.
    #
    # @!attribute [rw] error
    #   OAuth 2.0 error code indicating validation failure Will be
    #   INVALID\_REQUEST for validation errors
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed message explaining the validation failure Provides specific
    #   information about which validation failed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

