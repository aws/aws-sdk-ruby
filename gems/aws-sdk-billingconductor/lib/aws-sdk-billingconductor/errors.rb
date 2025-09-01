# frozen_string_literal: true

# This is generated code!

module Aws::Billingconductor
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Billingconductor::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Billingconductor::Errors::ServiceError
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
  # * {ServiceLimitExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.
    #     </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can cause an inconsistent state by updating or deleting a resource.
    #     </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource in use.
      #     </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource in use.
      #     </p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Reason for the inconsistent state.
      #     </p>
      def reason
        @data[:reason]
      end
    end

    # <p>An unexpected error occurred while processing a request.
    #     </p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Number of seconds you can retry after the call.
      #     </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The request references a resource that doesn't exist.
    #     </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Resource identifier that was not found.
      #     </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Resource type that was not found.
      #     </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would cause a service limit to exceed.
    #     </p>
    class ServiceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::ServiceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.
      #     </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource affected.
      #     </p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The unique code identifier of the service limit that is being exceeded.
      #     </p>
      def limit_code
        @data[:limit_code]
      end

      # <p>The unique code for the service of the limit that is being exceeded.
      #     </p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request was denied due to request throttling.
    #     </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Number of seconds you can safely retry after the call.
      #     </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The input doesn't match with the constraints specified by Amazon Web Services.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Billingconductor::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The reason the request's validation failed.
      #     </p>
      def reason
        @data[:reason]
      end

      # <p>The fields that caused the error, if applicable.
      #     </p>
      def fields
        @data[:fields]
      end
    end
  end
end
