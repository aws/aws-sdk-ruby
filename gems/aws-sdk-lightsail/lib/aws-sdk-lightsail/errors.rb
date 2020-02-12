# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lightsail
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

    class AccountSetupInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::AccountSetupInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

    class OperationFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::OperationFailureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

    class ServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::ServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

    class UnauthenticatedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::UnauthenticatedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end

    end

  end
end
