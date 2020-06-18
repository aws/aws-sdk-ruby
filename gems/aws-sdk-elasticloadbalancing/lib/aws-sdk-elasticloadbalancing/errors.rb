# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
  # * {CertificateNotFoundException}
  # * {DependencyThrottleException}
  # * {DuplicateAccessPointNameException}
  # * {DuplicateListenerException}
  # * {DuplicatePolicyNameException}
  # * {DuplicateTagKeysException}
  # * {InvalidConfigurationRequestException}
  # * {InvalidEndPointException}
  # * {InvalidSchemeException}
  # * {InvalidSecurityGroupException}
  # * {InvalidSubnetException}
  # * {ListenerNotFoundException}
  # * {LoadBalancerAttributeNotFoundException}
  # * {OperationNotPermittedException}
  # * {PolicyNotFoundException}
  # * {PolicyTypeNotFoundException}
  # * {SubnetNotFoundException}
  # * {TooManyAccessPointsException}
  # * {TooManyPoliciesException}
  # * {TooManyTagsException}
  # * {UnsupportedProtocolException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessPointNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::AccessPointNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CertificateNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::CertificateNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DependencyThrottleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DependencyThrottleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateAccessPointNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateAccessPointNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateListenerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateListenerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicatePolicyNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicatePolicyNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DuplicateTagKeysException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateTagKeysException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidConfigurationRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidConfigurationRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEndPointException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidEndPointException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSchemeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSchemeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSecurityGroupException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSecurityGroupException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSubnetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ListenerNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::ListenerNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LoadBalancerAttributeNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::LoadBalancerAttributeNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationNotPermittedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::OperationNotPermittedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class PolicyNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::PolicyNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class PolicyTypeNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::PolicyTypeNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::SubnetNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyAccessPointsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::TooManyAccessPointsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyPoliciesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::TooManyPoliciesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::ElasticLoadBalancing::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

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
