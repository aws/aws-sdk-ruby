# frozen_string_literal: true

# This is generated code!

module Aws::MTurk
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MTurk::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MTurk::Errors::ServiceError
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
  # * {RequestError}
  # * {ServiceFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Your request is invalid.</p>
    class RequestError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MTurk::Types::RequestError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def turk_error_code
        @data[:turk_error_code]
      end
    end

    # <p>Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.</p>
    class ServiceFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MTurk::Types::ServiceFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def turk_error_code
        @data[:turk_error_code]
      end
    end
  end
end
