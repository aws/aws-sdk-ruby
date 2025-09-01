# frozen_string_literal: true

# This is generated code!

module Aws::StorageGateway
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::StorageGateway::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::StorageGateway::Errors::ServiceError
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
  # * {InternalServerError}
  # * {InvalidGatewayRequestException}
  # * {ServiceUnavailableError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An internal server error has occurred during the request. For more information, see the
    #          error and message fields.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::StorageGateway::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A human-readable message describing the error that occurred.</p>
      def message
        @data[:message]
      end

      # <p>A <a>StorageGatewayError</a> that provides more information about the cause
      #          of the error.</p>
      def error
        @data[:error]
      end
    end

    # <p>An exception occurred because an invalid gateway request was issued to the service. For
    #          more information, see the error and message fields.</p>
    class InvalidGatewayRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::StorageGateway::Types::InvalidGatewayRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A human-readable message describing the error that occurred.</p>
      def message
        @data[:message]
      end

      # <p>A <a>StorageGatewayError</a> that provides more detail about the cause of the
      #          error.</p>
      def error
        @data[:error]
      end
    end

    # <p>An internal server error has occurred because the service is unavailable. For more
    #          information, see the error and message fields.</p>
    class ServiceUnavailableError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::StorageGateway::Types::ServiceUnavailableError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A human-readable message describing the error that occurred.</p>
      def message
        @data[:message]
      end

      # <p>A <a>StorageGatewayError</a> that provides more information about the cause
      #          of the error.</p>
      def error
        @data[:error]
      end
    end
  end
end
