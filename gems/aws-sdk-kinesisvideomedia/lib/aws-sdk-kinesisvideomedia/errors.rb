# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoMedia
  module Errors

    extend Aws::Errors::DynamicErrors

    class ClientLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoMedia::Types::ClientLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class ConnectionLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoMedia::Types::ConnectionLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidArgumentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoMedia::Types::InvalidArgumentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidEndpointException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoMedia::Types::InvalidEndpointException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NotAuthorizedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoMedia::Types::NotAuthorizedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::KinesisVideoMedia::Types::ResourceNotFoundException] data
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
