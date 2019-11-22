# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EFS
  module Errors

    extend Aws::Errors::DynamicErrors

    class BadRequest < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::BadRequest] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class DependencyTimeout < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::DependencyTimeout] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FileSystemAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::FileSystemAlreadyExists] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def file_system_id
        @data[:file_system_id]
      end

    end

    class FileSystemInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::FileSystemInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FileSystemLimitExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::FileSystemLimitExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class FileSystemNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::FileSystemNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class IncorrectFileSystemLifeCycleState < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::IncorrectFileSystemLifeCycleState] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class IncorrectMountTargetState < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::IncorrectMountTargetState] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InsufficientThroughputCapacity < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::InsufficientThroughputCapacity] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class InternalServerError < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::InternalServerError] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class IpAddressInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::IpAddressInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class MountTargetConflict < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::MountTargetConflict] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class MountTargetNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::MountTargetNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NetworkInterfaceLimitExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::NetworkInterfaceLimitExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class NoFreeAddressesInSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::NoFreeAddressesInSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class SecurityGroupLimitExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::SecurityGroupLimitExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class SecurityGroupNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::SecurityGroupNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class SubnetNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::SubnetNotFound] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class ThroughputLimitExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::ThroughputLimitExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class TooManyRequests < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::TooManyRequests] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

    class UnsupportedAvailabilityZone < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::UnsupportedAvailabilityZone] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

    end

  end
end
