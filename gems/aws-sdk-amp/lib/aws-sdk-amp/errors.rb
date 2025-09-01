# frozen_string_literal: true

# This is generated code!

module Aws::Amp
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Amp::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Amp::Errors::ServiceError
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
      # @param [Aws::Amp::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request would cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Amp::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Amp::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>Advice to clients on when the call can be safely retried.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The request references a resources that doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Amp::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Completing the request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Amp::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Service quotas code for the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Service quotas code of the originating quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Amp::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>Service quotas code for the originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Service quotas code for the originating quota.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Advice to clients on when the call can be safely retried.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Amp::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error.</p>
      def message
        @data[:message]
      end

      # <p>Reason the request failed validation.</p>
      def reason
        @data[:reason]
      end

      # <p>The field that caused the error, if applicable.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
