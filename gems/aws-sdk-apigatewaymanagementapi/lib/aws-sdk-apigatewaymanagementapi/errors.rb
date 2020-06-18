# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayManagementApi

  # When ApiGatewayManagementApi returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::ApiGatewayManagementApi::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all ApiGatewayManagementApi errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApiGatewayManagementApi::Errors::ServiceError
  #       # rescues all ApiGatewayManagementApi API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {ForbiddenException}
  # * {GoneException}
  # * {PayloadTooLargeException}
  # * {LimitExceededException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class ForbiddenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ApiGatewayManagementApi::Types::ForbiddenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GoneException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ApiGatewayManagementApi::Types::GoneException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class PayloadTooLargeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ApiGatewayManagementApi::Types::PayloadTooLargeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ApiGatewayManagementApi::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
