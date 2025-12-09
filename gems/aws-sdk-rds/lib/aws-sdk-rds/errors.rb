# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
  #    * This error class is not used. `AuthorizationAlreadyExists` is used during parsing instead.
  # * {AuthorizationNotFoundFault}
  #    * This error class is not used. `AuthorizationNotFound` is used during parsing instead.
  # * {AuthorizationQuotaExceededFault}
  #    * This error class is not used. `AuthorizationQuotaExceeded` is used during parsing instead.
  # * {BackupPolicyNotFoundFault}
  # * {BlueGreenDeploymentAlreadyExistsFault}
  # * {BlueGreenDeploymentNotFoundFault}
  # * {CertificateNotFoundFault}
  #    * This error class is not used. `CertificateNotFound` is used during parsing instead.
  # * {CreateCustomDBEngineVersionFault}
  # * {CustomAvailabilityZoneNotFoundFault}
  #    * This error class is not used. `CustomAvailabilityZoneNotFound` is used during parsing instead.
  # * {CustomDBEngineVersionAlreadyExistsFault}
  # * {CustomDBEngineVersionNotFoundFault}
  # * {CustomDBEngineVersionQuotaExceededFault}
  # * {DBClusterAlreadyExistsFault}
  # * {DBClusterAutomatedBackupNotFoundFault}
  # * {DBClusterAutomatedBackupQuotaExceededFault}
  # * {DBClusterBacktrackNotFoundFault}
  # * {DBClusterEndpointAlreadyExistsFault}
  # * {DBClusterEndpointNotFoundFault}
  # * {DBClusterEndpointQuotaExceededFault}
  # * {DBClusterNotFoundFault}
  # * {DBClusterParameterGroupNotFoundFault}
  #    * This error class is not used. `DBClusterParameterGroupNotFound` is used during parsing instead.
  # * {DBClusterQuotaExceededFault}
  # * {DBClusterRoleAlreadyExistsFault}
  #    * This error class is not used. `DBClusterRoleAlreadyExists` is used during parsing instead.
  # * {DBClusterRoleNotFoundFault}
  #    * This error class is not used. `DBClusterRoleNotFound` is used during parsing instead.
  # * {DBClusterRoleQuotaExceededFault}
  #    * This error class is not used. `DBClusterRoleQuotaExceeded` is used during parsing instead.
  # * {DBClusterSnapshotAlreadyExistsFault}
  # * {DBClusterSnapshotNotFoundFault}
  # * {DBInstanceAlreadyExistsFault}
  #    * This error class is not used. `DBInstanceAlreadyExists` is used during parsing instead.
  # * {DBInstanceAutomatedBackupNotFoundFault}
  #    * This error class is not used. `DBInstanceAutomatedBackupNotFound` is used during parsing instead.
  # * {DBInstanceAutomatedBackupQuotaExceededFault}
  #    * This error class is not used. `DBInstanceAutomatedBackupQuotaExceeded` is used during parsing instead.
  # * {DBInstanceNotFoundFault}
  #    * This error class is not used. `DBInstanceNotFound` is used during parsing instead.
  # * {DBInstanceNotReadyFault}
  #    * This error class is not used. `DBInstanceNotReady` is used during parsing instead.
  # * {DBInstanceRoleAlreadyExistsFault}
  #    * This error class is not used. `DBInstanceRoleAlreadyExists` is used during parsing instead.
  # * {DBInstanceRoleNotFoundFault}
  #    * This error class is not used. `DBInstanceRoleNotFound` is used during parsing instead.
  # * {DBInstanceRoleQuotaExceededFault}
  #    * This error class is not used. `DBInstanceRoleQuotaExceeded` is used during parsing instead.
  # * {DBLogFileNotFoundFault}
  # * {DBParameterGroupAlreadyExistsFault}
  #    * This error class is not used. `DBParameterGroupAlreadyExists` is used during parsing instead.
  # * {DBParameterGroupNotFoundFault}
  #    * This error class is not used. `DBParameterGroupNotFound` is used during parsing instead.
  # * {DBParameterGroupQuotaExceededFault}
  #    * This error class is not used. `DBParameterGroupQuotaExceeded` is used during parsing instead.
  # * {DBProxyAlreadyExistsFault}
  # * {DBProxyEndpointAlreadyExistsFault}
  # * {DBProxyEndpointNotFoundFault}
  # * {DBProxyEndpointQuotaExceededFault}
  # * {DBProxyNotFoundFault}
  # * {DBProxyQuotaExceededFault}
  # * {DBProxyTargetAlreadyRegisteredFault}
  # * {DBProxyTargetGroupNotFoundFault}
  # * {DBProxyTargetNotFoundFault}
  # * {DBSecurityGroupAlreadyExistsFault}
  #    * This error class is not used. `DBSecurityGroupAlreadyExists` is used during parsing instead.
  # * {DBSecurityGroupNotFoundFault}
  #    * This error class is not used. `DBSecurityGroupNotFound` is used during parsing instead.
  # * {DBSecurityGroupNotSupportedFault}
  #    * This error class is not used. `DBSecurityGroupNotSupported` is used during parsing instead.
  # * {DBSecurityGroupQuotaExceededFault}
  #    * This error class is not used. `QuotaExceeded.DBSecurityGroup` is used during parsing instead.
  # * {DBShardGroupAlreadyExistsFault}
  #    * This error class is not used. `DBShardGroupAlreadyExists` is used during parsing instead.
  # * {DBShardGroupNotFoundFault}
  #    * This error class is not used. `DBShardGroupNotFound` is used during parsing instead.
  # * {DBSnapshotAlreadyExistsFault}
  #    * This error class is not used. `DBSnapshotAlreadyExists` is used during parsing instead.
  # * {DBSnapshotNotFoundFault}
  #    * This error class is not used. `DBSnapshotNotFound` is used during parsing instead.
  # * {DBSnapshotTenantDatabaseNotFoundFault}
  # * {DBSubnetGroupAlreadyExistsFault}
  #    * This error class is not used. `DBSubnetGroupAlreadyExists` is used during parsing instead.
  # * {DBSubnetGroupDoesNotCoverEnoughAZs}
  # * {DBSubnetGroupNotAllowedFault}
  # * {DBSubnetGroupNotFoundFault}
  # * {DBSubnetGroupQuotaExceededFault}
  #    * This error class is not used. `DBSubnetGroupQuotaExceeded` is used during parsing instead.
  # * {DBSubnetQuotaExceededFault}
  # * {DBUpgradeDependencyFailureFault}
  #    * This error class is not used. `DBUpgradeDependencyFailure` is used during parsing instead.
  # * {DomainNotFoundFault}
  # * {Ec2ImagePropertiesNotSupportedFault}
  # * {EventSubscriptionQuotaExceededFault}
  #    * This error class is not used. `EventSubscriptionQuotaExceeded` is used during parsing instead.
  # * {ExportTaskAlreadyExistsFault}
  #    * This error class is not used. `ExportTaskAlreadyExists` is used during parsing instead.
  # * {ExportTaskNotFoundFault}
  #    * This error class is not used. `ExportTaskNotFound` is used during parsing instead.
  # * {GlobalClusterAlreadyExistsFault}
  # * {GlobalClusterNotFoundFault}
  # * {GlobalClusterQuotaExceededFault}
  # * {IamRoleMissingPermissionsFault}
  #    * This error class is not used. `IamRoleMissingPermissions` is used during parsing instead.
  # * {IamRoleNotFoundFault}
  #    * This error class is not used. `IamRoleNotFound` is used during parsing instead.
  # * {InstanceQuotaExceededFault}
  #    * This error class is not used. `InstanceQuotaExceeded` is used during parsing instead.
  # * {InsufficientAvailableIPsInSubnetFault}
  # * {InsufficientDBClusterCapacityFault}
  # * {InsufficientDBInstanceCapacityFault}
  #    * This error class is not used. `InsufficientDBInstanceCapacity` is used during parsing instead.
  # * {InsufficientStorageClusterCapacityFault}
  #    * This error class is not used. `InsufficientStorageClusterCapacity` is used during parsing instead.
  # * {IntegrationAlreadyExistsFault}
  # * {IntegrationConflictOperationFault}
  # * {IntegrationNotFoundFault}
  # * {IntegrationQuotaExceededFault}
  # * {InvalidBlueGreenDeploymentStateFault}
  # * {InvalidCustomDBEngineVersionStateFault}
  # * {InvalidDBClusterAutomatedBackupStateFault}
  # * {InvalidDBClusterCapacityFault}
  # * {InvalidDBClusterEndpointStateFault}
  # * {InvalidDBClusterSnapshotStateFault}
  # * {InvalidDBClusterStateFault}
  # * {InvalidDBInstanceAutomatedBackupStateFault}
  #    * This error class is not used. `InvalidDBInstanceAutomatedBackupState` is used during parsing instead.
  # * {InvalidDBInstanceStateFault}
  #    * This error class is not used. `InvalidDBInstanceState` is used during parsing instead.
  # * {InvalidDBParameterGroupStateFault}
  #    * This error class is not used. `InvalidDBParameterGroupState` is used during parsing instead.
  # * {InvalidDBProxyEndpointStateFault}
  # * {InvalidDBProxyStateFault}
  # * {InvalidDBSecurityGroupStateFault}
  #    * This error class is not used. `InvalidDBSecurityGroupState` is used during parsing instead.
  # * {InvalidDBShardGroupStateFault}
  #    * This error class is not used. `InvalidDBShardGroupState` is used during parsing instead.
  # * {InvalidDBSnapshotStateFault}
  #    * This error class is not used. `InvalidDBSnapshotState` is used during parsing instead.
  # * {InvalidDBSubnetGroupFault}
  # * {InvalidDBSubnetGroupStateFault}
  # * {InvalidDBSubnetStateFault}
  # * {InvalidEventSubscriptionStateFault}
  #    * This error class is not used. `InvalidEventSubscriptionState` is used during parsing instead.
  # * {InvalidExportOnlyFault}
  #    * This error class is not used. `InvalidExportOnly` is used during parsing instead.
  # * {InvalidExportSourceStateFault}
  #    * This error class is not used. `InvalidExportSourceState` is used during parsing instead.
  # * {InvalidExportTaskStateFault}
  # * {InvalidGlobalClusterStateFault}
  # * {InvalidIntegrationStateFault}
  # * {InvalidOptionGroupStateFault}
  # * {InvalidResourceStateFault}
  # * {InvalidRestoreFault}
  # * {InvalidS3BucketFault}
  # * {InvalidSubnet}
  # * {InvalidVPCNetworkStateFault}
  # * {KMSKeyNotAccessibleFault}
  # * {MaxDBShardGroupLimitReached}
  # * {NetworkTypeNotSupported}
  # * {OptionGroupAlreadyExistsFault}
  # * {OptionGroupNotFoundFault}
  # * {OptionGroupQuotaExceededFault}
  # * {PointInTimeRestoreNotEnabledFault}
  #    * This error class is not used. `PointInTimeRestoreNotEnabled` is used during parsing instead.
  # * {ProvisionedIopsNotAvailableInAZFault}
  # * {ReservedDBInstanceAlreadyExistsFault}
  #    * This error class is not used. `ReservedDBInstanceAlreadyExists` is used during parsing instead.
  # * {ReservedDBInstanceNotFoundFault}
  #    * This error class is not used. `ReservedDBInstanceNotFound` is used during parsing instead.
  # * {ReservedDBInstanceQuotaExceededFault}
  #    * This error class is not used. `ReservedDBInstanceQuotaExceeded` is used during parsing instead.
  # * {ReservedDBInstancesOfferingNotFoundFault}
  #    * This error class is not used. `ReservedDBInstancesOfferingNotFound` is used during parsing instead.
  # * {ResourceNotFoundFault}
  # * {SNSInvalidTopicFault}
  #    * This error class is not used. `SNSInvalidTopic` is used during parsing instead.
  # * {SNSNoAuthorizationFault}
  #    * This error class is not used. `SNSNoAuthorization` is used during parsing instead.
  # * {SNSTopicArnNotFoundFault}
  #    * This error class is not used. `SNSTopicArnNotFound` is used during parsing instead.
  # * {SharedSnapshotQuotaExceededFault}
  #    * This error class is not used. `SharedSnapshotQuotaExceeded` is used during parsing instead.
  # * {SnapshotQuotaExceededFault}
  #    * This error class is not used. `SnapshotQuotaExceeded` is used during parsing instead.
  # * {SourceClusterNotSupportedFault}
  # * {SourceDatabaseNotSupportedFault}
  # * {SourceNotFoundFault}
  #    * This error class is not used. `SourceNotFound` is used during parsing instead.
  # * {StorageQuotaExceededFault}
  #    * This error class is not used. `StorageQuotaExceeded` is used during parsing instead.
  # * {StorageTypeNotAvailableFault}
  # * {StorageTypeNotSupportedFault}
  #    * This error class is not used. `StorageTypeNotSupported` is used during parsing instead.
  # * {SubnetAlreadyInUse}
  # * {SubscriptionAlreadyExistFault}
  #    * This error class is not used. `SubscriptionAlreadyExist` is used during parsing instead.
  # * {SubscriptionCategoryNotFoundFault}
  #    * This error class is not used. `SubscriptionCategoryNotFound` is used during parsing instead.
  # * {SubscriptionNotFoundFault}
  #    * This error class is not used. `SubscriptionNotFound` is used during parsing instead.
  # * {TenantDatabaseAlreadyExistsFault}
  #    * This error class is not used. `TenantDatabaseAlreadyExists` is used during parsing instead.
  # * {TenantDatabaseNotFoundFault}
  #    * This error class is not used. `TenantDatabaseNotFound` is used during parsing instead.
  # * {TenantDatabaseQuotaExceededFault}
  #    * This error class is not used. `TenantDatabaseQuotaExceeded` is used during parsing instead.
  # * {UnsupportedDBEngineVersionFault}
  #    * This error class is not used. `UnsupportedDBEngineVersion` is used during parsing instead.
  # * {VpcEncryptionControlViolationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationAlreadyExists` instead.
    class AuthorizationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationNotFound` instead.
    class AuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::AuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationQuotaExceeded` instead.
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

    class BlueGreenDeploymentAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::BlueGreenDeploymentAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BlueGreenDeploymentNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::BlueGreenDeploymentNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CertificateNotFound` instead.
    class CertificateNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CertificateNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CreateCustomDBEngineVersionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CreateCustomDBEngineVersionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CustomAvailabilityZoneNotFound` instead.
    class CustomAvailabilityZoneNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomAvailabilityZoneNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomDBEngineVersionAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomDBEngineVersionAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomDBEngineVersionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomDBEngineVersionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomDBEngineVersionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::CustomDBEngineVersionQuotaExceededFault] data
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

    class DBClusterAutomatedBackupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterAutomatedBackupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterAutomatedBackupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterAutomatedBackupQuotaExceededFault] data
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBClusterParameterGroupNotFound` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBClusterRoleAlreadyExists` instead.
    class DBClusterRoleAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterRoleAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBClusterRoleNotFound` instead.
    class DBClusterRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBClusterRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBClusterRoleQuotaExceeded` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceAlreadyExists` instead.
    class DBInstanceAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceAutomatedBackupNotFound` instead.
    class DBInstanceAutomatedBackupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceAutomatedBackupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceAutomatedBackupQuotaExceeded` instead.
    class DBInstanceAutomatedBackupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceAutomatedBackupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceNotFound` instead.
    class DBInstanceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceNotReady` instead.
    class DBInstanceNotReadyFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceNotReadyFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceRoleAlreadyExists` instead.
    class DBInstanceRoleAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceRoleAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceRoleNotFound` instead.
    class DBInstanceRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBInstanceRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceRoleQuotaExceeded` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBParameterGroupAlreadyExists` instead.
    class DBParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBParameterGroupNotFound` instead.
    class DBParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBParameterGroupQuotaExceeded` instead.
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

    class DBProxyEndpointAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyEndpointAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyEndpointNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyEndpointNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBProxyEndpointQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBProxyEndpointQuotaExceededFault] data
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSecurityGroupAlreadyExists` instead.
    class DBSecurityGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSecurityGroupNotFound` instead.
    class DBSecurityGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSecurityGroupNotSupported` instead.
    class DBSecurityGroupNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `QuotaExceeded.DBSecurityGroup` instead.
    class DBSecurityGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSecurityGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBShardGroupAlreadyExists` instead.
    class DBShardGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBShardGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBShardGroupNotFound` instead.
    class DBShardGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBShardGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSnapshotAlreadyExists` instead.
    class DBSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSnapshotNotFound` instead.
    class DBSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSnapshotTenantDatabaseNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::DBSnapshotTenantDatabaseNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSubnetGroupAlreadyExists` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSubnetGroupQuotaExceeded` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DBUpgradeDependencyFailure` instead.
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

    class Ec2ImagePropertiesNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::Ec2ImagePropertiesNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EventSubscriptionQuotaExceeded` instead.
    class EventSubscriptionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ExportTaskAlreadyExists` instead.
    class ExportTaskAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ExportTaskAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ExportTaskNotFound` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `IamRoleMissingPermissions` instead.
    class IamRoleMissingPermissionsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IamRoleMissingPermissionsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `IamRoleNotFound` instead.
    class IamRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IamRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InstanceQuotaExceeded` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientDBInstanceCapacity` instead.
    class InsufficientDBInstanceCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InsufficientDBInstanceCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientStorageClusterCapacity` instead.
    class InsufficientStorageClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InsufficientStorageClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IntegrationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationConflictOperationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IntegrationConflictOperationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IntegrationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::IntegrationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidBlueGreenDeploymentStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidBlueGreenDeploymentStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidCustomDBEngineVersionStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidCustomDBEngineVersionStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterAutomatedBackupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBClusterAutomatedBackupStateFault] data
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBInstanceAutomatedBackupState` instead.
    class InvalidDBInstanceAutomatedBackupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBInstanceAutomatedBackupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBInstanceState` instead.
    class InvalidDBInstanceStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBInstanceStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBParameterGroupState` instead.
    class InvalidDBParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBProxyEndpointStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBProxyEndpointStateFault] data
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBSecurityGroupState` instead.
    class InvalidDBSecurityGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBSecurityGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBShardGroupState` instead.
    class InvalidDBShardGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidDBShardGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBSnapshotState` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidEventSubscriptionState` instead.
    class InvalidEventSubscriptionStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidEventSubscriptionStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidExportOnly` instead.
    class InvalidExportOnlyFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidExportOnlyFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidExportSourceState` instead.
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

    class InvalidIntegrationStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidIntegrationStateFault] data
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

    class InvalidResourceStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::InvalidResourceStateFault] data
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

    class MaxDBShardGroupLimitReached < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::MaxDBShardGroupLimitReached] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NetworkTypeNotSupported < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::NetworkTypeNotSupported] data
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

    # @deprecated This error class is not used during parsing.
    #   Please use `PointInTimeRestoreNotEnabled` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedDBInstanceAlreadyExists` instead.
    class ReservedDBInstanceAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstanceAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedDBInstanceNotFound` instead.
    class ReservedDBInstanceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstanceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedDBInstanceQuotaExceeded` instead.
    class ReservedDBInstanceQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::ReservedDBInstanceQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedDBInstancesOfferingNotFound` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSInvalidTopic` instead.
    class SNSInvalidTopicFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SNSInvalidTopicFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSNoAuthorization` instead.
    class SNSNoAuthorizationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SNSNoAuthorizationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSTopicArnNotFound` instead.
    class SNSTopicArnNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SharedSnapshotQuotaExceeded` instead.
    class SharedSnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SharedSnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SnapshotQuotaExceeded` instead.
    class SnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SourceClusterNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SourceClusterNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SourceDatabaseNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SourceDatabaseNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SourceNotFound` instead.
    class SourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `StorageQuotaExceeded` instead.
    class StorageQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::StorageQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class StorageTypeNotAvailableFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::StorageTypeNotAvailableFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `StorageTypeNotSupported` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionAlreadyExist` instead.
    class SubscriptionAlreadyExistFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionCategoryNotFound` instead.
    class SubscriptionCategoryNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionNotFound` instead.
    class SubscriptionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::SubscriptionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TenantDatabaseAlreadyExists` instead.
    class TenantDatabaseAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::TenantDatabaseAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TenantDatabaseNotFound` instead.
    class TenantDatabaseNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::TenantDatabaseNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TenantDatabaseQuotaExceeded` instead.
    class TenantDatabaseQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::TenantDatabaseQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UnsupportedDBEngineVersion` instead.
    class UnsupportedDBEngineVersionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::UnsupportedDBEngineVersionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class VpcEncryptionControlViolationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::RDS::Types::VpcEncryptionControlViolationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
