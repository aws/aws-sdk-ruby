# frozen_string_literal: true

# This is generated code!

module Aws::CloudHSM
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudHSM::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudHSM::Errors::ServiceError
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
  # * {CloudHsmInternalException}
  # * {CloudHsmServiceException}
  # * {InvalidRequestException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Indicates that an internal error occurred.</p>
    class CloudHsmInternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSM::Types::CloudHsmInternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Additional information about the error.</p>
      def message
        @data[:message]
      end

      # <p>Indicates if the action can be retried.</p>
      def retryable
        @data[:retryable]
      end
    end

    # <p>Indicates that an exception occurred in the AWS CloudHSM service.</p>
    class CloudHsmServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSM::Types::CloudHsmServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Additional information about the error.</p>
      def message
        @data[:message]
      end

      # <p>Indicates if the action can be retried.</p>
      def retryable
        @data[:retryable]
      end
    end

    # <p>Indicates that one or more of the request parameters are not valid.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudHSM::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Additional information about the error.</p>
      def message
        @data[:message]
      end

      # <p>Indicates if the action can be retried.</p>
      def retryable
        @data[:retryable]
      end
    end
  end
end
