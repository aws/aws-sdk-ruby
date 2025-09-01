# frozen_string_literal: true

# This is generated code!

module Aws::DataPipeline
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DataPipeline::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DataPipeline::Errors::ServiceError
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
  # * {InternalServiceError}
  # * {InvalidRequestException}
  # * {PipelineDeletedException}
  # * {PipelineNotFoundException}
  # * {TaskNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An internal service error occurred.</p>
    class InternalServiceError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataPipeline::Types::InternalServiceError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataPipeline::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified pipeline has been deleted.</p>
    class PipelineDeletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataPipeline::Types::PipelineDeletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>
    class PipelineNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataPipeline::Types::PipelineNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified task was not found. </p>
    class TaskNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataPipeline::Types::TaskNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Description of the error message.</p>
      def message
        @data[:message]
      end
    end
  end
end
