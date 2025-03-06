# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticLoadBalancing

  # When ElasticLoadBalancing returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::ElasticLoadBalancing::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all ElasticLoadBalancing errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticLoadBalancing::Errors::ServiceError
  #       # rescues all ElasticLoadBalancing API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessPointNotFoundException}
  #    * This error class is not used. `LoadBalancerNotFound` is used during parsing instead.
  # * {CertificateNotFoundException}
  #    * This error class is not used. `CertificateNotFound` is used during parsing instead.
  # * {DependencyThrottleException}
  #    * This error class is not used. `DependencyThrottle` is used during parsing instead.
  # * {DuplicateAccessPointNameException}
  #    * This error class is not used. `DuplicateLoadBalancerName` is used during parsing instead.
  # * {DuplicateListenerException}
  #    * This error class is not used. `DuplicateListener` is used during parsing instead.
  # * {DuplicatePolicyNameException}
  #    * This error class is not used. `DuplicatePolicyName` is used during parsing instead.
  # * {DuplicateTagKeysException}
  #    * This error class is not used. `DuplicateTagKeys` is used during parsing instead.
  # * {InvalidConfigurationRequestException}
  #    * This error class is not used. `InvalidConfigurationRequest` is used during parsing instead.
  # * {InvalidEndPointException}
  #    * This error class is not used. `InvalidInstance` is used during parsing instead.
  # * {InvalidSchemeException}
  #    * This error class is not used. `InvalidScheme` is used during parsing instead.
  # * {InvalidSecurityGroupException}
  #    * This error class is not used. `InvalidSecurityGroup` is used during parsing instead.
  # * {InvalidSubnetException}
  #    * This error class is not used. `InvalidSubnet` is used during parsing instead.
  # * {ListenerNotFoundException}
  #    * This error class is not used. `ListenerNotFound` is used during parsing instead.
  # * {LoadBalancerAttributeNotFoundException}
  #    * This error class is not used. `LoadBalancerAttributeNotFound` is used during parsing instead.
  # * {OperationNotPermittedException}
  #    * This error class is not used. `OperationNotPermitted` is used during parsing instead.
  # * {PolicyNotFoundException}
  #    * This error class is not used. `PolicyNotFound` is used during parsing instead.
  # * {PolicyTypeNotFoundException}
  #    * This error class is not used. `PolicyTypeNotFound` is used during parsing instead.
  # * {SubnetNotFoundException}
  #    * This error class is not used. `SubnetNotFound` is used during parsing instead.
  # * {TooManyAccessPointsException}
  #    * This error class is not used. `TooManyLoadBalancers` is used during parsing instead.
  # * {TooManyPoliciesException}
  #    * This error class is not used. `TooManyPolicies` is used during parsing instead.
  # * {TooManyTagsException}
  #    * This error class is not used. `TooManyTags` is used during parsing instead.
  # * {UnsupportedProtocolException}
  #    * This error class is not used. `UnsupportedProtocol` is used during parsing instead.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  # Some existing error classes may use a different class name than the one documented.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `LoadBalancerNotFound` instead.
    class AccessPointNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::AccessPointNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CertificateNotFound` instead.
    class CertificateNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::CertificateNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DependencyThrottle` instead.
    class DependencyThrottleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DependencyThrottleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateLoadBalancerName` instead.
    class DuplicateAccessPointNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateAccessPointNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateListener` instead.
    class DuplicateListenerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateListenerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicatePolicyName` instead.
    class DuplicatePolicyNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicatePolicyNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateTagKeys` instead.
    class DuplicateTagKeysException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateTagKeysException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidConfigurationRequest` instead.
    class InvalidConfigurationRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidConfigurationRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidInstance` instead.
    class InvalidEndPointException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidEndPointException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidScheme` instead.
    class InvalidSchemeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSchemeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSecurityGroup` instead.
    class InvalidSecurityGroupException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSecurityGroupException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSubnet` instead.
    class InvalidSubnetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSubnetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ListenerNotFound` instead.
    class ListenerNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::ListenerNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `LoadBalancerAttributeNotFound` instead.
    class LoadBalancerAttributeNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::LoadBalancerAttributeNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `OperationNotPermitted` instead.
    class OperationNotPermittedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::OperationNotPermittedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `PolicyNotFound` instead.
    class PolicyNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::PolicyNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `PolicyTypeNotFound` instead.
    class PolicyTypeNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::PolicyTypeNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubnetNotFound` instead.
    class SubnetNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::SubnetNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyLoadBalancers` instead.
    class TooManyAccessPointsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::TooManyAccessPointsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyPolicies` instead.
    class TooManyPoliciesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::TooManyPoliciesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TooManyTags` instead.
    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UnsupportedProtocol` instead.
    class UnsupportedProtocolException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::UnsupportedProtocolException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
