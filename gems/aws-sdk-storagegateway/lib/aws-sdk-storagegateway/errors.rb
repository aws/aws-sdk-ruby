# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::StorageGateway

  # When StorageGateway returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::StorageGateway::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all StorageGateway errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::StorageGateway::Errors::ServiceError
  #       # rescues all StorageGateway API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {InternalServerError}
  # * {InvalidGatewayRequestException}
  # * {ServiceUnavailableError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class InternalServerError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::StorageGateway::Types::InternalServerError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error
        @data[:error]
      end
    end

    class InvalidGatewayRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::StorageGateway::Types::InvalidGatewayRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error
        @data[:error]
      end
    end

    class ServiceUnavailableError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::StorageGateway::Types::ServiceUnavailableError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def error
        @data[:error]
      end
    end

  end
end
