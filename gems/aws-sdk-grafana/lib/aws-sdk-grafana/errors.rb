# frozen_string_literal: true

# This is generated code!

module Aws::Grafana
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Grafana::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Grafana::Errors::ServiceError
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

    # <p>You do not have sufficient permissions to perform this action. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource was in an inconsistent state during an update or a deletion.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource that is associated with the error.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that is associated with the error.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Unexpected error while processing the request. Retry the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end

      # <p>How long to wait before you retry this operation.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The request references a resource that does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The value of a parameter in the request caused an error.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource that is associated with the error.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that is associated with the error.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource that is associated with the error.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that is associated with the error.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The value of a parameter in the request caused an error.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The ID of the service quota that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied because of request throttling. Retry the request.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the service that is associated with the error.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The ID of the service quota that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The value of a parameter in the request caused an error.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The value of a parameter in the request caused an error.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Grafana::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the error.</p>
      def message
        @data[:message]
      end

      # <p>The reason that the operation failed.</p>
      def reason
        @data[:reason]
      end

      # <p>A list of fields that might be associated with the error.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
