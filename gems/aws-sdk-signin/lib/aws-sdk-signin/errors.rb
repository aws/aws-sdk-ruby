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
  # * {AccessDeniedException}
  # * {InternalServerException}
  # * {TooManyRequestsError}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # Error thrown for access denied scenarios with flexible HTTP status mapping
    # 
    # Runtime HTTP Status Code Mapping:
    # - HTTP 401 (Unauthorized): TOKEN_EXPIRED, AUTHCODE_EXPIRED
    # - HTTP 403 (Forbidden): USER_CREDENTIALS_CHANGED, INSUFFICIENT_PERMISSIONS
    # 
    # The specific HTTP status code is determined at runtime based on the error enum value.
    # Consumers should use the error field to determine the specific access denial reason.
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # OAuth 2.0 error code indicating the specific type of access denial
      # Can be TOKEN_EXPIRED, AUTHCODE_EXPIRED, USER_CREDENTIALS_CHANGED, or INSUFFICIENT_PERMISSIONS
      def error
        @data[:error]
      end

      # Detailed message explaining the access denial
      # Provides specific information about why access was denied
      def message
        @data[:message]
      end
    end

    # Error thrown when an internal server error occurs
    # 
    # HTTP Status Code: 500 Internal Server Error
    # 
    # Used for unexpected server-side errors that prevent request processing.
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # OAuth 2.0 error code indicating server error
      # Will be SERVER_ERROR for internal server errors
      def error
        @data[:error]
      end

      # Detailed message explaining the server error
      # May include error details for debugging purposes
      def message
        @data[:message]
      end
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
    class TooManyRequestsError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::TooManyRequestsError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # OAuth 2.0 error code indicating the specific type of error
      # Will be INVALID_REQUEST for rate limiting scenarios
      def error
        @data[:error]
      end

      # Detailed message about the rate limiting
      # May include retry-after information or rate limit details
      def message
        @data[:message]
      end
    end

    # Error thrown when request validation fails
    # 
    # HTTP Status Code: 400 Bad Request
    # 
    # Used for request validation errors such as malformed parameters,
    # missing required fields, or invalid parameter values.
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Signin::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # OAuth 2.0 error code indicating validation failure
      # Will be INVALID_REQUEST for validation errors
      def error
        @data[:error]
      end

      # Detailed message explaining the validation failure
      # Provides specific information about which validation failed
      def message
        @data[:message]
      end
    end
  end
end
