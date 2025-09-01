# frozen_string_literal: true

# This is generated code!

module Aws::EKS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::EKS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EKS::Errors::ServiceError
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
  # * {AccessDeniedException}
  # * {BadRequestException}
  # * {ClientException}
  # * {InvalidParameterException}
  # * {InvalidRequestException}
  # * {InvalidStateException}
  # * {NotFoundException}
  # * {ResourceInUseException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ResourcePropagationDelayException}
  # * {ServerException}
  # * {ServiceUnavailableException}
  # * {ThrottlingException}
  # * {UnsupportedAvailabilityZoneException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have permissions to perform the requested operation. The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a>
    #             making the request must have at least one IAM permissions policy attached that grants
    #             the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access
    #                 management</a> in the <i>IAM User Guide</i>. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>You do not have sufficient access to perform this action.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown if the request contains a semantic error. The precise meaning
    #             will depend on the API, and will be documented in the error message.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>This exception is thrown if the request contains a semantic error. The precise meaning
      #             will depend on the API, and will be documented in the error message.</p>
      def message
        @data[:message]
      end
    end

    # <p>These errors are usually caused by a client action. Actions can include using an
    #             action or resource on behalf of an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a> that doesn't have permissions to use
    #             the action or resource or specifying an identifier that is not valid.</p>
    class ClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The Amazon EKS add-on name associated with the exception.</p>
      def addon_name
        @data[:addon_name]
      end

      # <p>The Amazon EKS subscription ID with the exception.</p>
      def subscription_id
        @data[:subscription_id]
      end

      # <p>These errors are usually caused by a client action. Actions can include using an
      #             action or resource on behalf of an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html">IAM principal</a> that doesn't have permissions to use
      #             the action or resource or specifying an identifier that is not valid.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #             request.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The Fargate profile associated with the exception.</p>
      def fargate_profile_name
        @data[:fargate_profile_name]
      end

      # <p>The specified parameter for the add-on name is invalid. Review the available
      #             parameters for the API request</p>
      def addon_name
        @data[:addon_name]
      end

      # <p>The Amazon EKS subscription ID with the exception.</p>
      def subscription_id
        @data[:subscription_id]
      end

      # <p>The specified parameter is invalid. Review the available parameters for the API
      #             request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request is invalid given the state of the cluster. Check the state of the cluster
    #             and the associated operations.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The request is invalid given the state of the add-on name. Check the state of the
      #             cluster and the associated operations.</p>
      def addon_name
        @data[:addon_name]
      end

      # <p>The Amazon EKS subscription ID with the exception.</p>
      def subscription_id
        @data[:subscription_id]
      end

      # <p>The Amazon EKS add-on name associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Amazon EKS detected upgrade readiness issues. Call the <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListInsights.html">
    #                <code>ListInsights</code>
    #             </a> API to view detected upgrade blocking issues.
    #             Pass the <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateClusterVersion.html#API_UpdateClusterVersion_RequestBody">
    #                <code>force</code>
    #             </a> flag when updating to override upgrade readiness
    #             errors.</p>
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>A service resource associated with the request could not be found. Clients should not
    #             retry such requests.</p>
    class NotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::NotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A service resource associated with the request could not be found. Clients should not
      #             retry such requests.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource is in use.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The specified add-on name is in use.</p>
      def addon_name
        @data[:addon_name]
      end

      # <p>The Amazon EKS message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You have encountered a service limit on the specified resource.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The Amazon EKS subscription ID with the exception.</p>
      def subscription_id
        @data[:subscription_id]
      end

      # <p>The Amazon EKS message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource could not be found. You can view your available clusters with
    #                 <code>ListClusters</code>. You can view your available managed node groups with
    #                 <code>ListNodegroups</code>. Amazon EKS clusters and node groups are Amazon Web Services Region
    #             specific.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The Fargate profile associated with the exception.</p>
      def fargate_profile_name
        @data[:fargate_profile_name]
      end

      # <p>The Amazon EKS add-on name associated with the exception.</p>
      def addon_name
        @data[:addon_name]
      end

      # <p>The Amazon EKS subscription ID with the exception.</p>
      def subscription_id
        @data[:subscription_id]
      end

      # <p>The Amazon EKS message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Required resources (such as service-linked roles) were created and are still
    #             propagating. Retry later.</p>
    class ResourcePropagationDelayException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ResourcePropagationDelayException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Required resources (such as service-linked roles) were created and are still
      #             propagating. Retry later.</p>
      def message
        @data[:message]
      end
    end

    # <p>These errors are usually caused by a server-side issue.</p>
    class ServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The Amazon EKS add-on name associated with the exception.</p>
      def addon_name
        @data[:addon_name]
      end

      # <p>The Amazon EKS subscription ID with the exception.</p>
      def subscription_id
        @data[:subscription_id]
      end

      # <p>These errors are usually caused by a server-side issue.</p>
      def message
        @data[:message]
      end
    end

    # <p>The service is unavailable. Back off and retry the operation.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The request has failed due to a temporary failure of the server.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request or operation couldn't be performed because a service is throttling
    #             requests.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>At least one of your specified cluster subnets is in an Availability Zone that does not support
    #             Amazon EKS. The exception output specifies the supported Availability Zones for your account, from which
    #             you can choose subnets for your cluster.</p>
    class UnsupportedAvailabilityZoneException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::EKS::Types::UnsupportedAvailabilityZoneException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>At least one of your specified cluster subnets is in an Availability Zone that does not support
      #             Amazon EKS. The exception output specifies the supported Availability Zones for your account, from which
      #             you can choose subnets for your cluster.</p>
      def message
        @data[:message]
      end

      # <p>The Amazon EKS cluster associated with the exception.</p>
      def cluster_name
        @data[:cluster_name]
      end

      # <p>The Amazon EKS managed node group associated with the exception.</p>
      def nodegroup_name
        @data[:nodegroup_name]
      end

      # <p>The supported Availability Zones for your account. Choose subnets in these Availability Zones for your
      #             cluster.</p>
      def valid_zones
        @data[:valid_zones]
      end
    end
  end
end
