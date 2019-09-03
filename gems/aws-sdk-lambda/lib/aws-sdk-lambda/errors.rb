# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lambda
  module Errors

    extend Aws::Errors::DynamicErrors

    class CodeStorageExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::CodeStorageExceededException] data
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

    class EC2AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::EC2AccessDeniedException] data
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

    class EC2ThrottledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::EC2ThrottledException] data
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

    class EC2UnexpectedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::EC2UnexpectedException] data
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

      # @return [String]
      def ec2_error_code
        @data[:ec2_error_code]
      end

    end

    class ENILimitReachedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::ENILimitReachedException] data
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

    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::InvalidParameterValueException] data
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
      # @param [Aws::Lambda::Types::InvalidRequestContentException] data
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

    class InvalidRuntimeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::InvalidRuntimeException] data
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

    class InvalidSecurityGroupIDException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::InvalidSecurityGroupIDException] data
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

    class InvalidSubnetIDException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::InvalidSubnetIDException] data
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

    class InvalidZipFileException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::InvalidZipFileException] data
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

    class KMSAccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::KMSAccessDeniedException] data
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

    class KMSDisabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::KMSDisabledException] data
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

    class KMSInvalidStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::KMSInvalidStateException] data
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

    class KMSNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::KMSNotFoundException] data
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

    class PolicyLengthExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::PolicyLengthExceededException] data
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

    class PreconditionFailedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::PreconditionFailedException] data
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

    class RequestTooLargeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::RequestTooLargeException] data
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

    class ResourceConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::ResourceConflictException] data
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

    class ResourceInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::ResourceInUseException] data
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
      # @param [Aws::Lambda::Types::ResourceNotFoundException] data
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
      # @param [Aws::Lambda::Types::ServiceException] data
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

    class SubnetIPAddressLimitReachedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::SubnetIPAddressLimitReachedException] data
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

    class TooManyRequestsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::TooManyRequestsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      # @return [String]
      def type
        @data[:type]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def reason
        @data[:reason]
      end

    end

    class UnsupportedMediaTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lambda::Types::UnsupportedMediaTypeException] data
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
