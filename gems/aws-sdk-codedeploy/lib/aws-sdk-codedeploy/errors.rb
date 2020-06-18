# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeDeploy

  # When CodeDeploy returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::CodeDeploy::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all CodeDeploy errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodeDeploy::Errors::ServiceError
  #       # rescues all CodeDeploy API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AlarmsLimitExceededException}
  # * {ApplicationAlreadyExistsException}
  # * {ApplicationDoesNotExistException}
  # * {ApplicationLimitExceededException}
  # * {ApplicationNameRequiredException}
  # * {ArnNotSupportedException}
  # * {BatchLimitExceededException}
  # * {BucketNameFilterRequiredException}
  # * {DeploymentAlreadyCompletedException}
  # * {DeploymentAlreadyStartedException}
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
  # * {InvalidDeploymentConfigIdException}
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
  # * {InvalidInstanceIdException}
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
  # * {InvalidTargetException}
  # * {InvalidTargetFilterNameException}
  # * {InvalidTargetGroupPairException}
  # * {InvalidTargetInstancesException}
  # * {InvalidTimeRangeException}
  # * {InvalidTrafficRoutingConfigurationException}
  # * {InvalidTriggerConfigException}
  # * {InvalidUpdateOutdatedInstancesOnlyValueException}
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

    extend Aws::Errors::DynamicErrors

    class AlarmsLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::AlarmsLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ApplicationAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ApplicationAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ApplicationDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ApplicationDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ApplicationLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ApplicationLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ApplicationNameRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ApplicationNameRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ArnNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ArnNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BatchLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::BatchLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BucketNameFilterRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::BucketNameFilterRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentAlreadyCompletedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentAlreadyCompletedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentAlreadyStartedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentAlreadyStartedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentConfigAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentConfigAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentConfigDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentConfigDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentConfigInUseException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentConfigInUseException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentConfigLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentConfigLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentConfigNameRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentConfigNameRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentGroupAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentGroupAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentGroupDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentGroupDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentGroupLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentGroupLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentGroupNameRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentGroupNameRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentIdRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentIdRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentIsNotInReadyStateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentIsNotInReadyStateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentNotStartedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentNotStartedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentTargetDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentTargetDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentTargetIdRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentTargetIdRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DeploymentTargetListSizeExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DeploymentTargetListSizeExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DescriptionTooLongException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::DescriptionTooLongException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ECSServiceMappingLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ECSServiceMappingLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GitHubAccountTokenDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::GitHubAccountTokenDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GitHubAccountTokenNameRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::GitHubAccountTokenNameRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IamArnRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::IamArnRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IamSessionArnAlreadyRegisteredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::IamSessionArnAlreadyRegisteredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IamUserArnAlreadyRegisteredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::IamUserArnAlreadyRegisteredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IamUserArnRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::IamUserArnRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InstanceDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceIdRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InstanceIdRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InstanceLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceNameAlreadyRegisteredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InstanceNameAlreadyRegisteredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceNameRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InstanceNameRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InstanceNotRegisteredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InstanceNotRegisteredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidAlarmConfigException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidAlarmConfigException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidApplicationNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidApplicationNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidArnException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidArnException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidAutoRollbackConfigException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidAutoRollbackConfigException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidAutoScalingGroupException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidAutoScalingGroupException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidBlueGreenDeploymentConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidBlueGreenDeploymentConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidBucketNameFilterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidBucketNameFilterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidComputePlatformException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidComputePlatformException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeployedStateFilterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeployedStateFilterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentConfigIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentConfigIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentConfigNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentConfigNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentGroupNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentGroupNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentInstanceTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentInstanceTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentStatusException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentStatusException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentStyleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentStyleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentTargetIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentTargetIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDeploymentWaitTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidDeploymentWaitTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEC2TagCombinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidEC2TagCombinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidEC2TagException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidEC2TagException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidECSServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidECSServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidExternalIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidExternalIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidFileExistsBehaviorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidFileExistsBehaviorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidGitHubAccountTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidGitHubAccountTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidGitHubAccountTokenNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidGitHubAccountTokenNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidIamSessionArnException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidIamSessionArnException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidIamUserArnException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidIamUserArnException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidIgnoreApplicationStopFailuresValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidIgnoreApplicationStopFailuresValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidInstanceIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidInstanceIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidInstanceNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidInstanceNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidInstanceStatusException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidInstanceStatusException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidInstanceTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidInstanceTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidKeyPrefixFilterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidKeyPrefixFilterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidLifecycleEventHookExecutionIdException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidLifecycleEventHookExecutionIdException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidLifecycleEventHookExecutionStatusException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidLifecycleEventHookExecutionStatusException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidLoadBalancerInfoException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidLoadBalancerInfoException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidMinimumHealthyHostValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidMinimumHealthyHostValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidNextTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidNextTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidOnPremisesTagCombinationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidOnPremisesTagCombinationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidOperationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidOperationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRegistrationStatusException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidRegistrationStatusException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRevisionException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidRevisionException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRoleException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidRoleException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSortByException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidSortByException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSortOrderException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidSortOrderException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTagException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTagException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTagFilterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTagFilterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTagsToAddException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTagsToAddException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTargetException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTargetException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTargetFilterNameException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTargetFilterNameException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTargetGroupPairException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTargetGroupPairException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTargetInstancesException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTargetInstancesException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTimeRangeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTimeRangeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTrafficRoutingConfigurationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTrafficRoutingConfigurationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTriggerConfigException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidTriggerConfigException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidUpdateOutdatedInstancesOnlyValueException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::InvalidUpdateOutdatedInstancesOnlyValueException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LifecycleEventAlreadyCompletedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::LifecycleEventAlreadyCompletedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LifecycleHookLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::LifecycleHookLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MultipleIamArnsProvidedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::MultipleIamArnsProvidedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OperationNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::OperationNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceArnRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ResourceArnRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceValidationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ResourceValidationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class RevisionDoesNotExistException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::RevisionDoesNotExistException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class RevisionRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::RevisionRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class RoleRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::RoleRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::TagLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagRequiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::TagRequiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagSetListLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::TagSetListLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ThrottlingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::ThrottlingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TriggerTargetsLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::TriggerTargetsLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UnsupportedActionForDeploymentTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CodeDeploy::Types::UnsupportedActionForDeploymentTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
