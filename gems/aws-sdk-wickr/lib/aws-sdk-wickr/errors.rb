# frozen_string_literal: true

# This is generated code!

module Aws::Wickr
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Wickr::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Wickr::Errors::ServiceError
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
  # * {BadRequestError}
  # * {ForbiddenError}
  # * {InternalServerError}
  # * {RateLimitError}
  # * {ResourceNotFoundError}
  # * {UnauthorizedError}
  # * {ValidationError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request was invalid or malformed. This error occurs when the request parameters do not meet the API requirements, such as invalid field values, missing required parameters, or improperly formatted data.</p>
    class BadRequestError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::BadRequestError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A detailed message explaining what was wrong with the request and how to correct it.</p>
      def message
        @data[:message]
      end
    end

    # <p>Access to the requested resource is forbidden. This error occurs when the authenticated user does not have the necessary permissions to perform the requested operation, even though they are authenticated.</p>
    class ForbiddenError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::ForbiddenError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message explaining why access was denied and what permissions are required.</p>
      def message
        @data[:message]
      end
    end

    # <p>An unexpected error occurred on the server while processing the request. This indicates a problem with the Wickr service itself rather than with the request. If this error persists, contact Amazon Web Services Support.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the internal server error that occurred.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was throttled because too many requests were sent in a short period of time. Wait a moment and retry the request. Consider implementing exponential backoff in your application.</p>
    class RateLimitError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::RateLimitError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message indicating that the rate limit was exceeded and suggesting when to retry.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource could not be found. This error occurs when you try to access or modify a network, user, bot, security group, or other resource that doesn't exist or has been deleted.</p>
    class ResourceNotFoundError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::ResourceNotFoundError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message identifying which resource was not found.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was not authenticated or the authentication credentials were invalid. This error occurs when the request lacks valid authentication credentials or the credentials have expired.</p>
    class UnauthorizedError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::UnauthorizedError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message explaining why the authentication failed.</p>
      def message
        @data[:message]
      end
    end

    # <p>One or more fields in the request failed validation. This error provides detailed information about which fields were invalid and why, allowing you to correct the request and retry.</p>
    class ValidationError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Wickr::Types::ValidationError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A list of validation error details, where each item identifies a specific field that failed validation and explains the reason for the failure.</p>
      def reasons
        @data[:reasons]
      end

      # <p>A message describing the validation error error that occurred.</p>
      def message
        @data[:message]
      end
    end
  end
end
