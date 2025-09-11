# frozen_string_literal: true

# This is generated code!

module Aws::QApps
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::QApps::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::QApps::Errors::ServiceError
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
  # * {ContentTooLargeException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {UnauthorizedException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The client is not authorized to perform the requested operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation could not be completed due to a conflict with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The unique identifier of the resource</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The requested operation could not be completed because the content exceeds the maximum allowed size.</p>
    class ContentTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::ContentTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The unique identifier of the resource</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An internal service error occurred while processing the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the operation</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The requested resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The unique identifier of the resource</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The requested operation could not be completed because it would exceed the service's quota or limit.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The unique identifier of the resource</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The code for the service where the quota was exceeded</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code of the quota that was exceeded</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The requested operation could not be completed because too many requests were sent at once. Wait a bit and try again later.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The code for the service where the quota was exceeded</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code of the quota that was exceeded</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The number of seconds to wait before retrying the operation</p>
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

    # <p>The client is not authenticated or authorized to perform the requested operation.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The input failed to satisfy the constraints specified by the service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QApps::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
