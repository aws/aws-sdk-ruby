# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancing
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ElasticLoadBalancing::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticLoadBalancing::Errors::ServiceError
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
    extend Smithy::Client::DynamicErrors

    # <p>The specified load balancer does not exist.</p>
    class AccessPointNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::AccessPointNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified ARN does not refer to a valid SSL certificate in AWS Identity and Access Management (IAM) 
    #             or AWS Certificate Manager (ACM). Note that if you recently uploaded the certificate to IAM, this error might 
    #             indicate that the certificate is not fully available yet.</p>
    class CertificateNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::CertificateNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A request made by Elastic Load Balancing to another service exceeds the maximum request rate permitted for your account.</p>
    class DependencyThrottleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::DependencyThrottleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified load balancer name already exists for this account.</p>
    class DuplicateAccessPointNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateAccessPointNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A listener already exists for the specified load balancer name and port, but with a different instance port, protocol, or SSL certificate.</p>
    class DuplicateListenerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateListenerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A policy with the specified name already exists for this load balancer.</p>
    class DuplicatePolicyNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::DuplicatePolicyNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A tag key was specified more than once.</p>
    class DuplicateTagKeysException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::DuplicateTagKeysException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested configuration change is not valid.</p>
    class InvalidConfigurationRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::InvalidConfigurationRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified endpoint is not valid.</p>
    class InvalidEndPointException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::InvalidEndPointException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified value for the schema is not valid. You can only specify a scheme for load balancers in a VPC.</p>
    class InvalidSchemeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSchemeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of the specified security groups do not exist.</p>
    class InvalidSecurityGroupException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSecurityGroupException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified VPC has no associated Internet gateway.</p>
    class InvalidSubnetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::InvalidSubnetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The load balancer does not have a listener configured at the specified port.</p>
    class ListenerNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::ListenerNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified load balancer attribute does not exist.</p>
    class LoadBalancerAttributeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::LoadBalancerAttributeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not allowed.</p>
    class OperationNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::OperationNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of the specified policies do not exist.</p>
    class PolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::PolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of the specified policy types do not exist.</p>
    class PolicyTypeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::PolicyTypeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more of the specified subnets do not exist.</p>
    class SubnetNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::SubnetNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for the number of load balancers has been reached.</p>
    class TooManyAccessPointsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::TooManyAccessPointsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for the number of policies for this load balancer has been reached.</p>
    class TooManyPoliciesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::TooManyPoliciesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for the number of tags that can be assigned to a load balancer has been reached.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified protocol or signature version is not supported.</p>
    class UnsupportedProtocolException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ElasticLoadBalancing::Types::UnsupportedProtocolException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
