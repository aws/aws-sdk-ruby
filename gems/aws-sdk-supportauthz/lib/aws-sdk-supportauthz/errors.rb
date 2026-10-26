# frozen_string_literal: true

# This is generated code!

module Aws::SupportAuthZ
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SupportAuthZ::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SupportAuthZ::Errors::ServiceError
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

    # <p>You don't have sufficient permissions to perform this operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
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

    # <p>An internal service error occurred. Try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The specified resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request exceeds a service quota for your account.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that exceeded the quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that exceeded the quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The service code of the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code of the exceeded quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request rate exceeded the allowed limit. Try again later.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request.</p>
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

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SupportAuthZ::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>A list of fields that fail validation. Each entry identifies the field and the reason for the constraint violation.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
