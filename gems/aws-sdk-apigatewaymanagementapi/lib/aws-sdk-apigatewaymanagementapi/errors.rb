# frozen_string_literal: true

# This is generated code!

module Aws::ApiGatewayManagementApi
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ApiGatewayManagementApi::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApiGatewayManagementApi::Errors::ServiceError
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
  # * {ForbiddenException}
  # * {GoneException}
  # * {LimitExceededException}
  # * {PayloadTooLargeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The caller is not authorized to invoke this operation.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApiGatewayManagementApi::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The connection with the provided id no longer exists.</p>
    class GoneException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApiGatewayManagementApi::Types::GoneException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApiGatewayManagementApi::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The data has exceeded the maximum size allowed.</p>
    class PayloadTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApiGatewayManagementApi::Types::PayloadTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
