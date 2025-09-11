# frozen_string_literal: true

# This is generated code!

module Aws::Panorama
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Panorama::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Panorama::Errors::ServiceError
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
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The requestor does not have permission to access the target action or resource.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Panorama::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The target resource is in use.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Panorama::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The resource's ID.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource's type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>A unique ID for the error.</p>
      def error_id
        @data[:error_id]
      end

      # <p>A list of attributes that led to the exception and their values.</p>
      def error_arguments
        @data[:error_arguments]
      end
    end

    # <p>An internal error occurred.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Panorama::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds a client should wait before retrying the call.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The target resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Panorama::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The resource's ID.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource's type.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would cause a limit to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Panorama::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The target resource's ID.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The target resource's type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The name of the limit.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The name of the service.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request contains an invalid parameter value.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Panorama::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason that validation failed.</p>
      def reason
        @data[:reason]
      end

      # <p>A unique ID for the error.</p>
      def error_id
        @data[:error_id]
      end

      # <p>A list of attributes that led to the exception and their values.</p>
      def error_arguments
        @data[:error_arguments]
      end

      # <p>A list of request parameters that failed validation.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
