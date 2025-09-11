# frozen_string_literal: true

# This is generated code!

module Aws::DAX
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DAX::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DAX::Errors::ServiceError
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
  # * {ClusterAlreadyExistsFault}
  # * {ClusterNotFoundFault}
  # * {ClusterQuotaForCustomerExceededFault}
  # * {InsufficientClusterCapacityFault}
  # * {InvalidARNFault}
  # * {InvalidClusterStateFault}
  # * {InvalidParameterCombinationException}
  # * {InvalidParameterGroupStateFault}
  # * {InvalidParameterValueException}
  # * {InvalidSubnet}
  # * {InvalidVPCNetworkStateFault}
  # * {NodeNotFoundFault}
  # * {NodeQuotaForClusterExceededFault}
  # * {NodeQuotaForCustomerExceededFault}
  # * {ParameterGroupAlreadyExistsFault}
  # * {ParameterGroupNotFoundFault}
  # * {ParameterGroupQuotaExceededFault}
  # * {ServiceLinkedRoleNotFoundFault}
  # * {ServiceQuotaExceededException}
  # * {SubnetGroupAlreadyExistsFault}
  # * {SubnetGroupInUseFault}
  # * {SubnetGroupNotFoundFault}
  # * {SubnetGroupQuotaExceededFault}
  # * {SubnetInUse}
  # * {SubnetQuotaExceededFault}
  # * {TagNotFoundFault}
  # * {TagQuotaPerResourceExceeded}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You already have a DAX cluster with the given identifier.</p>
    class ClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::ClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested cluster ID does not refer to an existing DAX cluster.</p>
    class ClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::ClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have attempted to exceed the maximum number of DAX clusters for your AWS
    #             account.</p>
    class ClusterQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::ClusterQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There are not enough system resources to create the cluster you requested (or to
    #             resize an already-existing cluster). </p>
    class InsufficientClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::InsufficientClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>
    class InvalidARNFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::InvalidARNFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested DAX cluster is not in the <i>available</i>
    #             state.</p>
    class InvalidClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::InvalidClusterStateFault] data
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
      # @param [Aws::DAX::Types::InvalidParameterCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameters in a parameter group are in an invalid state.</p>
    class InvalidParameterGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::InvalidParameterGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value for a parameter is invalid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::InvalidParameterValueException] data
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
      # @param [Aws::DAX::Types::InvalidSubnet] data
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
      # @param [Aws::DAX::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>None of the nodes in the cluster have the given node ID.</p>
    class NodeNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::NodeNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have attempted to exceed the maximum number of nodes for a DAX
    #             cluster.</p>
    class NodeQuotaForClusterExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::NodeQuotaForClusterExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have attempted to exceed the maximum number of nodes for your AWS
    #             account.</p>
    class NodeQuotaForCustomerExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::NodeQuotaForCustomerExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter group already exists.</p>
    class ParameterGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::ParameterGroupAlreadyExistsFault] data
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
      # @param [Aws::DAX::Types::ParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have attempted to exceed the maximum number of parameter groups.</p>
    class ParameterGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::ParameterGroupQuotaExceededFault] data
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
      # @param [Aws::DAX::Types::ServiceLinkedRoleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have reached the maximum number of x509 certificates that can be created for
    #             encrypted clusters in a 30 day period. Contact AWS customer support to discuss options
    #             for continuing to create encrypted clusters.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end
    end

    # <p>The specified subnet group already exists.</p>
    class SubnetGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::SubnetGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subnet group is currently in use.</p>
    class SubnetGroupInUseFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::SubnetGroupInUseFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested subnet group name does not refer to an existing subnet
    #             group.</p>
    class SubnetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::SubnetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of
    #             subnets in a subnet group.</p>
    class SubnetGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::SubnetGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested subnet is being used by another subnet group.</p>
    class SubnetInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::SubnetInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be processed because it would exceed the allowed number of
    #             subnets in a subnet group.</p>
    class SubnetQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::SubnetQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The tag does not exist.</p>
    class TagNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::TagNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the maximum number of tags for this DAX cluster.</p>
    class TagQuotaPerResourceExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DAX::Types::TagQuotaPerResourceExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
