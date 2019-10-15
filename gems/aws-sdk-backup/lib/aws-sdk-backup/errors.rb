# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Backup
  module Errors

    extend Aws::Errors::DynamicErrors

    class AlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::AlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def creator_request_id
        @data[:creator_request_id]
      end

      # @return [String]
      def arn
        @data[:arn]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class DependencyFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::DependencyFailureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class MissingParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::MissingParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Backup::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def context
        @data[:context]
      end

    end

  end
end
