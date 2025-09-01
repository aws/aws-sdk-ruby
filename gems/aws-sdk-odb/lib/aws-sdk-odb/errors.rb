# frozen_string_literal: true

# This is generated code!

module Aws::Odb
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Odb::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Odb::Errors::ServiceError
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

    # <p>You don't have sufficient access to perform this action. Make sure you have the required permissions and try again.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Occurs when a conflict with the current status of your resource. Fix any inconsistencies with your resource and try again.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that caused the conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that caused the conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Occurs when there is an internal failure in the Oracle Database@Amazon Web Services service. Wait and try again.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request after an internal server error.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The operation tried to access a resource that doesn't exist. Make sure you provided the correct resource and try again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>You have exceeded the service quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that exceeded the service quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that exceeded the service quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The unqiue identifier of the service quota that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the request after being throttled.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The request has failed validation because it is missing required fields or has invalid inputs.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Odb::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The reason why the validation failed.</p>
      def reason
        @data[:reason]
      end

      # <p>A list of fields that failed validation.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
