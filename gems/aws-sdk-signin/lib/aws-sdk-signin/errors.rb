# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Signin::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Signin::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ForbiddenError}
  # * {InvalidRequestError}
  # * {TooManyRequestsError}
  # * {UnauthorizedError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

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
    class ForbiddenError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::ForbiddenError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Detailed message explaining the authorization failure
      # Provides information about permission or policy violations
      def message
        @data[:message]
      end
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
    class InvalidRequestError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::InvalidRequestError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Detailed message explaining the request validation failure
      # Provides specific information about which parameter or validation failed
      def message
        @data[:message]
      end
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
    class TooManyRequestsError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::TooManyRequestsError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Detailed message about the rate limiting
      # May include retry-after information or rate limit details
      def message
        @data[:message]
      end
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
    class UnauthorizedError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::UnauthorizedError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Detailed message explaining the authentication failure
      # Indicates specific authentication issue (expired token, invalid signature, etc.)
      def message
        @data[:message]
      end
    end
  end
end
