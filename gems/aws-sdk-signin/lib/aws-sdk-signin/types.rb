# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # This module contains the types returned by client operations.
  module Types

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
    # @!attribute dpop_proof
    #   DPoP proof JWT header for demonstrating proof-of-possession of the private key
    #   
    #   Header format: {"typ": "dpop+jwt", "alg": "ES256", "jwk": {...}}
    #   Payload format: {"htm": "POST", "htu": "https://server.example.com/token", "iat": timestamp, "jti": "unique-id"}
    #   Must be signed with the private key corresponding to the embedded jwk
    #   @return [String]
    # @!attribute token_input
    #   Flattened token operation inputs
    #   The specific operation is determined by grant_type in the request body
    #   @return [Types::CreateOAuth2TokenRequestBody]
    class CreateOAuth2TokenRequest < Struct.new(
      :dpop_proof,
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
      :access_token,
      :token_type,
      :expires_in,
      :refresh_token,
      :id_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when the client is not authorized or has insufficient permissions
    # 
    # HTTP Status Code: 403 Forbidden
    # 
    # Possible causes:
    # - Unauthorized widget or client_id not registered
    # - Insufficient permissions for the requested scope
    # - Client not authorized to use the specified grant_type
    # - DPoP key binding validation failure (cnf.jkt mismatch)
    # - Policy evaluation failure for credential scoping
    # @!attribute message
    #   Detailed message explaining the authorization failure
    #   Provides information about permission or policy violations
    #   @return [String]
    class ForbiddenError < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when the request is malformed or missing required parameters
    # 
    # HTTP Status Code: 400 Bad Request
    # 
    # Possible causes:
    # - Malformed request body (invalid form encoding)
    # - Missing required parameters (client_id, grant_type, code, etc.)
    # - Invalid parameter values (malformed client_id ARN, invalid grant_type)
    # - Invalid DPoP proof JWT format or signature
    # - PKCE code_verifier validation failure
    # - Redirect URI mismatch with original authorization request
    # @!attribute message
    #   Detailed message explaining the request validation failure
    #   Provides specific information about which parameter or validation failed
    #   @return [String]
    class InvalidRequestError < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when rate limit is exceeded
    # 
    # HTTP Status Code: 429 Too Many Requests
    # 
    # Possible causes:
    # - Too many token requests from the same client
    # - Rate limiting based on client_id or IP address
    # - Abuse prevention mechanisms triggered
    # - Service protection against excessive token generation
    # @!attribute message
    #   Detailed message about the rate limiting
    #   May include retry-after information or rate limit details
    #   @return [String]
    class TooManyRequestsError < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Error thrown when the access token is invalid or expired
    # 
    # HTTP Status Code: 401 Unauthorized
    # 
    # Possible causes:
    # - Invalid or expired authorization code
    # - Invalid or expired refresh token
    # - DPoP proof JWT validation failure (invalid signature, expired, wrong key)
    # - Authorization code already used (replay attack prevention)
    # - Refresh token revoked or invalid
    # @!attribute message
    #   Detailed message explaining the authentication failure
    #   Indicates specific authentication issue (expired token, invalid signature, etc.)
    #   @return [String]
    class UnauthorizedError < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
