# frozen_string_literal: true

# This is generated code!

module Aws::LookoutVision
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LookoutVision::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LookoutVision::Errors::ServiceError
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

    # <p>You are not authorized to perform the action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The update or deletion of a resource caused an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Amazon Lookout for Vision experienced a service issue. Try your call again.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The period of time, in seconds, before the operation can be retried.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>A service quota was exceeded the allowed limit. For more information, see
    #         Limits in Amazon Lookout for Vision in the Amazon Lookout for Vision Developer Guide. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The quota code. </p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code. </p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>Amazon Lookout for Vision is temporarily unable to process the request. Try your call again.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The quota code. </p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code. </p>
      def service_code
        @data[:service_code]
      end

      # <p>The period of time, in seconds, before the operation can be retried. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>An input validation error occured. For example, invalid characters in a project name,
    #       or if a pagination token is invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutVision::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
