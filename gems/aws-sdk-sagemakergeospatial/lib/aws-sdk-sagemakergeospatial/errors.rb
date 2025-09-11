# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerGeospatial
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SageMakerGeospatial::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SageMakerGeospatial::Errors::ServiceError
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
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p/>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The request references a resource which does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>You have exceeded the service quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p/>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerGeospatial::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p/>
      def resource_id
        @data[:resource_id]
      end
    end
  end
end
