# frozen_string_literal: true

# This is generated code!

module Aws::SecurityIR
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SecurityIR::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SecurityIR::Errors::ServiceError
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
  # * {InvalidTokenException}
  # * {ResourceNotFoundException}
  # * {SecurityIncidentResponseNotActiveException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p/>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The ID of the resource which lead to the access denial.</p>
      def message
        @data[:message]
      end
    end

    # <p/>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the conflicting resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the conflicting resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p/>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>The number of seconds after which to retry the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p/>
    class InvalidTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::InvalidTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p/>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p/>
    class SecurityIncidentResponseNotActiveException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::SecurityIncidentResponseNotActiveException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p/>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the requested resource which lead to the service quota exception.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the requested resource which lead to the service quota exception.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The service code of the quota.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The code of the quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p/>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>The service code of the exception.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code of the exception.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The number of seconds after which to retry the request.</p>
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

    # <p/>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityIR::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end

      # <p>The reason for the exception.</p>
      def reason
        @data[:reason]
      end

      # <p>The fields which lead to the exception.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
