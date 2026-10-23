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
    # The scoped-down, 15 minute duration AWS credentials.
    # Scoping down will be based on CLI policy (CLI team needs to create it).
    # Similar to cloud shell implementation.
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
