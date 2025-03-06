# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling

  # When AutoScaling returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::AutoScaling::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all AutoScaling errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::AutoScaling::Errors::ServiceError
  #       # rescues all AutoScaling API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {ActiveInstanceRefreshNotFoundFault}
  #    * This error class is not used. `ActiveInstanceRefreshNotFound` is used during parsing instead.
  # * {AlreadyExistsFault}
  #    * This error class is not used. `AlreadyExists` is used during parsing instead.
  # * {InstanceRefreshInProgressFault}
  #    * This error class is not used. `InstanceRefreshInProgress` is used during parsing instead.
  # * {InvalidNextToken}
  # * {IrreversibleInstanceRefreshFault}
  #    * This error class is not used. `IrreversibleInstanceRefresh` is used during parsing instead.
  # * {LimitExceededFault}
  #    * This error class is not used. `LimitExceeded` is used during parsing instead.
  # * {ResourceContentionFault}
  #    * This error class is not used. `ResourceContention` is used during parsing instead.
  # * {ResourceInUseFault}
  #    * This error class is not used. `ResourceInUse` is used during parsing instead.
  # * {ScalingActivityInProgressFault}
  #    * This error class is not used. `ScalingActivityInProgress` is used during parsing instead.
  # * {ServiceLinkedRoleFailure}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  # Some existing error classes may use a different class name than the one documented.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `ActiveInstanceRefreshNotFound` instead.
    class ActiveInstanceRefreshNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::ActiveInstanceRefreshNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AlreadyExists` instead.
    class AlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::AlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InstanceRefreshInProgress` instead.
    class InstanceRefreshInProgressFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::InstanceRefreshInProgressFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidNextToken < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::InvalidNextToken] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `IrreversibleInstanceRefresh` instead.
    class IrreversibleInstanceRefreshFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::IrreversibleInstanceRefreshFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `LimitExceeded` instead.
    class LimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::LimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceContention` instead.
    class ResourceContentionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::ResourceContentionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceInUse` instead.
    class ResourceInUseFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::ResourceInUseFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ScalingActivityInProgress` instead.
    class ScalingActivityInProgressFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::ScalingActivityInProgressFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceLinkedRoleFailure < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::AutoScaling::Types::ServiceLinkedRoleFailure] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
