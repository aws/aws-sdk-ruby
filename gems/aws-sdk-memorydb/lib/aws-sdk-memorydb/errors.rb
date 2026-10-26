# frozen_string_literal: true

# This is generated code!

module Aws::MemoryDB
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MemoryDB::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MemoryDB::Errors::ServiceError
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
  # * {ACLAlreadyExistsFault}
  # * {ACLNotFoundFault}
  # * {ACLQuotaExceededFault}
  # * {APICallRateForCustomerExceededFault}
  # * {ClusterAlreadyExistsFault}
  # * {ClusterNotFoundFault}
  # * {ClusterQuotaForCustomerExceededFault}
  # * {DefaultUserRequired}
  # * {DuplicateUserNameFault}
  # * {InsufficientClusterCapacityFault}
  # * {InvalidACLStateFault}
  # * {InvalidARNFault}
  # * {InvalidClusterStateFault}
  # * {InvalidCredentialsException}
  # * {InvalidKMSKeyFault}
  # * {InvalidMultiRegionClusterStateFault}
  # * {InvalidNodeStateFault}
  # * {InvalidParameterCombinationException}
  # * {InvalidParameterGroupStateFault}
  # * {InvalidParameterValueException}
  # * {InvalidSnapshotStateFault}
  # * {InvalidSubnet}
  # * {InvalidUserStateFault}
  # * {InvalidVPCNetworkStateFault}
  # * {MultiRegionClusterAlreadyExistsFault}
  # * {MultiRegionClusterNotFoundFault}
  # * {MultiRegionParameterGroupNotFoundFault}
  # * {NoOperationFault}
  # * {NodeQuotaForClusterExceededFault}
  # * {NodeQuotaForCustomerExceededFault}
  # * {ParameterGroupAlreadyExistsFault}
  # * {ParameterGroupNotFoundFault}
  # * {ParameterGroupQuotaExceededFault}
  # * {ReservedNodeAlreadyExistsFault}
  # * {ReservedNodeNotFoundFault}
  # * {ReservedNodeQuotaExceededFault}
  # * {ReservedNodesOfferingNotFoundFault}
  # * {ServiceLinkedRoleNotFoundFault}
  # * {ServiceUpdateNotFoundFault}
  # * {ShardNotFoundFault}
  # * {ShardsPerClusterQuotaExceededFault}
  # * {SnapshotAlreadyExistsFault}
  # * {SnapshotNotFoundFault}
  # * {SnapshotQuotaExceededFault}
  # * {SubnetGroupAlreadyExistsFault}
  # * {SubnetGroupInUseFault}
  # * {SubnetGroupNotFoundFault}
  # * {SubnetGroupQuotaExceededFault}
  # * {SubnetInUse}
  # * {SubnetNotAllowedFault}
  # * {SubnetQuotaExceededFault}
  # * {TagNotFoundFault}
  # * {TagQuotaPerResourceExceeded}
  # * {TestFailoverNotAvailableFault}
  # * {UserAlreadyExistsFault}
  # * {UserNotFoundFault}
  # * {UserQuotaExceededFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>An ACL with the specified name already exists.</p>
    class ACLAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ACLAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified ACL does not exist.</p>
    class ACLNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ACLNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of ACLs allowed.</p>
    class ACLQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ACLQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The customer has exceeded the maximum number of API requests allowed per time period.</p>
    class APICallRateForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::APICallRateForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A cluster with the specified name already exists.</p>
    class ClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified cluster does not exist.</p>
    class ClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of clusters allowed for this customer.</p>
    class ClusterQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ClusterQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A default user is required and must be specified.</p>
    class DefaultUserRequired < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::DefaultUserRequired] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A user with the specified name already exists.</p>
    class DuplicateUserNameFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::DuplicateUserNameFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster does not have sufficient capacity to perform the requested operation.</p>
    class InsufficientClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InsufficientClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The ACL is not in a valid state for the requested operation.</p>
    class InvalidACLStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidACLStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon Resource Name (ARN) is not valid.</p>
    class InvalidARNFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidARNFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster is not in a valid state for the requested operation.</p>
    class InvalidClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided credentials are not valid.</p>
    class InvalidCredentialsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidCredentialsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified KMS key is not valid or accessible.</p>
    class InvalidKMSKeyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidKMSKeyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation cannot be performed on the multi-Region cluster in its current state.</p>
    class InvalidMultiRegionClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidMultiRegionClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The node is not in a valid state for the requested operation.</p>
    class InvalidNodeStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidNodeStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter combination is not valid.</p>
    class InvalidParameterCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidParameterCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter group is not in a valid state for the requested operation.</p>
    class InvalidParameterGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidParameterGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter value is not valid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The snapshot is not in a valid state for the requested operation.</p>
    class InvalidSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subnet is not valid.</p>
    class InvalidSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The user is not in a valid state for the requested operation.</p>
    class InvalidUserStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidUserStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The VPC network is not in a valid state for the requested operation.</p>
    class InvalidVPCNetworkStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A multi-Region cluster with the specified name already exists.</p>
    class MultiRegionClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::MultiRegionClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified multi-Region cluster does not exist.</p>
    class MultiRegionClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::MultiRegionClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified multi-Region parameter group does not exist.</p>
    class MultiRegionParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::MultiRegionParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation would result in no changes.</p>
    class NoOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::NoOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of nodes allowed for this cluster.</p>
    class NodeQuotaForClusterExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::NodeQuotaForClusterExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of nodes allowed for this customer.</p>
    class NodeQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::NodeQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A parameter group with the specified name already exists.</p>
    class ParameterGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ParameterGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter group does not exist.</p>
    class ParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of parameter groups allowed.</p>
    class ParameterGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ParameterGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You already have a reservation with the given identifier.</p>
    class ReservedNodeAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ReservedNodeAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested node does not exist.</p>
    class ReservedNodeNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ReservedNodeNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the user's node quota.</p>
    class ReservedNodeQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ReservedNodeQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested node offering does not exist.
    #
    #       </p>
    class ReservedNodesOfferingNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ReservedNodesOfferingNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The required service-linked role was not found.</p>
    class ServiceLinkedRoleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ServiceLinkedRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified service update does not exist.</p>
    class ServiceUpdateNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ServiceUpdateNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified shard does not exist.</p>
    class ShardNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ShardNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of shards allowed per cluster.</p>
    class ShardsPerClusterQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::ShardsPerClusterQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A snapshot with the specified name already exists.</p>
    class SnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified snapshot does not exist.</p>
    class SnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of snapshots allowed.</p>
    class SnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A subnet group with the specified name already exists.</p>
    class SubnetGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The subnet group is currently in use and cannot be deleted.</p>
    class SubnetGroupInUseFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetGroupInUseFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subnet group does not exist.</p>
    class SubnetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of subnet groups allowed.</p>
    class SubnetGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The subnet is currently in use and cannot be deleted.</p>
    class SubnetInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subnet is not allowed for this operation.</p>
    class SubnetNotAllowedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetNotAllowedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of subnets allowed.</p>
    class SubnetQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::SubnetQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified tag does not exist.</p>
    class TagNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::TagNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of tags allowed per resource.</p>
    class TagQuotaPerResourceExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::TagQuotaPerResourceExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Test failover is not available for this cluster configuration.</p>
    class TestFailoverNotAvailableFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::TestFailoverNotAvailableFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A user with the specified name already exists.</p>
    class UserAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::UserAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified user does not exist.</p>
    class UserNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::UserNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the maximum number of users allowed.</p>
    class UserQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MemoryDB::Types::UserQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
