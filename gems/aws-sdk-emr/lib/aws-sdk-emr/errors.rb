# frozen_string_literal: true

# This is generated code!

module Aws::EMR
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::EMR::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EMR::Errors::ServiceError
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
  # * {InternalServerException}
  # * {InvalidRequestException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Indicates that an error occurred while processing the request and that the request was
    #          not completed.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EMR::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>This exception occurs when there is an internal failure in the Amazon EMR
    #          service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EMR::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception occurs when there is something wrong with user input.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EMR::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The error code associated with the exception.</p>
      def error_code
        @data[:error_code]
      end

      # <p>The message associated with the exception.</p>
      def message
        @data[:message]
      end
    end
  end
end
