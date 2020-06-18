# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DAX

  # When DAX returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::DAX::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all DAX errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DAX::Errors::ServiceError
  #       # rescues all DAX API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
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

    extend Aws::Errors::DynamicErrors

    class ClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ClusterQuotaForCustomerExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ClusterQuotaForCustomerExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InsufficientClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidARNFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidARNFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidParameterCombinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidParameterCombinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidParameterValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidParameterValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidVPCNetworkStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NodeNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::NodeNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NodeQuotaForClusterExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::NodeQuotaForClusterExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NodeQuotaForCustomerExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::NodeQuotaForCustomerExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ParameterGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ParameterGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServiceLinkedRoleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::ServiceLinkedRoleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::SubnetGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetGroupInUseFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::SubnetGroupInUseFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::SubnetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::SubnetGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::SubnetInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::SubnetQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::TagNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagQuotaPerResourceExceeded < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DAX::Types::TagQuotaPerResourceExceeded] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
