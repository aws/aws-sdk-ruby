# frozen_string_literal: true

# This is generated code!

module Aws::Resiliencehub
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Resiliencehub::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Resiliencehub::Errors::ServiceError
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

    # <p>You don't have permissions to perform the requested operation. The user or role that is
    #       making the request must have at least one IAM permissions policy attached that grants the
    #       required permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception occurs when a conflict with a previous successful write is detected. This generally occurs
    #       when the previous write did not have time to propagate to the host serving the current
    #       request. A retry (with appropriate backoff logic) is the recommended response to this
    #       exception.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that the exception applies to.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that the exception applies to.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>This exception occurs when there is an internal failure in the Resilience Hub
    #       service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception occurs when the specified resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that the exception applies to.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that the exception applies to.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>This exception occurs when you have exceeded your service quota. To perform the requested action, remove some of the
    #       relevant resources, or use Service Quotas to request a service quota increase.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception occurs when you have exceeded the limit on the number of requests per second.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the operation.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>This exception occurs when a request is not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Resiliencehub::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
