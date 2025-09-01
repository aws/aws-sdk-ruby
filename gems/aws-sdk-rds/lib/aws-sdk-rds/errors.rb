# frozen_string_literal: true

# This is generated code!

module Aws::RDS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::RDS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::RDS::Errors::ServiceError
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
  # * {AuthorizationAlreadyExistsFault}
  # * {AuthorizationNotFoundFault}
  # * {AuthorizationQuotaExceededFault}
  # * {BackupPolicyNotFoundFault}
  # * {BlueGreenDeploymentAlreadyExistsFault}
  # * {BlueGreenDeploymentNotFoundFault}
  # * {CertificateNotFoundFault}
  # * {CreateCustomDBEngineVersionFault}
  # * {CustomAvailabilityZoneNotFoundFault}
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
  # * {DBInstanceNotReadyFault}
  # * {DBInstanceRoleAlreadyExistsFault}
  # * {DBInstanceRoleNotFoundFault}
  # * {DBInstanceRoleQuotaExceededFault}
  # * {DBLogFileNotFoundFault}
  # * {DBParameterGroupAlreadyExistsFault}
  # * {DBParameterGroupNotFoundFault}
  # * {DBParameterGroupQuotaExceededFault}
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
  # * {DBSecurityGroupNotFoundFault}
  # * {DBSecurityGroupNotSupportedFault}
  # * {DBSecurityGroupQuotaExceededFault}
  # * {DBShardGroupAlreadyExistsFault}
  # * {DBShardGroupNotFoundFault}
  # * {DBSnapshotAlreadyExistsFault}
  # * {DBSnapshotNotFoundFault}
  # * {DBSnapshotTenantDatabaseNotFoundFault}
  # * {DBSubnetGroupAlreadyExistsFault}
  # * {DBSubnetGroupDoesNotCoverEnoughAZs}
  # * {DBSubnetGroupNotAllowedFault}
  # * {DBSubnetGroupNotFoundFault}
  # * {DBSubnetGroupQuotaExceededFault}
  # * {DBSubnetQuotaExceededFault}
  # * {DBUpgradeDependencyFailureFault}
  # * {DomainNotFoundFault}
  # * {Ec2ImagePropertiesNotSupportedFault}
  # * {EventSubscriptionQuotaExceededFault}
  # * {ExportTaskAlreadyExistsFault}
  # * {ExportTaskNotFoundFault}
  # * {GlobalClusterAlreadyExistsFault}
  # * {GlobalClusterNotFoundFault}
  # * {GlobalClusterQuotaExceededFault}
  # * {IamRoleMissingPermissionsFault}
  # * {IamRoleNotFoundFault}
  # * {InstanceQuotaExceededFault}
  # * {InsufficientAvailableIPsInSubnetFault}
  # * {InsufficientDBClusterCapacityFault}
  # * {InsufficientDBInstanceCapacityFault}
  # * {InsufficientStorageClusterCapacityFault}
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
  # * {InvalidDBInstanceStateFault}
  # * {InvalidDBParameterGroupStateFault}
  # * {InvalidDBProxyEndpointStateFault}
  # * {InvalidDBProxyStateFault}
  # * {InvalidDBSecurityGroupStateFault}
  # * {InvalidDBShardGroupStateFault}
  # * {InvalidDBSnapshotStateFault}
  # * {InvalidDBSubnetGroupFault}
  # * {InvalidDBSubnetGroupStateFault}
  # * {InvalidDBSubnetStateFault}
  # * {InvalidEventSubscriptionStateFault}
  # * {InvalidExportOnlyFault}
  # * {InvalidExportSourceStateFault}
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
  # * {SourceClusterNotSupportedFault}
  # * {SourceDatabaseNotSupportedFault}
  # * {SourceNotFoundFault}
  # * {StorageQuotaExceededFault}
  # * {StorageTypeNotAvailableFault}
  # * {StorageTypeNotSupportedFault}
  # * {SubnetAlreadyInUse}
  # * {SubscriptionAlreadyExistFault}
  # * {SubscriptionCategoryNotFoundFault}
  # * {SubscriptionNotFoundFault}
  # * {TenantDatabaseAlreadyExistsFault}
  # * {TenantDatabaseNotFoundFault}
  # * {TenantDatabaseQuotaExceededFault}
  # * {UnsupportedDBEngineVersionFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified CIDR IP range or Amazon EC2 security group is already authorized for
    #             the specified DB security group.</p>
    class AuthorizationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CIDR IP range or Amazon EC2 security group might not be authorized
    #             for the specified DB security group.</p>
    #          <p>Or, RDS might not be authorized to perform necessary actions using IAM on your
    #             behalf.</p>
    class AuthorizationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::AuthorizationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB security group authorization quota has been reached.</p>
    class AuthorizationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::AuthorizationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # Error class for BackupPolicyNotFoundFault.
    class BackupPolicyNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::BackupPolicyNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A blue/green deployment with the specified name already exists.</p>
    class BlueGreenDeploymentAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::BlueGreenDeploymentAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>BlueGreenDeploymentIdentifier</code> doesn't refer to an existing blue/green deployment.</p>
    class BlueGreenDeploymentNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::BlueGreenDeploymentNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>CertificateIdentifier</code> doesn't refer to an
    #         existing certificate.</p>
    class CertificateNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::CertificateNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred while trying to create the CEV.</p>
    class CreateCustomDBEngineVersionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::CreateCustomDBEngineVersionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>CustomAvailabilityZoneId</code> doesn't refer to an existing custom
    #             Availability Zone identifier.</p>
    class CustomAvailabilityZoneNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::CustomAvailabilityZoneNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A CEV with the specified name already exists.</p>
    class CustomDBEngineVersionAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::CustomDBEngineVersionAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CEV was not found.</p>
    class CustomDBEngineVersionNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::CustomDBEngineVersionNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded your CEV quota.</p>
    class CustomDBEngineVersionQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::CustomDBEngineVersionQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The user already has a DB cluster with the given identifier.</p>
    class DBClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No automated backup for this DB cluster was found.</p>
    class DBClusterAutomatedBackupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterAutomatedBackupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for retained automated backups was exceeded. This prevents you from retaining any additional automated 
    #             backups. The retained automated backups quota is the same as your DB cluster quota.</p>
    class DBClusterAutomatedBackupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterAutomatedBackupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>BacktrackIdentifier</code> doesn't refer to an existing backtrack.</p>
    class DBClusterBacktrackNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterBacktrackNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified custom endpoint can't be created because it already exists.</p>
    class DBClusterEndpointAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterEndpointAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified custom endpoint doesn't exist.</p>
    class DBClusterEndpointNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterEndpointNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster already has the maximum number of custom endpoints.</p>
    class DBClusterEndpointQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterEndpointQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBClusterIdentifier</code> doesn't refer to an existing DB cluster.</p>
    class DBClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBClusterParameterGroupName</code> doesn't refer to an existing DB
    #             cluster parameter group.</p>
    class DBClusterParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The user attempted to create a new DB cluster and the user has already reached the
    #             maximum allowed DB cluster quota.</p>
    class DBClusterQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
    class DBClusterRoleAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterRoleAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) isn't associated with the specified DB cluster.</p>
    class DBClusterRoleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
    class DBClusterRoleQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterRoleQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The user already has a DB cluster snapshot with the given identifier.</p>
    class DBClusterSnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterSnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBClusterSnapshotIdentifier</code> doesn't refer to an existing DB cluster snapshot.</p>
    class DBClusterSnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBClusterSnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The user already has a DB instance with the given identifier.</p>
    class DBInstanceAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>No automated backup for this DB instance was found.</p>
    class DBInstanceAutomatedBackupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceAutomatedBackupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for retained automated backups was exceeded. This prevents you
    #             from retaining any additional automated backups. The retained automated backups 
    #             quota is the same as your DB instance quota.</p>
    class DBInstanceAutomatedBackupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceAutomatedBackupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBInstanceIdentifier</code> doesn't refer to an existing DB instance.</p>
    class DBInstanceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An attempt to download or examine log files didn't succeed because an Aurora Serverless v2 instance was paused.</p>
    class DBInstanceNotReadyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceNotReadyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified <code>RoleArn</code> or <code>FeatureName</code> value is already associated with the DB instance.</p>
    class DBInstanceRoleAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceRoleAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified <code>RoleArn</code> value doesn't match the specified feature for
    #             the DB instance.</p>
    class DBInstanceRoleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't associate any more Amazon Web Services Identity and Access Management (IAM) roles with the DB instance because the quota has been reached.</p>
    class DBInstanceRoleQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBInstanceRoleQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>LogFileName</code> doesn't refer to an existing DB log file.</p>
    class DBLogFileNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBLogFileNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A DB parameter group with the same name exists.</p>
    class DBParameterGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBParameterGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBParameterGroupName</code> doesn't refer to an
    #         existing DB parameter group.</p>
    class DBParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of DB parameter
    #             groups.</p>
    class DBParameterGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBParameterGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified proxy name must be unique for all proxies owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    class DBProxyAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified DB proxy endpoint name must be unique for all DB proxy endpoints owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    class DBProxyEndpointAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyEndpointAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB proxy endpoint doesn't exist.</p>
    class DBProxyEndpointNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyEndpointNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB proxy already has the maximum number of endpoints.</p>
    class DBProxyEndpointQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyEndpointQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified proxy name doesn't correspond to a proxy owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    class DBProxyNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your Amazon Web Services account already has the maximum number of proxies in the specified Amazon Web Services Region.</p>
    class DBProxyQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The proxy is already associated with the specified RDS DB instance or Aurora DB cluster.</p>
    class DBProxyTargetAlreadyRegisteredFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyTargetAlreadyRegisteredFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified target group isn't available for a proxy owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    class DBProxyTargetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyTargetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified RDS DB instance or Aurora DB cluster isn't available for a proxy owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    class DBProxyTargetNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBProxyTargetNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A DB security group with the name specified in
    #         <code>DBSecurityGroupName</code> already exists.</p>
    class DBSecurityGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSecurityGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBSecurityGroupName</code> doesn't refer to an existing DB security group.</p>
    class DBSecurityGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSecurityGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A DB security group isn't allowed for this action.</p>
    class DBSecurityGroupNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSecurityGroupNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of DB security
    #             groups.</p>
    class DBSecurityGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSecurityGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified DB shard group name must be unique in your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    class DBShardGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBShardGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified DB shard group name wasn't found.</p>
    class DBShardGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBShardGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBSnapshotIdentifier</code> is already used by an existing snapshot.</p>
    class DBSnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBSnapshotIdentifier</code> doesn't refer to an existing DB snapshot.</p>
    class DBSnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified snapshot tenant database wasn't found.</p>
    class DBSnapshotTenantDatabaseNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSnapshotTenantDatabaseNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBSubnetGroupName</code> is already used by an existing DB subnet group.</p>
    class DBSubnetGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSubnetGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
    class DBSubnetGroupDoesNotCoverEnoughAZs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSubnetGroupDoesNotCoverEnoughAZs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DBSubnetGroup shouldn't be specified while creating read replicas that lie
    #             in the same region as the source instance.</p>
    class DBSubnetGroupNotAllowedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSubnetGroupNotAllowedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>DBSubnetGroupName</code> doesn't refer to an existing DB subnet group.</p>
    class DBSubnetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSubnetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of DB subnet
    #             groups.</p>
    class DBSubnetGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSubnetGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of subnets in a
    #             DB subnet groups.</p>
    class DBSubnetQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBSubnetQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB upgrade failed because a resource the DB depends on can't be
    #             modified.</p>
    class DBUpgradeDependencyFailureFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DBUpgradeDependencyFailureFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>Domain</code> doesn't refer to an existing Active Directory domain.</p>
    class DomainNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::DomainNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The AMI configuration prerequisite has not been met.</p>
    class Ec2ImagePropertiesNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::Ec2ImagePropertiesNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of event subscriptions.</p>
    class EventSubscriptionQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't start an export task that's already running.</p>
    class ExportTaskAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ExportTaskAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The export task doesn't exist.</p>
    class ExportTaskNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ExportTaskNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>GlobalClusterIdentifier</code> already exists. Specify a new global database identifier 
    #         (unique name) to create a new global database cluster or to rename an existing one.</p>
    class GlobalClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::GlobalClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>GlobalClusterIdentifier</code> doesn't refer to an existing global database cluster.</p>
    class GlobalClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::GlobalClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of global database clusters for this account is already at the maximum allowed.</p>
    class GlobalClusterQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::GlobalClusterQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The IAM role requires additional permissions to export to an Amazon S3 bucket.</p>
    class IamRoleMissingPermissionsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::IamRoleMissingPermissionsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The IAM role is missing for exporting to an Amazon S3 bucket.</p>
    class IamRoleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::IamRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of DB
    #             instances.</p>
    class InstanceQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InstanceQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation can't be performed because there aren't enough available IP addresses 
    #            in the proxy's subnets. Add more CIDR blocks to the VPC or remove IP address that aren't required 
    #            from the subnets.</p>
    class InsufficientAvailableIPsInSubnetFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InsufficientAvailableIPsInSubnetFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB cluster doesn't have enough capacity for the current operation.</p>
    class InsufficientDBClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InsufficientDBClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified DB instance class isn't available in the specified Availability
    #             Zone.</p>
    class InsufficientDBInstanceCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InsufficientDBInstanceCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is insufficient storage available for the current action. You might be able to
    #             resolve this error by updating your subnet group to use different Availability Zones
    #             that have more storage available.</p>
    class InsufficientStorageClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InsufficientStorageClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The integration you are trying to create already exists.</p>
    class IntegrationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::IntegrationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A conflicting conditional operation is currently in progress against this resource.
    #             Typically occurs when there are multiple requests being made to the same resource at the same time,
    #             and these requests conflict with each other.</p>
    class IntegrationConflictOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::IntegrationConflictOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified integration could not be found.</p>
    class IntegrationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::IntegrationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't crate any more zero-ETL integrations because the quota has been reached.</p>
    class IntegrationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::IntegrationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The blue/green deployment can't be switched over or deleted because there is an invalid configuration in 
    #             the green environment.</p>
    class InvalidBlueGreenDeploymentStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidBlueGreenDeploymentStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't delete the CEV.</p>
    class InvalidCustomDBEngineVersionStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidCustomDBEngineVersionStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The automated backup is in an invalid state. 
    #             For example, this automated backup is associated with an active cluster.</p>
    class InvalidDBClusterAutomatedBackupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBClusterAutomatedBackupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>Capacity</code> isn't a valid Aurora Serverless DB cluster
    #             capacity. Valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, 
    #             <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
    class InvalidDBClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation can't be performed on the endpoint while the endpoint is in this state.</p>
    class InvalidDBClusterEndpointStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBClusterEndpointStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The supplied value isn't a valid DB cluster snapshot state.</p>
    class InvalidDBClusterSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBClusterSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation can't be performed while the cluster is in this state.</p>
    class InvalidDBClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The automated backup is in an invalid state. 
    #             For example, this automated backup is associated with an active instance.</p>
    class InvalidDBInstanceAutomatedBackupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBInstanceAutomatedBackupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB instance isn't in a valid state.</p>
    class InvalidDBInstanceStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBInstanceStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB parameter group is in use or is in an invalid state. If you are attempting
    #             to delete the parameter group, you can't delete it when the parameter group is in
    #             this state.</p>
    class InvalidDBParameterGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBParameterGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't perform this operation while the DB proxy endpoint is in a particular state.</p>
    class InvalidDBProxyEndpointStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBProxyEndpointStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation can't be performed while the proxy is in this state.</p>
    class InvalidDBProxyStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBProxyStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the DB security group doesn't allow deletion.</p>
    class InvalidDBSecurityGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBSecurityGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB shard group must be in the available state.</p>
    class InvalidDBShardGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBShardGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the DB snapshot doesn't allow deletion.</p>
    class InvalidDBSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DBSubnetGroup doesn't belong to the same VPC as that of an existing
    #             cross-region read replica of the same source instance.</p>
    class InvalidDBSubnetGroupFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBSubnetGroupFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB subnet group cannot be deleted because it's in use.</p>
    class InvalidDBSubnetGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBSubnetGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB subnet isn't in the <i>available</i> state.</p>
    class InvalidDBSubnetStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidDBSubnetStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This error can occur if someone else is modifying a subscription. You should retry the action.</p>
    class InvalidEventSubscriptionStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidEventSubscriptionStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The export is invalid for exporting to an Amazon S3 bucket.</p>
    class InvalidExportOnlyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidExportOnlyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the export snapshot is invalid for exporting to an Amazon S3 bucket.</p>
    class InvalidExportSourceStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidExportSourceStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't cancel an export task that has completed.</p>
    class InvalidExportTaskStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidExportTaskStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The global cluster is in an invalid state and can't perform the requested operation.</p>
    class InvalidGlobalClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidGlobalClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The integration is in an invalid state and can't perform the requested operation.</p>
    class InvalidIntegrationStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidIntegrationStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The option group isn't in the <i>available</i> state.</p>
    class InvalidOptionGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidOptionGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation can't be performed because another operation is in progress.</p>
    class InvalidResourceStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidResourceStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cannot restore from VPC backup to non-VPC DB instance.</p>
    class InvalidRestoreFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidRestoreFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon S3 bucket name can't be found or Amazon RDS isn't
    #             authorized to access the specified Amazon S3 bucket. Verify the <b>SourceS3BucketName</b> and <b>S3IngestionRoleArn</b> values and try again.</p>
    class InvalidS3BucketFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidS3BucketFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
    class InvalidSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB subnet group doesn't cover all Availability Zones after it's
    #             created because of users' change.</p>
    class InvalidVPCNetworkStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred accessing an Amazon Web Services KMS key.</p>
    class KMSKeyNotAccessibleFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of DB shard groups for your Amazon Web Services account in the specified Amazon Web Services Region has been reached.</p>
    class MaxDBShardGroupLimitReached < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::MaxDBShardGroupLimitReached] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The network type is invalid for the DB instance. Valid nework type values are <code>IPV4</code> and <code>DUAL</code>.</p>
    class NetworkTypeNotSupported < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::NetworkTypeNotSupported] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The option group you are trying to create already exists.</p>
    class OptionGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::OptionGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified option group could not be found.</p>
    class OptionGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::OptionGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota of 20 option groups was exceeded for this Amazon Web Services account.</p>
    class OptionGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::OptionGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>SourceDBInstanceIdentifier</code>
    #         refers to a DB instance with
    #         <code>BackupRetentionPeriod</code> equal to 0.</p>
    class PointInTimeRestoreNotEnabledFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::PointInTimeRestoreNotEnabledFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Provisioned IOPS not available in the specified Availability Zone.</p>
    class ProvisionedIopsNotAvailableInAZFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ProvisionedIopsNotAvailableInAZFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>User already has a reservation with the given identifier.</p>
    class ReservedDBInstanceAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ReservedDBInstanceAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified reserved DB Instance not found.</p>
    class ReservedDBInstanceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ReservedDBInstanceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Request would exceed the user's DB Instance quota.</p>
    class ReservedDBInstanceQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ReservedDBInstanceQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Specified offering does not exist.</p>
    class ReservedDBInstancesOfferingNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ReservedDBInstancesOfferingNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource ID was not found.</p>
    class ResourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::ResourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>SNS has responded that there is a problem with the SNS topic specified.</p>
    class SNSInvalidTopicFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SNSInvalidTopicFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You do not have permission to publish to the SNS topic ARN.</p>
    class SNSNoAuthorizationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SNSNoAuthorizationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The SNS topic ARN does not exist.</p>
    class SNSTopicArnNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
    class SharedSnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SharedSnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of DB
    #             snapshots.</p>
    class SnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The source DB cluster isn't supported for a blue/green deployment.</p>
    class SourceClusterNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SourceClusterNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The source DB instance isn't supported for a blue/green deployment.</p>
    class SourceDatabaseNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SourceDatabaseNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested source could not be found.</p>
    class SourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed amount of storage
    #             available across all DB instances.</p>
    class StorageQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::StorageQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>aurora-iopt1</code> storage type isn't available, because you modified the DB cluster 
    #             to use this storage type less than one month ago.</p>
    class StorageTypeNotAvailableFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::StorageTypeNotAvailableFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified <code>StorageType</code> can't be associated with the DB instance.</p>
    class StorageTypeNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::StorageTypeNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The DB subnet is already in use in the Availability Zone.</p>
    class SubnetAlreadyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SubnetAlreadyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The supplied subscription name already exists.</p>
    class SubscriptionAlreadyExistFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The supplied category does not exist.</p>
    class SubscriptionCategoryNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The subscription name does not exist.</p>
    class SubscriptionNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::SubscriptionNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You attempted to either create a tenant database that already exists or  
    #                 modify a tenant database to use the name of an existing tenant database.</p>
    class TenantDatabaseAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::TenantDatabaseAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified tenant database wasn't found in the DB instance.</p>
    class TenantDatabaseNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::TenantDatabaseNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You attempted to create more tenant databases than are permitted in your Amazon Web Services
    #             account.</p>
    class TenantDatabaseQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::TenantDatabaseQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified DB engine version isn't supported for Aurora Limitless Database.</p>
    class UnsupportedDBEngineVersionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::RDS::Types::UnsupportedDBEngineVersionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
