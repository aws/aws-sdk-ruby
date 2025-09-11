# frozen_string_literal: true

# This is generated code!

module Aws::ElastiCache
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ElastiCache::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElastiCache::Errors::ServiceError
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
  # * {APICallRateForCustomerExceededFault}
  # * {AuthorizationAlreadyExistsFault}
  # * {AuthorizationNotFoundFault}
  # * {CacheClusterAlreadyExistsFault}
  # * {CacheClusterNotFoundFault}
  # * {CacheParameterGroupAlreadyExistsFault}
  # * {CacheParameterGroupNotFoundFault}
  # * {CacheParameterGroupQuotaExceededFault}
  # * {CacheSecurityGroupAlreadyExistsFault}
  # * {CacheSecurityGroupNotFoundFault}
  # * {CacheSecurityGroupQuotaExceededFault}
  # * {CacheSubnetGroupAlreadyExistsFault}
  # * {CacheSubnetGroupInUse}
  # * {CacheSubnetGroupNotFoundFault}
  # * {CacheSubnetGroupQuotaExceededFault}
  # * {CacheSubnetQuotaExceededFault}
  # * {ClusterQuotaForCustomerExceededFault}
  # * {DefaultUserAssociatedToUserGroupFault}
  # * {DefaultUserRequired}
  # * {DuplicateUserNameFault}
  # * {GlobalReplicationGroupAlreadyExistsFault}
  # * {GlobalReplicationGroupNotFoundFault}
  # * {InsufficientCacheClusterCapacityFault}
  # * {InvalidARNFault}
  # * {InvalidCacheClusterStateFault}
  # * {InvalidCacheParameterGroupStateFault}
  # * {InvalidCacheSecurityGroupStateFault}
  # * {InvalidCredentialsException}
  # * {InvalidGlobalReplicationGroupStateFault}
  # * {InvalidKMSKeyFault}
  # * {InvalidParameterCombinationException}
  # * {InvalidParameterValueException}
  # * {InvalidReplicationGroupStateFault}
  # * {InvalidServerlessCacheSnapshotStateFault}
  # * {InvalidServerlessCacheStateFault}
  # * {InvalidSnapshotStateFault}
  # * {InvalidSubnet}
  # * {InvalidUserGroupStateFault}
  # * {InvalidUserStateFault}
  # * {InvalidVPCNetworkStateFault}
  # * {NoOperationFault}
  # * {NodeGroupNotFoundFault}
  # * {NodeGroupsPerReplicationGroupQuotaExceededFault}
  # * {NodeQuotaForClusterExceededFault}
  # * {NodeQuotaForCustomerExceededFault}
  # * {ReplicationGroupAlreadyExistsFault}
  # * {ReplicationGroupAlreadyUnderMigrationFault}
  # * {ReplicationGroupNotFoundFault}
  # * {ReplicationGroupNotUnderMigrationFault}
  # * {ReservedCacheNodeAlreadyExistsFault}
  # * {ReservedCacheNodeNotFoundFault}
  # * {ReservedCacheNodeQuotaExceededFault}
  # * {ReservedCacheNodesOfferingNotFoundFault}
  # * {ServerlessCacheAlreadyExistsFault}
  # * {ServerlessCacheNotFoundFault}
  # * {ServerlessCacheQuotaForCustomerExceededFault}
  # * {ServerlessCacheSnapshotAlreadyExistsFault}
  # * {ServerlessCacheSnapshotNotFoundFault}
  # * {ServerlessCacheSnapshotQuotaExceededFault}
  # * {ServiceLinkedRoleNotFoundFault}
  # * {ServiceUpdateNotFoundFault}
  # * {SnapshotAlreadyExistsFault}
  # * {SnapshotFeatureNotSupportedFault}
  # * {SnapshotNotFoundFault}
  # * {SnapshotQuotaExceededFault}
  # * {SubnetInUse}
  # * {SubnetNotAllowedFault}
  # * {TagNotFoundFault}
  # * {TagQuotaPerResourceExceeded}
  # * {TestFailoverNotAvailableFault}
  # * {UserAlreadyExistsFault}
  # * {UserGroupAlreadyExistsFault}
  # * {UserGroupNotFoundFault}
  # * {UserGroupQuotaExceededFault}
  # * {UserNotFoundFault}
  # * {UserQuotaExceededFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The customer has exceeded the allowed rate of API calls.</p>
    class APICallRateForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::APICallRateForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon EC2 security group is already authorized for the specified cache
    #             security group.</p>
    class AuthorizationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon EC2 security group is not authorized for the specified cache
    #             security group.</p>
    class AuthorizationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::AuthorizationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You already have a cluster with the given identifier.</p>
    class CacheClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cluster ID does not refer to an existing cluster.</p>
    class CacheClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A cache parameter group with the requested name already exists.</p>
    class CacheParameterGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheParameterGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache parameter group name does not refer to an existing cache parameter
    #             group.</p>
    class CacheParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of cache
    #             security groups.</p>
    class CacheParameterGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheParameterGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A cache security group with the specified name already exists.</p>
    class CacheSecurityGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSecurityGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache security group name does not refer to an existing cache security
    #             group.</p>
    class CacheSecurityGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSecurityGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             security groups.</p>
    class CacheSecurityGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSecurityGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache subnet group name is already in use by an existing cache subnet
    #             group.</p>
    class CacheSubnetGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache subnet group is currently in use.</p>
    class CacheSubnetGroupInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache subnet group name does not refer to an existing cache subnet
    #             group.</p>
    class CacheSubnetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             subnet groups.</p>
    class CacheSubnetGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of subnets
    #             in a cache subnet group.</p>
    class CacheSubnetQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::CacheSubnetQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of clusters
    #             per customer.</p>
    class ClusterQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ClusterQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The default user assigned to the user group.</p>
    class DefaultUserAssociatedToUserGroupFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::DefaultUserAssociatedToUserGroupFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You must add default user to a user group.</p>
    class DefaultUserRequired < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::DefaultUserRequired] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A user with this username already exists.</p>
    class DuplicateUserNameFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::DuplicateUserNameFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Global datastore name already exists.</p>
    class GlobalReplicationGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::GlobalReplicationGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Global datastore does not exist</p>
    class GlobalReplicationGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::GlobalReplicationGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache node type is not available in the specified Availability Zone. For
    #             more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY">InsufficientCacheClusterCapacity</a> in the ElastiCache User Guide.</p>
    class InsufficientCacheClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InsufficientCacheClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested Amazon Resource Name (ARN) does not refer to an existing
    #             resource.</p>
    class InvalidARNFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidARNFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cluster is not in the <code>available</code> state.</p>
    class InvalidCacheClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidCacheClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The current state of the cache parameter group does not allow the requested operation
    #             to occur.</p>
    class InvalidCacheParameterGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidCacheParameterGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The current state of the cache security group does not allow deletion.</p>
    class InvalidCacheSecurityGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidCacheSecurityGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You must enter valid credentials.</p>
    class InvalidCredentialsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidCredentialsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Global datastore is not available or in primary-only state.</p>
    class InvalidGlobalReplicationGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidGlobalReplicationGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The KMS key supplied is not valid.</p>
    class InvalidKMSKeyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidKMSKeyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Two or more incompatible parameters were specified.</p>
    class InvalidParameterCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidParameterCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Two or more parameters that must not be used together were used together.</p>
      def message
        @data[:message]
      end
    end

    # <p>The value for a parameter is invalid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A parameter value is invalid.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested replication group is not in the <code>available</code> state.</p>
    class InvalidReplicationGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidReplicationGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the serverless cache snapshot was not received. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    class InvalidServerlessCacheSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidServerlessCacheSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The account for these credentials is not currently active.</p>
    class InvalidServerlessCacheStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidServerlessCacheStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The current state of the snapshot does not allow the requested operation to
    #             occur.</p>
    class InvalidSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An invalid subnet identifier was specified.</p>
    class InvalidSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user group is not in an active state.</p>
    class InvalidUserGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidUserGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user is not in active state.</p>
    class InvalidUserStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidUserStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The VPC network is in an invalid state.</p>
    class InvalidVPCNetworkStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation was not performed because no changes were required.</p>
    class NoOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::NoOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The node group specified by the <code>NodeGroupId</code> parameter could not be found.
    #             Please verify that the node group exists and that you spelled the
    #                 <code>NodeGroupId</code> value correctly.</p>
    class NodeGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::NodeGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum allowed number of
    #             node groups (shards) in a single replication group. The default maximum is 90</p>
    class NodeGroupsPerReplicationGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::NodeGroupsPerReplicationGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             nodes in a single cluster.</p>
    class NodeQuotaForClusterExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::NodeQuotaForClusterExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             nodes per customer.</p>
    class NodeQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::NodeQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified replication group already exists.</p>
    class ReplicationGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReplicationGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The targeted replication group is not available. </p>
    class ReplicationGroupAlreadyUnderMigrationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReplicationGroupAlreadyUnderMigrationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified replication group does not exist.</p>
    class ReplicationGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReplicationGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The designated replication group is not available for data migration.</p>
    class ReplicationGroupNotUnderMigrationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReplicationGroupNotUnderMigrationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You already have a reservation with the given identifier.</p>
    class ReservedCacheNodeAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReservedCacheNodeAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested reserved cache node was not found.</p>
    class ReservedCacheNodeNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReservedCacheNodeNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the user's cache node
    #             quota.</p>
    class ReservedCacheNodeQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReservedCacheNodeQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cache node offering does not exist.</p>
    class ReservedCacheNodesOfferingNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ReservedCacheNodesOfferingNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A serverless cache with this name already exists.</p>
    class ServerlessCacheAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServerlessCacheAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The serverless cache was not found or does not exist.</p>
    class ServerlessCacheNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServerlessCacheNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of serverless caches exceeds the customer quota.</p>
    class ServerlessCacheQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServerlessCacheQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A serverless cache snapshot with this name already exists. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    class ServerlessCacheSnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServerlessCacheSnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This serverless cache snapshot could not be found or does not exist. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    class ServerlessCacheSnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServerlessCacheSnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of serverless cache snapshots exceeds the customer snapshot quota. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    class ServerlessCacheSnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServerlessCacheSnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified service linked role (SLR) was not found.</p>
    class ServiceLinkedRoleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServiceLinkedRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service update doesn't exist</p>
    class ServiceUpdateNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::ServiceUpdateNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You already have a snapshot with the given name.</p>
    class SnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::SnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You attempted one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>Creating a snapshot of a Valkey or Redis OSS cluster running on a
    #                         <code>cache.t1.micro</code> cache node.</p>
    #             </li>
    #             <li>
    #                <p>Creating a snapshot of a cluster that is running Memcached rather than
    #                     Valkey or Redis OSS.</p>
    #             </li>
    #          </ul>
    #          <p>Neither of these are supported by ElastiCache.</p>
    class SnapshotFeatureNotSupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::SnapshotFeatureNotSupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested snapshot name does not refer to an existing snapshot.</p>
    class SnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::SnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of
    #             snapshots.</p>
    class SnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::SnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested subnet is being used by another cache subnet group.</p>
    class SubnetInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::SubnetInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>At least one subnet ID does not match the other subnet IDs. This mismatch typically
    #             occurs when a user sets one subnet ID to a regional Availability Zone and a different
    #             one to an outpost. Or when a user sets the subnet ID to an Outpost when not subscribed
    #             on this service.</p>
    class SubnetNotAllowedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::SubnetNotAllowedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested tag was not found on this resource.</p>
    class TagNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::TagNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would cause the resource to have more than
    #             the allowed number of tags. The maximum number of tags permitted on a resource is
    #             50.</p>
    class TagQuotaPerResourceExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::TagQuotaPerResourceExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>TestFailover</code> action is not available.</p>
    class TestFailoverNotAvailableFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::TestFailoverNotAvailableFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A user with this ID already exists.</p>
    class UserAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::UserAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user group with this ID already exists.</p>
    class UserGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::UserGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user group was not found or does not exist</p>
    class UserGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::UserGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of users exceeds the user group limit.</p>
    class UserGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::UserGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user does not exist or could not be found.</p>
    class UserNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::UserNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota of users has been exceeded.</p>
    class UserQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElastiCache::Types::UserQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
