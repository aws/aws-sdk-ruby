# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntime

  # When SageMakerRuntime returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::SageMakerRuntime::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all SageMakerRuntime errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SageMakerRuntime::Errors::ServiceError
  #       # rescues all SageMakerRuntime API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {InternalFailure}
  # * {ModelError}
  # * {ServiceUnavailable}
  # * {ValidationError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class InternalFailure < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntime::Types::InternalFailure] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ModelError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntime::Types::ModelError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def original_status_code
        @data[:original_status_code]
      end

      # @return [String]
      def original_message
        @data[:original_message]
      end

      # @return [String]
      def log_stream_arn
        @data[:log_stream_arn]
      end
    end

    class ServiceUnavailable < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntime::Types::ServiceUnavailable] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ValidationError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntime::Types::ValidationError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
