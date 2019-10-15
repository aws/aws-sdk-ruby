# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  module Errors

    extend Aws::Errors::DynamicErrors

    class InsufficientCapacityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::InsufficientCapacityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class MissingParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::MissingParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class PolicyEnforcedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::PolicyEnforcedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class RequestTimeoutException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::RequestTimeoutException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Glacier::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

  end
end
