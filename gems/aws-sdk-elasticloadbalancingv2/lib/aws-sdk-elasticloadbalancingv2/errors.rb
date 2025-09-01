# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancingV2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ElasticLoadBalancingV2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticLoadBalancingV2::Errors::ServiceError
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
  # * {ALPNPolicyNotSupportedException}
  # * {AllocationIdNotFoundException}
  # * {AvailabilityZoneNotSupportedException}
  # * {CaCertificatesBundleNotFoundException}
  # * {CapacityDecreaseRequestsLimitExceededException}
  # * {CapacityReservationPendingException}
  # * {CapacityUnitsLimitExceededException}
  # * {CertificateNotFoundException}
  # * {DeleteAssociationSameAccountException}
  # * {DuplicateListenerException}
  # * {DuplicateLoadBalancerNameException}
  # * {DuplicateTagKeysException}
  # * {DuplicateTargetGroupNameException}
  # * {DuplicateTrustStoreNameException}
  # * {HealthUnavailableException}
  # * {IncompatibleProtocolsException}
  # * {InsufficientCapacityException}
  # * {InvalidCaCertificatesBundleException}
  # * {InvalidConfigurationRequestException}
  # * {InvalidLoadBalancerActionException}
  # * {InvalidRevocationContentException}
  # * {InvalidSchemeException}
  # * {InvalidSecurityGroupException}
  # * {InvalidSubnetException}
  # * {InvalidTargetException}
  # * {ListenerNotFoundException}
  # * {LoadBalancerNotFoundException}
  # * {OperationNotPermittedException}
  # * {PriorRequestNotCompleteException}
  # * {PriorityInUseException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {RevocationContentNotFoundException}
  # * {RevocationIdNotFoundException}
  # * {RuleNotFoundException}
  # * {SSLPolicyNotFoundException}
  # * {SubnetNotFoundException}
  # * {TargetGroupAssociationLimitException}
  # * {TargetGroupNotFoundException}
  # * {TooManyActionsException}
  # * {TooManyCertificatesException}
  # * {TooManyListenersException}
  # * {TooManyLoadBalancersException}
  # * {TooManyRegistrationsForTargetIdException}
  # * {TooManyRulesException}
  # * {TooManyTagsException}
  # * {TooManyTargetGroupsException}
  # * {TooManyTargetsException}
  # * {TooManyTrustStoreRevocationEntriesException}
  # * {TooManyTrustStoresException}
  # * {TooManyUniqueTargetGroupsPerLoadBalancerException}
  # * {TrustStoreAssociationNotFoundException}
  # * {TrustStoreInUseException}
  # * {TrustStoreNotFoundException}
  # * {TrustStoreNotReadyException}
  # * {UnsupportedProtocolException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified ALPN policy is not supported.</p>
    class ALPNPolicyNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::ALPNPolicyNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified allocation ID does not exist.</p>
    class AllocationIdNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::AllocationIdNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Availability Zone is not supported.</p>
    class AvailabilityZoneNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::AvailabilityZoneNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified ca certificate bundle does not exist.</p>
    class CaCertificatesBundleNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::CaCertificatesBundleNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've exceeded the daily capacity decrease limit for this reservation.</p>
    class CapacityDecreaseRequestsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::CapacityDecreaseRequestsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is a pending capacity reservation.</p>
    class CapacityReservationPendingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::CapacityReservationPendingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've exceeded the capacity units limit.</p>
    class CapacityUnitsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::CapacityUnitsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified certificate does not exist.</p>
    class CertificateNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::CertificateNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified association can't be within the same account.</p>
    class DeleteAssociationSameAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::DeleteAssociationSameAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A listener with the specified port already exists.</p>
    class DuplicateListenerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateListenerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A load balancer with the specified name already exists.</p>
    class DuplicateLoadBalancerNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateLoadBalancerNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A tag key was specified more than once.</p>
    class DuplicateTagKeysException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTagKeysException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A target group with the specified name already exists.</p>
    class DuplicateTargetGroupNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTargetGroupNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A trust store with the specified name already exists.</p>
    class DuplicateTrustStoreNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTrustStoreNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The health of the specified targets could not be retrieved due to an internal
    #       error.</p>
    class HealthUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::HealthUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified configuration is not valid with this protocol.</p>
    class IncompatibleProtocolsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::IncompatibleProtocolsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is insufficient capacity to reserve.</p>
    class InsufficientCapacityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InsufficientCapacityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified ca certificate bundle is in an invalid format, or corrupt.</p>
    class InvalidCaCertificatesBundleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidCaCertificatesBundleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested configuration is not valid.</p>
    class InvalidConfigurationRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidConfigurationRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested action is not valid.</p>
    class InvalidLoadBalancerActionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidLoadBalancerActionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided revocation file is an invalid format, or uses an incorrect algorithm.</p>
    class InvalidRevocationContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidRevocationContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested scheme is not valid.</p>
    class InvalidSchemeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSchemeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified security group does not exist.</p>
    class InvalidSecurityGroupException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSecurityGroupException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subnet is out of available addresses.</p>
    class InvalidSubnetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSubnetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified target does not exist, is not in the same VPC as the target group, or has an
    #       unsupported instance type.</p>
    class InvalidTargetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidTargetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified listener does not exist.</p>
    class ListenerNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::ListenerNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified load balancer does not exist.</p>
    class LoadBalancerNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::LoadBalancerNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not allowed.</p>
    class OperationNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::OperationNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not allowed while a prior request has not been completed.</p>
    class PriorRequestNotCompleteException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::PriorRequestNotCompleteException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified priority is in use.</p>
    class PriorityInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::PriorityInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified resource is in use.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified revocation file does not exist.</p>
    class RevocationContentNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::RevocationContentNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified revocation ID does not exist.</p>
    class RevocationIdNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::RevocationIdNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified rule does not exist.</p>
    class RuleNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::RuleNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified SSL policy does not exist.</p>
    class SSLPolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::SSLPolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified subnet does not exist.</p>
    class SubnetNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::SubnetNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of load balancers per target group.</p>
    class TargetGroupAssociationLimitException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TargetGroupAssociationLimitException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified target group does not exist.</p>
    class TargetGroupNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TargetGroupNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of actions per rule.</p>
    class TooManyActionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyActionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of certificates per load balancer.</p>
    class TooManyCertificatesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyCertificatesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of listeners per load balancer.</p>
    class TooManyListenersException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyListenersException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of load balancers for your Amazon Web Services
    #       account.</p>
    class TooManyLoadBalancersException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyLoadBalancersException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of times a target can be registered with a load
    #       balancer.</p>
    class TooManyRegistrationsForTargetIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyRegistrationsForTargetIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of rules per load balancer.</p>
    class TooManyRulesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyRulesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of tags for this resource.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of target groups for your Amazon Web Services
    #       account.</p>
    class TooManyTargetGroupsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTargetGroupsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of targets.</p>
    class TooManyTargetsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTargetsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified trust store has too many revocation entries.</p>
    class TooManyTrustStoreRevocationEntriesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTrustStoreRevocationEntriesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of trust stores for your Amazon Web Services account.</p>
    class TooManyTrustStoresException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTrustStoresException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the limit on the number of unique target groups per load balancer across
    #       all listeners. If a target group is used by multiple actions for a load balancer, it is
    #       counted as only one use.</p>
    class TooManyUniqueTargetGroupsPerLoadBalancerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyUniqueTargetGroupsPerLoadBalancerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified association does not exist.</p>
    class TrustStoreAssociationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreAssociationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified trust store is currently in use.</p>
    class TrustStoreInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified trust store does not exist.</p>
    class TrustStoreNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified trust store is not active.</p>
    class TrustStoreNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified protocol is not supported.</p>
    class UnsupportedProtocolException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancingV2::Types::UnsupportedProtocolException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
