# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Neptune

  # When Neptune returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Neptune::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Neptune errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Neptune::Errors::ServiceError
  #       # rescues all Neptune API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AuthorizationNotFoundFault}
  # * {CertificateNotFoundFault}
  # * {DBClusterAlreadyExistsFault}
  # * {DBClusterNotFoundFault}
  # * {DBClusterParameterGroupNotFoundFault}
  # * {DBClusterQuotaExceededFault}
  # * {DBClusterRoleAlreadyExistsFault}
  # * {DBClusterRoleNotFoundFault}
  # * {DBClusterRoleQuotaExceededFault}
  # * {DBClusterSnapshotAlreadyExistsFault}
  # * {DBClusterSnapshotNotFoundFault}
  # * {DBInstanceAlreadyExistsFault}
  # * {DBInstanceNotFoundFault}
  # * {DBParameterGroupAlreadyExistsFault}
  # * {DBParameterGroupNotFoundFault}
  # * {DBParameterGroupQuotaExceededFault}
  # * {DBSecurityGroupNotFoundFault}
  # * {DBSnapshotAlreadyExistsFault}
  # * {DBSnapshotNotFoundFault}
  # * {DBSubnetGroupAlreadyExistsFault}
  # * {DBSubnetGroupDoesNotCoverEnoughAZs}
  # * {DBSubnetGroupNotFoundFault}
  # * {DBSubnetGroupQuotaExceededFault}
  # * {DBSubnetQuotaExceededFault}
  # * {DBUpgradeDependencyFailureFault}
  # * {DomainNotFoundFault}
  # * {EventSubscriptionQuotaExceededFault}
  # * {InstanceQuotaExceededFault}
  # * {InsufficientDBClusterCapacityFault}
  # * {InsufficientDBInstanceCapacityFault}
  # * {InsufficientStorageClusterCapacityFault}
  # * {InvalidDBClusterSnapshotStateFault}
  # * {InvalidDBClusterStateFault}
  # * {InvalidDBInstanceStateFault}
  # * {InvalidDBParameterGroupStateFault}
  # * {InvalidDBSecurityGroupStateFault}
  # * {InvalidDBSnapshotStateFault}
  # * {InvalidDBSubnetGroupStateFault}
  # * {InvalidDBSubnetStateFault}
  # * {InvalidEventSubscriptionStateFault}
  # * {InvalidRestoreFault}
  # * {InvalidSubnet}
  # * {InvalidVPCNetworkStateFault}
  # * {KMSKeyNotAccessibleFault}
  # * {OptionGroupNotFoundFault}
  # * {ProvisionedIopsNotAvailableInAZFault}
  # * {ResourceNotFoundFault}
  # * {SNSInvalidTopicFault}
  # * {SNSNoAuthorizationFault}
  # * {SNSTopicArnNotFoundFault}
  # * {SharedSnapshotQuotaExceededFault}
  # * {SnapshotQuotaExceededFault}
  # * {SourceNotFoundFault}
  # * {StorageQuotaExceededFault}
  # * {StorageTypeNotSupportedFault}
  # * {SubnetAlreadyInUse}
  # * {SubscriptionAlreadyExistFault}
  # * {SubscriptionCategoryNotFoundFault}
  # * {SubscriptionNotFoundFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::AuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CertificateNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::CertificateNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterRoleAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterRoleAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterRoleQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterRoleQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBClusterSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBInstanceAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBInstanceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBParameterGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBParameterGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSecurityGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSecurityGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSubnetGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupDoesNotCoverEnoughAZs < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSubnetGroupDoesNotCoverEnoughAZs] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSubnetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSubnetGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBSubnetQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBUpgradeDependencyFailureFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DBUpgradeDependencyFailureFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DomainNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::DomainNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class EventSubscriptionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InstanceQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDBClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InsufficientDBClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDBInstanceCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InsufficientDBInstanceCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientStorageClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InsufficientStorageClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBClusterSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBInstanceStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBInstanceStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSecurityGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBSecurityGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBSubnetGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidDBSubnetStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEventSubscriptionStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidEventSubscriptionStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRestoreFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidRestoreFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidVPCNetworkStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class KMSKeyNotAccessibleFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OptionGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::OptionGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ProvisionedIopsNotAvailableInAZFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::ProvisionedIopsNotAvailableInAZFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::ResourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SNSInvalidTopicFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SNSInvalidTopicFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SNSNoAuthorizationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SNSNoAuthorizationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SNSTopicArnNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SharedSnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SharedSnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StorageQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::StorageQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StorageTypeNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::StorageTypeNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetAlreadyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SubnetAlreadyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubscriptionAlreadyExistFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubscriptionCategoryNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubscriptionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Neptune::Types::SubscriptionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
