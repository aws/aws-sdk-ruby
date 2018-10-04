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
    DeploymentAlreadyCompletedException = Shapes::StructureShape.new(name: 'DeploymentAlreadyCompletedException')
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
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
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
    ELBInfo = Shapes::StructureShape.new(name: 'ELBInfo')
    ELBInfoList = Shapes::ListShape.new(name: 'ELBInfoList')
    ELBName = Shapes::StringShape.new(name: 'ELBName')
    ETag = Shapes::StringShape.new(name: 'ETag')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorInformation = Shapes::StructureShape.new(name: 'ErrorInformation')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileExistsBehavior = Shapes::StringShape.new(name: 'FileExistsBehavior')
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
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeList = Shapes::ListShape.new(name: 'InstanceTypeList')
    InstancesList = Shapes::ListShape.new(name: 'InstancesList')
    InvalidAlarmConfigException = Shapes::StructureShape.new(name: 'InvalidAlarmConfigException')
    InvalidApplicationNameException = Shapes::StructureShape.new(name: 'InvalidApplicationNameException')
    InvalidAutoRollbackConfigException = Shapes::StructureShape.new(name: 'InvalidAutoRollbackConfigException')
    InvalidAutoScalingGroupException = Shapes::StructureShape.new(name: 'InvalidAutoScalingGroupException')
    InvalidBlueGreenDeploymentConfigurationException = Shapes::StructureShape.new(name: 'InvalidBlueGreenDeploymentConfigurationException')
    InvalidBucketNameFilterException = Shapes::StructureShape.new(name: 'InvalidBucketNameFilterException')
    InvalidComputePlatformException = Shapes::StructureShape.new(name: 'InvalidComputePlatformException')
    InvalidDeployedStateFilterException = Shapes::StructureShape.new(name: 'InvalidDeployedStateFilterException')
    InvalidDeploymentConfigNameException = Shapes::StructureShape.new(name: 'InvalidDeploymentConfigNameException')
    InvalidDeploymentGroupNameException = Shapes::StructureShape.new(name: 'InvalidDeploymentGroupNameException')
    InvalidDeploymentIdException = Shapes::StructureShape.new(name: 'InvalidDeploymentIdException')
    InvalidDeploymentInstanceTypeException = Shapes::StructureShape.new(name: 'InvalidDeploymentInstanceTypeException')
    InvalidDeploymentStatusException = Shapes::StructureShape.new(name: 'InvalidDeploymentStatusException')
    InvalidDeploymentStyleException = Shapes::StructureShape.new(name: 'InvalidDeploymentStyleException')
    InvalidEC2TagCombinationException = Shapes::StructureShape.new(name: 'InvalidEC2TagCombinationException')
    InvalidEC2TagException = Shapes::StructureShape.new(name: 'InvalidEC2TagException')
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
    InvalidTargetInstancesException = Shapes::StructureShape.new(name: 'InvalidTargetInstancesException')
    InvalidTimeRangeException = Shapes::StructureShape.new(name: 'InvalidTimeRangeException')
    InvalidTrafficRoutingConfigurationException = Shapes::StructureShape.new(name: 'InvalidTrafficRoutingConfigurationException')
    InvalidTriggerConfigException = Shapes::StructureShape.new(name: 'InvalidTriggerConfigException')
    InvalidUpdateOutdatedInstancesOnlyValueException = Shapes::StructureShape.new(name: 'InvalidUpdateOutdatedInstancesOnlyValueException')
    Key = Shapes::StringShape.new(name: 'Key')
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
    ListDeploymentsInput = Shapes::StructureShape.new(name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Shapes::StructureShape.new(name: 'ListDeploymentsOutput')
    ListGitHubAccountTokenNamesInput = Shapes::StructureShape.new(name: 'ListGitHubAccountTokenNamesInput')
    ListGitHubAccountTokenNamesOutput = Shapes::StructureShape.new(name: 'ListGitHubAccountTokenNamesOutput')
    ListOnPremisesInstancesInput = Shapes::StructureShape.new(name: 'ListOnPremisesInstancesInput')
    ListOnPremisesInstancesOutput = Shapes::StructureShape.new(name: 'ListOnPremisesInstancesOutput')
    ListStateFilterAction = Shapes::StringShape.new(name: 'ListStateFilterAction')
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
    TagLimitExceededException = Shapes::StructureShape.new(name: 'TagLimitExceededException')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagRequiredException = Shapes::StructureShape.new(name: 'TagRequiredException')
    TagSetListLimitExceededException = Shapes::StructureShape.new(name: 'TagSetListLimitExceededException')
    TargetGroupInfo = Shapes::StructureShape.new(name: 'TargetGroupInfo')
    TargetGroupInfoList = Shapes::ListShape.new(name: 'TargetGroupInfoList')
    TargetGroupName = Shapes::StringShape.new(name: 'TargetGroupName')
    TargetInstances = Shapes::StructureShape.new(name: 'TargetInstances')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeBasedCanary = Shapes::StructureShape.new(name: 'TimeBasedCanary')
    TimeBasedLinear = Shapes::StructureShape.new(name: 'TimeBasedLinear')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficRoutingConfig = Shapes::StructureShape.new(name: 'TrafficRoutingConfig')
    TrafficRoutingType = Shapes::StringShape.new(name: 'TrafficRoutingType')
    TriggerConfig = Shapes::StructureShape.new(name: 'TriggerConfig')
    TriggerConfigList = Shapes::ListShape.new(name: 'TriggerConfigList')
    TriggerEventType = Shapes::StringShape.new(name: 'TriggerEventType')
    TriggerEventTypeList = Shapes::ListShape.new(name: 'TriggerEventTypeList')
    TriggerName = Shapes::StringShape.new(name: 'TriggerName')
    TriggerTargetArn = Shapes::StringShape.new(name: 'TriggerTargetArn')
    TriggerTargetsLimitExceededException = Shapes::StructureShape.new(name: 'TriggerTargetsLimitExceededException')
    UnsupportedActionForDeploymentTypeException = Shapes::StructureShape.new(name: 'UnsupportedActionForDeploymentTypeException')
    UpdateApplicationInput = Shapes::StructureShape.new(name: 'UpdateApplicationInput')
    UpdateDeploymentGroupInput = Shapes::StructureShape.new(name: 'UpdateDeploymentGroupInput')
    UpdateDeploymentGroupOutput = Shapes::StructureShape.new(name: 'UpdateDeploymentGroupOutput')
    Value = Shapes::StringShape.new(name: 'Value')
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

    ApplicationInfo.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    ApplicationInfo.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    ApplicationInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    ApplicationInfo.add_member(:linked_to_git_hub, Shapes::ShapeRef.new(shape: Boolean, location_name: "linkedToGitHub"))
    ApplicationInfo.add_member(:git_hub_account_name, Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: "gitHubAccountName"))
    ApplicationInfo.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    ApplicationInfo.struct_class = Types::ApplicationInfo

    ApplicationsInfoList.member = Shapes::ShapeRef.new(shape: ApplicationInfo)

    ApplicationsList.member = Shapes::ShapeRef.new(shape: ApplicationName)

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

    BatchGetDeploymentsInput.add_member(:deployment_ids, Shapes::ShapeRef.new(shape: DeploymentsList, required: true, location_name: "deploymentIds"))
    BatchGetDeploymentsInput.struct_class = Types::BatchGetDeploymentsInput

    BatchGetDeploymentsOutput.add_member(:deployments_info, Shapes::ShapeRef.new(shape: DeploymentsInfoList, location_name: "deploymentsInfo"))
    BatchGetDeploymentsOutput.struct_class = Types::BatchGetDeploymentsOutput

    BatchGetOnPremisesInstancesInput.add_member(:instance_names, Shapes::ShapeRef.new(shape: InstanceNameList, required: true, location_name: "instanceNames"))
    BatchGetOnPremisesInstancesInput.struct_class = Types::BatchGetOnPremisesInstancesInput

    BatchGetOnPremisesInstancesOutput.add_member(:instance_infos, Shapes::ShapeRef.new(shape: InstanceInfoList, location_name: "instanceInfos"))
    BatchGetOnPremisesInstancesOutput.struct_class = Types::BatchGetOnPremisesInstancesOutput

    BlueGreenDeploymentConfiguration.add_member(:terminate_blue_instances_on_deployment_success, Shapes::ShapeRef.new(shape: BlueInstanceTerminationOption, location_name: "terminateBlueInstancesOnDeploymentSuccess"))
    BlueGreenDeploymentConfiguration.add_member(:deployment_ready_option, Shapes::ShapeRef.new(shape: DeploymentReadyOption, location_name: "deploymentReadyOption"))
    BlueGreenDeploymentConfiguration.add_member(:green_fleet_provisioning_option, Shapes::ShapeRef.new(shape: GreenFleetProvisioningOption, location_name: "greenFleetProvisioningOption"))
    BlueGreenDeploymentConfiguration.struct_class = Types::BlueGreenDeploymentConfiguration

    BlueInstanceTerminationOption.add_member(:action, Shapes::ShapeRef.new(shape: InstanceAction, location_name: "action"))
    BlueInstanceTerminationOption.add_member(:termination_wait_time_in_minutes, Shapes::ShapeRef.new(shape: Duration, location_name: "terminationWaitTimeInMinutes"))
    BlueInstanceTerminationOption.struct_class = Types::BlueInstanceTerminationOption

    ContinueDeploymentInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    ContinueDeploymentInput.struct_class = Types::ContinueDeploymentInput

    CreateApplicationInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "applicationName"))
    CreateApplicationInput.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
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
    CreateDeploymentGroupInput.add_member(:on_premises_tag_set, Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: "onPremisesTagSet"))
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

    DeploymentConfigInfo.add_member(:deployment_config_id, Shapes::ShapeRef.new(shape: DeploymentConfigId, location_name: "deploymentConfigId"))
    DeploymentConfigInfo.add_member(:deployment_config_name, Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: "deploymentConfigName"))
    DeploymentConfigInfo.add_member(:minimum_healthy_hosts, Shapes::ShapeRef.new(shape: MinimumHealthyHosts, location_name: "minimumHealthyHosts"))
    DeploymentConfigInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    DeploymentConfigInfo.add_member(:compute_platform, Shapes::ShapeRef.new(shape: ComputePlatform, location_name: "computePlatform"))
    DeploymentConfigInfo.add_member(:traffic_routing_config, Shapes::ShapeRef.new(shape: TrafficRoutingConfig, location_name: "trafficRoutingConfig"))
    DeploymentConfigInfo.struct_class = Types::DeploymentConfigInfo

    DeploymentConfigsList.member = Shapes::ShapeRef.new(shape: DeploymentConfigName)

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
    DeploymentGroupInfo.struct_class = Types::DeploymentGroupInfo

    DeploymentGroupInfoList.member = Shapes::ShapeRef.new(shape: DeploymentGroupInfo)

    DeploymentGroupsList.member = Shapes::ShapeRef.new(shape: DeploymentGroupName)

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
    DeploymentInfo.struct_class = Types::DeploymentInfo

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

    DeploymentsInfoList.member = Shapes::ShapeRef.new(shape: DeploymentInfo)

    DeploymentsList.member = Shapes::ShapeRef.new(shape: DeploymentId)

    DeregisterOnPremisesInstanceInput.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, required: true, location_name: "instanceName"))
    DeregisterOnPremisesInstanceInput.struct_class = Types::DeregisterOnPremisesInstanceInput

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

    ELBInfo.add_member(:name, Shapes::ShapeRef.new(shape: ELBName, location_name: "name"))
    ELBInfo.struct_class = Types::ELBInfo

    ELBInfoList.member = Shapes::ShapeRef.new(shape: ELBInfo)

    ErrorInformation.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ErrorInformation.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ErrorInformation.struct_class = Types::ErrorInformation

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

    GetDeploymentInstanceOutput.add_member(:instance_summary, Shapes::ShapeRef.new(shape: InstanceSummary, location_name: "instanceSummary"))
    GetDeploymentInstanceOutput.struct_class = Types::GetDeploymentInstanceOutput

    GetDeploymentOutput.add_member(:deployment_info, Shapes::ShapeRef.new(shape: DeploymentInfo, location_name: "deploymentInfo"))
    GetDeploymentOutput.struct_class = Types::GetDeploymentOutput

    GetOnPremisesInstanceInput.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, required: true, location_name: "instanceName"))
    GetOnPremisesInstanceInput.struct_class = Types::GetOnPremisesInstanceInput

    GetOnPremisesInstanceOutput.add_member(:instance_info, Shapes::ShapeRef.new(shape: InstanceInfo, location_name: "instanceInfo"))
    GetOnPremisesInstanceOutput.struct_class = Types::GetOnPremisesInstanceOutput

    GitHubAccountTokenNameList.member = Shapes::ShapeRef.new(shape: GitHubAccountTokenName)

    GitHubLocation.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    GitHubLocation.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "commitId"))
    GitHubLocation.struct_class = Types::GitHubLocation

    GreenFleetProvisioningOption.add_member(:action, Shapes::ShapeRef.new(shape: GreenFleetProvisioningAction, location_name: "action"))
    GreenFleetProvisioningOption.struct_class = Types::GreenFleetProvisioningOption

    InstanceInfo.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "instanceName"))
    InstanceInfo.add_member(:iam_session_arn, Shapes::ShapeRef.new(shape: IamSessionArn, location_name: "iamSessionArn"))
    InstanceInfo.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: IamUserArn, location_name: "iamUserArn"))
    InstanceInfo.add_member(:instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "instanceArn"))
    InstanceInfo.add_member(:register_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "registerTime"))
    InstanceInfo.add_member(:deregister_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deregisterTime"))
    InstanceInfo.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    InstanceInfo.struct_class = Types::InstanceInfo

    InstanceInfoList.member = Shapes::ShapeRef.new(shape: InstanceInfo)

    InstanceNameList.member = Shapes::ShapeRef.new(shape: InstanceName)

    InstanceStatusList.member = Shapes::ShapeRef.new(shape: InstanceStatus)

    InstanceSummary.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    InstanceSummary.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "instanceId"))
    InstanceSummary.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "status"))
    InstanceSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    InstanceSummary.add_member(:lifecycle_events, Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: "lifecycleEvents"))
    InstanceSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    InstanceSummary.struct_class = Types::InstanceSummary

    InstanceSummaryList.member = Shapes::ShapeRef.new(shape: InstanceSummary)

    InstanceTypeList.member = Shapes::ShapeRef.new(shape: InstanceType)

    InstancesList.member = Shapes::ShapeRef.new(shape: InstanceId)

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

    LifecycleEventList.member = Shapes::ShapeRef.new(shape: LifecycleEvent)

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

    ListDeploymentsInput.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "applicationName"))
    ListDeploymentsInput.add_member(:deployment_group_name, Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: "deploymentGroupName"))
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

    LoadBalancerInfo.add_member(:elb_info_list, Shapes::ShapeRef.new(shape: ELBInfoList, location_name: "elbInfoList"))
    LoadBalancerInfo.add_member(:target_group_info_list, Shapes::ShapeRef.new(shape: TargetGroupInfoList, location_name: "targetGroupInfoList"))
    LoadBalancerInfo.struct_class = Types::LoadBalancerInfo

    MinimumHealthyHosts.add_member(:value, Shapes::ShapeRef.new(shape: MinimumHealthyHostsValue, location_name: "value"))
    MinimumHealthyHosts.add_member(:type, Shapes::ShapeRef.new(shape: MinimumHealthyHostsType, location_name: "type"))
    MinimumHealthyHosts.struct_class = Types::MinimumHealthyHosts

    OnPremisesTagSet.add_member(:on_premises_tag_set_list, Shapes::ShapeRef.new(shape: OnPremisesTagSetList, location_name: "onPremisesTagSetList"))
    OnPremisesTagSet.struct_class = Types::OnPremisesTagSet

    OnPremisesTagSetList.member = Shapes::ShapeRef.new(shape: TagFilterList)

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

    RevisionInfo.add_member(:revision_location, Shapes::ShapeRef.new(shape: RevisionLocation, location_name: "revisionLocation"))
    RevisionInfo.add_member(:generic_revision_info, Shapes::ShapeRef.new(shape: GenericRevisionInfo, location_name: "genericRevisionInfo"))
    RevisionInfo.struct_class = Types::RevisionInfo

    RevisionInfoList.member = Shapes::ShapeRef.new(shape: RevisionInfo)

    RevisionLocation.add_member(:revision_type, Shapes::ShapeRef.new(shape: RevisionLocationType, location_name: "revisionType"))
    RevisionLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    RevisionLocation.add_member(:git_hub_location, Shapes::ShapeRef.new(shape: GitHubLocation, location_name: "gitHubLocation"))
    RevisionLocation.add_member(:string, Shapes::ShapeRef.new(shape: RawString, location_name: "string"))
    RevisionLocation.struct_class = Types::RevisionLocation

    RevisionLocationList.member = Shapes::ShapeRef.new(shape: RevisionLocation)

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

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetGroupInfo.add_member(:name, Shapes::ShapeRef.new(shape: TargetGroupName, location_name: "name"))
    TargetGroupInfo.struct_class = Types::TargetGroupInfo

    TargetGroupInfoList.member = Shapes::ShapeRef.new(shape: TargetGroupInfo)

    TargetInstances.add_member(:tag_filters, Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: "tagFilters"))
    TargetInstances.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: "autoScalingGroups"))
    TargetInstances.add_member(:ec2_tag_set, Shapes::ShapeRef.new(shape: EC2TagSet, location_name: "ec2TagSet"))
    TargetInstances.struct_class = Types::TargetInstances

    TimeBasedCanary.add_member(:canary_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "canaryPercentage"))
    TimeBasedCanary.add_member(:canary_interval, Shapes::ShapeRef.new(shape: WaitTimeInMins, location_name: "canaryInterval"))
    TimeBasedCanary.struct_class = Types::TimeBasedCanary

    TimeBasedLinear.add_member(:linear_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "linearPercentage"))
    TimeBasedLinear.add_member(:linear_interval, Shapes::ShapeRef.new(shape: WaitTimeInMins, location_name: "linearInterval"))
    TimeBasedLinear.struct_class = Types::TimeBasedLinear

    TimeRange.add_member(:start, Shapes::ShapeRef.new(shape: Timestamp, location_name: "start"))
    TimeRange.add_member(:end, Shapes::ShapeRef.new(shape: Timestamp, location_name: "end"))
    TimeRange.struct_class = Types::TimeRange

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
        "timestampFormat" => "unixTimestamp",
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
      end)

      api.add_operation(:batch_get_deployment_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDeploymentInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDeploymentInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDeploymentInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        o.errors << Shapes::ShapeRef.new(shape: BatchLimitExceededException)
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
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
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
      end)

      api.add_operation(:get_deployment_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        o.errors << Shapes::ShapeRef.new(shape: InstanceDoesNotExistException)
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
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
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
        o.errors << Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
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
      end)
    end

  end
end
