# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeDeploy
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsToOnPremisesInstancesInput = Shapes::StructureShape.new(name: 'AddTagsToOnPremisesInstancesInput')
    AdditionalDeploymentStatusInfo = Shapes::StringShape.new(name: 'AdditionalDeploymentStatusInfo')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    AlarmConfiguration = Shapes::StructureShape.new(name: 'AlarmConfiguration')
    AlarmList = Shapes::ListShape.new(name: 'AlarmList')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AlarmsLimitExceededException = Shapes::StructureShape.new(name: 'AlarmsLimitExceededException')
    AppSpecContent = Shapes::StructureShape.new(name: 'AppSpecContent')
    ApplicationAlreadyExistsException = Shapes::StructureShape.new(name: 'ApplicationAlreadyExistsException')
    ApplicationDoesNotExistException = Shapes::StructureShape.new(name: 'ApplicationDoesNotExistException')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationInfo = Shapes::StructureShape.new(name: 'ApplicationInfo')
    ApplicationLimitExceededException = Shapes::StructureShape.new(name: 'ApplicationLimitExceededException')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationNameRequiredException = Shapes::StructureShape.new(name: 'ApplicationNameRequiredException')
    ApplicationRevisionSortBy = Shapes::StringShape.new(name: 'ApplicationRevisionSortBy')
    ApplicationsInfoList = Shapes::ListShape.new(name: 'ApplicationsInfoList')
    ApplicationsList = Shapes::ListShape.new(name: 'ApplicationsList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnNotSupportedException = Shapes::StructureShape.new(name: 'ArnNotSupportedException')
    AutoRollbackConfiguration = Shapes::StructureShape.new(name: 'AutoRollbackConfiguration')
    AutoRollbackEvent = Shapes::StringShape.new(name: 'AutoRollbackEvent')
    AutoRollbackEventsList = Shapes::ListShape.new(name: 'AutoRollbackEventsList')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupHook = Shapes::StringShape.new(name: 'AutoScalingGroupHook')
    AutoScalingGroupList = Shapes::ListShape.new(name: 'AutoScalingGroupList')
    AutoScalingGroupName = Shapes::StringShape.new(name: 'AutoScalingGroupName')
    AutoScalingGroupNameList = Shapes::ListShape.new(name: 'AutoScalingGroupNameList')
    BatchGetApplicationRevisionsInput = Shapes::StructureShape.new(name: 'BatchGetApplicationRevisionsInput')
    BatchGetApplicationRevisionsOutput = Shapes::StructureShape.new(name: 'BatchGetApplicationRevisionsOutput')
    BatchGetApplicationsInput = Shapes::StructureShape.new(name: 'BatchGetApplicationsInput')
    BatchGetApplicationsOutput = Shapes::StructureShape.new(name: 'BatchGetApplicationsOutput')
    BatchGetDeploymentGroupsInput = Shapes::StructureShape.new(name: 'BatchGetDeploymentGroupsInput')
    BatchGetDeploymentGroupsOutput = Shapes::StructureShape.new(name: 'BatchGetDeploymentGroupsOutput')
    BatchGetDeploymentInstancesInput = Shapes::StructureShape.new(name: 'BatchGetDeploymentInstancesInput')
    BatchGetDeploymentInstancesOutput = Shapes::StructureShape.new(name: 'BatchGetDeploymentInstancesOutput')
    BatchGetDeploymentTargetsInput = Shapes::StructureShape.new(name: 'BatchGetDeploymentTargetsInput')
    BatchGetDeploymentTargetsOutput = Shapes::StructureShape.new(name: 'BatchGetDeploymentTargetsOutput')
    BatchGetDeploymentsInput = Shapes::StructureShape.new(name: 'BatchGetDeploymentsInput')
    BatchGetDeploymentsOutput = Shapes::StructureShape.new(name: 'BatchGetDeploymentsOutput')
    BatchGetOnPremisesInstancesInput = Shapes::StructureShape.new(name: 'BatchGetOnPremisesInstancesInput')
    BatchGetOnPremisesInstancesOutput = Shapes::StructureShape.new(name: 'BatchGetOnPremisesInstancesOutput')
    BatchLimitExceededException = Shapes::StructureShape.new(name: 'BatchLimitExceededException')
    BlueGreenDeploymentConfiguration = Shapes::StructureShape.new(name: 'BlueGreenDeploymentConfiguration')
    BlueInstanceTerminationOption = Shapes::StructureShape.new(name: 'BlueInstanceTerminationOption')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketNameFilterRequiredException = Shapes::StructureShape.new(name: 'BucketNameFilterRequiredException')
    BundleType = Shapes::StringShape.new(name: 'BundleType')
    CloudFormationResourceType = Shapes::StringShape.new(name: 'CloudFormationResourceType')
    CloudFormationTarget = Shapes::StructureShape.new(name: 'CloudFormationTarget')
    CommitId = Shapes::StringShape.new(name: 'CommitId')
    ComputePlatform = Shapes::StringShape.new(name: 'ComputePlatform')
    ContinueDeploymentInput = Shapes::StructureShape.new(name: 'ContinueDeploymentInput')
    CreateApplicationInput = Shapes::StructureShape.new(name: 'CreateApplicationInput')
    CreateApplicationOutput = Shapes::StructureShape.new(name: 'CreateApplicationOutput')
    CreateDeploymentConfigInput = Shapes::StructureShape.new(name: 'CreateDeploymentConfigInput')
    CreateDeploymentConfigOutput = Shapes::StructureShape.new(name: 'CreateDeploymentConfigOutput')
    CreateDeploymentGroupInput = Shapes::StructureShape.new(name: 'CreateDeploymentGroupInput')
    CreateDeploymentGroupOutput = Shapes::StructureShape.new(name: 'CreateDeploymentGroupOutput')
    CreateDeploymentInput = Shapes::StructureShape.new(name: 'CreateDeploymentInput')
    CreateDeploymentOutput = Shapes::StructureShape.new(name: 'CreateDeploymentOutput')
    DeleteApplicationInput = Shapes::StructureShape.new(name: 'DeleteApplicationInput')
    DeleteDeploymentConfigInput = Shapes::StructureShape.new(name: 'DeleteDeploymentConfigInput')
    DeleteDeploymentGroupInput = Shapes::StructureShape.new(name: 'DeleteDeploymentGroupInput')
    DeleteDeploymentGroupOutput = Shapes::StructureShape.new(name: 'DeleteDeploymentGroupOutput')
    DeleteGitHubAccountTokenInput = Shapes::StructureShape.new(name: 'DeleteGitHubAccountTokenInput')
    DeleteGitHubAccountTokenOutput = Shapes::StructureShape.new(name: 'DeleteGitHubAccountTokenOutput')
    DeleteResourcesByExternalIdInput = Shapes::StructureShape.new(name: 'DeleteResourcesByExternalIdInput')
    DeleteResourcesByExternalIdOutput = Shapes::StructureShape.new(name: 'DeleteResourcesByExternalIdOutput')
    DeploymentAlreadyCompletedException = Shapes::StructureShape.new(name: 'DeploymentAlreadyCompletedException')
    DeploymentAlreadyStartedException = Shapes::StructureShape.new(name: 'DeploymentAlreadyStartedException')
    DeploymentConfigAlreadyExistsException = Shapes::StructureShape.new(name: 'DeploymentConfigAlreadyExistsException')
    DeploymentConfigDoesNotExistException = Shapes::StructureShape.new(name: 'DeploymentConfigDoesNotExistException')
    DeploymentConfigId = Shapes::StringShape.new(name: 'DeploymentConfigId')
    DeploymentConfigInUseException = Shapes::StructureShape.new(name: 'DeploymentConfigInUseException')
    DeploymentConfigInfo = Shapes::StructureShape.new(name: 'DeploymentConfigInfo')
    DeploymentConfigLimitExceededException = Shapes::StructureShape.new(name: 'DeploymentConfigLimitExceededException')
    DeploymentConfigName = Shapes::StringShape.new(name: 'DeploymentConfigName')
    DeploymentConfigNameRequiredException = Shapes::StructureShape.new(name: 'DeploymentConfigNameRequiredException')
    DeploymentConfigsList = Shapes::ListShape.new(name: 'DeploymentConfigsList')
    DeploymentCreator = Shapes::StringShape.new(name: 'DeploymentCreator')
    DeploymentDoesNotExistException = Shapes::StructureShape.new(name: 'DeploymentDoesNotExistException')
    DeploymentGroupAlreadyExistsException = Shapes::StructureShape.new(name: 'DeploymentGroupAlreadyExistsException')
    DeploymentGroupDoesNotExistException = Shapes::StructureShape.new(name: 'DeploymentGroupDoesNotExistException')
    DeploymentGroupId = Shapes::StringShape.new(name: 'DeploymentGroupId')
    DeploymentGroupInfo = Shapes::StructureShape.new(name: 'DeploymentGroupInfo')
    DeploymentGroupInfoList = Shapes::ListShape.new(name: 'DeploymentGroupInfoList')
    DeploymentGroupLimitExceededException = Shapes::StructureShape.new(name: 'DeploymentGroupLimitExceededException')
    DeploymentGroupName = Shapes::StringShape.new(name: 'DeploymentGroupName')
    DeploymentGroupNameRequiredException = Shapes::StructureShape.new(name: 'DeploymentGroupNameRequiredException')
    DeploymentGroupsList = Shapes::ListShape.new(name: 'DeploymentGroupsList')
    DeploymentId = Shapes::StringShape.new(name: 'DeploymentId')
    DeploymentIdRequiredException = Shapes::StructureShape.new(name: 'DeploymentIdRequiredException')
    DeploymentInfo = Shapes::StructureShape.new(name: 'DeploymentInfo')
    DeploymentIsNotInReadyStateException = Shapes::StructureShape.new(name: 'DeploymentIsNotInReadyStateException')
    DeploymentLimitExceededException = Shapes::StructureShape.new(name: 'DeploymentLimitExceededException')
    DeploymentNotStartedException = Shapes::StructureShape.new(name: 'DeploymentNotStartedException')
    DeploymentOption = Shapes::StringShape.new(name: 'DeploymentOption')
    DeploymentOverview = Shapes::StructureShape.new(name: 'DeploymentOverview')
    DeploymentReadyAction = Shapes::StringShape.new(name: 'DeploymentReadyAction')
    DeploymentReadyOption = Shapes::StructureShape.new(name: 'DeploymentReadyOption')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DeploymentStatusList = Shapes::ListShape.new(name: 'DeploymentStatusList')
    DeploymentStatusMessageList = Shapes::ListShape.new(name: 'DeploymentStatusMessageList')
    DeploymentStyle = Shapes::StructureShape.new(name: 'DeploymentStyle')
    DeploymentTarget = Shapes::StructureShape.new(name: 'DeploymentTarget')
    DeploymentTargetDoesNotExistException = Shapes::StructureShape.new(name: 'DeploymentTargetDoesNotExistException')
    DeploymentTargetIdRequiredException = Shapes::StructureShape.new(name: 'DeploymentTargetIdRequiredException')
    DeploymentTargetList = Shapes::ListShape.new(name: 'DeploymentTargetList')
    DeploymentTargetListSizeExceededException = Shapes::StructureShape.new(name: 'DeploymentTargetListSizeExceededException')
    DeploymentTargetType = Shapes::StringShape.new(name: 'DeploymentTargetType')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    DeploymentWaitType = Shapes::StringShape.new(name: 'DeploymentWaitType')
    DeploymentsInfoList = Shapes::ListShape.new(name: 'DeploymentsInfoList')
    DeploymentsList = Shapes::ListShape.new(name: 'DeploymentsList')
    DeregisterOnPremisesInstanceInput = Shapes::StructureShape.new(name: 'DeregisterOnPremisesInstanceInput')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptionTooLongException = Shapes::StructureShape.new(name: 'DescriptionTooLongException')
    Diagnostics = Shapes::StructureShape.new(name: 'Diagnostics')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    EC2TagFilter = Shapes::StructureShape.new(name: 'EC2TagFilter')
    EC2TagFilterList = Shapes::ListShape.new(name: 'EC2TagFilterList')
    EC2TagFilterType = Shapes::StringShape.new(name: 'EC2TagFilterType')
    EC2TagSet = Shapes::StructureShape.new(name: 'EC2TagSet')
    EC2TagSetList = Shapes::ListShape.new(name: 'EC2TagSetList')
    ECSClusterName = Shapes::StringShape.new(name: 'ECSClusterName')
    ECSService = Shapes::StructureShape.new(name: 'ECSService')
    ECSServiceList = Shapes::ListShape.new(name: 'ECSServiceList')
    ECSServiceMappingLimitExceededException = Shapes::StructureShape.new(name: 'ECSServiceMappingLimitExceededException')
    ECSServiceName = Shapes::StringShape.new(name: 'ECSServiceName')
    ECSTarget = Shapes::StructureShape.new(name: 'ECSTarget')
    ECSTaskSet = Shapes::StructureShape.new(name: 'ECSTaskSet')
    ECSTaskSetCount = Shapes::IntegerShape.new(name: 'ECSTaskSetCount')
    ECSTaskSetIdentifier = Shapes::StringShape.new(name: 'ECSTaskSetIdentifier')
    ECSTaskSetList = Shapes::ListShape.new(name: 'ECSTaskSetList')
    ECSTaskSetStatus = Shapes::StringShape.new(name: 'ECSTaskSetStatus')
    ELBInfo = Shapes::StructureShape.new(name: 'ELBInfo')
    ELBInfoList = Shapes::ListShape.new(name: 'ELBInfoList')
    ELBName = Shapes::StringShape.new(name: 'ELBName')
    ETag = Shapes::StringShape.new(name: 'ETag')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorInformation = Shapes::StructureShape.new(name: 'ErrorInformation')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    FileExistsBehavior = Shapes::StringShape.new(name: 'FileExistsBehavior')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    GenericRevisionInfo = Shapes::StructureShape.new(name: 'GenericRevisionInfo')
    GetApplicationInput = Shapes::StructureShape.new(name: 'GetApplicationInput')
    GetApplicationOutput = Shapes::StructureShape.new(name: 'GetApplicationOutput')
    GetApplicationRevisionInput = Shapes::StructureShape.new(name: 'GetApplicationRevisionInput')
    GetApplicationRevisionOutput = Shapes::StructureShape.new(name: 'GetApplicationRevisionOutput')
    GetDeploymentConfigInput = Shapes::StructureShape.new(name: 'GetDeploymentConfigInput')
    GetDeploymentConfigOutput = Shapes::StructureShape.new(name: 'GetDeploymentConfigOutput')
    GetDeploymentGroupInput = Shapes::StructureShape.new(name: 'GetDeploymentGroupInput')
    GetDeploymentGroupOutput = Shapes::StructureShape.new(name: 'GetDeploymentGroupOutput')
    GetDeploymentInput = Shapes::StructureShape.new(name: 'GetDeploymentInput')
    GetDeploymentInstanceInput = Shapes::StructureShape.new(name: 'GetDeploymentInstanceInput')
    GetDeploymentInstanceOutput = Shapes::StructureShape.new(name: 'GetDeploymentInstanceOutput')
    GetDeploymentOutput = Shapes::StructureShape.new(name: 'GetDeploymentOutput')
    GetDeploymentTargetInput = Shapes::StructureShape.new(name: 'GetDeploymentTargetInput')
    GetDeploymentTargetOutput = Shapes::StructureShape.new(name: 'GetDeploymentTargetOutput')
    GetOnPremisesInstanceInput = Shapes::StructureShape.new(name: 'GetOnPremisesInstanceInput')
    GetOnPremisesInstanceOutput = Shapes::StructureShape.new(name: 'GetOnPremisesInstanceOutput')
    GitHubAccountTokenDoesNotExistException = Shapes::StructureShape.new(name: 'GitHubAccountTokenDoesNotExistException')
    GitHubAccountTokenName = Shapes::StringShape.new(name: 'GitHubAccountTokenName')
    GitHubAccountTokenNameList = Shapes::ListShape.new(name: 'GitHubAccountTokenNameList')
    GitHubAccountTokenNameRequiredException = Shapes::StructureShape.new(name: 'GitHubAccountTokenNameRequiredException')
    GitHubLocation = Shapes::StructureShape.new(name: 'GitHubLocation')
    GreenFleetProvisioningAction = Shapes::StringShape.new(name: 'GreenFleetProvisioningAction')
    GreenFleetProvisioningOption = Shapes::StructureShape.new(name: 'GreenFleetProvisioningOption')
    IamArnRequiredException = Shapes::StructureShape.new(name: 'IamArnRequiredException')
    IamSessionArn = Shapes::StringShape.new(name: 'IamSessionArn')
    IamSessionArnAlreadyRegisteredException = Shapes::StructureShape.new(name: 'IamSessionArnAlreadyRegisteredException')
    IamUserArn = Shapes::StringShape.new(name: 'IamUserArn')
    IamUserArnAlreadyRegisteredException = Shapes::StructureShape.new(name: 'IamUserArnAlreadyRegisteredException')
    IamUserArnRequiredException = Shapes::StructureShape.new(name: 'IamUserArnRequiredException')
    InstanceAction = Shapes::StringShape.new(name: 'InstanceAction')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    InstanceDoesNotExistException = Shapes::StructureShape.new(name: 'InstanceDoesNotExistException')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdRequiredException = Shapes::StructureShape.new(name: 'InstanceIdRequiredException')
    InstanceInfo = Shapes::StructureShape.new(name: 'InstanceInfo')
    InstanceInfoList = Shapes::ListShape.new(name: 'InstanceInfoList')
    InstanceLimitExceededException = Shapes::StructureShape.new(name: 'InstanceLimitExceededException')
    InstanceName = Shapes::StringShape.new(name: 'InstanceName')
    InstanceNameAlreadyRegisteredException = Shapes::StructureShape.new(name: 'InstanceNameAlreadyRegisteredException')
    InstanceNameList = Shapes::ListShape.new(name: 'InstanceNameList')
    InstanceNameRequiredException = Shapes::StructureShape.new(name: 'InstanceNameRequiredException')
    InstanceNotRegisteredException = Shapes::StructureShape.new(name: 'InstanceNotRegisteredException')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    InstanceStatusList = Shapes::ListShape.new(name: 'InstanceStatusList')
    InstanceSummary = Shapes::StructureShape.new(name: 'InstanceSummary')
    InstanceSummaryList = Shapes::ListShape.new(name: 'InstanceSummaryList')
    InstanceTarget = Shapes::StructureShape.new(name: 'InstanceTarget')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeList = Shapes::ListShape.new(name: 'InstanceTypeList')
    InstancesList = Shapes::ListShape.new(name: 'InstancesList')
    InvalidAlarmConfigException = Shapes::StructureShape.new(name: 'InvalidAlarmConfigException')
    InvalidApplicationNameException = Shapes::StructureShape.new(name: 'InvalidApplicationNameException')
    InvalidArnException = Shapes::StructureShape.new(name: 'InvalidArnException')
    InvalidAutoRollbackConfigException = Shapes::StructureShape.new(name: 'InvalidAutoRollbackConfigException')
    InvalidAutoScalingGroupException = Shapes::StructureShape.new(name: 'InvalidAutoScalingGroupException')
    InvalidBlueGreenDeploymentConfigurationException = Shapes::StructureShape.new(name: 'InvalidBlueGreenDeploymentConfigurationException')
    InvalidBucketNameFilterException = Shapes::StructureShape.new(name: 'InvalidBucketNameFilterException')
    InvalidComputePlatformException = Shapes::StructureShape.new(name: 'InvalidComputePlatformException')
    InvalidDeployedStateFilterException = Shapes::StructureShape.new(name: 'InvalidDeployedStateFilterException')
    InvalidDeploymentConfigIdException = Shapes::StructureShape.new(name: 'InvalidDeploymentConfigIdException')
    InvalidDeploymentConfigNameException = Shapes::StructureShape.new(name: 'InvalidDeploymentConfigNameException')
    InvalidDeploymentGroupNameException = Shapes::StructureShape.new(name: 'InvalidDeploymentGroupNameException')
    InvalidDeploymentIdException = Shapes::StructureShape.new(name: 'InvalidDeploymentIdException')
    InvalidDeploymentInstanceTypeException = Shapes::StructureShape.new(name: 'InvalidDeploymentInstanceTypeException')
    InvalidDeploymentStatusException = Shapes::StructureShape.new(name: 'InvalidDeploymentStatusException')
    InvalidDeploymentStyleException = Shapes::StructureShape.new(name: 'InvalidDeploymentStyleException')
    InvalidDeploymentTargetIdException = Shapes::StructureShape.new(name: 'InvalidDeploymentTargetIdException')
    InvalidDeploymentWaitTypeException = Shapes::StructureShape.new(name: 'InvalidDeploymentWaitTypeException')
    InvalidEC2TagCombinationException = Shapes::StructureShape.new(name: 'InvalidEC2TagCombinationException')
    InvalidEC2TagException = Shapes::StructureShape.new(name: 'InvalidEC2TagException')
    InvalidECSServiceException = Shapes::StructureShape.new(name: 'InvalidECSServiceException')
    InvalidExternalIdException = Shapes::StructureShape.new(name: 'InvalidExternalIdException')
    InvalidFileExistsBehaviorException = Shapes::StructureShape.new(name: 'InvalidFileExistsBehaviorException')
    InvalidGitHubAccountTokenException = Shapes::StructureShape.new(name: 'InvalidGitHubAccountTokenException')
    InvalidGitHubAccountTokenNameException = Shapes::StructureShape.new(name: 'InvalidGitHubAccountTokenNameException')
    InvalidIamSessionArnException = Shapes::StructureShape.new(name: 'InvalidIamSessionArnException')
    InvalidIamUserArnException = Shapes::StructureShape.new(name: 'InvalidIamUserArnException')
    InvalidIgnoreApplicationStopFailuresValueException = Shapes::StructureShape.new(name: 'InvalidIgnoreApplicationStopFailuresValueException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidInstanceIdException = Shapes::StructureShape.new(name: 'InvalidInstanceIdException')
    InvalidInstanceNameException = Shapes::StructureShape.new(name: 'InvalidInstanceNameException')
    InvalidInstanceStatusException = Shapes::StructureShape.new(name: 'InvalidInstanceStatusException')
    InvalidInstanceTypeException = Shapes::StructureShape.new(name: 'InvalidInstanceTypeException')
    InvalidKeyPrefixFilterException = Shapes::StructureShape.new(name: 'InvalidKeyPrefixFilterException')
    InvalidLifecycleEventHookExecutionIdException = Shapes::StructureShape.new(name: 'InvalidLifecycleEventHookExecutionIdException')
    InvalidLifecycleEventHookExecutionStatusException = Shapes::StructureShape.new(name: 'InvalidLifecycleEventHookExecutionStatusException')
    InvalidLoadBalancerInfoException = Shapes::StructureShape.new(name: 'InvalidLoadBalancerInfoException')
    InvalidMinimumHealthyHostValueException = Shapes::StructureShape.new(name: 'InvalidMinimumHealthyHostValueException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidOnPremisesTagCombinationException = Shapes::StructureShape.new(name: 'InvalidOnPremisesTagCombinationException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidRegistrationStatusException = Shapes::StructureShape.new(name: 'InvalidRegistrationStatusException')
    InvalidRevisionException = Shapes::StructureShape.new(name: 'InvalidRevisionException')
    InvalidRoleException = Shapes::StructureShape.new(name: 'InvalidRoleException')
    InvalidSortByException = Shapes::StructureShape.new(name: 'InvalidSortByException')
    InvalidSortOrderException = Shapes::StructureShape.new(name: 'InvalidSortOrderException')
    InvalidTagException = Shapes::StructureShape.new(name: 'InvalidTagException')
    InvalidTagFilterException = Shapes::StructureShape.new(name: 'InvalidTagFilterException')
    InvalidTagsToAddException = Shapes::StructureShape.new(name: 'InvalidTagsToAddException')
    InvalidTargetException = Shapes::StructureShape.new(name: 'InvalidTargetException')
    InvalidTargetFilterNameException = Shapes::StructureShape.new(name: 'InvalidTargetFilterNameException')
    InvalidTargetGroupPairException = Shapes::StructureShape.new(name: 'InvalidTargetGroupPairException')
    InvalidTargetInstancesException = Shapes::StructureShape.new(name: 'InvalidTargetInstancesException')
    InvalidTimeRangeException = Shapes::StructureShape.new(name: 'InvalidTimeRangeException')
    InvalidTrafficRoutingConfigurationException = Shapes::StructureShape.new(name: 'InvalidTrafficRoutingConfigurationException')
    InvalidTriggerConfigException = Shapes::StructureShape.new(name: 'InvalidTriggerConfigException')
    InvalidUpdateOutdatedInstancesOnlyValueException = Shapes::StructureShape.new(name: 'InvalidUpdateOutdatedInstancesOnlyValueException')
    Key = Shapes::StringShape.new(name: 'Key')
    LambdaFunctionAlias = Shapes::StringShape.new(name: 'LambdaFunctionAlias')
    LambdaFunctionInfo = Shapes::StructureShape.new(name: 'LambdaFunctionInfo')
    LambdaFunctionName = Shapes::StringShape.new(name: 'LambdaFunctionName')
    LambdaTarget = Shapes::StructureShape.new(name: 'LambdaTarget')
    LastDeploymentInfo = Shapes::StructureShape.new(name: 'LastDeploymentInfo')
    LifecycleErrorCode = Shapes::StringShape.new(name: 'LifecycleErrorCode')
    LifecycleEvent = Shapes::StructureShape.new(name: 'LifecycleEvent')
    LifecycleEventAlreadyCompletedException = Shapes::StructureShape.new(name: 'LifecycleEventAlreadyCompletedException')
    LifecycleEventHookExecutionId = Shapes::StringShape.new(name: 'LifecycleEventHookExecutionId')
    LifecycleEventList = Shapes::ListShape.new(name: 'LifecycleEventList')
    LifecycleEventName = Shapes::StringShape.new(name: 'LifecycleEventName')
    LifecycleEventStatus = Shapes::StringShape.new(name: 'LifecycleEventStatus')
    LifecycleHookLimitExceededException = Shapes::StructureShape.new(name: 'LifecycleHookLimitExceededException')
    LifecycleMessage = Shapes::StringShape.new(name: 'LifecycleMessage')
    ListApplicationRevisionsInput = Shapes::StructureShape.new(name: 'ListApplicationRevisionsInput')
    ListApplicationRevisionsOutput = Shapes::StructureShape.new(name: 'ListApplicationRevisionsOutput')
    ListApplicationsInput = Shapes::StructureShape.new(name: 'ListApplicationsInput')
    ListApplicationsOutput = Shapes::StructureShape.new(name: 'ListApplicationsOutput')
    ListDeploymentConfigsInput = Shapes::StructureShape.new(name: 'ListDeploymentConfigsInput')
    ListDeploymentConfigsOutput = Shapes::StructureShape.new(name: 'ListDeploymentConfigsOutput')
    ListDeploymentGroupsInput = Shapes::StructureShape.new(name: 'ListDeploymentGroupsInput')
    ListDeploymentGroupsOutput = Shapes::StructureShape.new(name: 'ListDeploymentGroupsOutput')
    ListDeploymentInstancesInput = Shapes::StructureShape.new(name: 'ListDeploymentInstancesInput')
    ListDeploymentInstancesOutput = Shapes::StructureShape.new(name: 'ListDeploymentInstancesOutput')
    ListDeploymentTargetsInput = Shapes::StructureShape.new(name: 'ListDeploymentTargetsInput')
    ListDeploymentTargetsOutput = Shapes::StructureShape.new(name: 'ListDeploymentTargetsOutput')
    ListDeploymentsInput = Shapes::StructureShape.new(name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Shapes::StructureShape.new(name: 'ListDeploymentsOutput')
    ListGitHubAccountTokenNamesInput = Shapes::StructureShape.new(name: 'ListGitHubAccountTokenNamesInput')
    ListGitHubAccountTokenNamesOutput = Shapes::StructureShape.new(name: 'ListGitHubAccountTokenNamesOutput')
    ListOnPremisesInstancesInput = Shapes::StructureShape.new(name: 'ListOnPremisesInstancesInput')
    ListOnPremisesInstancesOutput = Shapes::StructureShape.new(name: 'ListOnPremisesInstancesOutput')
    ListStateFilterAction = Shapes::StringShape.new(name: 'ListStateFilterAction')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListenerArn = Shapes::StringShape.new(name: 'ListenerArn')
    ListenerArnList = Shapes::ListShape.new(name: 'ListenerArnList')
    LoadBalancerInfo = Shapes::StructureShape.new(name: 'LoadBalancerInfo')
    LogTail = Shapes::StringShape.new(name: 'LogTail')
    Message = Shapes::StringShape.new(name: 'Message')
    MinimumHealthyHosts = Shapes::StructureShape.new(name: 'MinimumHealthyHosts')
    MinimumHealthyHostsType = Shapes::StringShape.new(name: 'MinimumHealthyHostsType')
    MinimumHealthyHostsValue = Shapes::IntegerShape.new(name: 'MinimumHealthyHostsValue')
    MultipleIamArnsProvidedException = Shapes::StructureShape.new(name: 'MultipleIamArnsProvidedException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OnPremisesTagSet = Shapes::StructureShape.new(name: 'OnPremisesTagSet')
    OnPremisesTagSetList = Shapes::ListShape.new(name: 'OnPremisesTagSetList')
    OperationNotSupportedException = Shapes::StructureShape.new(name: 'OperationNotSupportedException')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    PutLifecycleEventHookExecutionStatusInput = Shapes::StructureShape.new(name: 'PutLifecycleEventHookExecutionStatusInput')
    PutLifecycleEventHookExecutionStatusOutput = Shapes::StructureShape.new(name: 'PutLifecycleEventHookExecutionStatusOutput')
    RawString = Shapes::StructureShape.new(name: 'RawString')
    RawStringContent = Shapes::StringShape.new(name: 'RawStringContent')
    RawStringSha256 = Shapes::StringShape.new(name: 'RawStringSha256')
    RegisterApplicationRevisionInput = Shapes::StructureShape.new(name: 'RegisterApplicationRevisionInput')
    RegisterOnPremisesInstanceInput = Shapes::StructureShape.new(name: 'RegisterOnPremisesInstanceInput')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    RemoveTagsFromOnPremisesInstancesInput = Shapes::StructureShape.new(name: 'RemoveTagsFromOnPremisesInstancesInput')
    Repository = Shapes::StringShape.new(name: 'Repository')
    ResourceArnRequiredException = Shapes::StructureShape.new(name: 'ResourceArnRequiredException')
    ResourceValidationException = Shapes::StructureShape.new(name: 'ResourceValidationException')
    RevisionDoesNotExistException = Shapes::StructureShape.new(name: 'RevisionDoesNotExistException')
    RevisionInfo = Shapes::StructureShape.new(name: 'RevisionInfo')
    RevisionInfoList = Shapes::ListShape.new(name: 'RevisionInfoList')
    RevisionLocation = Shapes::StructureShape.new(name: 'RevisionLocation')
    RevisionLocationList = Shapes::ListShape.new(name: 'RevisionLocationList')
    RevisionLocationType = Shapes::StringShape.new(name: 'RevisionLocationType')
    RevisionRequiredException = Shapes::StructureShape.new(name: 'RevisionRequiredException')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleRequiredException = Shapes::StructureShape.new(name: 'RoleRequiredException')
    RollbackInfo = Shapes::StructureShape.new(name: 'RollbackInfo')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ScriptName = Shapes::StringShape.new(name: 'ScriptName')
    SkipWaitTimeForInstanceTerminationInput = Shapes::StructureShape.new(name: 'SkipWaitTimeForInstanceTerminationInput')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StopDeploymentInput = Shapes::StructureShape.new(name: 'StopDeploymentInput')
    StopDeploymentOutput = Shapes::StructureShape.new(name: 'StopDeploymentOutput')
    StopStatus = Shapes::StringShape.new(name: 'StopStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilterList = Shapes::ListShape.new(name: 'TagFilterList')
    TagFilterType = Shapes::StringShape.new(name: 'TagFilterType')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagLimitExceededException = Shapes::StructureShape.new(name: 'TagLimitExceededException')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagRequiredException = Shapes::StructureShape.new(name: 'TagRequiredException')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagSetListLimitExceededException = Shapes::StructureShape.new(name: 'TagSetListLimitExceededException')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TargetFilterName = Shapes::StringShape.new(name: 'TargetFilterName')
    TargetFilters = Shapes::MapShape.new(name: 'TargetFilters')
    TargetGroupInfo = Shapes::StructureShape.new(name: 'TargetGroupInfo')
    TargetGroupInfoList = Shapes::ListShape.new(name: 'TargetGroupInfoList')
    TargetGroupName = Shapes::StringShape.new(name: 'TargetGroupName')
    TargetGroupPairInfo = Shapes::StructureShape.new(name: 'TargetGroupPairInfo')
    TargetGroupPairInfoList = Shapes::ListShape.new(name: 'TargetGroupPairInfoList')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetIdList = Shapes::ListShape.new(name: 'TargetIdList')
    TargetInstances = Shapes::StructureShape.new(name: 'TargetInstances')
    TargetLabel = Shapes::StringShape.new(name: 'TargetLabel')
    TargetStatus = Shapes::StringShape.new(name: 'TargetStatus')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Time = Shapes::TimestampShape.new(name: 'Time')
    TimeBasedCanary = Shapes::StructureShape.new(name: 'TimeBasedCanary')
    TimeBasedLinear = Shapes::StructureShape.new(name: 'TimeBasedLinear')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficRoute = Shapes::StructureShape.new(name: 'TrafficRoute')
    TrafficRoutingConfig = Shapes::StructureShape.new(name: 'TrafficRoutingConfig')
    TrafficRoutingType = Shapes::StringShape.new(name: 'TrafficRoutingType')
    TrafficWeight = Shapes::FloatShape.new(name: 'TrafficWeight')
    TriggerConfig = Shapes::StructureShape.new(name: 'TriggerConfig')
    TriggerConfigList = Shapes::ListShape.new(name: 'TriggerConfigList')
    TriggerEventType = Shapes::StringShape.new(name: 'TriggerEventType')
    TriggerEventTypeList = Shapes::ListShape.new(name: 'TriggerEventTypeList')
    TriggerName = Shapes::StringShape.new(name: 'TriggerName')
    TriggerTargetArn = Shapes::StringShape.new(name: 'TriggerTargetArn')
    TriggerTargetsLimitExceededException = Shapes::StructureShape.new(name: 'TriggerTargetsLimitExceededException')
    UnsupportedActionForDeploymentTypeException = Shapes::StructureShape.new(name: 'UnsupportedActionForDeploymentTypeException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateApplicationInput = Shapes::StructureShape.new(name: 'UpdateApplicationInput')
    UpdateDeploymentGroupInput = Shapes::StructureShape.new(name: 'UpdateDeploymentGroupInput')
    UpdateDeploymentGroupOutput = Shapes::StructureShape.new(name: 'UpdateDeploymentGroupOutput')
    Value = Shapes::StringShape.new(name: 'Value')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionId = Shapes::StringShape.new(name: 'VersionId')
    WaitTimeInMins = Shapes::IntegerShape.new(name: 'WaitTimeInMins')

    AddTagsToOnPremisesInstancesInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    AddTagsToOnPremisesInstancesInput.add_member(:instance_names, Shapes::ShapeRef.new(shape: InstanceNameList, required: true, location_name: "instanceNames"))
    AddTagsToOnPremisesInstancesInput.struct_class = Types::AddTagsToOnPremisesInstancesInput

    Alarm.add_member(:name, Shapes::ShapeRef.new(shape: AlarmName, location_name: "name"))
    Alarm.struct_class = Types::Alarm

    AlarmConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    AlarmConfiguration.add_member(:ignore_poll_alarm_failure, Shapes::ShapeRef.new(shape: Boolean, location_name: "ignorePollAlarmFailure"))
    AlarmConfiguration.add_member(:alarms, Shapes::ShapeRef.new(shape: AlarmList, location_name: "alarms"))
    AlarmConfiguration.struct_class = Types::AlarmConfiguration

    AlarmList.member = Shapes::ShapeRef.new(shape: Alarm)

    AlarmsLimitExceededException.struct_class = Types::AlarmsLimitExceededException

    AppSpecContent.add_member(:content, Shapes::ShapeRef.new(shape: RawStringContent, location_name: "content"))
    AppSpecContent.add_member(:sha256, Shapes::ShapeRef.new(shape: RawStringSha256, location_name: "sha256"))
    AppSpecContent.struct_class = Types::AppSpecContent

    ApplicationAlreadyExistsException.struct_class = Types::ApplicationAlreadyExistsException

    ApplicationDoesNotExistException.struct_class = Types::ApplicationDoesNotExistException

    ApplicationInfo.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    ApplicationInfo.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    ApplicationInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    ApplicationInfo.add_member(:linked_to_git_hub, Shapes::ShapeRef.new(shape: Boolean, location_name: "linkedToGitHub"))
    ApplicationInfo.add_member(:git_hub_account_name, Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: "gitHubAccountName"))
    ApplicationInfo.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    ApplicationInfo.struct_class = Types::ApplicationInfo

    ApplicationLimitExceededException.struct_class = Types::ApplicationLimitExceededException

    ApplicationNameRequiredException.struct_class = Types::ApplicationNameRequiredException

    ApplicationsInfoList.member = Shapes::ShapeRef.new(shape: ApplicationInfo)

    ApplicationsList.member = Shapes::ShapeRef.new(shape: ApplicationName)

    ArnNotSupportedException.struct_class = Types::ArnNotSupportedException

    AutoRollbackConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    AutoRollbackConfiguration.add_member(:events, Shapes::ShapeRef.new(shape: AutoRollbackEventsList, location_name: "events"))
    AutoRollbackConfiguration.struct_class = Types::AutoRollbackConfiguration

    AutoRollbackEventsList.member = Shapes::ShapeRef.new(shape: AutoRollbackEvent)

    AutoScalingGroup.add_member(:name, Shapes::ShapeRef.new(shape: AutoScalingGroupName, location_name: "name"))
    AutoScalingGroup.add_member(:hook, Shapes::ShapeRef.new(shape: AutoScalingGroupHook, location_name: "hook"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupList.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    AutoScalingGroupNameList.member = Shapes::ShapeRef.new(shape: AutoScalingGroupName)

    BatchGetApplicationRevisionsInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    BatchGetApplicationRevisionsInput.add_member(:revisions, Shapes::ShapeRef.new(shape: RevisionLocationList, required: true, location_name: "revisions"))
    BatchGetApplicationRevisionsInput.struct_class = Types::BatchGetApplicationRevisionsInput

    BatchGetApplicationRevisionsOutput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    BatchGetApplicationRevisionsOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchGetApplicationRevisionsOutput.add_member(:revisions, Shapes::ShapeRef.new(shape: RevisionInfoList, location_name: "revisions"))
    BatchGetApplicationRevisionsOutput.struct_class = Types::BatchGetApplicationRevisionsOutput

    BatchGetApplicationsInput.add_member(:application_names, Shapes::ShapeRef.new(shape: ApplicationsList, required: true, location_name: "applicationNames"))
    BatchGetApplicationsInput.struct_class = Types::BatchGetApplicationsInput

    BatchGetApplicationsOutput.add_member(:applications_info, Shapes::ShapeRef.new(shape: ApplicationsInfoList, location_name: "applicationsInfo"))
    BatchGetApplicationsOutput.struct_class = Types::BatchGetApplicationsOutput

    BatchGetDeploymentGroupsInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    BatchGetDeploymentGroupsInput.add_member(:deployment_group_names, Shapes::ShapeRef.new(shape: DeploymentGroupsList, required: true, location_name: "deploymentGroupNames"))
    BatchGetDeploymentGroupsInput.struct_class = Types::BatchGetDeploymentGroupsInput

    BatchGetDeploymentGroupsOutput.add_member(:deployment_groups_info, Shapes::ShapeRef.new(shape: DeploymentGroupInfoList, location_name: "deploymentGroupsInfo"))
    BatchGetDeploymentGroupsOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchGetDeploymentGroupsOutput.struct_class = Types::BatchGetDeploymentGroupsOutput

    BatchGetDeploymentInstancesInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    BatchGetDeploymentInstancesInput.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstancesList, required: true, location_name: "instanceIds"))
    BatchGetDeploymentInstancesInput.struct_class = Types::BatchGetDeploymentInstancesInput

    BatchGetDeploymentInstancesOutput.add_member(:instances_summary, Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: "instancesSummary"))
    BatchGetDeploymentInstancesOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchGetDeploymentInstancesOutput.struct_class = Types::BatchGetDeploymentInstancesOutput

    BatchGetDeploymentTargetsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    BatchGetDeploymentTargetsInput.add_member(:target_ids, Shapes::ShapeRef.new(shape: TargetIdList, location_name: "targetIds"))
    BatchGetDeploymentTargetsInput.struct_class = Types::BatchGetDeploymentTargetsInput

    BatchGetDeploymentTargetsOutput.add_member(:deployment_targets, Shapes::ShapeRef.new(shape: DeploymentTargetList, location_name: "deploymentTargets"))
    BatchGetDeploymentTargetsOutput.struct_class = Types::BatchGetDeploymentTargetsOutput

    BatchGetDeploymentsInput.add_member(:deployment_ids, Shapes::ShapeRef.new(shape: DeploymentsList, required: true, location_name: "deploymentIds"))
    BatchGetDeploymentsInput.struct_class = Types::BatchGetDeploymentsInput

    BatchGetDeploymentsOutput.add_member(:deployments_info, Shapes::ShapeRef.new(shape: DeploymentsInfoList, location_name: "deploymentsInfo"))
    BatchGetDeploymentsOutput.struct_class = Types::BatchGetDeploymentsOutput

    BatchGetOnPremisesInstancesInput.add_member(:instance_names, Shapes::ShapeRef.new(shape: InstanceNameList, required: true, location_name: "instanceNames"))
    BatchGetOnPremisesInstancesInput.struct_class = Types::BatchGetOnPremisesInstancesInput

    BatchGetOnPremisesInstancesOutput.add_member(:instance_infos, Shapes::ShapeRef.new(shape: InstanceInfoList, location_name: "instanceInfos"))
    BatchGetOnPremisesInstancesOutput.struct_class = Types::BatchGetOnPremisesInstancesOutput

    BatchLimitExceededException.struct_class = Types::BatchLimitExceededException

    BlueGreenDeploymentConfiguration.add_member(:terminate_blue_instances_on_deployment_success, Shapes::ShapeRef.new(shape: BlueInstanceTerminationOption, location_name: "terminateBlueInstancesOnDeploymentSuccess"))
    BlueGreenDeploymentConfiguration.add_member(:deployment_ready_option, Shapes::ShapeRef.new(shape: DeploymentReadyOption, location_name: "deploymentReadyOption"))
    BlueGreenDeploymentConfiguration.add_member(:green_fleet_provisioning_option, Shapes::ShapeRef.new(shape: GreenFleetProvisioningOption, location_name: "greenFleetProvisioningOption"))
    BlueGreenDeploymentConfiguration.struct_class = Types::BlueGreenDeploymentConfiguration

    BlueInstanceTerminationOption.add_member(:action, Shapes::ShapeRef.new(shape: InstanceAction, location_name: "action"))
    BlueInstanceTerminationOption.add_member(:termination_wait_time_in_minutes, Shapes::ShapeRef.new(shape: Duration, location_name: "terminationWaitTimeInMinutes"))
    BlueInstanceTerminationOption.struct_class = Types::BlueInstanceTerminationOption

    BucketNameFilterRequiredException.struct_class = Types::BucketNameFilterRequiredException

    CloudFormationTarget.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    CloudFormationTarget.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    CloudFormationTarget.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Time, location_name: "lastUpdatedAt"))
    CloudFormationTarget.add_member(:lifecycle_events, Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: "lifecycleEvents"))
    CloudFormationTarget.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, location_name: "status"))
    CloudFormationTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: CloudFormationResourceType, location_name: "resourceType"))
    CloudFormationTarget.add_member(:target_version_weight, Shapes::ShapeRef.new(shape: TrafficWeight, location_name: "targetVersionWeight"))
    CloudFormationTarget.struct_class = Types::CloudFormationTarget

    ContinueDeploymentInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ContinueDeploymentInput.add_member(:deployment_wait_type, Shapes::ShapeRef.new(shape: DeploymentWaitType, location_name: "deploymentWaitType"))
    ContinueDeploymentInput.struct_class = Types::ContinueDeploymentInput

    CreateApplicationInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    CreateApplicationInput.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    CreateApplicationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateApplicationInput.struct_class = Types::CreateApplicationInput

    CreateApplicationOutput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    CreateApplicationOutput.struct_class = Types::CreateApplicationOutput

    CreateDeploymentConfigInput.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, required: true, location_name: "deploymentConfigName"))
    CreateDeploymentConfigInput.add_member(:minimum_healthy_hosts, Shapes::ShapeRef.new(shape: MinimumHealthyHosts, location_name: "minimumHealthyHosts"))
    CreateDeploymentConfigInput.add_member(:traffic_routing_config, Shapes::ShapeRef.new(shape: TrafficRoutingConfig, location_name: "trafficRoutingConfig"))
    CreateDeploymentConfigInput.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    CreateDeploymentConfigInput.struct_class = Types::CreateDeploymentConfigInput

    CreateDeploymentConfigOutput.add_member(:deployment_config_id, Shapes::ShapeRef.new(shape: DeploymentConfigId, location_name: "deploymentConfigId"))
    CreateDeploymentConfigOutput.struct_class = Types::CreateDeploymentConfigOutput

    CreateDeploymentGroupInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    CreateDeploymentGroupInput.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, required: true, location_name: "deploymentGroupName"))
    CreateDeploymentGroupInput.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    CreateDeploymentGroupInput.add_member(:ec2_tag_filters, Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: "ec2TagFilters"))
    CreateDeploymentGroupInput.add_member(:on_premises_instance_tag_filters, Shapes::ShapeRef.new(shape: TagFilterList, location_name: "onPremisesInstanceTagFilters"))
    CreateDeploymentGroupInput.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: "autoScalingGroups"))
    CreateDeploymentGroupInput.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "serviceRoleArn"))
    CreateDeploymentGroupInput.add_member(:trigger_configurations, Shapes::ShapeRef.new(shape: TriggerConfigList, location_name: "triggerConfigurations"))
    CreateDeploymentGroupInput.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "alarmConfiguration"))
    CreateDeploymentGroupInput.add_member(:auto_rollback_configuration, Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: "autoRollbackConfiguration"))
    CreateDeploymentGroupInput.add_member(:deployment_style, Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: "deploymentStyle"))
    CreateDeploymentGroupInput.add_member(:blue_green_deployment_configuration, Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: "blueGreenDeploymentConfiguration"))
    CreateDeploymentGroupInput.add_member(:load_balancer_info, Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: "loadBalancerInfo"))
    CreateDeploymentGroupInput.add_member(:ec2_tag_set, Shapes::ShapeRef.new(shape: EC2TagSet, location_name: "ec2TagSet"))
    CreateDeploymentGroupInput.add_member(:ecs_services, Shapes::ShapeRef.new(shape: ECSServiceList, location_name: "ecsServices"))
    CreateDeploymentGroupInput.add_member(:on_premises_tag_set, Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: "onPremisesTagSet"))
    CreateDeploymentGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDeploymentGroupInput.struct_class = Types::CreateDeploymentGroupInput

    CreateDeploymentGroupOutput.add_member(:deployment_group_id, Shapes::ShapeRef.new(shape: DeploymentGroupId, location_name: "deploymentGroupId"))
    CreateDeploymentGroupOutput.struct_class = Types::CreateDeploymentGroupOutput

    CreateDeploymentInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    CreateDeploymentInput.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: "deploymentGroupName"))
    CreateDeploymentInput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "revision"))
    CreateDeploymentInput.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    CreateDeploymentInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDeploymentInput.add_member(:ignore_application_stop_failures, Shapes::ShapeRef.new(shape: Boolean, location_name: "ignoreApplicationStopFailures"))
    CreateDeploymentInput.add_member(:target_instances, Shapes::ShapeRef.new(shape: TargetInstances, location_name: "targetInstances"))
    CreateDeploymentInput.add_member(:auto_rollback_configuration, Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: "autoRollbackConfiguration"))
    CreateDeploymentInput.add_member(:update_outdated_instances_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "updateOutdatedInstancesOnly"))
    CreateDeploymentInput.add_member(:file_exists_behavior, Shapes::ShapeRef.new(shape: FileExistsBehavior, location_name: "fileExistsBehavior"))
    CreateDeploymentInput.struct_class = Types::CreateDeploymentInput

    CreateDeploymentOutput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    CreateDeploymentOutput.struct_class = Types::CreateDeploymentOutput

    DeleteApplicationInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    DeleteApplicationInput.struct_class = Types::DeleteApplicationInput

    DeleteDeploymentConfigInput.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, required: true, location_name: "deploymentConfigName"))
    DeleteDeploymentConfigInput.struct_class = Types::DeleteDeploymentConfigInput

    DeleteDeploymentGroupInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    DeleteDeploymentGroupInput.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, required: true, location_name: "deploymentGroupName"))
    DeleteDeploymentGroupInput.struct_class = Types::DeleteDeploymentGroupInput

    DeleteDeploymentGroupOutput.add_member(:hooks_not_cleaned_up, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "hooksNotCleanedUp"))
    DeleteDeploymentGroupOutput.struct_class = Types::DeleteDeploymentGroupOutput

    DeleteGitHubAccountTokenInput.add_member(:token_name, Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: "tokenName"))
    DeleteGitHubAccountTokenInput.struct_class = Types::DeleteGitHubAccountTokenInput

    DeleteGitHubAccountTokenOutput.add_member(:token_name, Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: "tokenName"))
    DeleteGitHubAccountTokenOutput.struct_class = Types::DeleteGitHubAccountTokenOutput

    DeleteResourcesByExternalIdInput.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    DeleteResourcesByExternalIdInput.struct_class = Types::DeleteResourcesByExternalIdInput

    DeleteResourcesByExternalIdOutput.struct_class = Types::DeleteResourcesByExternalIdOutput

    DeploymentAlreadyCompletedException.struct_class = Types::DeploymentAlreadyCompletedException

    DeploymentAlreadyStartedException.struct_class = Types::DeploymentAlreadyStartedException

    DeploymentConfigAlreadyExistsException.struct_class = Types::DeploymentConfigAlreadyExistsException

    DeploymentConfigDoesNotExistException.struct_class = Types::DeploymentConfigDoesNotExistException

    DeploymentConfigInUseException.struct_class = Types::DeploymentConfigInUseException

    DeploymentConfigInfo.add_member(:deployment_config_id, Shapes::ShapeRef.new(shape: DeploymentConfigId, location_name: "deploymentConfigId"))
    DeploymentConfigInfo.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    DeploymentConfigInfo.add_member(:minimum_healthy_hosts, Shapes::ShapeRef.new(shape: MinimumHealthyHosts, location_name: "minimumHealthyHosts"))
    DeploymentConfigInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    DeploymentConfigInfo.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    DeploymentConfigInfo.add_member(:traffic_routing_config, Shapes::ShapeRef.new(shape: TrafficRoutingConfig, location_name: "trafficRoutingConfig"))
    DeploymentConfigInfo.struct_class = Types::DeploymentConfigInfo

    DeploymentConfigLimitExceededException.struct_class = Types::DeploymentConfigLimitExceededException

    DeploymentConfigNameRequiredException.struct_class = Types::DeploymentConfigNameRequiredException

    DeploymentConfigsList.member = Shapes::ShapeRef.new(shape: DeploymentConfigName)

    DeploymentDoesNotExistException.struct_class = Types::DeploymentDoesNotExistException

    DeploymentGroupAlreadyExistsException.struct_class = Types::DeploymentGroupAlreadyExistsException

    DeploymentGroupDoesNotExistException.struct_class = Types::DeploymentGroupDoesNotExistException

    DeploymentGroupInfo.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    DeploymentGroupInfo.add_member(:deployment_group_id, Shapes::ShapeRef.new(shape: DeploymentGroupId, location_name: "deploymentGroupId"))
    DeploymentGroupInfo.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: "deploymentGroupName"))
    DeploymentGroupInfo.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    DeploymentGroupInfo.add_member(:ec2_tag_filters, Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: "ec2TagFilters"))
    DeploymentGroupInfo.add_member(:on_premises_instance_tag_filters, Shapes::ShapeRef.new(shape: TagFilterList, location_name: "onPremisesInstanceTagFilters"))
    DeploymentGroupInfo.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "autoScalingGroups"))
    DeploymentGroupInfo.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: Role, location_name: "serviceRoleArn"))
    DeploymentGroupInfo.add_member(:target_revision, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "targetRevision"))
    DeploymentGroupInfo.add_member(:trigger_configurations, Shapes::ShapeRef.new(shape: TriggerConfigList, location_name: "triggerConfigurations"))
    DeploymentGroupInfo.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "alarmConfiguration"))
    DeploymentGroupInfo.add_member(:auto_rollback_configuration, Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: "autoRollbackConfiguration"))
    DeploymentGroupInfo.add_member(:deployment_style, Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: "deploymentStyle"))
    DeploymentGroupInfo.add_member(:blue_green_deployment_configuration, Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: "blueGreenDeploymentConfiguration"))
    DeploymentGroupInfo.add_member(:load_balancer_info, Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: "loadBalancerInfo"))
    DeploymentGroupInfo.add_member(:last_successful_deployment, Shapes::ShapeRef.new(shape: LastDeploymentInfo, location_name: "lastSuccessfulDeployment"))
    DeploymentGroupInfo.add_member(:last_attempted_deployment, Shapes::ShapeRef.new(shape: LastDeploymentInfo, location_name: "lastAttemptedDeployment"))
    DeploymentGroupInfo.add_member(:ec2_tag_set, Shapes::ShapeRef.new(shape: EC2TagSet, location_name: "ec2TagSet"))
    DeploymentGroupInfo.add_member(:on_premises_tag_set, Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: "onPremisesTagSet"))
    DeploymentGroupInfo.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    DeploymentGroupInfo.add_member(:ecs_services, Shapes::ShapeRef.new(shape: ECSServiceList, location_name: "ecsServices"))
    DeploymentGroupInfo.struct_class = Types::DeploymentGroupInfo

    DeploymentGroupInfoList.member = Shapes::ShapeRef.new(shape: DeploymentGroupInfo)

    DeploymentGroupLimitExceededException.struct_class = Types::DeploymentGroupLimitExceededException

    DeploymentGroupNameRequiredException.struct_class = Types::DeploymentGroupNameRequiredException

    DeploymentGroupsList.member = Shapes::ShapeRef.new(shape: DeploymentGroupName)

    DeploymentIdRequiredException.struct_class = Types::DeploymentIdRequiredException

    DeploymentInfo.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    DeploymentInfo.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: "deploymentGroupName"))
    DeploymentInfo.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    DeploymentInfo.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    DeploymentInfo.add_member(:previous_revision, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "previousRevision"))
    DeploymentInfo.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "revision"))
    DeploymentInfo.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeploymentInfo.add_member(:error_information, Shapes::ShapeRef.new(shape: ErrorInformation, location_name: "errorInformation"))
    DeploymentInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    DeploymentInfo.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DeploymentInfo.add_member(:complete_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completeTime"))
    DeploymentInfo.add_member(:deployment_overview, Shapes::ShapeRef.new(shape: DeploymentOverview, location_name: "deploymentOverview"))
    DeploymentInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DeploymentInfo.add_member(:creator, Shapes::ShapeRef.new(shape: DeploymentCreator, location_name: "creator"))
    DeploymentInfo.add_member(:ignore_application_stop_failures, Shapes::ShapeRef.new(shape: Boolean, location_name: "ignoreApplicationStopFailures"))
    DeploymentInfo.add_member(:auto_rollback_configuration, Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: "autoRollbackConfiguration"))
    DeploymentInfo.add_member(:update_outdated_instances_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "updateOutdatedInstancesOnly"))
    DeploymentInfo.add_member(:rollback_info, Shapes::ShapeRef.new(shape: RollbackInfo, location_name: "rollbackInfo"))
    DeploymentInfo.add_member(:deployment_style, Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: "deploymentStyle"))
    DeploymentInfo.add_member(:target_instances, Shapes::ShapeRef.new(shape: TargetInstances, location_name: "targetInstances"))
    DeploymentInfo.add_member(:instance_termination_wait_time_started, Shapes::ShapeRef.new(shape: Boolean, location_name: "instanceTerminationWaitTimeStarted"))
    DeploymentInfo.add_member(:blue_green_deployment_configuration, Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: "blueGreenDeploymentConfiguration"))
    DeploymentInfo.add_member(:load_balancer_info, Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: "loadBalancerInfo"))
    DeploymentInfo.add_member(:additional_deployment_status_info, Shapes::ShapeRef.new(shape: AdditionalDeploymentStatusInfo, deprecated: true, location_name: "additionalDeploymentStatusInfo"))
    DeploymentInfo.add_member(:file_exists_behavior, Shapes::ShapeRef.new(shape: FileExistsBehavior, location_name: "fileExistsBehavior"))
    DeploymentInfo.add_member(:deployment_status_messages, Shapes::ShapeRef.new(shape: DeploymentStatusMessageList, location_name: "deploymentStatusMessages"))
    DeploymentInfo.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    DeploymentInfo.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    DeploymentInfo.struct_class = Types::DeploymentInfo

    DeploymentIsNotInReadyStateException.struct_class = Types::DeploymentIsNotInReadyStateException

    DeploymentLimitExceededException.struct_class = Types::DeploymentLimitExceededException

    DeploymentNotStartedException.struct_class = Types::DeploymentNotStartedException

    DeploymentOverview.add_member(:pending, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "Pending"))
    DeploymentOverview.add_member(:in_progress, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InProgress"))
    DeploymentOverview.add_member(:succeeded, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "Succeeded"))
    DeploymentOverview.add_member(:failed, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "Failed"))
    DeploymentOverview.add_member(:skipped, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "Skipped"))
    DeploymentOverview.add_member(:ready, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "Ready"))
    DeploymentOverview.struct_class = Types::DeploymentOverview

    DeploymentReadyOption.add_member(:action_on_timeout, Shapes::ShapeRef.new(shape: DeploymentReadyAction, location_name: "actionOnTimeout"))
    DeploymentReadyOption.add_member(:wait_time_in_minutes, Shapes::ShapeRef.new(shape: Duration, location_name: "waitTimeInMinutes"))
    DeploymentReadyOption.struct_class = Types::DeploymentReadyOption

    DeploymentStatusList.member = Shapes::ShapeRef.new(shape: DeploymentStatus)

    DeploymentStatusMessageList.member = Shapes::ShapeRef.new(shape: ErrorMessage)

    DeploymentStyle.add_member(:deployment_type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "deploymentType"))
    DeploymentStyle.add_member(:deployment_option, Shapes::ShapeRef.new(shape: DeploymentOption, location_name: "deploymentOption"))
    DeploymentStyle.struct_class = Types::DeploymentStyle

    DeploymentTarget.add_member(:deployment_target_type, Shapes::ShapeRef.new(shape: DeploymentTargetType, location_name: "deploymentTargetType"))
    DeploymentTarget.add_member(:instance_target, Shapes::ShapeRef.new(shape: InstanceTarget, location_name: "instanceTarget"))
    DeploymentTarget.add_member(:lambda_target, Shapes::ShapeRef.new(shape: LambdaTarget, location_name: "lambdaTarget"))
    DeploymentTarget.add_member(:ecs_target, Shapes::ShapeRef.new(shape: ECSTarget, location_name: "ecsTarget"))
    DeploymentTarget.add_member(:cloud_formation_target, Shapes::ShapeRef.new(shape: CloudFormationTarget, location_name: "cloudFormationTarget"))
    DeploymentTarget.struct_class = Types::DeploymentTarget

    DeploymentTargetDoesNotExistException.struct_class = Types::DeploymentTargetDoesNotExistException

    DeploymentTargetIdRequiredException.struct_class = Types::DeploymentTargetIdRequiredException

    DeploymentTargetList.member = Shapes::ShapeRef.new(shape: DeploymentTarget)

    DeploymentTargetListSizeExceededException.struct_class = Types::DeploymentTargetListSizeExceededException

    DeploymentsInfoList.member = Shapes::ShapeRef.new(shape: DeploymentInfo)

    DeploymentsList.member = Shapes::ShapeRef.new(shape: DeploymentId)

    DeregisterOnPremisesInstanceInput.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, required: true, location_name: "instanceName"))
    DeregisterOnPremisesInstanceInput.struct_class = Types::DeregisterOnPremisesInstanceInput

    DescriptionTooLongException.struct_class = Types::DescriptionTooLongException

    Diagnostics.add_member(:error_code, Shapes::ShapeRef.new(shape: LifecycleErrorCode, location_name: "errorCode"))
    Diagnostics.add_member(:script_name, Shapes::ShapeRef.new(shape: ScriptName, location_name: "scriptName"))
    Diagnostics.add_member(:message, Shapes::ShapeRef.new(shape: LifecycleMessage, location_name: "message"))
    Diagnostics.add_member(:log_tail, Shapes::ShapeRef.new(shape: LogTail, location_name: "logTail"))
    Diagnostics.struct_class = Types::Diagnostics

    EC2TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    EC2TagFilter.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    EC2TagFilter.add_member(:type, Shapes::ShapeRef.new(shape: EC2TagFilterType, location_name: "Type"))
    EC2TagFilter.struct_class = Types::EC2TagFilter

    EC2TagFilterList.member = Shapes::ShapeRef.new(shape: EC2TagFilter)

    EC2TagSet.add_member(:ec2_tag_set_list, Shapes::ShapeRef.new(shape: EC2TagSetList, location_name: "ec2TagSetList"))
    EC2TagSet.struct_class = Types::EC2TagSet

    EC2TagSetList.member = Shapes::ShapeRef.new(shape: EC2TagFilterList)

    ECSService.add_member(:service_name, Shapes::ShapeRef.new(shape: ECSServiceName, location_name: "serviceName"))
    ECSService.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ECSClusterName, location_name: "clusterName"))
    ECSService.struct_class = Types::ECSService

    ECSServiceList.member = Shapes::ShapeRef.new(shape: ECSService)

    ECSServiceMappingLimitExceededException.struct_class = Types::ECSServiceMappingLimitExceededException

    ECSTarget.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ECSTarget.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    ECSTarget.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, location_name: "targetArn"))
    ECSTarget.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Time, location_name: "lastUpdatedAt"))
    ECSTarget.add_member(:lifecycle_events, Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: "lifecycleEvents"))
    ECSTarget.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, location_name: "status"))
    ECSTarget.add_member(:task_sets_info, Shapes::ShapeRef.new(shape: ECSTaskSetList, location_name: "taskSetsInfo"))
    ECSTarget.struct_class = Types::ECSTarget

    ECSTaskSet.add_member(:identifer, Shapes::ShapeRef.new(shape: ECSTaskSetIdentifier, location_name: "identifer"))
    ECSTaskSet.add_member(:desired_count, Shapes::ShapeRef.new(shape: ECSTaskSetCount, location_name: "desiredCount"))
    ECSTaskSet.add_member(:pending_count, Shapes::ShapeRef.new(shape: ECSTaskSetCount, location_name: "pendingCount"))
    ECSTaskSet.add_member(:running_count, Shapes::ShapeRef.new(shape: ECSTaskSetCount, location_name: "runningCount"))
    ECSTaskSet.add_member(:status, Shapes::ShapeRef.new(shape: ECSTaskSetStatus, location_name: "status"))
    ECSTaskSet.add_member(:traffic_weight, Shapes::ShapeRef.new(shape: TrafficWeight, location_name: "trafficWeight"))
    ECSTaskSet.add_member(:target_group, Shapes::ShapeRef.new(shape: TargetGroupInfo, location_name: "targetGroup"))
    ECSTaskSet.add_member(:task_set_label, Shapes::ShapeRef.new(shape: TargetLabel, location_name: "taskSetLabel"))
    ECSTaskSet.struct_class = Types::ECSTaskSet

    ECSTaskSetList.member = Shapes::ShapeRef.new(shape: ECSTaskSet)

    ELBInfo.add_member(:name, Shapes::ShapeRef.new(shape: ELBName, location_name: "name"))
    ELBInfo.struct_class = Types::ELBInfo

    ELBInfoList.member = Shapes::ShapeRef.new(shape: ELBInfo)

    ErrorInformation.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ErrorInformation.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ErrorInformation.struct_class = Types::ErrorInformation

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    GenericRevisionInfo.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GenericRevisionInfo.add_member(:deployment_groups, Shapes::ShapeRef.new(shape: DeploymentGroupsList, location_name: "deploymentGroups"))
    GenericRevisionInfo.add_member(:first_used_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstUsedTime"))
    GenericRevisionInfo.add_member(:last_used_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUsedTime"))
    GenericRevisionInfo.add_member(:register_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "registerTime"))
    GenericRevisionInfo.struct_class = Types::GenericRevisionInfo

    GetApplicationInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    GetApplicationInput.struct_class = Types::GetApplicationInput

    GetApplicationOutput.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: "application"))
    GetApplicationOutput.struct_class = Types::GetApplicationOutput

    GetApplicationRevisionInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    GetApplicationRevisionInput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionLocation, required: true, location_name: "revision"))
    GetApplicationRevisionInput.struct_class = Types::GetApplicationRevisionInput

    GetApplicationRevisionOutput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    GetApplicationRevisionOutput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "revision"))
    GetApplicationRevisionOutput.add_member(:revision_info, Shapes::ShapeRef.new(shape: GenericRevisionInfo, location_name: "revisionInfo"))
    GetApplicationRevisionOutput.struct_class = Types::GetApplicationRevisionOutput

    GetDeploymentConfigInput.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, required: true, location_name: "deploymentConfigName"))
    GetDeploymentConfigInput.struct_class = Types::GetDeploymentConfigInput

    GetDeploymentConfigOutput.add_member(:deployment_config_info, Shapes::ShapeRef.new(shape: DeploymentConfigInfo, location_name: "deploymentConfigInfo"))
    GetDeploymentConfigOutput.struct_class = Types::GetDeploymentConfigOutput

    GetDeploymentGroupInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    GetDeploymentGroupInput.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, required: true, location_name: "deploymentGroupName"))
    GetDeploymentGroupInput.struct_class = Types::GetDeploymentGroupInput

    GetDeploymentGroupOutput.add_member(:deployment_group_info, Shapes::ShapeRef.new(shape: DeploymentGroupInfo, location_name: "deploymentGroupInfo"))
    GetDeploymentGroupOutput.struct_class = Types::GetDeploymentGroupOutput

    GetDeploymentInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    GetDeploymentInput.struct_class = Types::GetDeploymentInput

    GetDeploymentInstanceInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    GetDeploymentInstanceInput.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "instanceId"))
    GetDeploymentInstanceInput.struct_class = Types::GetDeploymentInstanceInput

    GetDeploymentInstanceOutput.add_member(:instance_summary, Shapes::ShapeRef.new(shape: InstanceSummary, deprecated: true, location_name: "instanceSummary"))
    GetDeploymentInstanceOutput.struct_class = Types::GetDeploymentInstanceOutput

    GetDeploymentOutput.add_member(:deployment_info, Shapes::ShapeRef.new(shape: DeploymentInfo, location_name: "deploymentInfo"))
    GetDeploymentOutput.struct_class = Types::GetDeploymentOutput

    GetDeploymentTargetInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    GetDeploymentTargetInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    GetDeploymentTargetInput.struct_class = Types::GetDeploymentTargetInput

    GetDeploymentTargetOutput.add_member(:deployment_target, Shapes::ShapeRef.new(shape: DeploymentTarget, location_name: "deploymentTarget"))
    GetDeploymentTargetOutput.struct_class = Types::GetDeploymentTargetOutput

    GetOnPremisesInstanceInput.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, required: true, location_name: "instanceName"))
    GetOnPremisesInstanceInput.struct_class = Types::GetOnPremisesInstanceInput

    GetOnPremisesInstanceOutput.add_member(:instance_info, Shapes::ShapeRef.new(shape: InstanceInfo, location_name: "instanceInfo"))
    GetOnPremisesInstanceOutput.struct_class = Types::GetOnPremisesInstanceOutput

    GitHubAccountTokenDoesNotExistException.struct_class = Types::GitHubAccountTokenDoesNotExistException

    GitHubAccountTokenNameList.member = Shapes::ShapeRef.new(shape: GitHubAccountTokenName)

    GitHubAccountTokenNameRequiredException.struct_class = Types::GitHubAccountTokenNameRequiredException

    GitHubLocation.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    GitHubLocation.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "commitId"))
    GitHubLocation.struct_class = Types::GitHubLocation

    GreenFleetProvisioningOption.add_member(:action, Shapes::ShapeRef.new(shape: GreenFleetProvisioningAction, location_name: "action"))
    GreenFleetProvisioningOption.struct_class = Types::GreenFleetProvisioningOption

    IamArnRequiredException.struct_class = Types::IamArnRequiredException

    IamSessionArnAlreadyRegisteredException.struct_class = Types::IamSessionArnAlreadyRegisteredException

    IamUserArnAlreadyRegisteredException.struct_class = Types::IamUserArnAlreadyRegisteredException

    IamUserArnRequiredException.struct_class = Types::IamUserArnRequiredException

    InstanceDoesNotExistException.struct_class = Types::InstanceDoesNotExistException

    InstanceIdRequiredException.struct_class = Types::InstanceIdRequiredException

    InstanceInfo.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    InstanceInfo.add_member(:iam_session_arn, Shapes::ShapeRef.new(shape: IamSessionArn, location_name: "iamSessionArn"))
    InstanceInfo.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: IamUserArn, location_name: "iamUserArn"))
    InstanceInfo.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "instanceArn"))
    InstanceInfo.add_member(:register_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "registerTime"))
    InstanceInfo.add_member(:deregister_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deregisterTime"))
    InstanceInfo.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    InstanceInfo.struct_class = Types::InstanceInfo

    InstanceInfoList.member = Shapes::ShapeRef.new(shape: InstanceInfo)

    InstanceLimitExceededException.struct_class = Types::InstanceLimitExceededException

    InstanceNameAlreadyRegisteredException.struct_class = Types::InstanceNameAlreadyRegisteredException

    InstanceNameList.member = Shapes::ShapeRef.new(shape: InstanceName)

    InstanceNameRequiredException.struct_class = Types::InstanceNameRequiredException

    InstanceNotRegisteredException.struct_class = Types::InstanceNotRegisteredException

    InstanceStatusList.member = Shapes::ShapeRef.new(shape: InstanceStatus, deprecated: true)

    InstanceSummary.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    InstanceSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "instanceId"))
    InstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, deprecated: true, location_name: "status"))
    InstanceSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    InstanceSummary.add_member(:lifecycle_events, Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: "lifecycleEvents"))
    InstanceSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    InstanceSummary.struct_class = Types::InstanceSummary

    InstanceSummaryList.member = Shapes::ShapeRef.new(shape: InstanceSummary, deprecated: true)

    InstanceTarget.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    InstanceTarget.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    InstanceTarget.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, location_name: "targetArn"))
    InstanceTarget.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, location_name: "status"))
    InstanceTarget.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Time, location_name: "lastUpdatedAt"))
    InstanceTarget.add_member(:lifecycle_events, Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: "lifecycleEvents"))
    InstanceTarget.add_member(:instance_label, Shapes::ShapeRef.new(shape: TargetLabel, location_name: "instanceLabel"))
    InstanceTarget.struct_class = Types::InstanceTarget

    InstanceTypeList.member = Shapes::ShapeRef.new(shape: InstanceType)

    InstancesList.member = Shapes::ShapeRef.new(shape: InstanceId)

    InvalidAlarmConfigException.struct_class = Types::InvalidAlarmConfigException

    InvalidApplicationNameException.struct_class = Types::InvalidApplicationNameException

    InvalidArnException.struct_class = Types::InvalidArnException

    InvalidAutoRollbackConfigException.struct_class = Types::InvalidAutoRollbackConfigException

    InvalidAutoScalingGroupException.struct_class = Types::InvalidAutoScalingGroupException

    InvalidBlueGreenDeploymentConfigurationException.struct_class = Types::InvalidBlueGreenDeploymentConfigurationException

    InvalidBucketNameFilterException.struct_class = Types::InvalidBucketNameFilterException

    InvalidComputePlatformException.struct_class = Types::InvalidComputePlatformException

    InvalidDeployedStateFilterException.struct_class = Types::InvalidDeployedStateFilterException

    InvalidDeploymentConfigIdException.struct_class = Types::InvalidDeploymentConfigIdException

    InvalidDeploymentConfigNameException.struct_class = Types::InvalidDeploymentConfigNameException

    InvalidDeploymentGroupNameException.struct_class = Types::InvalidDeploymentGroupNameException

    InvalidDeploymentIdException.struct_class = Types::InvalidDeploymentIdException

    InvalidDeploymentInstanceTypeException.struct_class = Types::InvalidDeploymentInstanceTypeException

    InvalidDeploymentStatusException.struct_class = Types::InvalidDeploymentStatusException

    InvalidDeploymentStyleException.struct_class = Types::InvalidDeploymentStyleException

    InvalidDeploymentTargetIdException.struct_class = Types::InvalidDeploymentTargetIdException

    InvalidDeploymentWaitTypeException.struct_class = Types::InvalidDeploymentWaitTypeException

    InvalidEC2TagCombinationException.struct_class = Types::InvalidEC2TagCombinationException

    InvalidEC2TagException.struct_class = Types::InvalidEC2TagException

    InvalidECSServiceException.struct_class = Types::InvalidECSServiceException

    InvalidExternalIdException.struct_class = Types::InvalidExternalIdException

    InvalidFileExistsBehaviorException.struct_class = Types::InvalidFileExistsBehaviorException

    InvalidGitHubAccountTokenException.struct_class = Types::InvalidGitHubAccountTokenException

    InvalidGitHubAccountTokenNameException.struct_class = Types::InvalidGitHubAccountTokenNameException

    InvalidIamSessionArnException.struct_class = Types::InvalidIamSessionArnException

    InvalidIamUserArnException.struct_class = Types::InvalidIamUserArnException

    InvalidIgnoreApplicationStopFailuresValueException.struct_class = Types::InvalidIgnoreApplicationStopFailuresValueException

    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidInstanceIdException.struct_class = Types::InvalidInstanceIdException

    InvalidInstanceNameException.struct_class = Types::InvalidInstanceNameException

    InvalidInstanceStatusException.struct_class = Types::InvalidInstanceStatusException

    InvalidInstanceTypeException.struct_class = Types::InvalidInstanceTypeException

    InvalidKeyPrefixFilterException.struct_class = Types::InvalidKeyPrefixFilterException

    InvalidLifecycleEventHookExecutionIdException.struct_class = Types::InvalidLifecycleEventHookExecutionIdException

    InvalidLifecycleEventHookExecutionStatusException.struct_class = Types::InvalidLifecycleEventHookExecutionStatusException

    InvalidLoadBalancerInfoException.struct_class = Types::InvalidLoadBalancerInfoException

    InvalidMinimumHealthyHostValueException.struct_class = Types::InvalidMinimumHealthyHostValueException

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidOnPremisesTagCombinationException.struct_class = Types::InvalidOnPremisesTagCombinationException

    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidRegistrationStatusException.struct_class = Types::InvalidRegistrationStatusException

    InvalidRevisionException.struct_class = Types::InvalidRevisionException

    InvalidRoleException.struct_class = Types::InvalidRoleException

    InvalidSortByException.struct_class = Types::InvalidSortByException

    InvalidSortOrderException.struct_class = Types::InvalidSortOrderException

    InvalidTagException.struct_class = Types::InvalidTagException

    InvalidTagFilterException.struct_class = Types::InvalidTagFilterException

    InvalidTagsToAddException.struct_class = Types::InvalidTagsToAddException

    InvalidTargetException.struct_class = Types::InvalidTargetException

    InvalidTargetFilterNameException.struct_class = Types::InvalidTargetFilterNameException

    InvalidTargetGroupPairException.struct_class = Types::InvalidTargetGroupPairException

    InvalidTargetInstancesException.struct_class = Types::InvalidTargetInstancesException

    InvalidTimeRangeException.struct_class = Types::InvalidTimeRangeException

    InvalidTrafficRoutingConfigurationException.struct_class = Types::InvalidTrafficRoutingConfigurationException

    InvalidTriggerConfigException.struct_class = Types::InvalidTriggerConfigException

    InvalidUpdateOutdatedInstancesOnlyValueException.struct_class = Types::InvalidUpdateOutdatedInstancesOnlyValueException

    LambdaFunctionInfo.add_member(:function_name, Shapes::ShapeRef.new(shape: LambdaFunctionName, location_name: "functionName"))
    LambdaFunctionInfo.add_member(:function_alias, Shapes::ShapeRef.new(shape: LambdaFunctionAlias, location_name: "functionAlias"))
    LambdaFunctionInfo.add_member(:current_version, Shapes::ShapeRef.new(shape: Version, location_name: "currentVersion"))
    LambdaFunctionInfo.add_member(:target_version, Shapes::ShapeRef.new(shape: Version, location_name: "targetVersion"))
    LambdaFunctionInfo.add_member(:target_version_weight, Shapes::ShapeRef.new(shape: TrafficWeight, location_name: "targetVersionWeight"))
    LambdaFunctionInfo.struct_class = Types::LambdaFunctionInfo

    LambdaTarget.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    LambdaTarget.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "targetId"))
    LambdaTarget.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, location_name: "targetArn"))
    LambdaTarget.add_member(:status, Shapes::ShapeRef.new(shape: TargetStatus, location_name: "status"))
    LambdaTarget.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Time, location_name: "lastUpdatedAt"))
    LambdaTarget.add_member(:lifecycle_events, Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: "lifecycleEvents"))
    LambdaTarget.add_member(:lambda_function_info, Shapes::ShapeRef.new(shape: LambdaFunctionInfo, location_name: "lambdaFunctionInfo"))
    LambdaTarget.struct_class = Types::LambdaTarget

    LastDeploymentInfo.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    LastDeploymentInfo.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    LastDeploymentInfo.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    LastDeploymentInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    LastDeploymentInfo.struct_class = Types::LastDeploymentInfo

    LifecycleEvent.add_member(:lifecycle_event_name, Shapes::ShapeRef.new(shape: LifecycleEventName, location_name: "lifecycleEventName"))
    LifecycleEvent.add_member(:diagnostics, Shapes::ShapeRef.new(shape: Diagnostics, location_name: "diagnostics"))
    LifecycleEvent.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    LifecycleEvent.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    LifecycleEvent.add_member(:status, Shapes::ShapeRef.new(shape: LifecycleEventStatus, location_name: "status"))
    LifecycleEvent.struct_class = Types::LifecycleEvent

    LifecycleEventAlreadyCompletedException.struct_class = Types::LifecycleEventAlreadyCompletedException

    LifecycleEventList.member = Shapes::ShapeRef.new(shape: LifecycleEvent)

    LifecycleHookLimitExceededException.struct_class = Types::LifecycleHookLimitExceededException

    ListApplicationRevisionsInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    ListApplicationRevisionsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ApplicationRevisionSortBy, location_name: "sortBy"))
    ListApplicationRevisionsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder"))
    ListApplicationRevisionsInput.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    ListApplicationRevisionsInput.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3KeyPrefix"))
    ListApplicationRevisionsInput.add_member(:deployed, Shapes::ShapeRef.new(shape: ListStateFilterAction, location_name: "deployed"))
    ListApplicationRevisionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationRevisionsInput.struct_class = Types::ListApplicationRevisionsInput

    ListApplicationRevisionsOutput.add_member(:revisions, Shapes::ShapeRef.new(shape: RevisionLocationList, location_name: "revisions"))
    ListApplicationRevisionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationRevisionsOutput.struct_class = Types::ListApplicationRevisionsOutput

    ListApplicationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsInput.struct_class = Types::ListApplicationsInput

    ListApplicationsOutput.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationsList, location_name: "applications"))
    ListApplicationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsOutput.struct_class = Types::ListApplicationsOutput

    ListDeploymentConfigsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentConfigsInput.struct_class = Types::ListDeploymentConfigsInput

    ListDeploymentConfigsOutput.add_member(:deployment_configs_list, Shapes::ShapeRef.new(shape: DeploymentConfigsList, location_name: "deploymentConfigsList"))
    ListDeploymentConfigsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentConfigsOutput.struct_class = Types::ListDeploymentConfigsOutput

    ListDeploymentGroupsInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    ListDeploymentGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentGroupsInput.struct_class = Types::ListDeploymentGroupsInput

    ListDeploymentGroupsOutput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    ListDeploymentGroupsOutput.add_member(:deployment_groups, Shapes::ShapeRef.new(shape: DeploymentGroupsList, location_name: "deploymentGroups"))
    ListDeploymentGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentGroupsOutput.struct_class = Types::ListDeploymentGroupsOutput

    ListDeploymentInstancesInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    ListDeploymentInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentInstancesInput.add_member(:instance_status_filter, Shapes::ShapeRef.new(shape: InstanceStatusList, location_name: "instanceStatusFilter"))
    ListDeploymentInstancesInput.add_member(:instance_type_filter, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypeFilter"))
    ListDeploymentInstancesInput.struct_class = Types::ListDeploymentInstancesInput

    ListDeploymentInstancesOutput.add_member(:instances_list, Shapes::ShapeRef.new(shape: InstancesList, location_name: "instancesList"))
    ListDeploymentInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentInstancesOutput.struct_class = Types::ListDeploymentInstancesOutput

    ListDeploymentTargetsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ListDeploymentTargetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentTargetsInput.add_member(:target_filters, Shapes::ShapeRef.new(shape: TargetFilters, location_name: "targetFilters"))
    ListDeploymentTargetsInput.struct_class = Types::ListDeploymentTargetsInput

    ListDeploymentTargetsOutput.add_member(:target_ids, Shapes::ShapeRef.new(shape: TargetIdList, location_name: "targetIds"))
    ListDeploymentTargetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentTargetsOutput.struct_class = Types::ListDeploymentTargetsOutput

    ListDeploymentsInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    ListDeploymentsInput.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: "deploymentGroupName"))
    ListDeploymentsInput.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    ListDeploymentsInput.add_member(:include_only_statuses, Shapes::ShapeRef.new(shape: DeploymentStatusList, location_name: "includeOnlyStatuses"))
    ListDeploymentsInput.add_member(:create_time_range, Shapes::ShapeRef.new(shape: TimeRange, location_name: "createTimeRange"))
    ListDeploymentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsInput.struct_class = Types::ListDeploymentsInput

    ListDeploymentsOutput.add_member(:deployments, Shapes::ShapeRef.new(shape: DeploymentsList, location_name: "deployments"))
    ListDeploymentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsOutput.struct_class = Types::ListDeploymentsOutput

    ListGitHubAccountTokenNamesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGitHubAccountTokenNamesInput.struct_class = Types::ListGitHubAccountTokenNamesInput

    ListGitHubAccountTokenNamesOutput.add_member(:token_name_list, Shapes::ShapeRef.new(shape: GitHubAccountTokenNameList, location_name: "tokenNameList"))
    ListGitHubAccountTokenNamesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGitHubAccountTokenNamesOutput.struct_class = Types::ListGitHubAccountTokenNamesOutput

    ListOnPremisesInstancesInput.add_member(:registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "registrationStatus"))
    ListOnPremisesInstancesInput.add_member(:tag_filters, Shapes::ShapeRef.new(shape: TagFilterList, location_name: "tagFilters"))
    ListOnPremisesInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListOnPremisesInstancesInput.struct_class = Types::ListOnPremisesInstancesInput

    ListOnPremisesInstancesOutput.add_member(:instance_names, Shapes::ShapeRef.new(shape: InstanceNameList, location_name: "instanceNames"))
    ListOnPremisesInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListOnPremisesInstancesOutput.struct_class = Types::ListOnPremisesInstancesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListenerArnList.member = Shapes::ShapeRef.new(shape: ListenerArn)

    LoadBalancerInfo.add_member(:elb_info_list, Shapes::ShapeRef.new(shape: ELBInfoList, location_name: "elbInfoList"))
    LoadBalancerInfo.add_member(:target_group_info_list, Shapes::ShapeRef.new(shape: TargetGroupInfoList, location_name: "targetGroupInfoList"))
    LoadBalancerInfo.add_member(:target_group_pair_info_list, Shapes::ShapeRef.new(shape: TargetGroupPairInfoList, location_name: "targetGroupPairInfoList"))
    LoadBalancerInfo.struct_class = Types::LoadBalancerInfo

    MinimumHealthyHosts.add_member(:value, Shapes::ShapeRef.new(shape: MinimumHealthyHostsValue, location_name: "value"))
    MinimumHealthyHosts.add_member(:type, Shapes::ShapeRef.new(shape: MinimumHealthyHostsType, location_name: "type"))
    MinimumHealthyHosts.struct_class = Types::MinimumHealthyHosts

    MultipleIamArnsProvidedException.struct_class = Types::MultipleIamArnsProvidedException

    OnPremisesTagSet.add_member(:on_premises_tag_set_list, Shapes::ShapeRef.new(shape: OnPremisesTagSetList, location_name: "onPremisesTagSetList"))
    OnPremisesTagSet.struct_class = Types::OnPremisesTagSet

    OnPremisesTagSetList.member = Shapes::ShapeRef.new(shape: TagFilterList)

    OperationNotSupportedException.struct_class = Types::OperationNotSupportedException

    PutLifecycleEventHookExecutionStatusInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    PutLifecycleEventHookExecutionStatusInput.add_member(:lifecycle_event_hook_execution_id, Shapes::ShapeRef.new(shape: LifecycleEventHookExecutionId, location_name: "lifecycleEventHookExecutionId"))
    PutLifecycleEventHookExecutionStatusInput.add_member(:status, Shapes::ShapeRef.new(shape: LifecycleEventStatus, location_name: "status"))
    PutLifecycleEventHookExecutionStatusInput.struct_class = Types::PutLifecycleEventHookExecutionStatusInput

    PutLifecycleEventHookExecutionStatusOutput.add_member(:lifecycle_event_hook_execution_id, Shapes::ShapeRef.new(shape: LifecycleEventHookExecutionId, location_name: "lifecycleEventHookExecutionId"))
    PutLifecycleEventHookExecutionStatusOutput.struct_class = Types::PutLifecycleEventHookExecutionStatusOutput

    RawString.add_member(:content, Shapes::ShapeRef.new(shape: RawStringContent, location_name: "content"))
    RawString.add_member(:sha256, Shapes::ShapeRef.new(shape: RawStringSha256, location_name: "sha256"))
    RawString.struct_class = Types::RawString

    RegisterApplicationRevisionInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    RegisterApplicationRevisionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegisterApplicationRevisionInput.add_member(:revision, Shapes::ShapeRef.new(shape: RevisionLocation, required: true, location_name: "revision"))
    RegisterApplicationRevisionInput.struct_class = Types::RegisterApplicationRevisionInput

    RegisterOnPremisesInstanceInput.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, required: true, location_name: "instanceName"))
    RegisterOnPremisesInstanceInput.add_member(:iam_session_arn, Shapes::ShapeRef.new(shape: IamSessionArn, location_name: "iamSessionArn"))
    RegisterOnPremisesInstanceInput.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: IamUserArn, location_name: "iamUserArn"))
    RegisterOnPremisesInstanceInput.struct_class = Types::RegisterOnPremisesInstanceInput

    RemoveTagsFromOnPremisesInstancesInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    RemoveTagsFromOnPremisesInstancesInput.add_member(:instance_names, Shapes::ShapeRef.new(shape: InstanceNameList, required: true, location_name: "instanceNames"))
    RemoveTagsFromOnPremisesInstancesInput.struct_class = Types::RemoveTagsFromOnPremisesInstancesInput

    ResourceArnRequiredException.struct_class = Types::ResourceArnRequiredException

    ResourceValidationException.struct_class = Types::ResourceValidationException

    RevisionDoesNotExistException.struct_class = Types::RevisionDoesNotExistException

    RevisionInfo.add_member(:revision_location, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "revisionLocation"))
    RevisionInfo.add_member(:generic_revision_info, Shapes::ShapeRef.new(shape: GenericRevisionInfo, location_name: "genericRevisionInfo"))
    RevisionInfo.struct_class = Types::RevisionInfo

    RevisionInfoList.member = Shapes::ShapeRef.new(shape: RevisionInfo)

    RevisionLocation.add_member(:revision_type, Shapes::ShapeRef.new(shape: RevisionLocationType, location_name: "revisionType"))
    RevisionLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    RevisionLocation.add_member(:git_hub_location, Shapes::ShapeRef.new(shape: GitHubLocation, location_name: "gitHubLocation"))
    RevisionLocation.add_member(:string, Shapes::ShapeRef.new(shape: RawString, deprecated: true, location_name: "string"))
    RevisionLocation.add_member(:app_spec_content, Shapes::ShapeRef.new(shape: AppSpecContent, location_name: "appSpecContent"))
    RevisionLocation.struct_class = Types::RevisionLocation

    RevisionLocationList.member = Shapes::ShapeRef.new(shape: RevisionLocation)

    RevisionRequiredException.struct_class = Types::RevisionRequiredException

    RoleRequiredException.struct_class = Types::RoleRequiredException

    RollbackInfo.add_member(:rollback_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "rollbackDeploymentId"))
    RollbackInfo.add_member(:rollback_triggering_deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "rollbackTriggeringDeploymentId"))
    RollbackInfo.add_member(:rollback_message, Shapes::ShapeRef.new(shape: Description, location_name: "rollbackMessage"))
    RollbackInfo.struct_class = Types::RollbackInfo

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, location_name: "key"))
    S3Location.add_member(:bundle_type, Shapes::ShapeRef.new(shape: BundleType, location_name: "bundleType"))
    S3Location.add_member(:version, Shapes::ShapeRef.new(shape: VersionId, location_name: "version"))
    S3Location.add_member(:e_tag, Shapes::ShapeRef.new(shape: ETag, location_name: "eTag"))
    S3Location.struct_class = Types::S3Location

    SkipWaitTimeForInstanceTerminationInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    SkipWaitTimeForInstanceTerminationInput.struct_class = Types::SkipWaitTimeForInstanceTerminationInput

    StopDeploymentInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    StopDeploymentInput.add_member(:auto_rollback_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "autoRollbackEnabled"))
    StopDeploymentInput.struct_class = Types::StopDeploymentInput

    StopDeploymentOutput.add_member(:status, Shapes::ShapeRef.new(shape: StopStatus, location_name: "status"))
    StopDeploymentOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: Message, location_name: "statusMessage"))
    StopDeploymentOutput.struct_class = Types::StopDeploymentOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: Key, location_name: "Key"))
    TagFilter.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    TagFilter.add_member(:type, Shapes::ShapeRef.new(shape: TagFilterType, location_name: "Type"))
    TagFilter.struct_class = Types::TagFilter

    TagFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagKeyList.member = Shapes::ShapeRef.new(shape: Key)

    TagLimitExceededException.struct_class = Types::TagLimitExceededException

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagRequiredException.struct_class = Types::TagRequiredException

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TagSetListLimitExceededException.struct_class = Types::TagSetListLimitExceededException

    TargetFilters.key = Shapes::ShapeRef.new(shape: TargetFilterName)
    TargetFilters.value = Shapes::ShapeRef.new(shape: FilterValueList)

    TargetGroupInfo.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "name"))
    TargetGroupInfo.struct_class = Types::TargetGroupInfo

    TargetGroupInfoList.member = Shapes::ShapeRef.new(shape: TargetGroupInfo)

    TargetGroupPairInfo.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroupInfoList, location_name: "targetGroups"))
    TargetGroupPairInfo.add_member(:prod_traffic_route, Shapes::ShapeRef.new(shape: TrafficRoute, location_name: "prodTrafficRoute"))
    TargetGroupPairInfo.add_member(:test_traffic_route, Shapes::ShapeRef.new(shape: TrafficRoute, location_name: "testTrafficRoute"))
    TargetGroupPairInfo.struct_class = Types::TargetGroupPairInfo

    TargetGroupPairInfoList.member = Shapes::ShapeRef.new(shape: TargetGroupPairInfo)

    TargetIdList.member = Shapes::ShapeRef.new(shape: TargetId)

    TargetInstances.add_member(:tag_filters, Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: "tagFilters"))
    TargetInstances.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: "autoScalingGroups"))
    TargetInstances.add_member(:ec2_tag_set, Shapes::ShapeRef.new(shape: EC2TagSet, location_name: "ec2TagSet"))
    TargetInstances.struct_class = Types::TargetInstances

    ThrottlingException.struct_class = Types::ThrottlingException

    TimeBasedCanary.add_member(:canary_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "canaryPercentage"))
    TimeBasedCanary.add_member(:canary_interval, Shapes::ShapeRef.new(shape: WaitTimeInMins, location_name: "canaryInterval"))
    TimeBasedCanary.struct_class = Types::TimeBasedCanary

    TimeBasedLinear.add_member(:linear_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "linearPercentage"))
    TimeBasedLinear.add_member(:linear_interval, Shapes::ShapeRef.new(shape: WaitTimeInMins, location_name: "linearInterval"))
    TimeBasedLinear.struct_class = Types::TimeBasedLinear

    TimeRange.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    TimeRange.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "end"))
    TimeRange.struct_class = Types::TimeRange

    TrafficRoute.add_member(:listener_arns, Shapes::ShapeRef.new(shape: ListenerArnList, location_name: "listenerArns"))
    TrafficRoute.struct_class = Types::TrafficRoute

    TrafficRoutingConfig.add_member(:type, Shapes::ShapeRef.new(shape: TrafficRoutingType, location_name: "type"))
    TrafficRoutingConfig.add_member(:time_based_canary, Shapes::ShapeRef.new(shape: TimeBasedCanary, location_name: "timeBasedCanary"))
    TrafficRoutingConfig.add_member(:time_based_linear, Shapes::ShapeRef.new(shape: TimeBasedLinear, location_name: "timeBasedLinear"))
    TrafficRoutingConfig.struct_class = Types::TrafficRoutingConfig

    TriggerConfig.add_member(:trigger_name, Shapes::ShapeRef.new(shape: TriggerName, location_name: "triggerName"))
    TriggerConfig.add_member(:trigger_target_arn, Shapes::ShapeRef.new(shape: TriggerTargetArn, location_name: "triggerTargetArn"))
    TriggerConfig.add_member(:trigger_events, Shapes::ShapeRef.new(shape: TriggerEventTypeList, location_name: "triggerEvents"))
    TriggerConfig.struct_class = Types::TriggerConfig

    TriggerConfigList.member = Shapes::ShapeRef.new(shape: TriggerConfig)

    TriggerEventTypeList.member = Shapes::ShapeRef.new(shape: TriggerEventType)

    TriggerTargetsLimitExceededException.struct_class = Types::TriggerTargetsLimitExceededException

    UnsupportedActionForDeploymentTypeException.struct_class = Types::UnsupportedActionForDeploymentTypeException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateApplicationInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    UpdateApplicationInput.add_member(:new_application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "newApplicationName"))
    UpdateApplicationInput.struct_class = Types::UpdateApplicationInput

    UpdateDeploymentGroupInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    UpdateDeploymentGroupInput.add_member(:current_deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, required: true, location_name: "currentDeploymentGroupName"))
    UpdateDeploymentGroupInput.add_member(:new_deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: "newDeploymentGroupName"))
    UpdateDeploymentGroupInput.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    UpdateDeploymentGroupInput.add_member(:ec2_tag_filters, Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: "ec2TagFilters"))
    UpdateDeploymentGroupInput.add_member(:on_premises_instance_tag_filters, Shapes::ShapeRef.new(shape: TagFilterList, location_name: "onPremisesInstanceTagFilters"))
    UpdateDeploymentGroupInput.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: "autoScalingGroups"))
    UpdateDeploymentGroupInput.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: Role, location_name: "serviceRoleArn"))
    UpdateDeploymentGroupInput.add_member(:trigger_configurations, Shapes::ShapeRef.new(shape: TriggerConfigList, location_name: "triggerConfigurations"))
    UpdateDeploymentGroupInput.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "alarmConfiguration"))
    UpdateDeploymentGroupInput.add_member(:auto_rollback_configuration, Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: "autoRollbackConfiguration"))
    UpdateDeploymentGroupInput.add_member(:deployment_style, Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: "deploymentStyle"))
    UpdateDeploymentGroupInput.add_member(:blue_green_deployment_configuration, Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: "blueGreenDeploymentConfiguration"))
    UpdateDeploymentGroupInput.add_member(:load_balancer_info, Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: "loadBalancerInfo"))
    UpdateDeploymentGroupInput.add_member(:ec2_tag_set, Shapes::ShapeRef.new(shape: EC2TagSet, location_name: "ec2TagSet"))
    UpdateDeploymentGroupInput.add_member(:ecs_services, Shapes::ShapeRef.new(shape: ECSServiceList, location_name: "ecsServices"))
    UpdateDeploymentGroupInput.add_member(:on_premises_tag_set, Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: "onPremisesTagSet"))
    UpdateDeploymentGroupInput.struct_class = Types::UpdateDeploymentGroupInput

    UpdateDeploymentGroupOutput.add_member(:hooks_not_cleaned_up, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "hooksNotCleanedUp"))
    UpdateDeploymentGroupOutput.struct_class = Types::UpdateDeploymentGroupOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-10-06"

      api.metadata = {
        "apiVersion" => "2014-10-06",
        "endpointPrefix" => "codedeploy",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CodeDeploy",
        "serviceFullName" => "AWS CodeDeploy",
        "serviceId" => "CodeDeploy",
        "signatureVersion" => "v4",
        "targetPrefix" => "CodeDeploy_20141006",
        "uid" => "codedeploy-2014-10-06",
      }

      api.add_operation(:add_tags_to_on_premises_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToOnPremisesInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToOnPremisesInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: TagRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotRegisteredException)
      end)

      api.add_operation(:batch_get_application_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetApplicationRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetApplicationRevisionsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetApplicationRevisionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: RevisionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRevisionException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
      end)

      api.add_operation(:batch_get_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
      end)

      api.add_operation(:batch_get_deployment_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDeploymentGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDeploymentGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDeploymentGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
      end)

      api.add_operation(:batch_get_deployment_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDeploymentInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: BatchGetDeploymentInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDeploymentInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
      end)

      api.add_operation(:batch_get_deployment_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDeploymentTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDeploymentTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDeploymentTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentTargetIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentTargetDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentTargetListSizeExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceDoesNotExistException)
      end)

      api.add_operation(:batch_get_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDeploymentsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDeploymentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
      end)

      api.add_operation(:batch_get_on_premises_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetOnPremisesInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetOnPremisesInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetOnPremisesInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
      end)

      api.add_operation(:continue_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ContinueDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ContinueDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIsNotInReadyStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentWaitTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentStatusException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RevisionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RevisionDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRevisionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DescriptionTooLongException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetInstancesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutoRollbackConfigException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerInfoException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileExistsBehaviorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutoScalingGroupException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUpdateOutdatedInstancesOnlyValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIgnoreApplicationStopFailuresValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGitHubAccountTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
      end)

      api.add_operation(:create_deployment_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeploymentConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentConfigInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMinimumHealthyHostValueException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
      end)

      api.add_operation(:create_deployment_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeploymentGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEC2TagException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutoScalingGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RoleRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LifecycleHookLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTriggerConfigException)
        o.errors << Shapes::ShapeRef.new(shape: TriggerTargetsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAlarmConfigException)
        o.errors << Shapes::ShapeRef.new(shape: AlarmsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutoRollbackConfigException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerInfoException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentStyleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEC2TagCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOnPremisesTagCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: TagSetListLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidECSServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetGroupPairException)
        o.errors << Shapes::ShapeRef.new(shape: ECSServiceMappingLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
      end)

      api.add_operation(:delete_deployment_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeploymentConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentConfigInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:delete_deployment_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeploymentGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeploymentGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
      end)

      api.add_operation(:delete_git_hub_account_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGitHubAccountToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGitHubAccountTokenInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGitHubAccountTokenOutput)
        o.errors << Shapes::ShapeRef.new(shape: GitHubAccountTokenNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: GitHubAccountTokenDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGitHubAccountTokenNameException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:delete_resources_by_external_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcesByExternalId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcesByExternalIdInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcesByExternalIdOutput)
      end)

      api.add_operation(:deregister_on_premises_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterOnPremisesInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterOnPremisesInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
      end)

      api.add_operation(:get_application_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationRevision"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRevisionInput)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationRevisionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: RevisionDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RevisionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRevisionException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
      end)

      api.add_operation(:get_deployment_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentConfigInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentConfigOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
      end)

      api.add_operation(:get_deployment_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
      end)

      api.add_operation(:get_deployment_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
      end)

      api.add_operation(:get_deployment_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentTargetInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentTargetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentTargetIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentTargetIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentTargetDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
      end)

      api.add_operation(:get_on_premises_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOnPremisesInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOnPremisesInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetOnPremisesInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
      end)

      api.add_operation(:list_application_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationRevisionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationRevisionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSortByException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSortOrderException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBucketNameFilterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyPrefixFilterException)
        o.errors << Shapes::ShapeRef.new(shape: BucketNameFilterRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeployedStateFilterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployment_configs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentConfigs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentConfigsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentConfigsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployment_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployment_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentInstanceTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetFilterNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployment_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentTargetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentTargetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentInstanceTypeException)
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExternalIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_git_hub_account_token_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGitHubAccountTokenNames"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGitHubAccountTokenNamesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGitHubAccountTokenNamesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:list_on_premises_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOnPremisesInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOnPremisesInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListOnPremisesInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRegistrationStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagFilterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ArnNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
      end)

      api.add_operation(:put_lifecycle_event_hook_execution_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLifecycleEventHookExecutionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLifecycleEventHookExecutionStatusInput)
        o.output = Shapes::ShapeRef.new(shape: PutLifecycleEventHookExecutionStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLifecycleEventHookExecutionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLifecycleEventHookExecutionIdException)
        o.errors << Shapes::ShapeRef.new(shape: LifecycleEventAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
      end)

      api.add_operation(:register_application_revision, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterApplicationRevision"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterApplicationRevisionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: DescriptionTooLongException)
        o.errors << Shapes::ShapeRef.new(shape: RevisionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRevisionException)
      end)

      api.add_operation(:register_on_premises_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterOnPremisesInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterOnPremisesInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameAlreadyRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: IamArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: IamSessionArnAlreadyRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: IamUserArnAlreadyRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: IamUserArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIamSessionArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidIamUserArnException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleIamArnsProvidedException)
      end)

      api.add_operation(:remove_tags_from_on_premises_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromOnPremisesInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromOnPremisesInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: TagRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotRegisteredException)
      end)

      api.add_operation(:skip_wait_time_for_instance_termination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SkipWaitTimeForInstanceTermination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: SkipWaitTimeForInstanceTerminationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
      end)

      api.add_operation(:stop_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: StopDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: TagRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        o.errors << Shapes::ShapeRef.new(shape: ArnNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: TagRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        o.errors << Shapes::ShapeRef.new(shape: ArnNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArnException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
      end)

      api.add_operation(:update_deployment_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeploymentGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeploymentGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeploymentGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEC2TagException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutoScalingGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: LifecycleHookLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTriggerConfigException)
        o.errors << Shapes::ShapeRef.new(shape: TriggerTargetsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAlarmConfigException)
        o.errors << Shapes::ShapeRef.new(shape: AlarmsLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutoRollbackConfigException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLoadBalancerInfoException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentStyleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEC2TagCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOnPremisesTagCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: TagSetListLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidECSServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetGroupPairException)
        o.errors << Shapes::ShapeRef.new(shape: ECSServiceMappingLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
      end)
    end

  end
end
