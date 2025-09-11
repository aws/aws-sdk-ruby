# frozen_string_literal: true

# This is generated code!

module Aws::EFS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::EFS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EFS::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {AccessPointAlreadyExists}
  # * {AccessPointLimitExceeded}
  # * {AccessPointNotFound}
  # * {AvailabilityZonesMismatch}
  # * {BadRequest}
  # * {ConflictException}
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
  # * {ReplicationAlreadyExists}
  # * {ReplicationNotFound}
  # * {SecurityGroupLimitExceeded}
  # * {SecurityGroupNotFound}
  # * {SubnetNotFound}
  # * {ThrottlingException}
  # * {ThroughputLimitExceeded}
  # * {TooManyRequests}
  # * {UnsupportedAvailabilityZone}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Returned if the access point that you are trying to create already exists, with the
    #             creation token you provided in the request.</p>
    class AccessPointAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::AccessPointAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end

      def access_point_id
        @data[:access_point_id]
      end
    end

    # <p>Returned if the Amazon Web Services account has already created the maximum number of access points
    #             allowed per file system. For more informaton, see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#limits-efs-resources-per-account-per-region">https://docs.aws.amazon.com/efs/latest/ug/limits.html#limits-efs-resources-per-account-per-region</a>.</p>
    class AccessPointLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::AccessPointLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the specified <code>AccessPointId</code> value doesn't exist in the
    #             requester's Amazon Web Services account.</p>
    class AccessPointNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::AccessPointNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the Availability Zone that was specified for a mount target is 
    #             different from the Availability Zone that was specified for One Zone storage.
    #             For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html">Regional and One Zone storage redundancy</a>.</p>
    class AvailabilityZonesMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::AvailabilityZonesMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the request is malformed or contains an error such as an invalid
    #             parameter value or a missing required parameter.</p>
    class BadRequest < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::BadRequest] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the source file system in a replication is encrypted but the destination file system is unencrypted.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The service timed out trying to fulfill the request, and the client should try the
    #             call again.</p>
    class DependencyTimeout < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::DependencyTimeout] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the file system you are trying to create already exists, with the
    #             creation token you provided.</p>
    class FileSystemAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::FileSystemAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end

      def file_system_id
        @data[:file_system_id]
      end
    end

    # <p>Returned if a file system has mount targets.</p>
    class FileSystemInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::FileSystemInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the Amazon Web Services account has already created the maximum number of file systems
    #             allowed per account.</p>
    class FileSystemLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::FileSystemLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the specified <code>FileSystemId</code> value doesn't exist in the
    #             requester's Amazon Web Services account.</p>
    class FileSystemNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::FileSystemNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the file system's lifecycle state is not "available".</p>
    class IncorrectFileSystemLifeCycleState < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::IncorrectFileSystemLifeCycleState] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the mount target is not in the correct state for the
    #             operation.</p>
    class IncorrectMountTargetState < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::IncorrectMountTargetState] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if there's not enough capacity to provision additional throughput. This value
    #             might be returned when you try to create a file system in provisioned throughput mode,
    #             when you attempt to increase the provisioned throughput of an existing file system, or
    #             when you attempt to change an existing file system from Bursting Throughput to
    #             Provisioned Throughput mode. Try again later.</p>
    class InsufficientThroughputCapacity < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::InsufficientThroughputCapacity] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if an error occurred on the server side.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the <code>FileSystemPolicy</code> is malformed or contains an error such
    #             as a parameter value that is not valid or a missing required parameter. Returned in the
    #             case of a policy lockout safety check error.</p>
    class InvalidPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::InvalidPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the request specified an <code>IpAddress</code> that is already in use
    #             in the subnet.</p>
    class IpAddressInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::IpAddressInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the mount target would violate one of the specified restrictions based
    #             on the file system's existing mount targets.</p>
    class MountTargetConflict < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::MountTargetConflict] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if there is no mount target with the specified ID found in the
    #             caller's Amazon Web Services account.</p>
    class MountTargetNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::MountTargetNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The calling account has reached the limit for elastic network interfaces for the
    #             specific Amazon Web Services Region. Either delete some network interfaces or request
    #             that the account quota be raised. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html">Amazon VPC Quotas</a>
    #             in the <i>Amazon VPC User Guide</i> (see the <b>Network
    #                 interfaces per Region</b> entry in the <b>Network
    #                 interfaces</b> table). </p>
    class NetworkInterfaceLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::NetworkInterfaceLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if <code>IpAddress</code> was not specified in the request and there are
    #             no free IP addresses in the subnet.</p>
    class NoFreeAddressesInSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::NoFreeAddressesInSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if <code>no backup</code> is specified for a One Zone EFS file system.</p>
    class PolicyNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::PolicyNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the file system is already included in a replication configuration.></p>
    class ReplicationAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::ReplicationAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the specified file system does not have a replication
    #             configuration.</p>
    class ReplicationNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::ReplicationNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>ReplicationNotFound</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the number of <code>SecurityGroups</code> specified in the request is
    #             greater than the limit, which is based on account quota.  Either delete some security groups
    #             or request that the account quota be raised. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html">Amazon VPC Quotas</a>
    #             in the <i>Amazon VPC User Guide</i> (see the <b>Security Groups</b>
    #             table).
    #         </p>
    class SecurityGroupLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::SecurityGroupLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if one of the specified security groups doesn't exist in the subnet's
    #             virtual private cloud (VPC).</p>
    class SecurityGroupNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::SecurityGroupNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the
    #             request.</p>
    class SubnetNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::SubnetNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned when the <code>CreateAccessPoint</code> API action is called too quickly and 
    #             the number of Access Points on the file system is nearing the 
    #             <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#limits-efs-resources-per-account-per-region">limit of 120</a>.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the throughput mode or amount of provisioned throughput can't be changed
    #             because the throughput limit of 1024 MiB/s has been reached.</p>
    class ThroughputLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::ThroughputLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if you don’t wait at least 24 hours before either changing the throughput mode, or
    #             decreasing the Provisioned Throughput value.</p>
    class TooManyRequests < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::TooManyRequests] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the requested Amazon EFS functionality is not available in the specified Availability Zone.</p>
    class UnsupportedAvailabilityZone < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::UnsupportedAvailabilityZone] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if the Backup service is not available in the Amazon Web Services Region in which the request was made.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EFS::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end
  end
end
