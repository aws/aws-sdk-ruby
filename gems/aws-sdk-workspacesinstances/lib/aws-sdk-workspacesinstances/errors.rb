# frozen_string_literal: true

# This is generated code!

module Aws::WorkspacesInstances
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WorkspacesInstances::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkspacesInstances::Errors::ServiceError
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

    # <p>Indicates insufficient permissions to perform the requested action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Detailed explanation of the access denial.</p>
      def message
        @data[:message]
      end
    end

    # <p>Signals a conflict with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the conflict encountered.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the conflicting resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the conflicting resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Indicates an unexpected server-side error occurred.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the internal server error.</p>
      def message
        @data[:message]
      end

      # <p>Recommended wait time before retrying the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>Indicates the requested resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Details about the missing resource.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Indicates that a service quota has been exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the quota limitation.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource related to the quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of resource related to the quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Code identifying the service with the quota limitation.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Specific code for the exceeded quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>Indicates the request rate has exceeded limits.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the throttling event.</p>
      def message
        @data[:message]
      end

      # <p>Code identifying the service experiencing throttling.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Specific code for the throttling quota.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Recommended wait time before retrying the request.</p>
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

    # <p>Indicates invalid input parameters in the request.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkspacesInstances::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Overall description of validation failures.</p>
      def message
        @data[:message]
      end

      # <p>Specific reason for the validation failure.</p>
      def reason
        @data[:reason]
      end

      # <p>List of fields that failed validation.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
