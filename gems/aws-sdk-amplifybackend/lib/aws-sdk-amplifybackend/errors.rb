# frozen_string_literal: true

# This is generated code!

module Aws::AmplifyBackend
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::AmplifyBackend::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::AmplifyBackend::Errors::ServiceError
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
  # * {BadRequestException}
  # * {GatewayTimeoutException}
  # * {NotFoundException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An error returned if a request is not formed properly.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AmplifyBackend::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message to inform that the request failed.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error returned if there's a temporary issue with the service.</p>
    class GatewayTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AmplifyBackend::Types::GatewayTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message to inform that the request failed.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error returned when a specific resource type is not found.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AmplifyBackend::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>An error message to inform that the request has failed.</p>
      def message
        @data[:message]
      end

      # <p>The type of resource that is not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An error that is returned when a limit of a specific type has been exceeded.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AmplifyBackend::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The type of limit that was exceeded.</p>
      def limit_type
        @data[:limit_type]
      end

      # <p>An error message to inform that the request has failed.</p>
      def message
        @data[:message]
      end
    end
  end
end
