# frozen_string_literal: true

# This is generated code!

module Aws::Pipes
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Pipes::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Pipes::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalException}
  # * {NotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An action you attempted resulted in an exception.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pipes::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that caused the exception.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that caused the exception.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>This exception occurs due to unexpected causes.</p>
    class InternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pipes::Types::InternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the action that caused the
      #          exception.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>An entity that you specified does not exist.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pipes::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A quota has been exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pipes::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that caused the exception.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that caused the exception.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The identifier of the service that caused the exception.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The identifier of the quota that caused the exception.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>An action was throttled.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pipes::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the service that caused the exception.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The identifier of the quota that caused the exception.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The number of seconds to wait before retrying the action that caused the
      #          exception.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>Indicates that an error has occurred while performing a validate operation.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Pipes::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The list of fields for which validation failed and the corresponding failure
      #          messages.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
