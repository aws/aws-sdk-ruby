# frozen_string_literal: true

# This is generated code!

module Aws::AutoScaling
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::AutoScaling::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::AutoScaling::Errors::ServiceError
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
  # * {ActiveInstanceRefreshNotFoundFault}
  # * {AlreadyExistsFault}
  # * {IdempotentCallInProgressFault}
  # * {IdempotentParameterMismatchError}
  # * {InstanceRefreshInProgressFault}
  # * {InvalidNextToken}
  # * {IrreversibleInstanceRefreshFault}
  # * {LimitExceededFault}
  # * {ResourceContentionFault}
  # * {ResourceInUseFault}
  # * {ScalingActivityInProgressFault}
  # * {ServiceLinkedRoleFailure}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request failed because an active instance refresh or rollback for the specified
    #             Auto Scaling group was not found.</p>
    class ActiveInstanceRefreshNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::ActiveInstanceRefreshNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You already have an Auto Scaling group or launch configuration with this name.</p>
    class AlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::AlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             The service is currently processing another request with the same client token. Retry
    #             the request with the same client token—the in-flight operation will complete and return
    #             its result.
    #         </p>
    class IdempotentCallInProgressFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::IdempotentCallInProgressFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             Indicates that the parameters in the current request do not match the parameters from a previous request with the same client token within the idempotency window.
    #         </p>
    class IdempotentParameterMismatchError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::IdempotentParameterMismatchError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because an active instance refresh already exists for the specified
    #             Auto Scaling group.</p>
    class InstanceRefreshInProgressFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::InstanceRefreshInProgressFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>NextToken</code> value is not valid.</p>
    class InvalidNextToken < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::InvalidNextToken] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The request failed because a desired configuration was not found or an incompatible
    #             launch template (uses a Systems Manager parameter instead of an AMI ID) or launch
    #             template version (<code>$Latest</code> or <code>$Default</code>) is present on the Auto Scaling
    #             group.</p>
    class IrreversibleInstanceRefreshFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::IrreversibleInstanceRefreshFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have already reached a limit for your Amazon EC2 Auto Scaling
    #             resources (for example, Auto Scaling groups, launch configurations, or lifecycle hooks). For
    #             more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html">DescribeAccountLimits</a> in the <i>Amazon EC2 Auto Scaling API
    #             Reference</i>.</p>
    class LimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::LimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You already have a pending update to an Amazon EC2 Auto Scaling resource (for example, an Auto Scaling group,
    #             instance, or load balancer).</p>
    class ResourceContentionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::ResourceContentionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The operation can't be performed because the resource is in use.</p>
    class ResourceInUseFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::ResourceInUseFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The operation can't be performed because there are scaling activities in
    #             progress.</p>
    class ScalingActivityInProgressFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::ScalingActivityInProgressFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The service-linked role is not yet ready for use.</p>
    class ServiceLinkedRoleFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AutoScaling::Types::ServiceLinkedRoleFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
