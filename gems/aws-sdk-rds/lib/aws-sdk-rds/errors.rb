# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  # When RDS returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::RDS::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all RDS errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::RDS::Errors::ServiceError
  #       # rescues all RDS API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AuthorizationAlreadyExistsFault}
  # * {AuthorizationNotFoundFault}
  # * {AuthorizationQuotaExceededFault}
  # * {BackupPolicyNotFoundFault}
  # * {CertificateNotFoundFault}
  # * {CustomAvailabilityZoneAlreadyExistsFault}
  # * {CustomAvailabilityZoneNotFoundFault}
  # * {CustomAvailabilityZoneQuotaExceededFault}
  # * {DBClusterAlreadyExistsFault}
  # * {DBClusterBacktrackNotFoundFault}
  # * {DBClusterEndpointAlreadyExistsFault}
  # * {DBClusterEndpointNotFoundFault}
  # * {DBClusterEndpointQuotaExceededFault}
  # * {DBClusterNotFoundFault}
  # * {DBClusterParameterGroupNotFoundFault}
  # * {DBClusterQuotaExceededFault}
  # * {DBClusterRoleAlreadyExistsFault}
  # * {DBClusterRoleNotFoundFault}
  # * {DBClusterRoleQuotaExceededFault}
  # * {DBClusterSnapshotAlreadyExistsFault}
  # * {DBClusterSnapshotNotFoundFault}
  # * {DBInstanceAlreadyExistsFault}
  # * {DBInstanceAutomatedBackupNotFoundFault}
  # * {DBInstanceAutomatedBackupQuotaExceededFault}
  # * {DBInstanceNotFoundFault}
  # * {DBInstanceRoleAlreadyExistsFault}
  # * {DBInstanceRoleNotFoundFault}
  # * {DBInstanceRoleQuotaExceededFault}
  # * {DBLogFileNotFoundFault}
  # * {DBParameterGroupAlreadyExistsFault}
  # * {DBParameterGroupNotFoundFault}
  # * {DBParameterGroupQuotaExceededFault}
  # * {DBProxyAlreadyExistsFault}
  # * {DBProxyNotFoundFault}
  # * {DBProxyQuotaExceededFault}
  # * {DBProxyTargetAlreadyRegisteredFault}
  # * {DBProxyTargetGroupNotFoundFault}
  # * {DBProxyTargetNotFoundFault}
  # * {DBSecurityGroupAlreadyExistsFault}
  # * {DBSecurityGroupNotFoundFault}
  # * {DBSecurityGroupNotSupportedFault}
  # * {DBSecurityGroupQuotaExceededFault}
  # * {DBSnapshotAlreadyExistsFault}
  # * {DBSnapshotNotFoundFault}
  # * {DBSubnetGroupAlreadyExistsFault}
  # * {DBSubnetGroupDoesNotCoverEnoughAZs}
  # * {DBSubnetGroupNotAllowedFault}
  # * {DBSubnetGroupNotFoundFault}
  # * {DBSubnetGroupQuotaExceededFault}
  # * {DBSubnetQuotaExceededFault}
  # * {DBUpgradeDependencyFailureFault}
  # * {DomainNotFoundFault}
  # * {EventSubscriptionQuotaExceededFault}
  # * {ExportTaskAlreadyExistsFault}
  # * {ExportTaskNotFoundFault}
  # * {GlobalClusterAlreadyExistsFault}
  # * {GlobalClusterNotFoundFault}
  # * {GlobalClusterQuotaExceededFault}
  # * {IamRoleMissingPermissionsFault}
  # * {IamRoleNotFoundFault}
  # * {InstallationMediaAlreadyExistsFault}
  # * {InstallationMediaNotFoundFault}
  # * {InstanceQuotaExceededFault}
  # * {InsufficientAvailableIPsInSubnetFault}
  # * {InsufficientDBClusterCapacityFault}
  # * {InsufficientDBInstanceCapacityFault}
  # * {InsufficientStorageClusterCapacityFault}
  # * {InvalidDBClusterCapacityFault}
  # * {InvalidDBClusterEndpointStateFault}
  # * {InvalidDBClusterSnapshotStateFault}
  # * {InvalidDBClusterStateFault}
  # * {InvalidDBInstanceAutomatedBackupStateFault}
  # * {InvalidDBInstanceStateFault}
  # * {InvalidDBParameterGroupStateFault}
  # * {InvalidDBProxyStateFault}
  # * {InvalidDBSecurityGroupStateFault}
  # * {InvalidDBSnapshotStateFault}
  # * {InvalidDBSubnetGroupFault}
  # * {InvalidDBSubnetGroupStateFault}
  # * {InvalidDBSubnetStateFault}
  # * {InvalidEventSubscriptionStateFault}
  # * {InvalidExportOnlyFault}
  # * {InvalidExportSourceStateFault}
  # * {InvalidExportTaskStateFault}
  # * {InvalidGlobalClusterStateFault}
  # * {InvalidOptionGroupStateFault}
  # * {InvalidRestoreFault}
  # * {InvalidS3BucketFault}
  # * {InvalidSubnet}
  # * {InvalidVPCNetworkStateFault}
  # * {KMSKeyNotAccessibleFault}
  # * {OptionGroupAlreadyExistsFault}
  # * {OptionGroupNotFoundFault}
  # * {OptionGroupQuotaExceededFault}
  # * {PointInTimeRestoreNotEnabledFault}
  # * {ProvisionedIopsNotAvailableInAZFault}
  # * {ReservedDBInstanceAlreadyExistsFault}
  # * {ReservedDBInstanceNotFoundFault}
  # * {ReservedDBInstanceQuotaExceededFault}
  # * {ReservedDBInstancesOfferingNotFoundFault}
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

    class AuthorizationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::AuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AuthorizationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::AuthorizationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BackupPolicyNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::BackupPolicyNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CertificateNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CertificateNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomAvailabilityZoneAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomAvailabilityZoneAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomAvailabilityZoneNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomAvailabilityZoneNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomAvailabilityZoneQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomAvailabilityZoneQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterBacktrackNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterBacktrackNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterEndpointAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterEndpointAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterEndpointNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterEndpointNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterEndpointQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterEndpointQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterRoleAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterRoleAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterRoleQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterRoleQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceAutomatedBackupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceAutomatedBackupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceAutomatedBackupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceAutomatedBackupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceRoleAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceRoleAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBInstanceRoleQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceRoleQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBLogFileNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBLogFileNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBParameterGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBParameterGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyTargetAlreadyRegisteredFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyTargetAlreadyRegisteredFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyTargetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyTargetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyTargetNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyTargetNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSecurityGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSecurityGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSecurityGroupNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSecurityGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSubnetGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupDoesNotCoverEnoughAZs < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSubnetGroupDoesNotCoverEnoughAZs] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupNotAllowedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSubnetGroupNotAllowedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSubnetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSubnetGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSubnetQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBUpgradeDependencyFailureFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBUpgradeDependencyFailureFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DomainNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DomainNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class EventSubscriptionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ExportTaskAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ExportTaskAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ExportTaskNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ExportTaskNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::GlobalClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::GlobalClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalClusterQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::GlobalClusterQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IamRoleMissingPermissionsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IamRoleMissingPermissionsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IamRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IamRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstallationMediaAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InstallationMediaAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstallationMediaNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InstallationMediaNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InstanceQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientAvailableIPsInSubnetFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InsufficientAvailableIPsInSubnetFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDBClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InsufficientDBClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDBInstanceCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InsufficientDBInstanceCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientStorageClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InsufficientStorageClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterEndpointStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBClusterEndpointStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBClusterSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBInstanceAutomatedBackupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBInstanceAutomatedBackupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBInstanceStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBInstanceStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBProxyStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBProxyStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSecurityGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBSecurityGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetGroupFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBSubnetGroupFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBSubnetGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBSubnetStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEventSubscriptionStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidEventSubscriptionStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidExportOnlyFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidExportOnlyFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidExportSourceStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidExportSourceStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidExportTaskStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidExportTaskStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidGlobalClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidGlobalClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidOptionGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidOptionGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRestoreFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidRestoreFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidS3BucketFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidS3BucketFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidVPCNetworkStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class KMSKeyNotAccessibleFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OptionGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::OptionGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OptionGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::OptionGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OptionGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::OptionGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class PointInTimeRestoreNotEnabledFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::PointInTimeRestoreNotEnabledFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ProvisionedIopsNotAvailableInAZFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ProvisionedIopsNotAvailableInAZFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReservedDBInstanceAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstanceAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReservedDBInstanceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstanceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReservedDBInstanceQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstanceQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReservedDBInstancesOfferingNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstancesOfferingNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ResourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SNSInvalidTopicFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SNSInvalidTopicFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SNSNoAuthorizationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SNSNoAuthorizationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SNSTopicArnNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SharedSnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SharedSnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StorageQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::StorageQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StorageTypeNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::StorageTypeNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetAlreadyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubnetAlreadyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubscriptionAlreadyExistFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubscriptionCategoryNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubscriptionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubscriptionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
