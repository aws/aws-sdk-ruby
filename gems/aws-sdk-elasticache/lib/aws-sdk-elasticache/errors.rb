# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElastiCache

  # When ElastiCache returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::ElastiCache::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all ElastiCache errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElastiCache::Errors::ServiceError
  #       # rescues all ElastiCache API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {APICallRateForCustomerExceededFault}
  #    * This error class is not used. `APICallRateForCustomerExceeded` is used during parsing instead.
  # * {AuthorizationAlreadyExistsFault}
  #    * This error class is not used. `AuthorizationAlreadyExists` is used during parsing instead.
  # * {AuthorizationNotFoundFault}
  #    * This error class is not used. `AuthorizationNotFound` is used during parsing instead.
  # * {CacheClusterAlreadyExistsFault}
  #    * This error class is not used. `CacheClusterAlreadyExists` is used during parsing instead.
  # * {CacheClusterNotFoundFault}
  #    * This error class is not used. `CacheClusterNotFound` is used during parsing instead.
  # * {CacheParameterGroupAlreadyExistsFault}
  #    * This error class is not used. `CacheParameterGroupAlreadyExists` is used during parsing instead.
  # * {CacheParameterGroupNotFoundFault}
  #    * This error class is not used. `CacheParameterGroupNotFound` is used during parsing instead.
  # * {CacheParameterGroupQuotaExceededFault}
  #    * This error class is not used. `CacheParameterGroupQuotaExceeded` is used during parsing instead.
  # * {CacheSecurityGroupAlreadyExistsFault}
  #    * This error class is not used. `CacheSecurityGroupAlreadyExists` is used during parsing instead.
  # * {CacheSecurityGroupNotFoundFault}
  #    * This error class is not used. `CacheSecurityGroupNotFound` is used during parsing instead.
  # * {CacheSecurityGroupQuotaExceededFault}
  #    * This error class is not used. `QuotaExceeded.CacheSecurityGroup` is used during parsing instead.
  # * {CacheSubnetGroupAlreadyExistsFault}
  #    * This error class is not used. `CacheSubnetGroupAlreadyExists` is used during parsing instead.
  # * {CacheSubnetGroupInUse}
  # * {CacheSubnetGroupNotFoundFault}
  # * {CacheSubnetGroupQuotaExceededFault}
  #    * This error class is not used. `CacheSubnetGroupQuotaExceeded` is used during parsing instead.
  # * {CacheSubnetQuotaExceededFault}
  # * {ClusterQuotaForCustomerExceededFault}
  #    * This error class is not used. `ClusterQuotaForCustomerExceeded` is used during parsing instead.
  # * {DefaultUserAssociatedToUserGroupFault}
  #    * This error class is not used. `DefaultUserAssociatedToUserGroup` is used during parsing instead.
  # * {DefaultUserRequired}
  # * {DuplicateUserNameFault}
  #    * This error class is not used. `DuplicateUserName` is used during parsing instead.
  # * {GlobalReplicationGroupAlreadyExistsFault}
  # * {GlobalReplicationGroupNotFoundFault}
  # * {InsufficientCacheClusterCapacityFault}
  #    * This error class is not used. `InsufficientCacheClusterCapacity` is used during parsing instead.
  # * {InvalidARNFault}
  #    * This error class is not used. `InvalidARN` is used during parsing instead.
  # * {InvalidCacheClusterStateFault}
  #    * This error class is not used. `InvalidCacheClusterState` is used during parsing instead.
  # * {InvalidCacheParameterGroupStateFault}
  #    * This error class is not used. `InvalidCacheParameterGroupState` is used during parsing instead.
  # * {InvalidCacheSecurityGroupStateFault}
  #    * This error class is not used. `InvalidCacheSecurityGroupState` is used during parsing instead.
  # * {InvalidCredentialsException}
  # * {InvalidGlobalReplicationGroupStateFault}
  #    * This error class is not used. `InvalidGlobalReplicationGroupState` is used during parsing instead.
  # * {InvalidKMSKeyFault}
  # * {InvalidParameterCombinationException}
  #    * This error class is not used. `InvalidParameterCombination` is used during parsing instead.
  # * {InvalidParameterValueException}
  #    * This error class is not used. `InvalidParameterValue` is used during parsing instead.
  # * {InvalidReplicationGroupStateFault}
  #    * This error class is not used. `InvalidReplicationGroupState` is used during parsing instead.
  # * {InvalidServerlessCacheSnapshotStateFault}
  # * {InvalidServerlessCacheStateFault}
  # * {InvalidSnapshotStateFault}
  #    * This error class is not used. `InvalidSnapshotState` is used during parsing instead.
  # * {InvalidSubnet}
  # * {InvalidUserGroupStateFault}
  #    * This error class is not used. `InvalidUserGroupState` is used during parsing instead.
  # * {InvalidUserStateFault}
  #    * This error class is not used. `InvalidUserState` is used during parsing instead.
  # * {InvalidVPCNetworkStateFault}
  # * {NoOperationFault}
  # * {NodeGroupNotFoundFault}
  # * {NodeGroupsPerReplicationGroupQuotaExceededFault}
  #    * This error class is not used. `NodeGroupsPerReplicationGroupQuotaExceeded` is used during parsing instead.
  # * {NodeQuotaForClusterExceededFault}
  #    * This error class is not used. `NodeQuotaForClusterExceeded` is used during parsing instead.
  # * {NodeQuotaForCustomerExceededFault}
  #    * This error class is not used. `NodeQuotaForCustomerExceeded` is used during parsing instead.
  # * {ReplicationGroupAlreadyExistsFault}
  #    * This error class is not used. `ReplicationGroupAlreadyExists` is used during parsing instead.
  # * {ReplicationGroupAlreadyUnderMigrationFault}
  # * {ReplicationGroupNotFoundFault}
  # * {ReplicationGroupNotUnderMigrationFault}
  # * {ReservedCacheNodeAlreadyExistsFault}
  #    * This error class is not used. `ReservedCacheNodeAlreadyExists` is used during parsing instead.
  # * {ReservedCacheNodeNotFoundFault}
  #    * This error class is not used. `ReservedCacheNodeNotFound` is used during parsing instead.
  # * {ReservedCacheNodeQuotaExceededFault}
  #    * This error class is not used. `ReservedCacheNodeQuotaExceeded` is used during parsing instead.
  # * {ReservedCacheNodesOfferingNotFoundFault}
  #    * This error class is not used. `ReservedCacheNodesOfferingNotFound` is used during parsing instead.
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
  #    * This error class is not used. `TagNotFound` is used during parsing instead.
  # * {TagQuotaPerResourceExceeded}
  # * {TestFailoverNotAvailableFault}
  # * {UserAlreadyExistsFault}
  #    * This error class is not used. `UserAlreadyExists` is used during parsing instead.
  # * {UserGroupAlreadyExistsFault}
  #    * This error class is not used. `UserGroupAlreadyExists` is used during parsing instead.
  # * {UserGroupNotFoundFault}
  #    * This error class is not used. `UserGroupNotFound` is used during parsing instead.
  # * {UserGroupQuotaExceededFault}
  #    * This error class is not used. `UserGroupQuotaExceeded` is used during parsing instead.
  # * {UserNotFoundFault}
  #    * This error class is not used. `UserNotFound` is used during parsing instead.
  # * {UserQuotaExceededFault}
  #    * This error class is not used. `UserQuotaExceeded` is used during parsing instead.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  # Some existing error classes may use a different class name than the one documented.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `APICallRateForCustomerExceeded` instead.
    class APICallRateForCustomerExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::APICallRateForCustomerExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationAlreadyExists` instead.
    class AuthorizationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationNotFound` instead.
    class AuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::AuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheClusterAlreadyExists` instead.
    class CacheClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheClusterNotFound` instead.
    class CacheClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheParameterGroupAlreadyExists` instead.
    class CacheParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheParameterGroupNotFound` instead.
    class CacheParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheParameterGroupQuotaExceeded` instead.
    class CacheParameterGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheParameterGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheSecurityGroupAlreadyExists` instead.
    class CacheSecurityGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSecurityGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheSecurityGroupNotFound` instead.
    class CacheSecurityGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSecurityGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `QuotaExceeded.CacheSecurityGroup` instead.
    class CacheSecurityGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSecurityGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheSubnetGroupAlreadyExists` instead.
    class CacheSubnetGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CacheSubnetGroupInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CacheSubnetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CacheSubnetGroupQuotaExceeded` instead.
    class CacheSubnetGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSubnetGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CacheSubnetQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::CacheSubnetQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterQuotaForCustomerExceeded` instead.
    class ClusterQuotaForCustomerExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ClusterQuotaForCustomerExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DefaultUserAssociatedToUserGroup` instead.
    class DefaultUserAssociatedToUserGroupFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::DefaultUserAssociatedToUserGroupFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DefaultUserRequired < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::DefaultUserRequired] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateUserName` instead.
    class DuplicateUserNameFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::DuplicateUserNameFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalReplicationGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::GlobalReplicationGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalReplicationGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::GlobalReplicationGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientCacheClusterCapacity` instead.
    class InsufficientCacheClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InsufficientCacheClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidARN` instead.
    class InvalidARNFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidARNFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidCacheClusterState` instead.
    class InvalidCacheClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidCacheClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidCacheParameterGroupState` instead.
    class InvalidCacheParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidCacheParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidCacheSecurityGroupState` instead.
    class InvalidCacheSecurityGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidCacheSecurityGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidCredentialsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidCredentialsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidGlobalReplicationGroupState` instead.
    class InvalidGlobalReplicationGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidGlobalReplicationGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidKMSKeyFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidKMSKeyFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidParameterCombination` instead.
    class InvalidParameterCombinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidParameterCombinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidParameterValue` instead.
    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidReplicationGroupState` instead.
    class InvalidReplicationGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidReplicationGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidServerlessCacheSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidServerlessCacheSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidServerlessCacheStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidServerlessCacheStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSnapshotState` instead.
    class InvalidSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidUserGroupState` instead.
    class InvalidUserGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidUserGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidUserState` instead.
    class InvalidUserStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidUserStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidVPCNetworkStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NoOperationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::NoOperationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NodeGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::NodeGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `NodeGroupsPerReplicationGroupQuotaExceeded` instead.
    class NodeGroupsPerReplicationGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::NodeGroupsPerReplicationGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `NodeQuotaForClusterExceeded` instead.
    class NodeQuotaForClusterExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::NodeQuotaForClusterExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `NodeQuotaForCustomerExceeded` instead.
    class NodeQuotaForCustomerExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::NodeQuotaForCustomerExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReplicationGroupAlreadyExists` instead.
    class ReplicationGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReplicationGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReplicationGroupAlreadyUnderMigrationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReplicationGroupAlreadyUnderMigrationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReplicationGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReplicationGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ReplicationGroupNotUnderMigrationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReplicationGroupNotUnderMigrationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedCacheNodeAlreadyExists` instead.
    class ReservedCacheNodeAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReservedCacheNodeAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedCacheNodeNotFound` instead.
    class ReservedCacheNodeNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReservedCacheNodeNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedCacheNodeQuotaExceeded` instead.
    class ReservedCacheNodeQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReservedCacheNodeQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedCacheNodesOfferingNotFound` instead.
    class ReservedCacheNodesOfferingNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ReservedCacheNodesOfferingNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServerlessCacheAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServerlessCacheAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServerlessCacheNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServerlessCacheNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServerlessCacheQuotaForCustomerExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServerlessCacheQuotaForCustomerExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServerlessCacheSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServerlessCacheSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServerlessCacheSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServerlessCacheSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServerlessCacheSnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServerlessCacheSnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServiceLinkedRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServiceLinkedRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServiceUpdateNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::ServiceUpdateNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::SnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotFeatureNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::SnapshotFeatureNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::SnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::SnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::SubnetInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetNotAllowedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::SubnetNotAllowedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TagNotFound` instead.
    class TagNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::TagNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagQuotaPerResourceExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::TagQuotaPerResourceExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TestFailoverNotAvailableFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::TestFailoverNotAvailableFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserAlreadyExists` instead.
    class UserAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::UserAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserGroupAlreadyExists` instead.
    class UserGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::UserGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserGroupNotFound` instead.
    class UserGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::UserGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserGroupQuotaExceeded` instead.
    class UserGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::UserGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserNotFound` instead.
    class UserNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::UserNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UserQuotaExceeded` instead.
    class UserQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElastiCache::Types::UserQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
