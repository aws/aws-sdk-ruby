# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerRuntime
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SageMakerRuntime::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SageMakerRuntime::Errors::ServiceError
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
  # * {InternalDependencyException}
  # * {InternalFailure}
  # * {InternalStreamFailure}
  # * {ModelError}
  # * {ModelNotReadyException}
  # * {ModelStreamError}
  # * {ServiceUnavailable}
  # * {ValidationError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Your request caused an exception with an internal dependency. Contact customer
    #             support. </p>
    class InternalDependencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::InternalDependencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> An internal failure occurred. </p>
    class InternalFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::InternalFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The stream processing failed because of an unknown error, exception or failure. Try your request again.</p>
    class InternalStreamFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::InternalStreamFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> Model (owned by the customer in the container) returned 4xx or 5xx error code.
    #         </p>
    class ModelError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::ModelError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p> Original status code. </p>
      def original_status_code
        @data[:original_status_code]
      end

      # <p> Original message. </p>
      def original_message
        @data[:original_message]
      end

      # <p> The Amazon Resource Name (ARN) of the log stream. </p>
      def log_stream_arn
        @data[:log_stream_arn]
      end
    end

    # <p>Either a serverless endpoint variant's resources are still being provisioned, or a
    #             multi-model endpoint is still downloading or loading the target model. Wait and try your
    #             request again.</p>
    class ModelNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::ModelNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> An error occurred while streaming the response body. This error can have the
    #     following error codes:</p>
    #          <dl>
    #             <dt>ModelInvocationTimeExceeded</dt>
    #             <dd>
    #                <p>The model failed to finish sending the response within the timeout period allowed by Amazon SageMaker AI.</p>
    #             </dd>
    #             <dt>StreamBroken</dt>
    #             <dd>
    #                <p>The Transmission Control Protocol (TCP) connection between the client and
    #                     the model was reset or closed.</p>
    #             </dd>
    #          </dl>
    class ModelStreamError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::ModelStreamError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>This error can have the following error codes:</p>
      #          <dl>
      #             <dt>ModelInvocationTimeExceeded</dt>
      #             <dd>
      #                <p>The model failed to finish sending the response within the timeout period
      #                         allowed by Amazon SageMaker AI.</p>
      #             </dd>
      #             <dt>StreamBroken</dt>
      #             <dd>
      #                <p>The Transmission Control Protocol (TCP) connection between the client and
      #                         the model was reset or closed.</p>
      #             </dd>
      #          </dl>
      def error_code
        @data[:error_code]
      end
    end

    # <p> The service is unavailable. Try your call again. </p>
    class ServiceUnavailable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::ServiceUnavailable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p> Inspect your request and try again. </p>
    class ValidationError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerRuntime::Types::ValidationError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
