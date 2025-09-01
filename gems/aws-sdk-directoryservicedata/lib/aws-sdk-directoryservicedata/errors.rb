# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryServiceData
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DirectoryServiceData::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DirectoryServiceData::Errors::ServiceError
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
  # * {ConflictException}
  # * {DirectoryUnavailableException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p> You don't have permission to perform the request or access the directory. It can also
    #       occur when the <code>DirectoryId</code> doesn't exist or the user, member, or group might be
    #       outside of your organizational unit (OU). </p>
    #          <p> Make sure that you have the authentication and authorization to perform the action.
    #       Review the directory information in the request, and make sure that the object isn't outside
    #       of your OU. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> Reason the request was unauthorized. </p>
      def reason
        @data[:reason]
      end
    end

    # <p> This error will occur when you try to create a resource that conflicts with an existing
    #       object. It can also occur when adding a member to a group that the member is already
    #       in.</p>
    #          <p> This error can be caused by a request sent within the 8-hour idempotency window with the
    #       same client token but different input parameters. Client tokens should not be re-used across
    #       different requests. After 8 hours, any request with the same client token is treated as a new
    #       request. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> The request could not be completed due to a problem in the configuration or current state
    #       of the specified directory. </p>
    class DirectoryUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::DirectoryUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> Reason the request failed for the specified directory. </p>
      def reason
        @data[:reason]
      end

      def retryable?
        true
      end
    end

    # <p> The operation didn't succeed because an internal error occurred. Try again later. </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p> The resource couldn't be found. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> The limit on the number of requests per second has been exceeded. </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> The recommended amount of seconds to retry after a throttling exception. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p> The request isn't valid. Review the details in the error message to update the invalid
    #       parameters or values in your request. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryServiceData::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> Reason the request failed validation. </p>
      def reason
        @data[:reason]
      end
    end
  end
end
