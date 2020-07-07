# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EFS

  # When EFS returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::EFS::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all EFS errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EFS::Errors::ServiceError
  #       # rescues all EFS API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessPointAlreadyExists}
  # * {AccessPointLimitExceeded}
  # * {AccessPointNotFound}
  # * {BadRequest}
  # * {DependencyTimeout}
  # * {FileSystemAlreadyExists}
  # * {FileSystemInUse}
  # * {FileSystemLimitExceeded}
  # * {FileSystemNotFound}
  # * {IncorrectFileSystemLifeCycleState}
  # * {IncorrectMountTargetState}
  # * {InsufficientThroughputCapacity}
  # * {InternalServerError}
  # * {InvalidPolicyException}
  # * {IpAddressInUse}
  # * {MountTargetConflict}
  # * {MountTargetNotFound}
  # * {NetworkInterfaceLimitExceeded}
  # * {NoFreeAddressesInSubnet}
  # * {PolicyNotFound}
  # * {SecurityGroupLimitExceeded}
  # * {SecurityGroupNotFound}
  # * {SubnetNotFound}
  # * {ThroughputLimitExceeded}
  # * {TooManyRequests}
  # * {UnsupportedAvailabilityZone}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessPointAlreadyExists < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::AccessPointAlreadyExists] data
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
      def access_point_id
        @data[:access_point_id]
      end
    end

    class AccessPointLimitExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::AccessPointLimitExceeded] data
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

    class AccessPointNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::AccessPointNotFound] data
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

    class InvalidPolicyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::InvalidPolicyException] data
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

    class PolicyNotFound < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::PolicyNotFound] data
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

    class ValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::EFS::Types::ValidationException] data
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
