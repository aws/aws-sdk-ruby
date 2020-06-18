# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
  # * {AllocationIdNotFoundException}
  # * {AvailabilityZoneNotSupportedException}
  # * {CertificateNotFoundException}
  # * {DuplicateListenerException}
  # * {DuplicateLoadBalancerNameException}
  # * {DuplicateTagKeysException}
  # * {DuplicateTargetGroupNameException}
  # * {HealthUnavailableException}
  # * {IncompatibleProtocolsException}
  # * {InvalidConfigurationRequestException}
  # * {InvalidLoadBalancerActionException}
  # * {InvalidSchemeException}
  # * {InvalidSecurityGroupException}
  # * {InvalidSubnetException}
  # * {InvalidTargetException}
  # * {ListenerNotFoundException}
  # * {LoadBalancerNotFoundException}
  # * {OperationNotPermittedException}
  # * {PriorityInUseException}
  # * {ResourceInUseException}
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
  # * {TooManyUniqueTargetGroupsPerLoadBalancerException}
  # * {UnsupportedProtocolException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class ALPNPolicyNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ALPNPolicyNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AllocationIdNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::AllocationIdNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AvailabilityZoneNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::AvailabilityZoneNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CertificateNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::CertificateNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateListenerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateListenerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateLoadBalancerNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateLoadBalancerNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateTagKeysException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTagKeysException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateTargetGroupNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::DuplicateTargetGroupNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HealthUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::HealthUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IncompatibleProtocolsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::IncompatibleProtocolsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidConfigurationRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidConfigurationRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidLoadBalancerActionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidLoadBalancerActionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSchemeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSchemeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSecurityGroupException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSecurityGroupException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidSubnetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTargetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::InvalidTargetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ListenerNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ListenerNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LoadBalancerNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::LoadBalancerNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationNotPermittedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::OperationNotPermittedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class PriorityInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::PriorityInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::ResourceInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class RuleNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::RuleNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SSLPolicyNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::SSLPolicyNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::SubnetNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TargetGroupAssociationLimitException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TargetGroupAssociationLimitException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TargetGroupNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TargetGroupNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyActionsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyActionsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyCertificatesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyCertificatesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyListenersException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyListenersException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyLoadBalancersException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyLoadBalancersException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyRegistrationsForTargetIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyRegistrationsForTargetIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyRulesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyRulesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTargetGroupsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTargetGroupsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTargetsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyTargetsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyUniqueTargetGroupsPerLoadBalancerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancingV2::Types::TooManyUniqueTargetGroupsPerLoadBalancerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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
