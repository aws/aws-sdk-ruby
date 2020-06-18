# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LambdaPreview

  # When LambdaPreview returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::LambdaPreview::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all LambdaPreview errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LambdaPreview::Errors::ServiceError
  #       # rescues all LambdaPreview API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {InvalidParameterValueException}
  # * {InvalidRequestContentException}
  # * {ResourceNotFoundException}
  # * {ServiceException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::LambdaPreview::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidRequestContentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::LambdaPreview::Types::InvalidRequestContentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::LambdaPreview::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::LambdaPreview::Types::ServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
