# frozen_string_literal: true

# This is generated code!

module Aws::ECS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ECS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ECS::Errors::ServiceError
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
  # * {AttributeLimitExceededException}
  # * {BlockedException}
  # * {ClientException}
  # * {ClusterContainsContainerInstancesException}
  # * {ClusterContainsServicesException}
  # * {ClusterContainsTasksException}
  # * {ClusterNotFoundException}
  # * {ConflictException}
  # * {InvalidParameterException}
  # * {LimitExceededException}
  # * {MissingVersionException}
  # * {NamespaceNotFoundException}
  # * {NoUpdateAvailableException}
  # * {PlatformTaskDefinitionIncompatibilityException}
  # * {PlatformUnknownException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ServerException}
  # * {ServiceDeploymentNotFoundException}
  # * {ServiceNotActiveException}
  # * {ServiceNotFoundException}
  # * {TargetNotConnectedException}
  # * {TargetNotFoundException}
  # * {TaskSetNotFoundException}
  # * {UnsupportedFeatureException}
  # * {UpdateInProgressException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have authorization to perform the requested action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can apply up to 10 custom attributes for each resource. You can view the
    # 			attributes of a resource with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListAttributes.html">ListAttributes</a>.
    # 			You can remove existing attributes on a resource with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html">DeleteAttributes</a>.</p>
    class AttributeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::AttributeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Your Amazon Web Services account was blocked. For more information, contact <a href="http://aws.amazon.com/contact-us/">
    # 				Amazon Web ServicesSupport</a>.</p>
    class BlockedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::BlockedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>These errors are usually caused by a client action. This client action might be using
    # 			an action or resource on behalf of a user that doesn't have permissions to use the
    # 			action or resource. Or, it might be specifying an identifier that isn't valid.</p>
    class ClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can't delete a cluster that has registered container instances. First, deregister
    # 			the container instances before you can delete the cluster. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html">DeregisterContainerInstance</a>.</p>
    class ClusterContainsContainerInstancesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ClusterContainsContainerInstancesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can't delete a cluster that contains services. First, update the service to reduce
    # 			its desired task count to 0, and then delete the service. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html">UpdateService</a> and
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteService.html">DeleteService</a>.</p>
    class ClusterContainsServicesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ClusterContainsServicesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can't delete a cluster that has active tasks.</p>
    class ClusterContainsTasksException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ClusterContainsTasksException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified cluster wasn't found. You can view your available clusters with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListClusters.html">ListClusters</a>. Amazon ECS clusters are Region specific.</p>
    class ClusterNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ClusterNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request could not be processed because of conflict in the current state of the resource. </p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The existing task ARNs which are already associated with the
      # 				<code>clientToken</code>.</p>
      def resource_ids
        @data[:resource_ids]
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified parameter isn't valid. Review the available parameters for the API
    # 			request.</p>
    #          <p>For more information about service event errors, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-event-messages-list.html">Amazon ECS service
    # 				event messages</a>. </p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The limit for the resource was exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Amazon ECS can't determine the current version of the Amazon ECS container agent on the
    # 			container instance and doesn't have enough information to proceed with an update. This
    # 			could be because the agent running on the container instance is a previous or custom
    # 			version that doesn't use our version information.</p>
    class MissingVersionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::MissingVersionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified namespace wasn't found.</p>
    class NamespaceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::NamespaceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>There's no update available for this Amazon ECS container agent. This might be because the
    # 			agent is already running the latest version or because it's so old that there's no
    # 			update path to the current version.</p>
    class NoUpdateAvailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::NoUpdateAvailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified platform version doesn't satisfy the required capabilities of the task
    # 			definition.</p>
    class PlatformTaskDefinitionIncompatibilityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::PlatformTaskDefinitionIncompatibilityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified platform version doesn't exist.</p>
    class PlatformUnknownException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::PlatformUnknownException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource is in-use and can't be removed.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource wasn't found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>These errors are usually caused by a server issue.</p>
    class ServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The service deploy ARN that you specified in the <code>StopServiceDeployment</code> doesn't exist. You can use <code>ListServiceDeployments</code> to retrieve the service deployment ARNs.</p>
    class ServiceDeploymentNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ServiceDeploymentNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified service isn't active. You can't update a service that's inactive. If you
    # 			have previously deleted a service, you can re-create it with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html">CreateService</a>.</p>
    class ServiceNotActiveException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ServiceNotActiveException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified service wasn't found. You can view your available services with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html">ListServices</a>. Amazon ECS services are cluster specific and Region
    # 			specific.</p>
    class ServiceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::ServiceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The execute command cannot run. This error can be caused by any of the following
    # 			configuration issues:</p>
    #          <ul>
    #             <li>
    #                <p>Incorrect IAM permissions</p>
    #             </li>
    #             <li>
    #                <p>The SSM agent is not installed or is not running</p>
    #             </li>
    #             <li>
    #                <p> There is an interface Amazon VPC endpoint for Amazon ECS, but there is not one for
    # 					Systems Manager Session Manager</p>
    #             </li>
    #          </ul>
    #          <p>For information about how to troubleshoot the issues, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html">Troubleshooting issues with ECS
    # 				Exec</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    class TargetNotConnectedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::TargetNotConnectedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified target wasn't found. You can view your available container instances
    # 			with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html">ListContainerInstances</a>. Amazon ECS container instances are cluster-specific and
    # 			Region-specific.</p>
    class TargetNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::TargetNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified task set wasn't found. You can view your available task sets with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTaskSets.html">DescribeTaskSets</a>. Task sets are specific to each cluster, service and
    # 			Region.</p>
    class TaskSetNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::TaskSetNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified task isn't supported in this Region.</p>
    class UnsupportedFeatureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::UnsupportedFeatureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>There's already a current Amazon ECS container agent update in progress on the container
    # 			instance that's specified. If the container agent becomes disconnected while it's in a
    # 			transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update
    # 			process can get stuck in that state. However, when the agent reconnects, it resumes
    # 			where it stopped previously.</p>
    class UpdateInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ECS::Types::UpdateInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p> Message that describes the cause of the exception.</p>
      def message
        @data[:message]
      end
    end
  end
end
