# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntimeHTTP2

  # When SageMakerRuntimeHTTP2 returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::SageMakerRuntimeHTTP2::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all SageMakerRuntimeHTTP2 errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SageMakerRuntimeHTTP2::Errors::ServiceError
  #       # rescues all SageMakerRuntimeHTTP2 API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
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

    extend Aws::Errors::DynamicErrors

    class InputValidationError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntimeHTTP2::Types::InputValidationError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end
    end

    class InternalServerError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntimeHTTP2::Types::InternalServerError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end
    end

    class InternalStreamFailure < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntimeHTTP2::Types::InternalStreamFailure] data
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
      # @param [Aws::SageMakerRuntimeHTTP2::Types::ModelError] data
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

      # @return [String]
      def error_code
        @data[:error_code]
      end
    end

    class ModelStreamError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntimeHTTP2::Types::ModelStreamError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end
    end

    class ServiceUnavailableError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SageMakerRuntimeHTTP2::Types::ServiceUnavailableError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end
    end

  end
end
