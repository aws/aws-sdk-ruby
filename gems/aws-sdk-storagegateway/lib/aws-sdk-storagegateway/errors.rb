# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::StorageGateway
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
