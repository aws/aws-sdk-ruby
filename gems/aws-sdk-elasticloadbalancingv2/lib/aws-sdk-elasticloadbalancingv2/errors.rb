# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticLoadBalancingV2

  # When ElasticLoadBalancingV2 returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::ElasticLoadBalancingV2::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all ElasticLoadBalancingV2 errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticLoadBalancingV2::Errors::ServiceError
  #       # rescues all ElasticLoadBalancingV2 API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {ALPNPolicyNotSupportedException}
  #    * This error class is not used. `ALPNPolicyNotFound` is used during parsing instead.
  # * {AllocationIdNotFoundException}
  #    * This error class is not used. `AllocationIdNotFound` is used during parsing instead.
  # * {AvailabilityZoneNotSupportedException}
  #    * This error class is not used. `AvailabilityZoneNotSupported` is used during parsing instead.
  # * {CaCertificatesBundleNotFoundException}
  #    * This error class is not used. `CaCertificatesBundleNotFound` is used during parsing instead.
  # * {CapacityDecreaseRequestsLimitExceededException}
  #    * This error class is not used. `CapacityDecreaseRequestLimitExceeded` is used during parsing instead.
  # * {CapacityReservationPendingException}
  #    * This error class is not used. `CapacityReservationPending` is used during parsing instead.
  # * {CapacityUnitsLimitExceededException}
  #    * This error class is not used. `CapacityUnitsLimitExceeded` is used during parsing instead.
  # * {CertificateNotFoundException}
  #    * This error class is not used. `CertificateNotFound` is used during parsing instead.
  # * {DeleteAssociationSameAccountException}
  #    * This error class is not used. `DeleteAssociationSameAccount` is used during parsing instead.
  # * {DuplicateListenerException}
  #    * This error class is not used. `DuplicateListener` is used during parsing instead.
  # * {DuplicateLoadBalancerNameException}
  #    * This error class is not used. `DuplicateLoadBalancerName` is used during parsing instead.
  # * {DuplicateTagKeysException}
  #    * This error class is not used. `DuplicateTagKeys` is used during parsing instead.
  # * {DuplicateTargetGroupNameException}
  #    * This error class is not used. `DuplicateTargetGroupName` is used during parsing instead.
  # * {DuplicateTrustStoreNameException}
  #    * This error class is not used. `DuplicateTrustStoreName` is used during parsing instead.
  # * {HealthUnavailableException}
  #    * This error class is not used. `HealthUnavailable` is used during parsing instead.
  # * {IncompatibleProtocolsException}
  #    * This error class is not used. `IncompatibleProtocols` is used during parsing instead.
  # * {InsufficientCapacityException}
  #    * This error class is not used. `InsufficientCapacity` is used during parsing instead.
  # * {InvalidCaCertificatesBundleException}
  #    * This error class is not used. `InvalidCaCertificatesBundle` is used during parsing instead.
  # * {InvalidConfigurationRequestException}
  #    * This error class is not used. `InvalidConfigurationRequest` is used during parsing instead.
  # * {InvalidLoadBalancerActionException}
  #    * This error class is not used. `InvalidLoadBalancerAction` is used during parsing instead.
  # * {InvalidRevocationContentException}
  #    * This error class is not used. `InvalidRevocationContent` is used during parsing instead.
  # * {InvalidSchemeException}
  #    * This error class is not used. `InvalidScheme` is used during parsing instead.
  # * {InvalidSecurityGroupException}
  #    * This error class is not used. `InvalidSecurityGroup` is used during parsing instead.
  # * {InvalidSubnetException}
  #    * This error class is not used. `InvalidSubnet` is used during parsing instead.
  # * {InvalidTargetException}
  #    * This error class is not used. `InvalidTarget` is used during parsing instead.
  # * {ListenerNotFoundException}
  #    * This error class is not used. `ListenerNotFound` is used during parsing instead.
  # * {LoadBalancerNotFoundException}
  #    * This error class is not used. `LoadBalancerNotFound` is used during parsing instead.
  # * {OperationNotPermittedException}
  #    * This error class is not used. `OperationNotPermitted` is used during parsing instead.
  # * {PriorRequestNotCompleteException}
  #    * This error class is not used. `PriorRequestNotComplete` is used during parsing instead.
  # * {PriorityInUseException}
  #    * This error class is not used. `PriorityInUse` is used during parsing instead.
  # * {ResourceInUseException}
  #    * This error class is not used. `ResourceInUse` is used during parsing instead.
  # * {ResourceNotFoundException}
  #    * This error class is not used. `ResourceNotFound` is used during parsing instead.
  # * {RevocationContentNotFoundException}
  #    * This error class is not used. `RevocationContentNotFound` is used during parsing instead.
  # * {RevocationIdNotFoundException}
  #    * This error class is not used. `RevocationIdNotFound` is used during parsing instead.
  # * {RuleNotFoundException}
  #    * This error class is not used. `RuleNotFound` is used during parsing instead.
  # * {SSLPolicyNotFoundException}
  #    * This error class is not used. `SSLPolicyNotFound` is used during parsing instead.
  # * {SubnetNotFoundException}
  #    * This error class is not used. `SubnetNotFound` is used during parsing instead.
  # * {TargetGroupAssociationLimitException}
  #    * This error class is not used. `TargetGroupAssociationLimit` is used during parsing instead.
  # * {TargetGroupNotFoundException}
  #    * This error class is not used. `TargetGroupNotFound` is used during parsing instead.
  # * {TooManyActionsException}
  #    * This error class is not used. `TooManyActions` is used during parsing instead.
  # * {TooManyCertificatesException}
  #    * This error class is not used. `TooManyCertificates` is used during parsing instead.
  # * {TooManyListenersException}
  #    * This error class is not used. `TooManyListeners` is used during parsing instead.
  # * {TooManyLoadBalancersException}
  #    * This error class is not used. `TooManyLoadBalancers` is used during parsing instead.
  # * {TooManyRegistrationsForTargetIdException}
  #    * This error class is not used. `TooManyRegistrationsForTargetId` is used during parsing instead.
  # * {TooManyRulesException}
  #    * This error class is not used. `TooManyRules` is used during parsing instead.
  # * {TooManyTagsException}
  #    * This error class is not used. `TooManyTags` is used during parsing instead.
  # * {TooManyTargetGroupsException}
  #    * This error class is not used. `TooManyTargetGroups` is used during parsing instead.
  # * {TooManyTargetsException}
  #    * This error class is not used. `TooManyTargets` is used during parsing instead.
  # * {TooManyTrustStoreRevocationEntriesException}
  #    * This error class is not used. `TooManyTrustStoreRevocationEntries` is used during parsing instead.
  # * {TooManyTrustStoresException}
  #    * This error class is not used. `TooManyTrustStores` is used during parsing instead.
  # * {TooManyUniqueTargetGroupsPerLoadBalancerException}
  #    * This error class is not used. `TooManyUniqueTargetGroupsPerLoadBalancer` is used during parsing instead.
  # * {TrustStoreAssociationNotFoundException}
  #    * This error class is not used. `AssociationNotFound` is used during parsing instead.
  # * {TrustStoreInUseException}
  #    * This error class is not used. `TrustStoreInUse` is used during parsing instead.
  # * {TrustStoreNotFoundException}
  #    * This error class is not used. `TrustStoreNotFound` is used during parsing instead.
  # * {TrustStoreNotReadyException}
  #    * This error class is not used. `TrustStoreNotReady` is used during parsing instead.
  # * {UnsupportedProtocolException}
  #    * This error class is not used. `UnsupportedProtocol` is used during parsing instead.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  # Some existing error classes may use a different class name than the one documented.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `ALPNPolicyNotFound` instead.
    class ALPNPolicyNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ALPNPolicyNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AllocationIdNotFound` instead.
    class AllocationIdNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::AllocationIdNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AvailabilityZoneNotSupported` instead.
    class AvailabilityZoneNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::AvailabilityZoneNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CaCertificatesBundleNotFound` instead.
    class CaCertificatesBundleNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::CaCertificatesBundleNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CapacityDecreaseRequestLimitExceeded` instead.
    class CapacityDecreaseRequestsLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::CapacityDecreaseRequestsLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CapacityReservationPending` instead.
    class CapacityReservationPendingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::CapacityReservationPendingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CapacityUnitsLimitExceeded` instead.
    class CapacityUnitsLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::CapacityUnitsLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CertificateNotFound` instead.
    class CertificateNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::CertificateNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DeleteAssociationSameAccount` instead.
    class DeleteAssociationSameAccountException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DeleteAssociationSameAccountException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateListener` instead.
    class DuplicateListenerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateListenerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateLoadBalancerName` instead.
    class DuplicateLoadBalancerNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateLoadBalancerNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateTagKeys` instead.
    class DuplicateTagKeysException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTagKeysException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateTargetGroupName` instead.
    class DuplicateTargetGroupNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTargetGroupNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateTrustStoreName` instead.
    class DuplicateTrustStoreNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTrustStoreNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `HealthUnavailable` instead.
    class HealthUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::HealthUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `IncompatibleProtocols` instead.
    class IncompatibleProtocolsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::IncompatibleProtocolsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientCapacity` instead.
    class InsufficientCapacityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InsufficientCapacityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidCaCertificatesBundle` instead.
    class InvalidCaCertificatesBundleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidCaCertificatesBundleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidConfigurationRequest` instead.
    class InvalidConfigurationRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidConfigurationRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidLoadBalancerAction` instead.
    class InvalidLoadBalancerActionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidLoadBalancerActionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidRevocationContent` instead.
    class InvalidRevocationContentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidRevocationContentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidScheme` instead.
    class InvalidSchemeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSchemeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSecurityGroup` instead.
    class InvalidSecurityGroupException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSecurityGroupException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSubnet` instead.
    class InvalidSubnetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSubnetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidTarget` instead.
    class InvalidTargetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidTargetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ListenerNotFound` instead.
    class ListenerNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ListenerNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `LoadBalancerNotFound` instead.
    class LoadBalancerNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::LoadBalancerNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `OperationNotPermitted` instead.
    class OperationNotPermittedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::OperationNotPermittedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `PriorRequestNotComplete` instead.
    class PriorRequestNotCompleteException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::PriorRequestNotCompleteException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `PriorityInUse` instead.
    class PriorityInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::PriorityInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceInUse` instead.
    class ResourceInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ResourceInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResourceNotFound` instead.
    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RevocationContentNotFound` instead.
    class RevocationContentNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::RevocationContentNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RevocationIdNotFound` instead.
    class RevocationIdNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::RevocationIdNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RuleNotFound` instead.
    class RuleNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::RuleNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SSLPolicyNotFound` instead.
    class SSLPolicyNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::SSLPolicyNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubnetNotFound` instead.
    class SubnetNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::SubnetNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TargetGroupAssociationLimit` instead.
    class TargetGroupAssociationLimitException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TargetGroupAssociationLimitException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TargetGroupNotFound` instead.
    class TargetGroupNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TargetGroupNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyActions` instead.
    class TooManyActionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyActionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyCertificates` instead.
    class TooManyCertificatesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyCertificatesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyListeners` instead.
    class TooManyListenersException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyListenersException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyLoadBalancers` instead.
    class TooManyLoadBalancersException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyLoadBalancersException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyRegistrationsForTargetId` instead.
    class TooManyRegistrationsForTargetIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyRegistrationsForTargetIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyRules` instead.
    class TooManyRulesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyRulesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyTags` instead.
    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyTargetGroups` instead.
    class TooManyTargetGroupsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTargetGroupsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyTargets` instead.
    class TooManyTargetsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTargetsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyTrustStoreRevocationEntries` instead.
    class TooManyTrustStoreRevocationEntriesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTrustStoreRevocationEntriesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyTrustStores` instead.
    class TooManyTrustStoresException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTrustStoresException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyUniqueTargetGroupsPerLoadBalancer` instead.
    class TooManyUniqueTargetGroupsPerLoadBalancerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyUniqueTargetGroupsPerLoadBalancerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AssociationNotFound` instead.
    class TrustStoreAssociationNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreAssociationNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TrustStoreInUse` instead.
    class TrustStoreInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TrustStoreNotFound` instead.
    class TrustStoreNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TrustStoreNotReady` instead.
    class TrustStoreNotReadyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TrustStoreNotReadyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UnsupportedProtocol` instead.
    class UnsupportedProtocolException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::UnsupportedProtocolException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
