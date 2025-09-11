# frozen_string_literal: true

# This is generated code!

module Aws::Neptune
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Neptune::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Neptune::Errors::ServiceError
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
  # * {AuthorizationNotFoundFault}
  # * {CertificateNotFoundFault}
  # * {DBClusterAlreadyExistsFault}
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
  # * {GlobalClusterAlreadyExistsFault}
  # * {GlobalClusterNotFoundFault}
  # * {GlobalClusterQuotaExceededFault}
  # * {InstanceQuotaExceededFault}
  # * {InsufficientDBClusterCapacityFault}
  # * {InsufficientDBInstanceCapacityFault}
  # * {InsufficientStorageClusterCapacityFault}
  # * {InvalidDBClusterEndpointStateFault}
  # * {InvalidDBClusterSnapshotStateFault}
  # * {InvalidDBClusterStateFault}
  # * {InvalidDBInstanceStateFault}
  # * {InvalidDBParameterGroupStateFault}
  # * {InvalidDBSecurityGroupStateFault}
  # * {InvalidDBSnapshotStateFault}
  # * {InvalidDBSubnetGroupStateFault}
  # * {InvalidDBSubnetStateFault}
  # * {InvalidEventSubscriptionStateFault}
  # * {InvalidGlobalClusterStateFault}
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
    extend Smithy::Client::DynamicErrors

    # <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p>
    #          <p>Neptune may not also be authorized via IAM to perform necessary actions on your behalf.</p>
    class AuthorizationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::AuthorizationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>CertificateIdentifier</i> does not refer to an existing certificate.</p>
    class CertificateNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::CertificateNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>User already has a DB cluster with the given identifier.</p>
    class DBClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified custom endpoint cannot be created because it already exists.</p>
    class DBClusterEndpointAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterEndpointAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified custom endpoint doesn't exist.</p>
    class DBClusterEndpointNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterEndpointNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The cluster already has the maximum number of custom endpoints.</p>
    class DBClusterEndpointQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterEndpointQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBClusterIdentifier</i> does not refer to an existing DB cluster.</p>
    class DBClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBClusterParameterGroupName</i> does not refer to an
    #       existing DB Cluster parameter group.</p>
    class DBClusterParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.</p>
    class DBClusterQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
    class DBClusterRoleAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterRoleAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.</p>
    class DBClusterRoleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
    class DBClusterRoleQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterRoleQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>User already has a DB cluster snapshot with the given identifier.</p>
    class DBClusterSnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterSnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBClusterSnapshotIdentifier</i> does not refer to an existing
    #       DB cluster snapshot.</p>
    class DBClusterSnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBClusterSnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>User already has a DB instance with the given identifier.</p>
    class DBInstanceAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBInstanceAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBInstanceIdentifier</i> does not refer to an existing DB instance.</p>
    class DBInstanceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBInstanceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A DB parameter group with the same name exists.</p>
    class DBParameterGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBParameterGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBParameterGroupName</i> does not refer to an
    #       existing DB parameter group.</p>
    class DBParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request would result in user exceeding the allowed number of DB parameter groups.</p>
    class DBParameterGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBParameterGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBSecurityGroupName</i> does not refer
    #       to an existing DB security group.</p>
    class DBSecurityGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSecurityGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBSnapshotIdentifier</i> is already used by an existing snapshot.</p>
    class DBSnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBSnapshotIdentifier</i> does not refer to an existing DB snapshot.</p>
    class DBSnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBSubnetGroupName</i> is already used by an existing DB subnet group.</p>
    class DBSubnetGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSubnetGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Subnets in the DB subnet group should cover at least two Availability
    #       Zones unless there is only one Availability Zone.</p>
    class DBSubnetGroupDoesNotCoverEnoughAZs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSubnetGroupDoesNotCoverEnoughAZs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>DBSubnetGroupName</i> does not refer to an
    #       existing DB subnet group.</p>
    class DBSubnetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSubnetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request would result in user exceeding the allowed number of DB subnet groups.</p>
    class DBSubnetGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSubnetGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request would result in user exceeding the allowed number of subnets in a DB subnet groups.</p>
    class DBSubnetQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBSubnetQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB upgrade failed because a resource the DB depends on could not be modified.</p>
    class DBUpgradeDependencyFailureFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DBUpgradeDependencyFailureFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>Domain</i> does not refer to an existing Active Directory Domain.</p>
    class DomainNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::DomainNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the number of events you can subscribe to.</p>
    class EventSubscriptionQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The <code>GlobalClusterIdentifier</code> already exists. Choose a new global database identifier (unique name) to create a new global database cluster.</p>
    class GlobalClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::GlobalClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The <code>GlobalClusterIdentifier</code> doesn't refer to an existing global database cluster. </p>
    class GlobalClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::GlobalClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of global database clusters for this account is already at the maximum allowed.</p>
    class GlobalClusterQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::GlobalClusterQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request would result in user exceeding the allowed number of DB instances.</p>
    class InstanceQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InstanceQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB cluster does not have enough capacity for the current operation.</p>
    class InsufficientDBClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InsufficientDBClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Specified DB instance class is not available in the specified Availability Zone.</p>
    class InsufficientDBInstanceCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InsufficientDBInstanceCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>There is insufficient storage available for the current action. You may
    #        be able to resolve this error by updating your subnet group to use different
    #        Availability Zones that have more storage available.</p>
    class InsufficientStorageClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InsufficientStorageClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested operation cannot be performed on the endpoint while the endpoint is in this state.</p>
    class InvalidDBClusterEndpointStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBClusterEndpointStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The supplied value is not a valid DB cluster snapshot state.</p>
    class InvalidDBClusterSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBClusterSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB cluster is not in a valid state.</p>
    class InvalidDBClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified DB instance is not in the <i>available</i> state.</p>
    class InvalidDBInstanceStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBInstanceStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB parameter group is in use or is in an invalid state. If you are attempting to
    #       delete the parameter group, you cannot delete it when the parameter group is in this state.</p>
    class InvalidDBParameterGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBParameterGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The state of the DB security group does not allow deletion.</p>
    class InvalidDBSecurityGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBSecurityGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The state of the DB snapshot does not allow deletion.</p>
    class InvalidDBSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB subnet group cannot be deleted because it is in use.</p>
    class InvalidDBSubnetGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBSubnetGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB subnet is not in the <i>available</i> state.</p>
    class InvalidDBSubnetStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidDBSubnetStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The event subscription is in an invalid state.</p>
    class InvalidEventSubscriptionStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidEventSubscriptionStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The global cluster is in an invalid state and can't perform the requested operation. </p>
    class InvalidGlobalClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidGlobalClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
    class InvalidRestoreFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidRestoreFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested subnet is invalid, or multiple subnets were requested that are
    #       not all in a common VPC.</p>
    class InvalidSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>DB subnet group does not cover all Availability Zones after it is created
    #       because users' change.</p>
    class InvalidVPCNetworkStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Error accessing KMS key.</p>
    class KMSKeyNotAccessibleFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The designated option group could not be found.</p>
    class OptionGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::OptionGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Provisioned IOPS not available in the specified Availability Zone.</p>
    class ProvisionedIopsNotAvailableInAZFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::ProvisionedIopsNotAvailableInAZFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource ID was not found.</p>
    class ResourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::ResourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The SNS topic is invalid.</p>
    class SNSInvalidTopicFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SNSInvalidTopicFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>There is no SNS authorization.</p>
    class SNSNoAuthorizationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SNSNoAuthorizationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The ARN of the SNS topic could not be found.</p>
    class SNSTopicArnNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
    class SharedSnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SharedSnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request would result in user exceeding the allowed number of DB snapshots.</p>
    class SnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The source could not be found.</p>
    class SourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Request would result in user exceeding the allowed amount of storage available across all DB instances.</p>
    class StorageQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::StorageQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             <i>StorageType</i> specified cannot be associated with the DB Instance.</p>
    class StorageTypeNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::StorageTypeNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The DB subnet is already in use in the Availability Zone.</p>
    class SubnetAlreadyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SubnetAlreadyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>This subscription already exists.</p>
    class SubscriptionAlreadyExistFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The designated subscription category could not be found.</p>
    class SubscriptionCategoryNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The designated subscription could not be found.</p>
    class SubscriptionNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Neptune::Types::SubscriptionNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message describing the details of the problem.</p>
      def message
        @data[:message]
      end
    end
  end
end
