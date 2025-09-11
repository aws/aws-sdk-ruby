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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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

    # <p></p>
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
