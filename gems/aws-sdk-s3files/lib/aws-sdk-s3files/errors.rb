# frozen_string_literal: true

# This is generated code!

module Aws::S3Files
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::S3Files::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::S3Files::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request conflicts with the current state of the resource. This can occur when trying to create a resource that already exists or delete a resource that is in use.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Files::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that caused the conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that caused the conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An internal server error occurred. Retry your request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Files::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource was not found. Verify that the resource exists and that you have permission to access it.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Files::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would exceed a service quota. Review your service quotas and either delete resources or request a quota increase.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Files::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was throttled. Retry your request using exponential backoff.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Files::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The input parameters are not valid. Check the parameter values and try again.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::S3Files::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end
  end
end
