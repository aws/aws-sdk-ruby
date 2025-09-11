# frozen_string_literal: true

# This is generated code!

module Aws::IotDeviceAdvisor
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::IotDeviceAdvisor::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IotDeviceAdvisor::Errors::ServiceError
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
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Sends a Conflict Exception.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IotDeviceAdvisor::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Sends a Conflict Exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Sends an Internal Failure exception.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IotDeviceAdvisor::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Sends an Internal Failure Exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Sends a Resource Not Found exception.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IotDeviceAdvisor::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Sends a Resource Not Found Exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Sends a validation exception.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IotDeviceAdvisor::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Sends a Validation Exception message.</p>
      def message
        @data[:message]
      end
    end
  end
end
