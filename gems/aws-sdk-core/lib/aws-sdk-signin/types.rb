# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Signin
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] error
    #   One of TOKEN\_EXPIRED, AUTHCODE\_EXPIRED,
    #   USER\_CREDENTIALS\_CHANGED, or INSUFFICIENT\_PERMISSIONS.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The reason access was denied.
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

    # Contains the scoped, temporary AWS credentials used to sign requests
    # with SigV4. Valid for 15 minutes.
    #
    # @!attribute [rw] access_key_id
    #   The AWS access key ID for the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The AWS secret access key used to sign requests.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token that validates the temporary security credentials.
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
    #   Flattened token operation inputs. The "grant\_type" in the request
    #   body determines the specific operation.
    #   @return [Types::CreateOAuth2TokenRequestBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenRequest AWS API Documentation
    #
    class CreateOAuth2TokenRequest < Struct.new(
      :token_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request body for creating an OAuth 2.0 token. Supports both the
    # authorization code and refresh token flows, selected by the
    # "grant\_type" parameter.
    #
    # @!attribute [rw] client_id
    #   The OAuth 2.0 client identifier. Expected values:
    #   "arn:aws:signin:::devtools/same-device" or
    #   "arn:aws:signin:::devtools/cross-device".
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   The OAuth 2.0 grant type. Supported values:
    #
    #   * "authorization\_code" - Exchange an authorization code for tokens.
    #   * "refresh\_token" - Use a refresh token to obtain a new access
    #     token.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The authorization code received from the "/v1/authorize" endpoint.
    #   Required when "grant\_type=authorization\_code".
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The redirect URI that was used in the original authorization
    #   request. Must match exactly. Required when
    #   "grant\_type=authorization\_code".
    #   @return [String]
    #
    # @!attribute [rw] code_verifier
    #   The PKCE code verifier that proves possession of the original code
    #   challenge. Required when "grant\_type=authorization\_code".
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The refresh token issued by a previous token response. Required when
    #   "grant\_type=refresh\_token".
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
    #   Flattened token operation outputs. The specific response fields
    #   depend on the grant\_type used in the request.
    #   @return [Types::CreateOAuth2TokenResponseBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenResponse AWS API Documentation
    #
    class CreateOAuth2TokenResponse < Struct.new(
      :token_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response body for an OAuth 2.0 token request. The fields returned
    # depend on the "grant\_type". The authorization code flow returns
    # "refresh\_token" and "id\_token". The refresh token flow omits
    # "id\_token".
    #
    # @!attribute [rw] access_token
    #   The access token issued by the authorization server. The token
    #   contains temporary AWS security credentials that you use to sign
    #   requests with SigV4.
    #   @return [Types::AccessToken]
    #
    # @!attribute [rw] token_type
    #   The type of token issued. Value is "aws\_sigv4".
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The number of seconds until the access token expires. Maximum value
    #   is 900 seconds (15 minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] refresh_token
    #   A refresh token that can be used to obtain new access tokens without
    #   re-authenticating.
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   A JSON Web Token (JWT) containing user identity claims. Present only
    #   when "grant\_type=authorization\_code". Not included in refresh
    #   token responses.
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
    #   The OAuth 2.0 grant type. Must be "client\_credentials".
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
    # Contains the access token, token type, and expiration as defined in
    # RFC 6749 §5.1.
    #
    # @!attribute [rw] access_token
    #   Access token containing principal identity, resource scope, and
    #   session metadata.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   The token type. Always "Bearer" as defined in RFC 6749.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   Token lifetime in seconds. Value is the minimum of the caller's
    #   session validity and 1 hour (3600 seconds).
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

    # Input structure for CreateOAuth2TokenWithTokenExchange operation
    #
    # @!attribute [rw] grant_type
    #   The OAuth 2.0 grant type. Currently only supports
    #   "urn:ietf:params:oauth:grant-type:token-exchange".
    #   @return [String]
    #
    # @!attribute [rw] subject_token
    #   The subject token that represents the identity of the party on whose
    #   behalf the request is made. Required when
    #   "grant\_type=urn:ietf:params:oauth:grant-type:token-exchange".
    #   @return [String]
    #
    # @!attribute [rw] subject_token_type
    #   The token type of the subject token. Currently only supports
    #   "urn:ietf:params:oauth:token-type:jwt". Required when
    #   "grant\_type=urn:ietf:params:oauth:grant-type:token-exchange".
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The OAuth resource for which the access token is requested. Required
    #   when "grant\_type=urn:ietf:params:oauth:grant-type:token-exchange".
    #   Example: "glue.amazonaws.com".
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   IAM managed policy Amazon Resource Names (ARNs) to apply as session
    #   policies that further scope down the permissions of the issued
    #   access token, provided as a space-delimited list. Example:
    #   "arn:aws:iam::444455556666:policy/MyPolicy".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenWithTokenExchangeRequest AWS API Documentation
    #
    class CreateOAuth2TokenWithTokenExchangeRequest < Struct.new(
      :grant_type,
      :subject_token,
      :subject_token_type,
      :resource,
      :scope)
      SENSITIVE = [:subject_token]
      include Aws::Structure
    end

    # Output structure for CreateOAuth2TokenWithTokenExchange operation.
    #
    # Contains the access token, issued token type, token type, and
    # expiration as defined in RFC 6749 §5.1 and RFC 8693 §2.2.1.
    #
    # @!attribute [rw] access_token
    #   Access token containing principal identity, resource scope, and
    #   session metadata.
    #   @return [String]
    #
    # @!attribute [rw] issued_token_type
    #   The token type of the issued token. Always
    #   "urn:ietf:params:oauth:token-type:access\_token" as defined in RFC
    #   8693 §2.2.1.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   The token type. Currently only supports "Bearer" as defined in RFC
    #   6749.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   Token lifetime in seconds. Value is the minimum of the subject
    #   token's validity and 1 hour (3600 seconds).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/CreateOAuth2TokenWithTokenExchangeResponse AWS API Documentation
    #
    class CreateOAuth2TokenWithTokenExchangeResponse < Struct.new(
      :access_token,
      :issued_token_type,
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

    # The request failed because of an internal server error.
    #
    # @!attribute [rw] error
    #   Will be server\_error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The server error detail.
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
    #   The access token or refresh token issued by AWS Sign-In.
    #   @return [String]
    #
    # @!attribute [rw] token_type_hint
    #   An optional hint about the type of the token submitted for
    #   introspection, as defined in RFC 7662 §2.1. The server checks both
    #   token types regardless of the hint. Allowed values: "access\_token",
    #   "refresh\_token".
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
    #   Indicates whether the token is currently active. Returns "true" only
    #   when the token is valid, has not expired, has not been revoked, and
    #   belongs to the caller's account.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_id
    #   Client identifier for the OAuth 2.0 client that requested the token.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   User identifier matching the "UserId" field from
    #   "sts:GetCallerIdentity" for the token's subject principal.
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
    #   The IAM principal Amazon Resource Name (ARN). For assumed-role
    #   sessions, this is the session ARN.
    #   @return [String]
    #
    # @!attribute [rw] aud
    #   The OAuth resource the token is scoped to. Omitted for refresh
    #   tokens. Example: "aws-mcp.amazonaws.com".
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
    #   The OAuth resource the token is scoped to. Only present for refresh
    #   token introspection.
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

    # The request failed because the provided grant is invalid or expired.
    #
    # @!attribute [rw] error
    #   Will be invalid\_grant.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/InvalidGrantException AWS API Documentation
    #
    class InvalidGrantException < Struct.new(
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because the requested scope is invalid or exceeds
    # the scope that can be granted.
    #
    # @!attribute [rw] error
    #   Will be invalid\_scope.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/InvalidScopeException AWS API Documentation
    #
    class InvalidScopeException < Struct.new(
      :error,
      :message)
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
    #   The refresh token to revoke. Must be a refresh token issued by AWS
    #   Sign-In. Access tokens are not accepted for revocation.
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

    # The request failed because a dependency is temporarily unavailable.
    # You can retry the request.
    #
    # @!attribute [rw] error
    #   Will be service\_unavailable.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signin-2023-01-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
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

    # The request failed because you exceeded the request rate limit for
    # this operation.
    #
    # @!attribute [rw] error
    #   Will be rate\_exceeded.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Details about the rate limit.
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

    # The request failed because it contains a malformed, missing, or
    # invalid parameter.
    #
    # @!attribute [rw] error
    #   The specific code depends on which validation failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The validation constraint that failed.
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

