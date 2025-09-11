# frozen_string_literal: true

# This is generated code!

module Aws::CodeDeploy
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CodeDeploy::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodeDeploy::Errors::ServiceError
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
  # * {AlarmsLimitExceededException}
  # * {ApplicationAlreadyExistsException}
  # * {ApplicationDoesNotExistException}
  # * {ApplicationLimitExceededException}
  # * {ApplicationNameRequiredException}
  # * {ArnNotSupportedException}
  # * {BatchLimitExceededException}
  # * {BucketNameFilterRequiredException}
  # * {DeploymentAlreadyCompletedException}
  # * {DeploymentConfigAlreadyExistsException}
  # * {DeploymentConfigDoesNotExistException}
  # * {DeploymentConfigInUseException}
  # * {DeploymentConfigLimitExceededException}
  # * {DeploymentConfigNameRequiredException}
  # * {DeploymentDoesNotExistException}
  # * {DeploymentGroupAlreadyExistsException}
  # * {DeploymentGroupDoesNotExistException}
  # * {DeploymentGroupLimitExceededException}
  # * {DeploymentGroupNameRequiredException}
  # * {DeploymentIdRequiredException}
  # * {DeploymentIsNotInReadyStateException}
  # * {DeploymentLimitExceededException}
  # * {DeploymentNotStartedException}
  # * {DeploymentTargetDoesNotExistException}
  # * {DeploymentTargetIdRequiredException}
  # * {DeploymentTargetListSizeExceededException}
  # * {DescriptionTooLongException}
  # * {ECSServiceMappingLimitExceededException}
  # * {GitHubAccountTokenDoesNotExistException}
  # * {GitHubAccountTokenNameRequiredException}
  # * {IamArnRequiredException}
  # * {IamSessionArnAlreadyRegisteredException}
  # * {IamUserArnAlreadyRegisteredException}
  # * {IamUserArnRequiredException}
  # * {InstanceDoesNotExistException}
  # * {InstanceIdRequiredException}
  # * {InstanceLimitExceededException}
  # * {InstanceNameAlreadyRegisteredException}
  # * {InstanceNameRequiredException}
  # * {InstanceNotRegisteredException}
  # * {InvalidAlarmConfigException}
  # * {InvalidApplicationNameException}
  # * {InvalidArnException}
  # * {InvalidAutoRollbackConfigException}
  # * {InvalidAutoScalingGroupException}
  # * {InvalidBlueGreenDeploymentConfigurationException}
  # * {InvalidBucketNameFilterException}
  # * {InvalidComputePlatformException}
  # * {InvalidDeployedStateFilterException}
  # * {InvalidDeploymentConfigNameException}
  # * {InvalidDeploymentGroupNameException}
  # * {InvalidDeploymentIdException}
  # * {InvalidDeploymentInstanceTypeException}
  # * {InvalidDeploymentStatusException}
  # * {InvalidDeploymentStyleException}
  # * {InvalidDeploymentTargetIdException}
  # * {InvalidDeploymentWaitTypeException}
  # * {InvalidEC2TagCombinationException}
  # * {InvalidEC2TagException}
  # * {InvalidECSServiceException}
  # * {InvalidExternalIdException}
  # * {InvalidFileExistsBehaviorException}
  # * {InvalidGitHubAccountTokenException}
  # * {InvalidGitHubAccountTokenNameException}
  # * {InvalidIamSessionArnException}
  # * {InvalidIamUserArnException}
  # * {InvalidIgnoreApplicationStopFailuresValueException}
  # * {InvalidInputException}
  # * {InvalidInstanceNameException}
  # * {InvalidInstanceStatusException}
  # * {InvalidInstanceTypeException}
  # * {InvalidKeyPrefixFilterException}
  # * {InvalidLifecycleEventHookExecutionIdException}
  # * {InvalidLifecycleEventHookExecutionStatusException}
  # * {InvalidLoadBalancerInfoException}
  # * {InvalidMinimumHealthyHostValueException}
  # * {InvalidNextTokenException}
  # * {InvalidOnPremisesTagCombinationException}
  # * {InvalidOperationException}
  # * {InvalidRegistrationStatusException}
  # * {InvalidRevisionException}
  # * {InvalidRoleException}
  # * {InvalidSortByException}
  # * {InvalidSortOrderException}
  # * {InvalidTagException}
  # * {InvalidTagFilterException}
  # * {InvalidTagsToAddException}
  # * {InvalidTargetFilterNameException}
  # * {InvalidTargetGroupPairException}
  # * {InvalidTargetInstancesException}
  # * {InvalidTimeRangeException}
  # * {InvalidTrafficRoutingConfigurationException}
  # * {InvalidTriggerConfigException}
  # * {InvalidUpdateOutdatedInstancesOnlyValueException}
  # * {InvalidZonalDeploymentConfigurationException}
  # * {LifecycleEventAlreadyCompletedException}
  # * {LifecycleHookLimitExceededException}
  # * {MultipleIamArnsProvidedException}
  # * {OperationNotSupportedException}
  # * {ResourceArnRequiredException}
  # * {ResourceValidationException}
  # * {RevisionDoesNotExistException}
  # * {RevisionRequiredException}
  # * {RoleRequiredException}
  # * {TagLimitExceededException}
  # * {TagRequiredException}
  # * {TagSetListLimitExceededException}
  # * {ThrottlingException}
  # * {TriggerTargetsLimitExceededException}
  # * {UnsupportedActionForDeploymentTypeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The maximum number of alarms for a deployment group (10) was exceeded.</p>
    class AlarmsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::AlarmsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An application with the specified name with the user or Amazon Web Services account
    #             already exists.</p>
    class ApplicationAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ApplicationAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The application does not exist with the user or Amazon Web Services account.</p>
    class ApplicationDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ApplicationDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>More applications were attempted to be created than are allowed.</p>
    class ApplicationLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ApplicationLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The minimum number of required application names was not specified.</p>
    class ApplicationNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ApplicationNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The specified ARN is not supported. For example, it might be an ARN for a resource
    #             that is not expected. </p>
    class ArnNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ArnNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of names or IDs allowed for this request (100) was exceeded.</p>
    class BatchLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::BatchLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A bucket name is required, but was not provided.</p>
    class BucketNameFilterRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::BucketNameFilterRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment is already complete.</p>
    class DeploymentAlreadyCompletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentAlreadyCompletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A deployment configuration with the specified name with the user or Amazon Web Services account already exists.</p>
    class DeploymentConfigAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentConfigAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment configuration does not exist with the user or Amazon Web Services account.</p>
    class DeploymentConfigDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentConfigDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment configuration is still in use.</p>
    class DeploymentConfigInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentConfigInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment configurations limit was exceeded.</p>
    class DeploymentConfigLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentConfigLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment configuration name was not specified.</p>
    class DeploymentConfigNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentConfigNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment with the user or Amazon Web Services account does not exist.</p>
    class DeploymentDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A deployment group with the specified name with the user or Amazon Web Services account
    #             already exists.</p>
    class DeploymentGroupAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentGroupAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The named deployment group with the user or Amazon Web Services account does not
    #             exist.</p>
    class DeploymentGroupDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentGroupDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The deployment groups limit was exceeded.</p>
    class DeploymentGroupLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentGroupLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment group name was not specified.</p>
    class DeploymentGroupNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentGroupNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>At least one deployment ID must be specified.</p>
    class DeploymentIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment does not have a status of Ready and can't continue yet.</p>
    class DeploymentIsNotInReadyStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentIsNotInReadyStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of allowed deployments was exceeded.</p>
    class DeploymentLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified deployment has not started.</p>
    class DeploymentNotStartedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentNotStartedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The provided target ID does not belong to the attempted deployment. </p>
    class DeploymentTargetDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentTargetDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> A deployment target ID was not provided. </p>
    class DeploymentTargetIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentTargetIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The maximum number of targets that can be associated with an Amazon ECS or
    #                 Lambda deployment was exceeded. The target list of both types of
    #             deployments must have exactly one item. This exception does not apply to EC2/On-premises
    #             deployments. </p>
    class DeploymentTargetListSizeExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DeploymentTargetListSizeExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The description is too long.</p>
    class DescriptionTooLongException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::DescriptionTooLongException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The Amazon ECS service is associated with more than one deployment groups. An
    #             Amazon ECS service can be associated with only one deployment group. </p>
    class ECSServiceMappingLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ECSServiceMappingLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>No GitHub account connection exists with the named specified in the call.</p>
    class GitHubAccountTokenDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::GitHubAccountTokenDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The call is missing a required GitHub account connection name.</p>
    class GitHubAccountTokenNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::GitHubAccountTokenNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>No IAM ARN was included in the request. You must use an IAM session ARN or user ARN in the request.</p>
    class IamArnRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::IamArnRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request included an IAM session ARN that has already been used to
    #             register a different instance.</p>
    class IamSessionArnAlreadyRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::IamSessionArnAlreadyRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified user ARN is already registered with an on-premises instance.</p>
    class IamUserArnAlreadyRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::IamUserArnAlreadyRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An user ARN was not specified.</p>
    class IamUserArnRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::IamUserArnRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified instance does not exist in the deployment group.</p>
    class InstanceDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InstanceDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The instance ID was not specified.</p>
    class InstanceIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InstanceIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of allowed on-premises instances in a single call was
    #             exceeded.</p>
    class InstanceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InstanceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified on-premises instance name is already registered.</p>
    class InstanceNameAlreadyRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InstanceNameAlreadyRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An on-premises instance name was not specified.</p>
    class InstanceNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InstanceNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified on-premises instance is not registered.</p>
    class InstanceNotRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InstanceNotRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The format of the alarm configuration is invalid. Possible causes include:</p>
    #          <ul>
    #             <li>
    #                <p>The alarm list is null.</p>
    #             </li>
    #             <li>
    #                <p>The alarm object is null.</p>
    #             </li>
    #             <li>
    #                <p>The alarm name is empty or null or exceeds the limit of 255 characters.</p>
    #             </li>
    #             <li>
    #                <p>Two alarms with the same name have been specified.</p>
    #             </li>
    #             <li>
    #                <p>The alarm configuration is enabled, but the alarm list is empty.</p>
    #             </li>
    #          </ul>
    class InvalidAlarmConfigException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidAlarmConfigException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The application name was specified in an invalid format.</p>
    class InvalidApplicationNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidApplicationNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The specified ARN is not in a valid format. </p>
    class InvalidArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The automatic rollback configuration was specified in an invalid format. For example,
    #             automatic rollback is enabled, but an invalid triggering event type or no event types
    #             were listed.</p>
    class InvalidAutoRollbackConfigException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidAutoRollbackConfigException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Auto Scaling group was specified in an invalid format or does not
    #             exist.</p>
    class InvalidAutoScalingGroupException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidAutoScalingGroupException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The configuration for the blue/green deployment group was provided in an invalid
    #             format. For information about deployment configuration format, see <a>CreateDeploymentConfig</a>.</p>
    class InvalidBlueGreenDeploymentConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidBlueGreenDeploymentConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The bucket name either doesn't exist or was specified in an invalid format.</p>
    class InvalidBucketNameFilterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidBucketNameFilterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The computePlatform is invalid. The computePlatform should be <code>Lambda</code>, <code>Server</code>, or <code>ECS</code>.</p>
    class InvalidComputePlatformException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidComputePlatformException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployed state filter was specified in an invalid format.</p>
    class InvalidDeployedStateFilterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeployedStateFilterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment configuration name was specified in an invalid format.</p>
    class InvalidDeploymentConfigNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentConfigNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The deployment group name was specified in an invalid format.</p>
    class InvalidDeploymentGroupNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentGroupNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>At least one of the deployment IDs was specified in an invalid format.</p>
    class InvalidDeploymentIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An instance type was specified for an in-place deployment. Instance types are
    #             supported for blue/green deployments only.</p>
    class InvalidDeploymentInstanceTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentInstanceTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified deployment status doesn't exist or cannot be determined.</p>
    class InvalidDeploymentStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An invalid deployment style was specified. Valid deployment types include "IN_PLACE"
    #             and "BLUE_GREEN." Valid deployment options include "WITH_TRAFFIC_CONTROL" and
    #             "WITHOUT_TRAFFIC_CONTROL."</p>
    class InvalidDeploymentStyleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentStyleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The target ID provided was not valid. </p>
    class InvalidDeploymentTargetIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentTargetIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The wait type is invalid. </p>
    class InvalidDeploymentWaitTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentWaitTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A call was submitted that specified both Ec2TagFilters and Ec2TagSet, but only one of
    #             these data types can be used in a single call.</p>
    class InvalidEC2TagCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidEC2TagCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The tag was specified in an invalid format.</p>
    class InvalidEC2TagException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidEC2TagException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The Amazon ECS service identifier is not valid. </p>
    class InvalidECSServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidECSServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The external ID was specified in an invalid format.</p>
    class InvalidExternalIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidExternalIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An invalid fileExistsBehavior option was specified to determine how CodeDeploy handles files or directories that already exist in a deployment
    #             target location, but weren't part of the previous successful deployment. Valid values
    #             include "DISALLOW," "OVERWRITE," and "RETAIN."</p>
    class InvalidFileExistsBehaviorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidFileExistsBehaviorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The GitHub token is not valid.</p>
    class InvalidGitHubAccountTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidGitHubAccountTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The format of the specified GitHub account connection name is invalid.</p>
    class InvalidGitHubAccountTokenNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidGitHubAccountTokenNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The IAM session ARN was specified in an invalid format.</p>
    class InvalidIamSessionArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidIamSessionArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The user ARN was specified in an invalid format.</p>
    class InvalidIamUserArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidIamUserArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The IgnoreApplicationStopFailures value is invalid. For Lambda
    #             deployments, <code>false</code> is expected. For EC2/On-premises deployments,
    #                 <code>true</code> or <code>false</code> is expected.</p>
    class InvalidIgnoreApplicationStopFailuresValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidIgnoreApplicationStopFailuresValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The input was specified in an invalid format.</p>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The on-premises instance name was specified in an invalid format.</p>
    class InvalidInstanceNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidInstanceNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified instance status does not exist.</p>
    class InvalidInstanceStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidInstanceStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An invalid instance type was specified for instances in a blue/green deployment. Valid
    #             values include "Blue" for an original environment and "Green" for a replacement
    #             environment.</p>
    class InvalidInstanceTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidInstanceTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified key prefix filter was specified in an invalid format.</p>
    class InvalidKeyPrefixFilterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidKeyPrefixFilterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A lifecycle event hook is invalid. Review the <code>hooks</code> section in your
    #             AppSpec file to ensure the lifecycle events and <code>hooks</code> functions are
    #             valid.</p>
    class InvalidLifecycleEventHookExecutionIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidLifecycleEventHookExecutionIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The result of a Lambda validation function that verifies a lifecycle event
    #             is invalid. It should return <code>Succeeded</code> or <code>Failed</code>.</p>
    class InvalidLifecycleEventHookExecutionStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidLifecycleEventHookExecutionStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An invalid load balancer name, or no load balancer name, was specified.</p>
    class InvalidLoadBalancerInfoException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidLoadBalancerInfoException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The minimum healthy instance value was specified in an invalid format.</p>
    class InvalidMinimumHealthyHostValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidMinimumHealthyHostValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The next token was specified in an invalid format.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A call was submitted that specified both OnPremisesTagFilters and OnPremisesTagSet,
    #             but only one of these data types can be used in a single call.</p>
    class InvalidOnPremisesTagCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidOnPremisesTagCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An invalid operation was detected.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The registration status was specified in an invalid format.</p>
    class InvalidRegistrationStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidRegistrationStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The revision was specified in an invalid format.</p>
    class InvalidRevisionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidRevisionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The service role ARN was specified in an invalid format. Or, if an Auto Scaling
    #             group was specified, the specified service role does not grant the appropriate
    #             permissions to Amazon EC2 Auto Scaling.</p>
    class InvalidRoleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidRoleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The column name to sort by is either not present or was specified in an invalid
    #             format.</p>
    class InvalidSortByException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidSortByException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The sort order was specified in an invalid format.</p>
    class InvalidSortOrderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidSortOrderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The tag was specified in an invalid format.</p>
    class InvalidTagException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTagException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The tag filter was specified in an invalid format.</p>
    class InvalidTagFilterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTagFilterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The specified tags are not valid. </p>
    class InvalidTagsToAddException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTagsToAddException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The target filter name is invalid. </p>
    class InvalidTargetFilterNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTargetFilterNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> A target group pair associated with this deployment is not valid. </p>
    class InvalidTargetGroupPairException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTargetGroupPairException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The target instance configuration is invalid. Possible causes include:</p>
    #          <ul>
    #             <li>
    #                <p>Configuration data for target instances was entered for an in-place
    #                     deployment.</p>
    #             </li>
    #             <li>
    #                <p>The limit of 10 tags for a tag type was exceeded.</p>
    #             </li>
    #             <li>
    #                <p>The combined length of the tag names exceeded the limit. </p>
    #             </li>
    #             <li>
    #                <p>A specified tag is not currently applied to any instances.</p>
    #             </li>
    #          </ul>
    class InvalidTargetInstancesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTargetInstancesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified time range was specified in an invalid format.</p>
    class InvalidTimeRangeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTimeRangeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The configuration that specifies how traffic is routed during a deployment is
    #             invalid.</p>
    class InvalidTrafficRoutingConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTrafficRoutingConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The trigger was specified in an invalid format.</p>
    class InvalidTriggerConfigException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidTriggerConfigException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The UpdateOutdatedInstancesOnly value is invalid. For Lambda
    #             deployments, <code>false</code> is expected. For EC2/On-premises deployments,
    #                 <code>true</code> or <code>false</code> is expected.</p>
    class InvalidUpdateOutdatedInstancesOnlyValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidUpdateOutdatedInstancesOnlyValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The <code>ZonalConfig</code> object is not valid.</p>
    class InvalidZonalDeploymentConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::InvalidZonalDeploymentConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An attempt to return the status of an already completed lifecycle event
    #             occurred.</p>
    class LifecycleEventAlreadyCompletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::LifecycleEventAlreadyCompletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The limit for lifecycle hooks was exceeded.</p>
    class LifecycleHookLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::LifecycleHookLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>Both an user ARN and an IAM session ARN were included in the request.
    #             Use only one ARN type.</p>
    class MultipleIamArnsProvidedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::MultipleIamArnsProvidedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The API used does not support the deployment.</p>
    class OperationNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::OperationNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p> The ARN of a resource is required, but was not found. </p>
    class ResourceArnRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ResourceArnRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified resource could not be validated.</p>
    class ResourceValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ResourceValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The named revision does not exist with the user or Amazon Web Services account.</p>
    class RevisionDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::RevisionDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The revision ID was not specified.</p>
    class RevisionRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::RevisionRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The role ID was not specified.</p>
    class RoleRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::RoleRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum allowed number of tags was exceeded.</p>
    class TagLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::TagLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A tag was not specified.</p>
    class TagRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::TagRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of tag groups included in the tag set list exceeded the maximum allowed
    #             limit of 3.</p>
    class TagSetListLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::TagSetListLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>An API function was called too frequently.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum allowed number of triggers was exceeded.</p>
    class TriggerTargetsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::TriggerTargetsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end

    # <p>A call was submitted that is not supported for the specified deployment type.</p>
    class UnsupportedActionForDeploymentTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeDeploy::Types::UnsupportedActionForDeploymentTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that corresponds to the exception thrown by CodeDeploy.</p>
      def message
        @data[:message]
      end
    end
  end
end
