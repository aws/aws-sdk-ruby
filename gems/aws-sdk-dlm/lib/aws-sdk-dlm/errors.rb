# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DLM

  # When DLM returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::DLM::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all DLM errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DLM::Errors::ServiceError
  #       # rescues all DLM API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {InternalServerException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class InternalServerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DLM::Types::InternalServerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end
    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DLM::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def required_parameters
        @data[:required_parameters]
      end

      # @return [String]
      def mutually_exclusive_parameters
        @data[:mutually_exclusive_parameters]
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DLM::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def resource_type
        @data[:resource_type]
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DLM::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def resource_type
        @data[:resource_type]
      end

      # @return [String]
      def resource_ids
        @data[:resource_ids]
      end
    end

  end
end
