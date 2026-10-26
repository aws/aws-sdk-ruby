# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerRuntimeHTTP2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SageMakerRuntimeHTTP2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SageMakerRuntimeHTTP2::Errors::ServiceError
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
  # * {InputValidationError}
  # * {InternalServerError}
  # * {InternalStreamFailure}
  # * {ModelError}
  # * {ModelStreamError}
  # * {ServiceUnavailableError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    class InputValidationError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntimeHTTP2::Types::InputValidationError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error message.</p>
      def message
        @data[:message]
      end

      # <p>Error code.</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntimeHTTP2::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error message.</p>
      def message
        @data[:message]
      end

      # <p>Error code.</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>Internal stream failure that occurs during streaming.</p>
    class InternalStreamFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntimeHTTP2::Types::InternalStreamFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error occurred while processing the model.</p>
    class ModelError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntimeHTTP2::Types::ModelError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error message.</p>
      def message
        @data[:message]
      end

      # <p>HTTP status code returned by model.</p>
      def original_status_code
        @data[:original_status_code]
      end

      # <p>Original error message from the model.</p>
      def original_message
        @data[:original_message]
      end

      # <p>CloudWatch log stream ARN.</p>
      def log_stream_arn
        @data[:log_stream_arn]
      end

      # <p>Error code.</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>Model stream error that occurs during streaming.</p>
    class ModelStreamError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntimeHTTP2::Types::ModelStreamError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error message.</p>
      def message
        @data[:message]
      end

      # <p>Error code.</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>The request has failed due to a temporary failure of the server.</p>
    class ServiceUnavailableError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntimeHTTP2::Types::ServiceUnavailableError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error message.</p>
      def message
        @data[:message]
      end

      # <p>Error code.</p>
      def error_code
        @data[:error_code]
      end
    end
  end
end
