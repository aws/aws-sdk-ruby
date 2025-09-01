# frozen_string_literal: true

# This is generated code!

module Aws::CodeDeploy
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddTagsToOnPremisesInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#AddTagsToOnPremisesInstancesInput', name: 'AddTagsToOnPremisesInstancesInput')
    AdditionalDeploymentStatusInfo = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#AdditionalDeploymentStatusInfo', name: 'AdditionalDeploymentStatusInfo', traits: {"smithy.api#deprecated" => {"message" => "AdditionalDeploymentStatusInfo is deprecated, use DeploymentStatusMessageList instead."}})
    Alarm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#Alarm', name: 'Alarm')
    AlarmConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#AlarmConfiguration', name: 'AlarmConfiguration')
    AlarmList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#AlarmList', name: 'AlarmList')
    AlarmName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#AlarmName', name: 'AlarmName')
    AlarmsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#AlarmsLimitExceededException', name: 'AlarmsLimitExceededException', traits: {"smithy.api#error" => "client"})
    AppSpecContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#AppSpecContent', name: 'AppSpecContent')
    ApplicationAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ApplicationAlreadyExistsException', name: 'ApplicationAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ApplicationDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ApplicationDoesNotExistException', name: 'ApplicationDoesNotExistException', traits: {"smithy.api#error" => "client"})
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ApplicationId', name: 'ApplicationId')
    ApplicationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ApplicationInfo', name: 'ApplicationInfo')
    ApplicationLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ApplicationLimitExceededException', name: 'ApplicationLimitExceededException', traits: {"smithy.api#error" => "client"})
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApplicationNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ApplicationNameRequiredException', name: 'ApplicationNameRequiredException', traits: {"smithy.api#error" => "client"})
    ApplicationRevisionSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#ApplicationRevisionSortBy', name: 'ApplicationRevisionSortBy')
    ApplicationsInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#ApplicationsInfoList', name: 'ApplicationsInfoList')
    ApplicationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#ApplicationsList', name: 'ApplicationsList')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ArnNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ArnNotSupportedException', name: 'ArnNotSupportedException', traits: {"smithy.api#error" => "client"})
    AutoRollbackConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#AutoRollbackConfiguration', name: 'AutoRollbackConfiguration')
    AutoRollbackEvent = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#AutoRollbackEvent', name: 'AutoRollbackEvent')
    AutoRollbackEventsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#AutoRollbackEventsList', name: 'AutoRollbackEventsList')
    AutoScalingGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#AutoScalingGroup', name: 'AutoScalingGroup')
    AutoScalingGroupHook = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#AutoScalingGroupHook', name: 'AutoScalingGroupHook')
    AutoScalingGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#AutoScalingGroupList', name: 'AutoScalingGroupList')
    AutoScalingGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#AutoScalingGroupName', name: 'AutoScalingGroupName')
    AutoScalingGroupNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#AutoScalingGroupNameList', name: 'AutoScalingGroupNameList')
    BatchGetApplicationRevisionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetApplicationRevisionsInput', name: 'BatchGetApplicationRevisionsInput')
    BatchGetApplicationRevisionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetApplicationRevisionsOutput', name: 'BatchGetApplicationRevisionsOutput')
    BatchGetApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetApplicationsInput', name: 'BatchGetApplicationsInput')
    BatchGetApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetApplicationsOutput', name: 'BatchGetApplicationsOutput')
    BatchGetDeploymentGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentGroupsInput', name: 'BatchGetDeploymentGroupsInput')
    BatchGetDeploymentGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentGroupsOutput', name: 'BatchGetDeploymentGroupsOutput')
    BatchGetDeploymentInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentInstancesInput', name: 'BatchGetDeploymentInstancesInput')
    BatchGetDeploymentInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentInstancesOutput', name: 'BatchGetDeploymentInstancesOutput')
    BatchGetDeploymentTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentTargetsInput', name: 'BatchGetDeploymentTargetsInput')
    BatchGetDeploymentTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentTargetsOutput', name: 'BatchGetDeploymentTargetsOutput')
    BatchGetDeploymentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentsInput', name: 'BatchGetDeploymentsInput')
    BatchGetDeploymentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetDeploymentsOutput', name: 'BatchGetDeploymentsOutput')
    BatchGetOnPremisesInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetOnPremisesInstancesInput', name: 'BatchGetOnPremisesInstancesInput')
    BatchGetOnPremisesInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchGetOnPremisesInstancesOutput', name: 'BatchGetOnPremisesInstancesOutput')
    BatchLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BatchLimitExceededException', name: 'BatchLimitExceededException', traits: {"smithy.api#error" => "client"})
    BlueGreenDeploymentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BlueGreenDeploymentConfiguration', name: 'BlueGreenDeploymentConfiguration')
    BlueInstanceTerminationOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BlueInstanceTerminationOption', name: 'BlueInstanceTerminationOption')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codedeploy#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BucketNameFilterRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#BucketNameFilterRequiredException', name: 'BucketNameFilterRequiredException', traits: {"smithy.api#error" => "client"})
    BundleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#BundleType', name: 'BundleType')
    CloudFormationResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#CloudFormationResourceType', name: 'CloudFormationResourceType')
    CloudFormationTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CloudFormationTarget', name: 'CloudFormationTarget')
    CommitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#CommitId', name: 'CommitId')
    ComputePlatform = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#ComputePlatform', name: 'ComputePlatform')
    ContinueDeploymentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ContinueDeploymentInput', name: 'ContinueDeploymentInput')
    CreateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateApplicationInput', name: 'CreateApplicationInput')
    CreateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateApplicationOutput', name: 'CreateApplicationOutput')
    CreateDeploymentConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateDeploymentConfigInput', name: 'CreateDeploymentConfigInput')
    CreateDeploymentConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateDeploymentConfigOutput', name: 'CreateDeploymentConfigOutput')
    CreateDeploymentGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateDeploymentGroupInput', name: 'CreateDeploymentGroupInput')
    CreateDeploymentGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateDeploymentGroupOutput', name: 'CreateDeploymentGroupOutput')
    CreateDeploymentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateDeploymentInput', name: 'CreateDeploymentInput')
    CreateDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#CreateDeploymentOutput', name: 'CreateDeploymentOutput')
    DeleteApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteApplicationInput', name: 'DeleteApplicationInput')
    DeleteDeploymentConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteDeploymentConfigInput', name: 'DeleteDeploymentConfigInput')
    DeleteDeploymentGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteDeploymentGroupInput', name: 'DeleteDeploymentGroupInput')
    DeleteDeploymentGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteDeploymentGroupOutput', name: 'DeleteDeploymentGroupOutput')
    DeleteGitHubAccountTokenInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteGitHubAccountTokenInput', name: 'DeleteGitHubAccountTokenInput')
    DeleteGitHubAccountTokenOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteGitHubAccountTokenOutput', name: 'DeleteGitHubAccountTokenOutput')
    DeleteResourcesByExternalIdInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteResourcesByExternalIdInput', name: 'DeleteResourcesByExternalIdInput')
    DeleteResourcesByExternalIdOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeleteResourcesByExternalIdOutput', name: 'DeleteResourcesByExternalIdOutput')
    DeploymentAlreadyCompletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentAlreadyCompletedException', name: 'DeploymentAlreadyCompletedException', traits: {"smithy.api#error" => "client"})
    DeploymentConfigAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigAlreadyExistsException', name: 'DeploymentConfigAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    DeploymentConfigDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigDoesNotExistException', name: 'DeploymentConfigDoesNotExistException', traits: {"smithy.api#error" => "client"})
    DeploymentConfigId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigId', name: 'DeploymentConfigId')
    DeploymentConfigInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigInUseException', name: 'DeploymentConfigInUseException', traits: {"smithy.api#error" => "client"})
    DeploymentConfigInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigInfo', name: 'DeploymentConfigInfo')
    DeploymentConfigLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigLimitExceededException', name: 'DeploymentConfigLimitExceededException', traits: {"smithy.api#error" => "client"})
    DeploymentConfigName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigName', name: 'DeploymentConfigName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeploymentConfigNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigNameRequiredException', name: 'DeploymentConfigNameRequiredException', traits: {"smithy.api#error" => "client"})
    DeploymentConfigsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentConfigsList', name: 'DeploymentConfigsList')
    DeploymentCreator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentCreator', name: 'DeploymentCreator')
    DeploymentDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentDoesNotExistException', name: 'DeploymentDoesNotExistException', traits: {"smithy.api#error" => "client"})
    DeploymentGroupAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupAlreadyExistsException', name: 'DeploymentGroupAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    DeploymentGroupDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupDoesNotExistException', name: 'DeploymentGroupDoesNotExistException', traits: {"smithy.api#error" => "client"})
    DeploymentGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupId', name: 'DeploymentGroupId')
    DeploymentGroupInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupInfo', name: 'DeploymentGroupInfo')
    DeploymentGroupInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupInfoList', name: 'DeploymentGroupInfoList')
    DeploymentGroupLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupLimitExceededException', name: 'DeploymentGroupLimitExceededException', traits: {"smithy.api#error" => "client"})
    DeploymentGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupName', name: 'DeploymentGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeploymentGroupNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupNameRequiredException', name: 'DeploymentGroupNameRequiredException', traits: {"smithy.api#error" => "client"})
    DeploymentGroupsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentGroupsList', name: 'DeploymentGroupsList')
    DeploymentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#DeploymentId', name: 'DeploymentId')
    DeploymentIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentIdRequiredException', name: 'DeploymentIdRequiredException', traits: {"smithy.api#error" => "client"})
    DeploymentInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentInfo', name: 'DeploymentInfo')
    DeploymentIsNotInReadyStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentIsNotInReadyStateException', name: 'DeploymentIsNotInReadyStateException', traits: {"smithy.api#error" => "client"})
    DeploymentLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentLimitExceededException', name: 'DeploymentLimitExceededException', traits: {"smithy.api#error" => "client"})
    DeploymentNotStartedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentNotStartedException', name: 'DeploymentNotStartedException', traits: {"smithy.api#error" => "client"})
    DeploymentOption = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentOption', name: 'DeploymentOption')
    DeploymentOverview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentOverview', name: 'DeploymentOverview')
    DeploymentReadyAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentReadyAction', name: 'DeploymentReadyAction')
    DeploymentReadyOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentReadyOption', name: 'DeploymentReadyOption')
    DeploymentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentStatus', name: 'DeploymentStatus')
    DeploymentStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentStatusList', name: 'DeploymentStatusList')
    DeploymentStatusMessageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentStatusMessageList', name: 'DeploymentStatusMessageList')
    DeploymentStyle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentStyle', name: 'DeploymentStyle')
    DeploymentTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentTarget', name: 'DeploymentTarget')
    DeploymentTargetDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentTargetDoesNotExistException', name: 'DeploymentTargetDoesNotExistException', traits: {"smithy.api#error" => "client"})
    DeploymentTargetIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentTargetIdRequiredException', name: 'DeploymentTargetIdRequiredException', traits: {"smithy.api#error" => "client"})
    DeploymentTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentTargetList', name: 'DeploymentTargetList')
    DeploymentTargetListSizeExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeploymentTargetListSizeExceededException', name: 'DeploymentTargetListSizeExceededException', traits: {"smithy.api#error" => "client"})
    DeploymentTargetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentTargetType', name: 'DeploymentTargetType')
    DeploymentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentType', name: 'DeploymentType')
    DeploymentWaitType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#DeploymentWaitType', name: 'DeploymentWaitType')
    DeploymentsInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentsInfoList', name: 'DeploymentsInfoList')
    DeploymentsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#DeploymentsList', name: 'DeploymentsList')
    DeregisterOnPremisesInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DeregisterOnPremisesInstanceInput', name: 'DeregisterOnPremisesInstanceInput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Description', name: 'Description')
    DescriptionTooLongException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#DescriptionTooLongException', name: 'DescriptionTooLongException', traits: {"smithy.api#error" => "client"})
    Diagnostics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#Diagnostics', name: 'Diagnostics')
    Duration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#Duration', name: 'Duration', traits: {"smithy.api#default" => 0})
    EC2TagFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#EC2TagFilter', name: 'EC2TagFilter')
    EC2TagFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#EC2TagFilterList', name: 'EC2TagFilterList')
    EC2TagFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#EC2TagFilterType', name: 'EC2TagFilterType')
    EC2TagSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#EC2TagSet', name: 'EC2TagSet')
    EC2TagSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#EC2TagSetList', name: 'EC2TagSetList')
    ECSClusterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ECSClusterName', name: 'ECSClusterName')
    ECSService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ECSService', name: 'ECSService')
    ECSServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#ECSServiceList', name: 'ECSServiceList')
    ECSServiceMappingLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ECSServiceMappingLimitExceededException', name: 'ECSServiceMappingLimitExceededException', traits: {"smithy.api#error" => "client"})
    ECSServiceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ECSServiceName', name: 'ECSServiceName')
    ECSTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ECSTarget', name: 'ECSTarget')
    ECSTaskSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ECSTaskSet', name: 'ECSTaskSet')
    ECSTaskSetCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#ECSTaskSetCount', name: 'ECSTaskSetCount', traits: {"smithy.api#default" => 0})
    ECSTaskSetIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ECSTaskSetIdentifier', name: 'ECSTaskSetIdentifier')
    ECSTaskSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#ECSTaskSetList', name: 'ECSTaskSetList')
    ECSTaskSetStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ECSTaskSetStatus', name: 'ECSTaskSetStatus')
    ELBInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ELBInfo', name: 'ELBInfo')
    ELBInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#ELBInfoList', name: 'ELBInfoList')
    ELBName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ELBName', name: 'ELBName')
    ETag = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ETag', name: 'ETag')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#ErrorCode', name: 'ErrorCode')
    ErrorInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ErrorInformation', name: 'ErrorInformation')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ErrorMessage', name: 'ErrorMessage')
    ExternalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ExternalId', name: 'ExternalId')
    FileExistsBehavior = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#FileExistsBehavior', name: 'FileExistsBehavior')
    FilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#FilterValue', name: 'FilterValue')
    FilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#FilterValueList', name: 'FilterValueList')
    GenericRevisionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GenericRevisionInfo', name: 'GenericRevisionInfo')
    GetApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetApplicationInput', name: 'GetApplicationInput')
    GetApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetApplicationOutput', name: 'GetApplicationOutput')
    GetApplicationRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetApplicationRevisionInput', name: 'GetApplicationRevisionInput')
    GetApplicationRevisionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetApplicationRevisionOutput', name: 'GetApplicationRevisionOutput')
    GetDeploymentConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentConfigInput', name: 'GetDeploymentConfigInput')
    GetDeploymentConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentConfigOutput', name: 'GetDeploymentConfigOutput')
    GetDeploymentGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentGroupInput', name: 'GetDeploymentGroupInput')
    GetDeploymentGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentGroupOutput', name: 'GetDeploymentGroupOutput')
    GetDeploymentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentInput', name: 'GetDeploymentInput')
    GetDeploymentInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentInstanceInput', name: 'GetDeploymentInstanceInput')
    GetDeploymentInstanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentInstanceOutput', name: 'GetDeploymentInstanceOutput')
    GetDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentOutput', name: 'GetDeploymentOutput')
    GetDeploymentTargetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentTargetInput', name: 'GetDeploymentTargetInput')
    GetDeploymentTargetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetDeploymentTargetOutput', name: 'GetDeploymentTargetOutput')
    GetOnPremisesInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetOnPremisesInstanceInput', name: 'GetOnPremisesInstanceInput')
    GetOnPremisesInstanceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GetOnPremisesInstanceOutput', name: 'GetOnPremisesInstanceOutput')
    GitHubAccountTokenDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GitHubAccountTokenDoesNotExistException', name: 'GitHubAccountTokenDoesNotExistException', traits: {"smithy.api#error" => "client"})
    GitHubAccountTokenName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#GitHubAccountTokenName', name: 'GitHubAccountTokenName')
    GitHubAccountTokenNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#GitHubAccountTokenNameList', name: 'GitHubAccountTokenNameList')
    GitHubAccountTokenNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GitHubAccountTokenNameRequiredException', name: 'GitHubAccountTokenNameRequiredException', traits: {"smithy.api#error" => "client"})
    GitHubLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GitHubLocation', name: 'GitHubLocation')
    GreenFleetProvisioningAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#GreenFleetProvisioningAction', name: 'GreenFleetProvisioningAction')
    GreenFleetProvisioningOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#GreenFleetProvisioningOption', name: 'GreenFleetProvisioningOption')
    IamArnRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#IamArnRequiredException', name: 'IamArnRequiredException', traits: {"smithy.api#error" => "client"})
    IamSessionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#IamSessionArn', name: 'IamSessionArn')
    IamSessionArnAlreadyRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#IamSessionArnAlreadyRegisteredException', name: 'IamSessionArnAlreadyRegisteredException', traits: {"smithy.api#error" => "client"})
    IamUserArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#IamUserArn', name: 'IamUserArn')
    IamUserArnAlreadyRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#IamUserArnAlreadyRegisteredException', name: 'IamUserArnAlreadyRegisteredException', traits: {"smithy.api#error" => "client"})
    IamUserArnRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#IamUserArnRequiredException', name: 'IamUserArnRequiredException', traits: {"smithy.api#error" => "client"})
    InstanceAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#InstanceAction', name: 'InstanceAction')
    InstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#InstanceArn', name: 'InstanceArn')
    InstanceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#InstanceCount', name: 'InstanceCount', traits: {"smithy.api#default" => 0})
    InstanceDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceDoesNotExistException', name: 'InstanceDoesNotExistException', traits: {"smithy.api#deprecated" => {"message" => "This exception is deprecated, use DeploymentTargetDoesNotExistException instead."}, "smithy.api#error" => "client"})
    InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#InstanceId', name: 'InstanceId')
    InstanceIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceIdRequiredException', name: 'InstanceIdRequiredException', traits: {"smithy.api#deprecated" => {"message" => "This exception is deprecated, use DeploymentTargetIdRequiredException instead."}, "smithy.api#error" => "client"})
    InstanceInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceInfo', name: 'InstanceInfo')
    InstanceInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#InstanceInfoList', name: 'InstanceInfoList')
    InstanceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceLimitExceededException', name: 'InstanceLimitExceededException', traits: {"smithy.api#error" => "client"})
    InstanceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#InstanceName', name: 'InstanceName')
    InstanceNameAlreadyRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceNameAlreadyRegisteredException', name: 'InstanceNameAlreadyRegisteredException', traits: {"smithy.api#error" => "client"})
    InstanceNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#InstanceNameList', name: 'InstanceNameList')
    InstanceNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceNameRequiredException', name: 'InstanceNameRequiredException', traits: {"smithy.api#error" => "client"})
    InstanceNotRegisteredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceNotRegisteredException', name: 'InstanceNotRegisteredException', traits: {"smithy.api#error" => "client"})
    InstanceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#InstanceStatus', name: 'InstanceStatus', traits: {"smithy.api#deprecated" => {"message" => "InstanceStatus is deprecated, use TargetStatus instead."}})
    InstanceStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#InstanceStatusList', name: 'InstanceStatusList')
    InstanceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceSummary', name: 'InstanceSummary', traits: {"smithy.api#deprecated" => {"message" => "InstanceSummary is deprecated, use DeploymentTarget instead."}})
    InstanceSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#InstanceSummaryList', name: 'InstanceSummaryList')
    InstanceTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InstanceTarget', name: 'InstanceTarget')
    InstanceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#InstanceType', name: 'InstanceType')
    InstanceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#InstanceTypeList', name: 'InstanceTypeList')
    InstancesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#InstancesList', name: 'InstancesList')
    InvalidAlarmConfigException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidAlarmConfigException', name: 'InvalidAlarmConfigException', traits: {"smithy.api#error" => "client"})
    InvalidApplicationNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidApplicationNameException', name: 'InvalidApplicationNameException', traits: {"smithy.api#error" => "client"})
    InvalidArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidArnException', name: 'InvalidArnException', traits: {"smithy.api#error" => "client"})
    InvalidAutoRollbackConfigException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidAutoRollbackConfigException', name: 'InvalidAutoRollbackConfigException', traits: {"smithy.api#error" => "client"})
    InvalidAutoScalingGroupException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidAutoScalingGroupException', name: 'InvalidAutoScalingGroupException', traits: {"smithy.api#error" => "client"})
    InvalidBlueGreenDeploymentConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidBlueGreenDeploymentConfigurationException', name: 'InvalidBlueGreenDeploymentConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidBucketNameFilterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidBucketNameFilterException', name: 'InvalidBucketNameFilterException', traits: {"smithy.api#error" => "client"})
    InvalidComputePlatformException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidComputePlatformException', name: 'InvalidComputePlatformException', traits: {"smithy.api#error" => "client"})
    InvalidDeployedStateFilterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeployedStateFilterException', name: 'InvalidDeployedStateFilterException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentConfigNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentConfigNameException', name: 'InvalidDeploymentConfigNameException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentGroupNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentGroupNameException', name: 'InvalidDeploymentGroupNameException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentIdException', name: 'InvalidDeploymentIdException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentInstanceTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentInstanceTypeException', name: 'InvalidDeploymentInstanceTypeException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentStatusException', name: 'InvalidDeploymentStatusException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentStyleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentStyleException', name: 'InvalidDeploymentStyleException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentTargetIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentTargetIdException', name: 'InvalidDeploymentTargetIdException', traits: {"smithy.api#error" => "client"})
    InvalidDeploymentWaitTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidDeploymentWaitTypeException', name: 'InvalidDeploymentWaitTypeException', traits: {"smithy.api#error" => "client"})
    InvalidEC2TagCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidEC2TagCombinationException', name: 'InvalidEC2TagCombinationException', traits: {"smithy.api#error" => "client"})
    InvalidEC2TagException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidEC2TagException', name: 'InvalidEC2TagException', traits: {"smithy.api#error" => "client"})
    InvalidECSServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidECSServiceException', name: 'InvalidECSServiceException', traits: {"smithy.api#error" => "client"})
    InvalidExternalIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidExternalIdException', name: 'InvalidExternalIdException', traits: {"smithy.api#error" => "client"})
    InvalidFileExistsBehaviorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidFileExistsBehaviorException', name: 'InvalidFileExistsBehaviorException', traits: {"smithy.api#error" => "client"})
    InvalidGitHubAccountTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidGitHubAccountTokenException', name: 'InvalidGitHubAccountTokenException', traits: {"smithy.api#error" => "client"})
    InvalidGitHubAccountTokenNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidGitHubAccountTokenNameException', name: 'InvalidGitHubAccountTokenNameException', traits: {"smithy.api#error" => "client"})
    InvalidIamSessionArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidIamSessionArnException', name: 'InvalidIamSessionArnException', traits: {"smithy.api#error" => "client"})
    InvalidIamUserArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidIamUserArnException', name: 'InvalidIamUserArnException', traits: {"smithy.api#error" => "client"})
    InvalidIgnoreApplicationStopFailuresValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidIgnoreApplicationStopFailuresValueException', name: 'InvalidIgnoreApplicationStopFailuresValueException', traits: {"smithy.api#error" => "client"})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client"})
    InvalidInstanceNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidInstanceNameException', name: 'InvalidInstanceNameException', traits: {"smithy.api#error" => "client"})
    InvalidInstanceStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidInstanceStatusException', name: 'InvalidInstanceStatusException', traits: {"smithy.api#error" => "client"})
    InvalidInstanceTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidInstanceTypeException', name: 'InvalidInstanceTypeException', traits: {"smithy.api#error" => "client"})
    InvalidKeyPrefixFilterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidKeyPrefixFilterException', name: 'InvalidKeyPrefixFilterException', traits: {"smithy.api#error" => "client"})
    InvalidLifecycleEventHookExecutionIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidLifecycleEventHookExecutionIdException', name: 'InvalidLifecycleEventHookExecutionIdException', traits: {"smithy.api#error" => "client"})
    InvalidLifecycleEventHookExecutionStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidLifecycleEventHookExecutionStatusException', name: 'InvalidLifecycleEventHookExecutionStatusException', traits: {"smithy.api#error" => "client"})
    InvalidLoadBalancerInfoException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidLoadBalancerInfoException', name: 'InvalidLoadBalancerInfoException', traits: {"smithy.api#error" => "client"})
    InvalidMinimumHealthyHostValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidMinimumHealthyHostValueException', name: 'InvalidMinimumHealthyHostValueException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidOnPremisesTagCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidOnPremisesTagCombinationException', name: 'InvalidOnPremisesTagCombinationException', traits: {"smithy.api#error" => "client"})
    InvalidOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidOperationException', name: 'InvalidOperationException', traits: {"smithy.api#error" => "client"})
    InvalidRegistrationStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidRegistrationStatusException', name: 'InvalidRegistrationStatusException', traits: {"smithy.api#error" => "client"})
    InvalidRevisionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidRevisionException', name: 'InvalidRevisionException', traits: {"smithy.api#error" => "client"})
    InvalidRoleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidRoleException', name: 'InvalidRoleException', traits: {"smithy.api#error" => "client"})
    InvalidSortByException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidSortByException', name: 'InvalidSortByException', traits: {"smithy.api#error" => "client"})
    InvalidSortOrderException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidSortOrderException', name: 'InvalidSortOrderException', traits: {"smithy.api#error" => "client"})
    InvalidTagException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTagException', name: 'InvalidTagException', traits: {"smithy.api#error" => "client"})
    InvalidTagFilterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTagFilterException', name: 'InvalidTagFilterException', traits: {"smithy.api#error" => "client"})
    InvalidTagsToAddException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTagsToAddException', name: 'InvalidTagsToAddException', traits: {"smithy.api#error" => "client"})
    InvalidTargetFilterNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTargetFilterNameException', name: 'InvalidTargetFilterNameException', traits: {"smithy.api#error" => "client"})
    InvalidTargetGroupPairException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTargetGroupPairException', name: 'InvalidTargetGroupPairException', traits: {"smithy.api#error" => "client"})
    InvalidTargetInstancesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTargetInstancesException', name: 'InvalidTargetInstancesException', traits: {"smithy.api#error" => "client"})
    InvalidTimeRangeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTimeRangeException', name: 'InvalidTimeRangeException', traits: {"smithy.api#error" => "client"})
    InvalidTrafficRoutingConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTrafficRoutingConfigurationException', name: 'InvalidTrafficRoutingConfigurationException', traits: {"smithy.api#error" => "client"})
    InvalidTriggerConfigException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidTriggerConfigException', name: 'InvalidTriggerConfigException', traits: {"smithy.api#error" => "client"})
    InvalidUpdateOutdatedInstancesOnlyValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidUpdateOutdatedInstancesOnlyValueException', name: 'InvalidUpdateOutdatedInstancesOnlyValueException', traits: {"smithy.api#error" => "client"})
    InvalidZonalDeploymentConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#InvalidZonalDeploymentConfigurationException', name: 'InvalidZonalDeploymentConfigurationException', traits: {"smithy.api#error" => "client"})
    Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Key', name: 'Key')
    LambdaFunctionAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#LambdaFunctionAlias', name: 'LambdaFunctionAlias')
    LambdaFunctionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LambdaFunctionInfo', name: 'LambdaFunctionInfo')
    LambdaFunctionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#LambdaFunctionName', name: 'LambdaFunctionName')
    LambdaTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LambdaTarget', name: 'LambdaTarget')
    LastDeploymentInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LastDeploymentInfo', name: 'LastDeploymentInfo')
    LifecycleErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#LifecycleErrorCode', name: 'LifecycleErrorCode')
    LifecycleEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LifecycleEvent', name: 'LifecycleEvent')
    LifecycleEventAlreadyCompletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LifecycleEventAlreadyCompletedException', name: 'LifecycleEventAlreadyCompletedException', traits: {"smithy.api#error" => "client"})
    LifecycleEventHookExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#LifecycleEventHookExecutionId', name: 'LifecycleEventHookExecutionId')
    LifecycleEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#LifecycleEventList', name: 'LifecycleEventList')
    LifecycleEventName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#LifecycleEventName', name: 'LifecycleEventName')
    LifecycleEventStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#LifecycleEventStatus', name: 'LifecycleEventStatus')
    LifecycleHookLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LifecycleHookLimitExceededException', name: 'LifecycleHookLimitExceededException', traits: {"smithy.api#error" => "client"})
    LifecycleMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#LifecycleMessage', name: 'LifecycleMessage')
    ListApplicationRevisionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListApplicationRevisionsInput', name: 'ListApplicationRevisionsInput')
    ListApplicationRevisionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListApplicationRevisionsOutput', name: 'ListApplicationRevisionsOutput')
    ListApplicationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListApplicationsInput', name: 'ListApplicationsInput')
    ListApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListApplicationsOutput', name: 'ListApplicationsOutput')
    ListDeploymentConfigsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentConfigsInput', name: 'ListDeploymentConfigsInput')
    ListDeploymentConfigsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentConfigsOutput', name: 'ListDeploymentConfigsOutput')
    ListDeploymentGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentGroupsInput', name: 'ListDeploymentGroupsInput')
    ListDeploymentGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentGroupsOutput', name: 'ListDeploymentGroupsOutput')
    ListDeploymentInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentInstancesInput', name: 'ListDeploymentInstancesInput')
    ListDeploymentInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentInstancesOutput', name: 'ListDeploymentInstancesOutput')
    ListDeploymentTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentTargetsInput', name: 'ListDeploymentTargetsInput')
    ListDeploymentTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentTargetsOutput', name: 'ListDeploymentTargetsOutput')
    ListDeploymentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentsInput', name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListDeploymentsOutput', name: 'ListDeploymentsOutput')
    ListGitHubAccountTokenNamesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListGitHubAccountTokenNamesInput', name: 'ListGitHubAccountTokenNamesInput')
    ListGitHubAccountTokenNamesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListGitHubAccountTokenNamesOutput', name: 'ListGitHubAccountTokenNamesOutput')
    ListOnPremisesInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListOnPremisesInstancesInput', name: 'ListOnPremisesInstancesInput')
    ListOnPremisesInstancesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListOnPremisesInstancesOutput', name: 'ListOnPremisesInstancesOutput')
    ListStateFilterAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#ListStateFilterAction', name: 'ListStateFilterAction')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListenerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ListenerArn', name: 'ListenerArn')
    ListenerArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#ListenerArnList', name: 'ListenerArnList')
    LoadBalancerInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#LoadBalancerInfo', name: 'LoadBalancerInfo')
    LogTail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#LogTail', name: 'LogTail')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Message', name: 'Message')
    MinimumHealthyHosts = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#MinimumHealthyHosts', name: 'MinimumHealthyHosts')
    MinimumHealthyHostsPerZone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#MinimumHealthyHostsPerZone', name: 'MinimumHealthyHostsPerZone')
    MinimumHealthyHostsPerZoneType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#MinimumHealthyHostsPerZoneType', name: 'MinimumHealthyHostsPerZoneType')
    MinimumHealthyHostsPerZoneValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#MinimumHealthyHostsPerZoneValue', name: 'MinimumHealthyHostsPerZoneValue', traits: {"smithy.api#default" => 0})
    MinimumHealthyHostsType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#MinimumHealthyHostsType', name: 'MinimumHealthyHostsType')
    MinimumHealthyHostsValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#MinimumHealthyHostsValue', name: 'MinimumHealthyHostsValue', traits: {"smithy.api#default" => 0})
    MultipleIamArnsProvidedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#MultipleIamArnsProvidedException', name: 'MultipleIamArnsProvidedException', traits: {"smithy.api#error" => "client"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#NextToken', name: 'NextToken')
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codedeploy#NullableBoolean', name: 'NullableBoolean')
    OnPremisesTagSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#OnPremisesTagSet', name: 'OnPremisesTagSet')
    OnPremisesTagSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#OnPremisesTagSetList', name: 'OnPremisesTagSetList')
    OperationNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#OperationNotSupportedException', name: 'OperationNotSupportedException', traits: {"smithy.api#error" => "client"})
    OutdatedInstancesStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#OutdatedInstancesStrategy', name: 'OutdatedInstancesStrategy')
    Percentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#Percentage', name: 'Percentage', traits: {"smithy.api#default" => 0})
    PutLifecycleEventHookExecutionStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#PutLifecycleEventHookExecutionStatusInput', name: 'PutLifecycleEventHookExecutionStatusInput')
    PutLifecycleEventHookExecutionStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#PutLifecycleEventHookExecutionStatusOutput', name: 'PutLifecycleEventHookExecutionStatusOutput')
    RawString = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RawString', name: 'RawString', traits: {"smithy.api#deprecated" => {"message" => "RawString and String revision type are deprecated, use AppSpecContent type instead."}})
    RawStringContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#RawStringContent', name: 'RawStringContent')
    RawStringSha256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#RawStringSha256', name: 'RawStringSha256')
    RegisterApplicationRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RegisterApplicationRevisionInput', name: 'RegisterApplicationRevisionInput')
    RegisterOnPremisesInstanceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RegisterOnPremisesInstanceInput', name: 'RegisterOnPremisesInstanceInput')
    RegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#RegistrationStatus', name: 'RegistrationStatus')
    RelatedDeployments = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RelatedDeployments', name: 'RelatedDeployments')
    RemoveTagsFromOnPremisesInstancesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RemoveTagsFromOnPremisesInstancesInput', name: 'RemoveTagsFromOnPremisesInstancesInput')
    Repository = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Repository', name: 'Repository')
    ResourceArnRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ResourceArnRequiredException', name: 'ResourceArnRequiredException', traits: {"smithy.api#error" => "client"})
    ResourceValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ResourceValidationException', name: 'ResourceValidationException', traits: {"smithy.api#error" => "client"})
    RevisionDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RevisionDoesNotExistException', name: 'RevisionDoesNotExistException', traits: {"smithy.api#error" => "client"})
    RevisionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RevisionInfo', name: 'RevisionInfo')
    RevisionInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#RevisionInfoList', name: 'RevisionInfoList')
    RevisionLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RevisionLocation', name: 'RevisionLocation')
    RevisionLocationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#RevisionLocationList', name: 'RevisionLocationList')
    RevisionLocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#RevisionLocationType', name: 'RevisionLocationType')
    RevisionRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RevisionRequiredException', name: 'RevisionRequiredException', traits: {"smithy.api#error" => "client"})
    Role = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Role', name: 'Role')
    RoleRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RoleRequiredException', name: 'RoleRequiredException', traits: {"smithy.api#error" => "client"})
    RollbackInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#RollbackInfo', name: 'RollbackInfo')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#S3Bucket', name: 'S3Bucket')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#S3Key', name: 'S3Key')
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#S3Location', name: 'S3Location')
    ScriptName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#ScriptName', name: 'ScriptName')
    SkipWaitTimeForInstanceTerminationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#SkipWaitTimeForInstanceTerminationInput', name: 'SkipWaitTimeForInstanceTerminationInput')
    SortOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#SortOrder', name: 'SortOrder')
    StopDeploymentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#StopDeploymentInput', name: 'StopDeploymentInput')
    StopDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#StopDeploymentOutput', name: 'StopDeploymentOutput')
    StopStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#StopStatus', name: 'StopStatus')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#Tag', name: 'Tag')
    TagFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TagFilter', name: 'TagFilter')
    TagFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TagFilterList', name: 'TagFilterList')
    TagFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#TagFilterType', name: 'TagFilterType')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TagKeyList', name: 'TagKeyList')
    TagLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TagLimitExceededException', name: 'TagLimitExceededException', traits: {"smithy.api#error" => "client"})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TagList', name: 'TagList')
    TagRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TagRequiredException', name: 'TagRequiredException', traits: {"smithy.api#error" => "client"})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TagResourceOutput', name: 'TagResourceOutput')
    TagSetListLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TagSetListLimitExceededException', name: 'TagSetListLimitExceededException', traits: {"smithy.api#error" => "client"})
    TargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#TargetArn', name: 'TargetArn')
    TargetFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#TargetFilterName', name: 'TargetFilterName')
    TargetFilters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codedeploy#TargetFilters', name: 'TargetFilters')
    TargetGroupInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TargetGroupInfo', name: 'TargetGroupInfo')
    TargetGroupInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TargetGroupInfoList', name: 'TargetGroupInfoList')
    TargetGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#TargetGroupName', name: 'TargetGroupName')
    TargetGroupPairInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TargetGroupPairInfo', name: 'TargetGroupPairInfo')
    TargetGroupPairInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TargetGroupPairInfoList', name: 'TargetGroupPairInfoList')
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#TargetId', name: 'TargetId')
    TargetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TargetIdList', name: 'TargetIdList')
    TargetInstances = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TargetInstances', name: 'TargetInstances')
    TargetLabel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#TargetLabel', name: 'TargetLabel')
    TargetStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#TargetStatus', name: 'TargetStatus')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codedeploy#Time', name: 'Time')
    TimeBasedCanary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TimeBasedCanary', name: 'TimeBasedCanary')
    TimeBasedLinear = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TimeBasedLinear', name: 'TimeBasedLinear')
    TimeRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TimeRange', name: 'TimeRange')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codedeploy#Timestamp', name: 'Timestamp')
    TrafficRoute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TrafficRoute', name: 'TrafficRoute')
    TrafficRoutingConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TrafficRoutingConfig', name: 'TrafficRoutingConfig')
    TrafficRoutingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#TrafficRoutingType', name: 'TrafficRoutingType')
    TrafficWeight = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.codedeploy#TrafficWeight', name: 'TrafficWeight', traits: {"smithy.api#default" => 0})
    TriggerConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TriggerConfig', name: 'TriggerConfig')
    TriggerConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TriggerConfigList', name: 'TriggerConfigList')
    TriggerEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codedeploy#TriggerEventType', name: 'TriggerEventType')
    TriggerEventTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codedeploy#TriggerEventTypeList', name: 'TriggerEventTypeList')
    TriggerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#TriggerName', name: 'TriggerName')
    TriggerTargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#TriggerTargetArn', name: 'TriggerTargetArn')
    TriggerTargetsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#TriggerTargetsLimitExceededException', name: 'TriggerTargetsLimitExceededException', traits: {"smithy.api#error" => "client"})
    UnsupportedActionForDeploymentTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#UnsupportedActionForDeploymentTypeException', name: 'UnsupportedActionForDeploymentTypeException', traits: {"smithy.api#error" => "client"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateApplicationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#UpdateApplicationInput', name: 'UpdateApplicationInput')
    UpdateDeploymentGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#UpdateDeploymentGroupInput', name: 'UpdateDeploymentGroupInput')
    UpdateDeploymentGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#UpdateDeploymentGroupOutput', name: 'UpdateDeploymentGroupOutput')
    Value = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Value', name: 'Value')
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#Version', name: 'Version')
    VersionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codedeploy#VersionId', name: 'VersionId')
    WaitTimeInMins = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#WaitTimeInMins', name: 'WaitTimeInMins', traits: {"smithy.api#default" => 0})
    WaitTimeInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codedeploy#WaitTimeInSeconds', name: 'WaitTimeInSeconds')
    ZonalConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codedeploy#ZonalConfig', name: 'ZonalConfig')

    AddTagsToOnPremisesInstancesInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs to add to the on-premises instances.</p>\n         <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only\n            tags are not allowed.</p>", "smithy.api#required" => {}}))
    AddTagsToOnPremisesInstancesInput.add_member(:instance_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameList, location_name: 'instanceNames', traits: {"smithy.api#documentation" => "<p>The names of the on-premises instances to which to add tags.</p>", "smithy.api#required" => {}}))
    AddTagsToOnPremisesInstancesInput.type = Types::AddTagsToOnPremisesInstancesInput
    Alarm.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the alarm. Maximum length is 255 characters. Each alarm name can be used\n            only once in a list of alarms.</p>"}))
    Alarm.type = Types::Alarm
    AlarmConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the alarm configuration is enabled.</p>"}))
    AlarmConfiguration.add_member(:ignore_poll_alarm_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ignorePollAlarmFailure', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether a deployment should continue if information about the current state\n            of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>true</code>: The deployment proceeds even if alarm status information\n                    can't be retrieved from Amazon CloudWatch.</p>\n            </li>\n            <li>\n               <p>\n                  <code>false</code>: The deployment stops if alarm status information can't be\n                    retrieved from Amazon CloudWatch.</p>\n            </li>\n         </ul>"}))
    AlarmConfiguration.add_member(:alarms, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmList, location_name: 'alarms', traits: {"smithy.api#documentation" => "<p>A list of alarms configured for the deployment or deployment group. A maximum of 10\n            alarms can be added.</p>"}))
    AlarmConfiguration.type = Types::AlarmConfiguration
    AlarmList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Alarm)
    AlarmsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    AlarmsLimitExceededException.type = Types::AlarmsLimitExceededException
    AppSpecContent.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: RawStringContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p> The YAML-formatted or JSON-formatted revision string. </p>\n         <p> For an Lambda deployment, the content includes a Lambda\n            function name, the alias for its original version, and the alias for its replacement\n            version. The deployment shifts traffic from the original version of the Lambda function to the replacement version. </p>\n         <p> For an Amazon ECS deployment, the content includes the task name, information\n            about the load balancer that serves traffic to the container, and more. </p>\n         <p> For both types of deployments, the content can specify Lambda functions\n            that run at specified hooks, such as <code>BeforeInstall</code>, during a deployment.\n        </p>"}))
    AppSpecContent.add_member(:sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: RawStringSha256, location_name: 'sha256', traits: {"smithy.api#documentation" => "<p> The SHA256 hash value of the revision content. </p>"}))
    AppSpecContent.type = Types::AppSpecContent
    ApplicationAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ApplicationAlreadyExistsException.type = Types::ApplicationAlreadyExistsException
    ApplicationDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ApplicationDoesNotExistException.type = Types::ApplicationDoesNotExistException
    ApplicationInfo.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    ApplicationInfo.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    ApplicationInfo.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the application was created.</p>"}))
    ApplicationInfo.add_member(:linked_to_git_hub, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'linkedToGitHub', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>True if the user has authenticated with GitHub for the specified application.\n            Otherwise, false.</p>"}))
    ApplicationInfo.add_member(:git_hub_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: 'gitHubAccountName', traits: {"smithy.api#documentation" => "<p>The name for a connection to a GitHub account.</p>"}))
    ApplicationInfo.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p>The destination platform type for deployment of the application (<code>Lambda</code> or <code>Server</code>).</p>"}))
    ApplicationInfo.type = Types::ApplicationInfo
    ApplicationLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ApplicationLimitExceededException.type = Types::ApplicationLimitExceededException
    ApplicationNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ApplicationNameRequiredException.type = Types::ApplicationNameRequiredException
    ApplicationRevisionSortBy.add_member(:register_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RegisterTime', traits: {"smithy.api#enumValue" => "registerTime"}))
    ApplicationRevisionSortBy.add_member(:first_used_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FirstUsedTime', traits: {"smithy.api#enumValue" => "firstUsedTime"}))
    ApplicationRevisionSortBy.add_member(:last_used_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LastUsedTime', traits: {"smithy.api#enumValue" => "lastUsedTime"}))
    ApplicationsInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo)
    ApplicationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName)
    ArnNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ArnNotSupportedException.type = Types::ArnNotSupportedException
    AutoRollbackConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether a defined automatic rollback configuration is currently\n            enabled.</p>"}))
    AutoRollbackConfiguration.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackEventsList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The event type or types that trigger a rollback.</p>"}))
    AutoRollbackConfiguration.type = Types::AutoRollbackConfiguration
    AutoRollbackEvent.add_member(:deployment_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_FAILURE', traits: {"smithy.api#enumValue" => "DEPLOYMENT_FAILURE"}))
    AutoRollbackEvent.add_member(:deployment_stop_on_alarm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_STOP_ON_ALARM', traits: {"smithy.api#enumValue" => "DEPLOYMENT_STOP_ON_ALARM"}))
    AutoRollbackEvent.add_member(:deployment_stop_on_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_STOP_ON_REQUEST', traits: {"smithy.api#enumValue" => "DEPLOYMENT_STOP_ON_REQUEST"}))
    AutoRollbackEventsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackEvent)
    AutoScalingGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The Auto Scaling group name.</p>"}))
    AutoScalingGroup.add_member(:hook, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupHook, location_name: 'hook', traits: {"smithy.api#documentation" => "<p>The name of the launch hook that CodeDeploy installed into the Auto Scaling group.</p>\n         <p>For more information about the launch hook, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors\">How Amazon EC2 Auto Scaling works with CodeDeploy</a> in the\n                    <i>CodeDeploy User Guide</i>.</p>"}))
    AutoScalingGroup.add_member(:termination_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupHook, location_name: 'terminationHook', traits: {"smithy.api#documentation" => "<p>The name of the termination hook that CodeDeploy installed into the Auto Scaling group.</p>\n         <p>For more information about the termination hook, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable\">Enabling termination deployments during Auto Scaling scale-in events</a> in the\n            <i>CodeDeploy User Guide</i>.</p>"}))
    AutoScalingGroup.type = Types::AutoScalingGroup
    AutoScalingGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup)
    AutoScalingGroupNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupName)
    BatchGetApplicationRevisionsInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application about which to get revision\n            information.</p>", "smithy.api#required" => {}}))
    BatchGetApplicationRevisionsInput.add_member(:revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocationList, location_name: 'revisions', traits: {"smithy.api#documentation" => "<p>An array of <code>RevisionLocation</code> objects that specify information to get\n            about the application revisions, including type and location. The maximum number of\n                <code>RevisionLocation</code> objects you can specify is 25.</p>", "smithy.api#required" => {}}))
    BatchGetApplicationRevisionsInput.type = Types::BatchGetApplicationRevisionsInput
    BatchGetApplicationRevisionsOutput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of the application that corresponds to the revisions.</p>"}))
    BatchGetApplicationRevisionsOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Information about errors that might have occurred during the API call.</p>"}))
    BatchGetApplicationRevisionsOutput.add_member(:revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionInfoList, location_name: 'revisions', traits: {"smithy.api#documentation" => "<p>Additional information about the revisions, including the type and location.</p>"}))
    BatchGetApplicationRevisionsOutput.type = Types::BatchGetApplicationRevisionsOutput
    BatchGetApplicationsInput.add_member(:application_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsList, location_name: 'applicationNames', traits: {"smithy.api#documentation" => "<p>A list of application names separated by spaces. The maximum number of application\n            names you can specify is 100.</p>", "smithy.api#required" => {}}))
    BatchGetApplicationsInput.type = Types::BatchGetApplicationsInput
    BatchGetApplicationsOutput.add_member(:applications_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsInfoList, location_name: 'applicationsInfo', traits: {"smithy.api#documentation" => "<p>Information about the applications.</p>"}))
    BatchGetApplicationsOutput.type = Types::BatchGetApplicationsOutput
    BatchGetDeploymentGroupsInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the applicable user\n            or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    BatchGetDeploymentGroupsInput.add_member(:deployment_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupsList, location_name: 'deploymentGroupNames', traits: {"smithy.api#documentation" => "<p>The names of the deployment groups.</p>", "smithy.api#required" => {}}))
    BatchGetDeploymentGroupsInput.type = Types::BatchGetDeploymentGroupsInput
    BatchGetDeploymentGroupsOutput.add_member(:deployment_groups_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupInfoList, location_name: 'deploymentGroupsInfo', traits: {"smithy.api#documentation" => "<p>Information about the deployment groups.</p>"}))
    BatchGetDeploymentGroupsOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Information about errors that might have occurred during the API call.</p>"}))
    BatchGetDeploymentGroupsOutput.type = Types::BatchGetDeploymentGroupsOutput
    BatchGetDeploymentInstancesInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    BatchGetDeploymentInstancesInput.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesList, location_name: 'instanceIds', traits: {"smithy.api#documentation" => "<p>The unique IDs of instances used in the deployment. The maximum number of instance IDs\n            you can specify is 25.</p>", "smithy.api#required" => {}}))
    BatchGetDeploymentInstancesInput.type = Types::BatchGetDeploymentInstancesInput
    BatchGetDeploymentInstancesOutput.add_member(:instances_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: 'instancesSummary', traits: {"smithy.api#documentation" => "<p>Information about the instance.</p>"}))
    BatchGetDeploymentInstancesOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>Information about errors that might have occurred during the API call.</p>"}))
    BatchGetDeploymentInstancesOutput.type = Types::BatchGetDeploymentInstancesOutput
    BatchGetDeploymentTargetsInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    BatchGetDeploymentTargetsInput.add_member(:target_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdList, location_name: 'targetIds', traits: {"smithy.api#documentation" => "<p> The unique IDs of the deployment targets. The compute platform of the deployment\n            determines the type of the targets and their formats. The maximum number of deployment\n            target IDs you can specify is 25.</p>\n         <ul>\n            <li>\n               <p> For deployments that use the EC2/On-premises compute platform, the target IDs\n                    are Amazon EC2 or on-premises instances IDs, and their target type is\n                        <code>instanceTarget</code>. </p>\n            </li>\n            <li>\n               <p> For deployments that use the Lambda compute platform, the\n                    target IDs are the names of Lambda functions, and their target type\n                    is <code>instanceTarget</code>. </p>\n            </li>\n            <li>\n               <p> For deployments that use the Amazon ECS compute platform, the target\n                    IDs are pairs of Amazon ECS clusters and services specified using the\n                    format <code><clustername>:<servicename></code>. Their target type\n                    is <code>ecsTarget</code>. </p>\n            </li>\n            <li>\n               <p> For deployments that are deployed with CloudFormation, the target IDs are\n                        CloudFormation stack IDs. Their target type is\n                        <code>cloudFormationTarget</code>. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    BatchGetDeploymentTargetsInput.type = Types::BatchGetDeploymentTargetsInput
    BatchGetDeploymentTargetsOutput.add_member(:deployment_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetList, location_name: 'deploymentTargets', traits: {"smithy.api#documentation" => "<p> A list of target objects for a deployment. Each target object contains details about\n            the target, such as its status and lifecycle events. The type of the target objects\n            depends on the deployment' compute platform. </p>\n         <ul>\n            <li>\n               <p>\n                  <b>EC2/On-premises</b>: Each target object is an\n                        Amazon EC2 or on-premises instance. </p>\n            </li>\n            <li>\n               <p>\n                  <b>Lambda</b>: The target object is a\n                    specific version of an Lambda function. </p>\n            </li>\n            <li>\n               <p>\n                  <b>Amazon ECS</b>: The target object is an\n                        Amazon ECS service. </p>\n            </li>\n            <li>\n               <p>\n                  <b>CloudFormation</b>: The target object is\n                    an CloudFormation blue/green deployment. </p>\n            </li>\n         </ul>"}))
    BatchGetDeploymentTargetsOutput.type = Types::BatchGetDeploymentTargetsOutput
    BatchGetDeploymentsInput.add_member(:deployment_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentsList, location_name: 'deploymentIds', traits: {"smithy.api#documentation" => "<p> A list of deployment IDs, separated by spaces. The maximum number of deployment IDs\n            you can specify is 25.</p>", "smithy.api#required" => {}}))
    BatchGetDeploymentsInput.type = Types::BatchGetDeploymentsInput
    BatchGetDeploymentsOutput.add_member(:deployments_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentsInfoList, location_name: 'deploymentsInfo', traits: {"smithy.api#documentation" => "<p> Information about the deployments. </p>"}))
    BatchGetDeploymentsOutput.type = Types::BatchGetDeploymentsOutput
    BatchGetOnPremisesInstancesInput.add_member(:instance_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameList, location_name: 'instanceNames', traits: {"smithy.api#documentation" => "<p>The names of the on-premises instances about which to get information. The maximum\n            number of instance names you can specify is 25.</p>", "smithy.api#required" => {}}))
    BatchGetOnPremisesInstancesInput.type = Types::BatchGetOnPremisesInstancesInput
    BatchGetOnPremisesInstancesOutput.add_member(:instance_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceInfoList, location_name: 'instanceInfos', traits: {"smithy.api#documentation" => "<p>Information about the on-premises instances.</p>"}))
    BatchGetOnPremisesInstancesOutput.type = Types::BatchGetOnPremisesInstancesOutput
    BatchLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    BatchLimitExceededException.type = Types::BatchLimitExceededException
    BlueGreenDeploymentConfiguration.add_member(:terminate_blue_instances_on_deployment_success, Smithy::Schema::Shapes::ShapeRef.new(shape: BlueInstanceTerminationOption, location_name: 'terminateBlueInstancesOnDeploymentSuccess', traits: {"smithy.api#documentation" => "<p>Information about whether to terminate instances in the original fleet during a\n            blue/green deployment.</p>"}))
    BlueGreenDeploymentConfiguration.add_member(:deployment_ready_option, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentReadyOption, location_name: 'deploymentReadyOption', traits: {"smithy.api#documentation" => "<p>Information about the action to take when newly provisioned instances are ready to\n            receive traffic in a blue/green deployment.</p>"}))
    BlueGreenDeploymentConfiguration.add_member(:green_fleet_provisioning_option, Smithy::Schema::Shapes::ShapeRef.new(shape: GreenFleetProvisioningOption, location_name: 'greenFleetProvisioningOption', traits: {"smithy.api#documentation" => "<p>Information about how instances are provisioned for a replacement environment in a\n            blue/green deployment.</p>"}))
    BlueGreenDeploymentConfiguration.type = Types::BlueGreenDeploymentConfiguration
    BlueInstanceTerminationOption.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action to take on instances in the original environment after a successful\n            blue/green deployment.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TERMINATE</code>: Instances are terminated after a specified wait\n                    time.</p>\n            </li>\n            <li>\n               <p>\n                  <code>KEEP_ALIVE</code>: Instances are left running after they are\n                    deregistered from the load balancer and removed from the deployment\n                    group.</p>\n            </li>\n         </ul>"}))
    BlueInstanceTerminationOption.add_member(:termination_wait_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'terminationWaitTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>For an Amazon EC2 deployment, the number of minutes to wait after a successful\n            blue/green deployment before terminating instances from the original environment.</p>\n         <p> For an Amazon ECS deployment, the number of minutes before deleting the\n            original (blue) task set. During an Amazon ECS deployment, CodeDeploy shifts\n            traffic from the original (blue) task set to a replacement (green) task set. </p>\n         <p> The maximum setting is 2880 minutes (2 days). </p>"}))
    BlueInstanceTerminationOption.type = Types::BlueInstanceTerminationOption
    BucketNameFilterRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    BucketNameFilterRequiredException.type = Types::BucketNameFilterRequiredException
    BundleType.add_member(:tar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Tar', traits: {"smithy.api#enumValue" => "tar"}))
    BundleType.add_member(:tar_g_zip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TarGZip', traits: {"smithy.api#enumValue" => "tgz"}))
    BundleType.add_member(:zip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Zip', traits: {"smithy.api#enumValue" => "zip"}))
    BundleType.add_member(:yaml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YAML', traits: {"smithy.api#enumValue" => "YAML"}))
    BundleType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    CloudFormationTarget.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p>The unique ID of an CloudFormation blue/green deployment.</p>"}))
    CloudFormationTarget.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment target that has a type\n                of <code>CloudFormationTarget</code>. </p>"}))
    CloudFormationTarget.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The date and time when the target application was updated by an CloudFormation\n            blue/green deployment. </p>"}))
    CloudFormationTarget.add_member(:lifecycle_events, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: 'lifecycleEvents', traits: {"smithy.api#documentation" => "<p> The lifecycle events of the CloudFormation blue/green deployment to this target\n            application. </p>"}))
    CloudFormationTarget.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of an CloudFormation blue/green deployment's target application.\n        </p>"}))
    CloudFormationTarget.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type for the CloudFormation blue/green deployment.</p>"}))
    CloudFormationTarget.add_member(:target_version_weight, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficWeight, location_name: 'targetVersionWeight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of production traffic that the target version of an CloudFormation\n            blue/green deployment receives.</p>"}))
    CloudFormationTarget.type = Types::CloudFormationTarget
    ComputePlatform.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER', traits: {"smithy.api#enumValue" => "Server"}))
    ComputePlatform.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "Lambda"}))
    ComputePlatform.add_member(:ecs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS', traits: {"smithy.api#enumValue" => "ECS"}))
    ContinueDeploymentInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a blue/green deployment for which you want to start rerouting\n            traffic to the replacement environment. </p>"}))
    ContinueDeploymentInput.add_member(:deployment_wait_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentWaitType, location_name: 'deploymentWaitType', traits: {"smithy.api#documentation" => "<p> The status of the deployment's waiting period. <code>READY_WAIT</code> indicates that\n            the deployment is ready to start shifting traffic. <code>TERMINATION_WAIT</code>\n            indicates that the traffic is shifted, but the original target is not terminated.\n        </p>"}))
    ContinueDeploymentInput.type = Types::ContinueDeploymentInput
    CreateApplicationInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of the application. This name must be unique with the applicable user or\n                Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p> The destination platform type for the deployment (<code>Lambda</code>,\n                <code>Server</code>, or <code>ECS</code>).</p>"}))
    CreateApplicationInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The metadata that you apply to CodeDeploy applications to help you organize and\n            categorize them. Each tag consists of a key and an optional value, both of which you\n            define. </p>"}))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>A unique application ID.</p>"}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateDeploymentConfigInput.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The name of the deployment configuration to create.</p>", "smithy.api#required" => {}}))
    CreateDeploymentConfigInput.add_member(:minimum_healthy_hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHosts, location_name: 'minimumHealthyHosts', traits: {"smithy.api#documentation" => "<p>The minimum number of healthy instances that should be available at any time during\n            the deployment. There are two parameters expected in the input: type and value.</p>\n         <p>The type parameter takes either of the following values:</p>\n         <ul>\n            <li>\n               <p>HOST_COUNT: The value parameter represents the minimum number of healthy\n                    instances as an absolute value.</p>\n            </li>\n            <li>\n               <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy\n                    instances as a percentage of the total number of instances in the deployment. If\n                    you specify FLEET_PERCENT, at the start of the deployment, CodeDeploy converts the percentage to the equivalent number of instances and rounds up\n                    fractional instances.</p>\n            </li>\n         </ul>\n         <p>The value parameter takes an integer.</p>\n         <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT\n            and a value of 95.</p>"}))
    CreateDeploymentConfigInput.add_member(:traffic_routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficRoutingConfig, location_name: 'trafficRoutingConfig', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how the deployment traffic is routed.</p>"}))
    CreateDeploymentConfigInput.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p>The destination platform type for the deployment (<code>Lambda</code>,\n                <code>Server</code>, or <code>ECS</code>).</p>"}))
    CreateDeploymentConfigInput.add_member(:zonal_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalConfig, location_name: 'zonalConfig', traits: {"smithy.api#documentation" => "<p>Configure the <code>ZonalConfig</code> object if you want CodeDeploy to\n            deploy your application to one <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-availability-zones\">Availability Zone</a> at a time, within an Amazon Web Services Region.</p>\n         <p>For more information about the zonal configuration feature, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config\">zonal configuration</a> in the <i>CodeDeploy User\n                Guide</i>.</p>"}))
    CreateDeploymentConfigInput.type = Types::CreateDeploymentConfigInput
    CreateDeploymentConfigOutput.add_member(:deployment_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigId, location_name: 'deploymentConfigId', traits: {"smithy.api#documentation" => "<p>A unique deployment configuration ID.</p>"}))
    CreateDeploymentConfigOutput.type = Types::CreateDeploymentConfigOutput
    CreateDeploymentGroupInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    CreateDeploymentGroupInput.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p>The name of a new deployment group for the specified application.</p>", "smithy.api#required" => {}}))
    CreateDeploymentGroupInput.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>If specified, the deployment configuration name can be either one of the predefined\n            configurations provided with CodeDeploy or a custom deployment configuration\n            that you create by calling the create deployment configuration operation.</p>\n         <p>\n            <code>CodeDeployDefault.OneAtATime</code> is the default deployment configuration. It\n            is used if a configuration isn't specified for the deployment or deployment\n            group.</p>\n         <p>For more information about the predefined deployment configurations in CodeDeploy, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html\">Working with\n                Deployment Configurations in CodeDeploy</a> in the <i>CodeDeploy User Guide</i>.</p>"}))
    CreateDeploymentGroupInput.add_member(:ec2_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: 'ec2TagFilters', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 tags on which to filter. The deployment group includes Amazon EC2 instances with any of the specified tags. Cannot be used in the same call\n            as ec2TagSet.</p>"}))
    CreateDeploymentGroupInput.add_member(:on_premises_instance_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterList, location_name: 'onPremisesInstanceTagFilters', traits: {"smithy.api#documentation" => "<p>The on-premises instance tags on which to filter. The deployment group includes\n            on-premises instances with any of the specified tags. Cannot be used in the same call as\n                <code>OnPremisesTagSet</code>.</p>"}))
    CreateDeploymentGroupInput.add_member(:auto_scaling_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: 'autoScalingGroups', traits: {"smithy.api#documentation" => "<p>A list of associated Amazon EC2 Auto Scaling groups.</p>"}))
    CreateDeploymentGroupInput.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'serviceRoleArn', traits: {"smithy.api#documentation" => "<p>A service role Amazon Resource Name (ARN) that allows CodeDeploy to act on\n            the user's behalf when interacting with Amazon Web Services services.</p>", "smithy.api#required" => {}}))
    CreateDeploymentGroupInput.add_member(:trigger_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerConfigList, location_name: 'triggerConfigurations', traits: {"smithy.api#documentation" => "<p>Information about triggers to create when the deployment group is created. For\n            examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html\">Create a Trigger for an\n                    CodeDeploy Event</a> in the <i>CodeDeploy\n                User Guide</i>.</p>"}))
    CreateDeploymentGroupInput.add_member(:alarm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: 'alarmConfiguration', traits: {"smithy.api#documentation" => "<p>Information to add about Amazon CloudWatch alarms when the deployment group is\n            created.</p>"}))
    CreateDeploymentGroupInput.add_member(:auto_rollback_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: 'autoRollbackConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for an automatic rollback that is added when a deployment\n            group is created.</p>"}))
    CreateDeploymentGroupInput.add_member(:outdated_instances_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: OutdatedInstancesStrategy, location_name: 'outdatedInstancesStrategy', traits: {"smithy.api#documentation" => "<p>Indicates what happens when new Amazon EC2 instances are launched\n            mid-deployment and do not receive the deployed application revision.</p>\n         <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates\n            one or more 'auto-update outdated instances' deployments to apply the deployed\n            application revision to the new Amazon EC2 instances.</p>\n         <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a\n            deployment to update the new Amazon EC2 instances. This may result in instances\n            having different revisions.</p>"}))
    CreateDeploymentGroupInput.add_member(:deployment_style, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: 'deploymentStyle', traits: {"smithy.api#documentation" => "<p>Information about the type of deployment, in-place or blue/green, that you want to run\n            and whether to route deployment traffic behind a load balancer.</p>"}))
    CreateDeploymentGroupInput.add_member(:blue_green_deployment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: 'blueGreenDeploymentConfiguration', traits: {"smithy.api#documentation" => "<p>Information about blue/green deployment options for a deployment group.</p>"}))
    CreateDeploymentGroupInput.add_member(:load_balancer_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: 'loadBalancerInfo', traits: {"smithy.api#documentation" => "<p>Information about the load balancer used in a deployment.</p>"}))
    CreateDeploymentGroupInput.add_member(:ec2_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagSet, location_name: 'ec2TagSet', traits: {"smithy.api#documentation" => "<p>Information about groups of tags applied to Amazon EC2 instances. The\n            deployment group includes only Amazon EC2 instances identified by all the tag\n            groups. Cannot be used in the same call as <code>ec2TagFilters</code>.</p>"}))
    CreateDeploymentGroupInput.add_member(:ecs_services, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSServiceList, location_name: 'ecsServices', traits: {"smithy.api#documentation" => "<p> The target Amazon ECS services in the deployment group. This applies only to\n            deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name\n            pair using the format <code><clustername>:<servicename></code>. </p>"}))
    CreateDeploymentGroupInput.add_member(:on_premises_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: 'onPremisesTagSet', traits: {"smithy.api#documentation" => "<p>Information about groups of tags applied to on-premises instances. The deployment\n            group includes only on-premises instances identified by all of the tag groups. Cannot be\n            used in the same call as <code>onPremisesInstanceTagFilters</code>.</p>"}))
    CreateDeploymentGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The metadata that you apply to CodeDeploy deployment groups to help you organize and\n            categorize them. Each tag consists of a key and an optional value, both of which you\n            define. </p>"}))
    CreateDeploymentGroupInput.add_member(:termination_hook_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'terminationHookEnabled', traits: {"smithy.api#documentation" => "<p>This parameter only applies if you are using CodeDeploy with Amazon EC2 Auto Scaling. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html\">Integrating\n                    CodeDeploy with Amazon EC2 Auto Scaling</a> in the <i>CodeDeploy User Guide</i>.</p>\n         <p>Set <code>terminationHookEnabled</code> to <code>true</code> to have CodeDeploy install a termination hook into your Auto Scaling group when you create a\n            deployment group. When this hook is installed, CodeDeploy will perform\n            termination deployments.</p>\n         <p>For information about termination deployments, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable\">Enabling termination deployments during Auto Scaling scale-in events</a> in the\n                    <i>CodeDeploy User Guide</i>.</p>\n         <p>For more information about Auto Scaling scale-in events, see the <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in\">Scale in</a> topic in the <i>Amazon EC2 Auto Scaling User\n            Guide</i>.</p>"}))
    CreateDeploymentGroupInput.type = Types::CreateDeploymentGroupInput
    CreateDeploymentGroupOutput.add_member(:deployment_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupId, location_name: 'deploymentGroupId', traits: {"smithy.api#documentation" => "<p>A unique deployment group ID.</p>"}))
    CreateDeploymentGroupOutput.type = Types::CreateDeploymentGroupOutput
    CreateDeploymentInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p>The name of the deployment group.</p>"}))
    CreateDeploymentInput.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'revision', traits: {"smithy.api#documentation" => "<p> The type and location of the revision to deploy. </p>"}))
    CreateDeploymentInput.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>\n         <p>If not specified, the value configured in the deployment group is used as the default.\n            If the deployment group does not have a deployment configuration associated with it,\n                <code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by default.</p>"}))
    CreateDeploymentInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A comment about the deployment.</p>"}))
    CreateDeploymentInput.add_member(:ignore_application_stop_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ignoreApplicationStopFailures', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or\n                <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then\n            the deployment continues to the next deployment lifecycle event. For example, if\n                <code>ApplicationStop</code> fails, the deployment continues with\n                <code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails, the\n            deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code>\n            fails, the deployment continues with <code>ApplicationStop</code>. </p>\n         <p> If false or not specified, then if a lifecycle event fails during a deployment to an\n            instance, that deployment fails. If deployment to that instance is part of an overall\n            deployment and the number of healthy hosts is not less than the minimum number of\n            healthy hosts, then a deployment to the next instance is attempted. </p>\n         <p> During a deployment, the CodeDeploy agent runs the scripts specified for\n                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and\n                <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful\n            deployment. (All other scripts are run from the AppSpec file in the current deployment.)\n            If one of these scripts contains an error and does not run successfully, the deployment\n            can fail. </p>\n         <p> If the cause of the failure is a script from the last successful deployment that will\n            never run successfully, create a new deployment and use\n                <code>ignoreApplicationStopFailures</code> to specify that the\n                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and\n                <code>AfterBlockTraffic</code> failures should be ignored. </p>"}))
    CreateDeploymentInput.add_member(:target_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstances, location_name: 'targetInstances', traits: {"smithy.api#documentation" => "<p> Information about the instances that belong to the replacement environment in a\n            blue/green deployment. </p>"}))
    CreateDeploymentInput.add_member(:auto_rollback_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: 'autoRollbackConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for an automatic rollback that is added when a deployment is\n            created.</p>"}))
    CreateDeploymentInput.add_member(:update_outdated_instances_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'updateOutdatedInstancesOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> Indicates whether to deploy to all instances or only to instances that are not\n            running the latest application revision. </p>"}))
    CreateDeploymentInput.add_member(:file_exists_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FileExistsBehavior, location_name: 'fileExistsBehavior', traits: {"smithy.api#documentation" => "<p>Information about how CodeDeploy handles files that already exist in a\n            deployment target location but weren't part of the previous successful\n            deployment.</p>\n         <p>The <code>fileExistsBehavior</code> parameter takes any of the following\n            values:</p>\n         <ul>\n            <li>\n               <p>DISALLOW: The deployment fails. This is also the default behavior if no option\n                    is specified.</p>\n            </li>\n            <li>\n               <p>OVERWRITE: The version of the file from the application revision currently\n                    being deployed replaces the version already on the instance.</p>\n            </li>\n            <li>\n               <p>RETAIN: The version of the file already on the instance is kept and used as\n                    part of the new deployment.</p>\n            </li>\n         </ul>"}))
    CreateDeploymentInput.add_member(:override_alarm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: 'overrideAlarmConfiguration', traits: {"smithy.api#documentation" => "<p>Allows you to specify information about alarms associated with a deployment. The alarm\n            configuration that you specify here will override the alarm configuration at the\n            deployment group level. Consider overriding the alarm configuration if you have set up\n            alarms at the deployment group level that are causing deployment failures. In this case,\n            you would call <code>CreateDeployment</code> to create a new deployment that uses a\n            previous application revision that is known to work, and set its alarm configuration to\n            turn off alarm polling. Turning off alarm polling ensures that the new deployment\n            proceeds without being blocked by the alarm that was generated by the previous, failed,\n            deployment.</p>\n         <note>\n            <p>If you specify an <code>overrideAlarmConfiguration</code>, you need the\n                    <code>UpdateDeploymentGroup</code>\n                IAM permission when calling <code>CreateDeployment</code>.</p>\n         </note>"}))
    CreateDeploymentInput.type = Types::CreateDeploymentInput
    CreateDeploymentOutput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    DeleteApplicationInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteDeploymentConfigInput.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    DeleteDeploymentConfigInput.type = Types::DeleteDeploymentConfigInput
    DeleteDeploymentGroupInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    DeleteDeploymentGroupInput.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p>The name of a deployment group for the specified application.</p>", "smithy.api#required" => {}}))
    DeleteDeploymentGroupInput.type = Types::DeleteDeploymentGroupInput
    DeleteDeploymentGroupOutput.add_member(:hooks_not_cleaned_up, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'hooksNotCleanedUp', traits: {"smithy.api#documentation" => "<p>If the output contains no data, and the corresponding deployment group contained at\n            least one Auto Scaling group, CodeDeploy successfully removed all\n            corresponding Auto Scaling lifecycle event hooks from the Amazon EC2\n            instances in the Auto Scaling group. If the output contains data, CodeDeploy could not remove some Auto Scaling lifecycle event hooks from\n            the Amazon EC2 instances in the Auto Scaling group.</p>"}))
    DeleteDeploymentGroupOutput.type = Types::DeleteDeploymentGroupOutput
    DeleteGitHubAccountTokenInput.add_member(:token_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: 'tokenName', traits: {"smithy.api#documentation" => "<p>The name of the GitHub account connection to delete.</p>"}))
    DeleteGitHubAccountTokenInput.type = Types::DeleteGitHubAccountTokenInput
    DeleteGitHubAccountTokenOutput.add_member(:token_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenName, location_name: 'tokenName', traits: {"smithy.api#documentation" => "<p>The name of the GitHub account connection that was deleted.</p>"}))
    DeleteGitHubAccountTokenOutput.type = Types::DeleteGitHubAccountTokenOutput
    DeleteResourcesByExternalIdInput.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The unique ID of an external resource (for example, a CloudFormation stack\n            ID) that is linked to one or more CodeDeploy resources.</p>"}))
    DeleteResourcesByExternalIdInput.type = Types::DeleteResourcesByExternalIdInput
    DeleteResourcesByExternalIdOutput.type = Types::DeleteResourcesByExternalIdOutput
    DeploymentAlreadyCompletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentAlreadyCompletedException.type = Types::DeploymentAlreadyCompletedException
    DeploymentConfigAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentConfigAlreadyExistsException.type = Types::DeploymentConfigAlreadyExistsException
    DeploymentConfigDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentConfigDoesNotExistException.type = Types::DeploymentConfigDoesNotExistException
    DeploymentConfigInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentConfigInUseException.type = Types::DeploymentConfigInUseException
    DeploymentConfigInfo.add_member(:deployment_config_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigId, location_name: 'deploymentConfigId', traits: {"smithy.api#documentation" => "<p>The deployment configuration ID.</p>"}))
    DeploymentConfigInfo.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The deployment configuration name.</p>"}))
    DeploymentConfigInfo.add_member(:minimum_healthy_hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHosts, location_name: 'minimumHealthyHosts', traits: {"smithy.api#documentation" => "<p>Information about the number or percentage of minimum healthy instances.</p>"}))
    DeploymentConfigInfo.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The time at which the deployment configuration was created.</p>"}))
    DeploymentConfigInfo.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p>The destination platform type for the deployment (<code>Lambda</code>,\n                <code>Server</code>, or <code>ECS</code>).</p>"}))
    DeploymentConfigInfo.add_member(:traffic_routing_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficRoutingConfig, location_name: 'trafficRoutingConfig', traits: {"smithy.api#documentation" => "<p>The configuration that specifies how the deployment traffic is routed. Used for\n            deployments with a Lambda or Amazon ECS compute platform\n            only.</p>"}))
    DeploymentConfigInfo.add_member(:zonal_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ZonalConfig, location_name: 'zonalConfig', traits: {"smithy.api#documentation" => "<p>Information about a zonal configuration.</p>"}))
    DeploymentConfigInfo.type = Types::DeploymentConfigInfo
    DeploymentConfigLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentConfigLimitExceededException.type = Types::DeploymentConfigLimitExceededException
    DeploymentConfigNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentConfigNameRequiredException.type = Types::DeploymentConfigNameRequiredException
    DeploymentConfigsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName)
    DeploymentCreator.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'User', traits: {"smithy.api#enumValue" => "user"}))
    DeploymentCreator.add_member(:autoscaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Autoscaling', traits: {"smithy.api#enumValue" => "autoscaling"}))
    DeploymentCreator.add_member(:code_deploy_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CodeDeployRollback', traits: {"smithy.api#enumValue" => "codeDeployRollback"}))
    DeploymentCreator.add_member(:code_deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CodeDeploy', traits: {"smithy.api#enumValue" => "CodeDeploy"}))
    DeploymentCreator.add_member(:code_deploy_auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CodeDeployAutoUpdate', traits: {"smithy.api#enumValue" => "CodeDeployAutoUpdate"}))
    DeploymentCreator.add_member(:cloud_formation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudFormation', traits: {"smithy.api#enumValue" => "CloudFormation"}))
    DeploymentCreator.add_member(:cloud_formation_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudFormationRollback', traits: {"smithy.api#enumValue" => "CloudFormationRollback"}))
    DeploymentCreator.add_member(:autoscaling_termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutoscalingTermination', traits: {"smithy.api#enumValue" => "autoscalingTermination"}))
    DeploymentDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentDoesNotExistException.type = Types::DeploymentDoesNotExistException
    DeploymentGroupAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentGroupAlreadyExistsException.type = Types::DeploymentGroupAlreadyExistsException
    DeploymentGroupDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentGroupDoesNotExistException.type = Types::DeploymentGroupDoesNotExistException
    DeploymentGroupInfo.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    DeploymentGroupInfo.add_member(:deployment_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupId, location_name: 'deploymentGroupId', traits: {"smithy.api#documentation" => "<p>The deployment group ID.</p>"}))
    DeploymentGroupInfo.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p>The deployment group name.</p>"}))
    DeploymentGroupInfo.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The deployment configuration name.</p>"}))
    DeploymentGroupInfo.add_member(:ec2_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: 'ec2TagFilters', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 tags on which to filter. The deployment group includes EC2\n            instances with any of the specified tags.</p>"}))
    DeploymentGroupInfo.add_member(:on_premises_instance_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterList, location_name: 'onPremisesInstanceTagFilters', traits: {"smithy.api#documentation" => "<p>The on-premises instance tags on which to filter. The deployment group includes\n            on-premises instances with any of the specified tags.</p>"}))
    DeploymentGroupInfo.add_member(:auto_scaling_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'autoScalingGroups', traits: {"smithy.api#documentation" => "<p>A list of associated Auto Scaling groups.</p>"}))
    DeploymentGroupInfo.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'serviceRoleArn', traits: {"smithy.api#documentation" => "<p>A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make\n            calls to Amazon Web Services services on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html\">Create a\n                Service Role for CodeDeploy</a> in the <i>CodeDeploy User Guide</i>.</p>"}))
    DeploymentGroupInfo.add_member(:target_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'targetRevision', traits: {"smithy.api#documentation" => "<p>Information about the deployment group's target revision, including type and\n            location.</p>"}))
    DeploymentGroupInfo.add_member(:trigger_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerConfigList, location_name: 'triggerConfigurations', traits: {"smithy.api#documentation" => "<p>Information about triggers associated with the deployment group.</p>"}))
    DeploymentGroupInfo.add_member(:alarm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: 'alarmConfiguration', traits: {"smithy.api#documentation" => "<p>A list of alarms associated with the deployment group.</p>"}))
    DeploymentGroupInfo.add_member(:auto_rollback_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: 'autoRollbackConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the automatic rollback configuration associated with the deployment\n            group.</p>"}))
    DeploymentGroupInfo.add_member(:deployment_style, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: 'deploymentStyle', traits: {"smithy.api#documentation" => "<p>Information about the type of deployment, either in-place or blue/green, you want to\n            run and whether to route deployment traffic behind a load balancer.</p>"}))
    DeploymentGroupInfo.add_member(:outdated_instances_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: OutdatedInstancesStrategy, location_name: 'outdatedInstancesStrategy', traits: {"smithy.api#documentation" => "<p>Indicates what happens when new Amazon EC2 instances are launched\n            mid-deployment and do not receive the deployed application revision.</p>\n         <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates\n            one or more 'auto-update outdated instances' deployments to apply the deployed\n            application revision to the new Amazon EC2 instances.</p>\n         <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a\n            deployment to update the new Amazon EC2 instances. This may result in instances\n            having different revisions.</p>"}))
    DeploymentGroupInfo.add_member(:blue_green_deployment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: 'blueGreenDeploymentConfiguration', traits: {"smithy.api#documentation" => "<p>Information about blue/green deployment options for a deployment group.</p>"}))
    DeploymentGroupInfo.add_member(:load_balancer_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: 'loadBalancerInfo', traits: {"smithy.api#documentation" => "<p>Information about the load balancer to use in a deployment.</p>"}))
    DeploymentGroupInfo.add_member(:last_successful_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: LastDeploymentInfo, location_name: 'lastSuccessfulDeployment', traits: {"smithy.api#documentation" => "<p>Information about the most recent successful deployment to the deployment\n            group.</p>"}))
    DeploymentGroupInfo.add_member(:last_attempted_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: LastDeploymentInfo, location_name: 'lastAttemptedDeployment', traits: {"smithy.api#documentation" => "<p>Information about the most recent attempted deployment to the deployment group.</p>"}))
    DeploymentGroupInfo.add_member(:ec2_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagSet, location_name: 'ec2TagSet', traits: {"smithy.api#documentation" => "<p>Information about groups of tags applied to an Amazon EC2 instance. The\n            deployment group includes only Amazon EC2 instances identified by all of the tag\n            groups. Cannot be used in the same call as ec2TagFilters.</p>"}))
    DeploymentGroupInfo.add_member(:on_premises_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: 'onPremisesTagSet', traits: {"smithy.api#documentation" => "<p>Information about groups of tags applied to an on-premises instance. The deployment\n            group includes only on-premises instances identified by all the tag groups. Cannot be\n            used in the same call as onPremisesInstanceTagFilters.</p>"}))
    DeploymentGroupInfo.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p>The destination platform type for the deployment (<code>Lambda</code>,\n                <code>Server</code>, or <code>ECS</code>).</p>"}))
    DeploymentGroupInfo.add_member(:ecs_services, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSServiceList, location_name: 'ecsServices', traits: {"smithy.api#documentation" => "<p> The target Amazon ECS services in the deployment group. This applies only to\n            deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name\n            pair using the format <code><clustername>:<servicename></code>. </p>"}))
    DeploymentGroupInfo.add_member(:termination_hook_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'terminationHookEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the deployment group was configured to have CodeDeploy\n            install a termination hook into an Auto Scaling group.</p>\n         <p>For more information about the termination hook, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors\">How Amazon EC2 Auto Scaling works with CodeDeploy</a> in the\n                    <i>CodeDeploy User Guide</i>.</p>"}))
    DeploymentGroupInfo.type = Types::DeploymentGroupInfo
    DeploymentGroupInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupInfo)
    DeploymentGroupLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentGroupLimitExceededException.type = Types::DeploymentGroupLimitExceededException
    DeploymentGroupNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentGroupNameRequiredException.type = Types::DeploymentGroupNameRequiredException
    DeploymentGroupsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName)
    DeploymentIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentIdRequiredException.type = Types::DeploymentIdRequiredException
    DeploymentInfo.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    DeploymentInfo.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p> The deployment group name. </p>"}))
    DeploymentInfo.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p> The deployment configuration name. </p>"}))
    DeploymentInfo.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    DeploymentInfo.add_member(:previous_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'previousRevision', traits: {"smithy.api#documentation" => "<p>Information about the application revision that was deployed to the deployment group\n            before the most recent successful deployment.</p>"}))
    DeploymentInfo.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>Information about the location of stored application artifacts and the service from\n            which to retrieve them.</p>"}))
    DeploymentInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current state of the deployment as a whole.</p>"}))
    DeploymentInfo.add_member(:error_information, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInformation, location_name: 'errorInformation', traits: {"smithy.api#documentation" => "<p>Information about any error associated with this deployment.</p>"}))
    DeploymentInfo.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the deployment was created.</p>"}))
    DeploymentInfo.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the deployment was deployed to the deployment\n            group.</p>\n         <p>In some cases, the reported value of the start time might be later than the complete\n            time. This is due to differences in the clock settings of backend servers that\n            participate in the deployment process.</p>"}))
    DeploymentInfo.add_member(:complete_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completeTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the deployment was complete.</p>"}))
    DeploymentInfo.add_member(:deployment_overview, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentOverview, location_name: 'deploymentOverview', traits: {"smithy.api#documentation" => "<p>A summary of the deployment status of the instances in the deployment.</p>"}))
    DeploymentInfo.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A comment about the deployment.</p>"}))
    DeploymentInfo.add_member(:creator, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCreator, location_name: 'creator', traits: {"smithy.api#documentation" => "<p>The means by which the deployment was created:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>user</code>: A user created the deployment.</p>\n            </li>\n            <li>\n               <p>\n                  <code>autoscaling</code>: Amazon EC2 Auto Scaling created the deployment.</p>\n            </li>\n            <li>\n               <p>\n                  <code>codeDeployRollback</code>: A rollback process created the\n                    deployment.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CodeDeployAutoUpdate</code>: An auto-update process created the\n                    deployment when it detected outdated Amazon EC2 instances.</p>\n            </li>\n         </ul>"}))
    DeploymentInfo.add_member(:ignore_application_stop_failures, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ignoreApplicationStopFailures', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or\n                <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then\n            the deployment continues to the next deployment lifecycle event. For example, if\n                <code>ApplicationStop</code> fails, the deployment continues with DownloadBundle. If\n                <code>BeforeBlockTraffic</code> fails, the deployment continues with\n                <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code> fails, the deployment\n            continues with <code>ApplicationStop</code>. </p>\n         <p> If false or not specified, then if a lifecycle event fails during a deployment to an\n            instance, that deployment fails. If deployment to that instance is part of an overall\n            deployment and the number of healthy hosts is not less than the minimum number of\n            healthy hosts, then a deployment to the next instance is attempted. </p>\n         <p> During a deployment, the CodeDeploy agent runs the scripts specified for\n                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and\n                <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful\n            deployment. (All other scripts are run from the AppSpec file in the current deployment.)\n            If one of these scripts contains an error and does not run successfully, the deployment\n            can fail. </p>\n         <p> If the cause of the failure is a script from the last successful deployment that will\n            never run successfully, create a new deployment and use\n                <code>ignoreApplicationStopFailures</code> to specify that the\n                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and\n                <code>AfterBlockTraffic</code> failures should be ignored. </p>"}))
    DeploymentInfo.add_member(:auto_rollback_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: 'autoRollbackConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the automatic rollback configuration associated with the\n            deployment.</p>"}))
    DeploymentInfo.add_member(:update_outdated_instances_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'updateOutdatedInstancesOnly', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether only instances that are not running the latest application revision\n            are to be deployed to.</p>"}))
    DeploymentInfo.add_member(:rollback_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackInfo, location_name: 'rollbackInfo', traits: {"smithy.api#documentation" => "<p>Information about a deployment rollback.</p>"}))
    DeploymentInfo.add_member(:deployment_style, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: 'deploymentStyle', traits: {"smithy.api#documentation" => "<p>Information about the type of deployment, either in-place or blue/green, you want to\n            run and whether to route deployment traffic behind a load balancer.</p>"}))
    DeploymentInfo.add_member(:target_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstances, location_name: 'targetInstances', traits: {"smithy.api#documentation" => "<p>Information about the instances that belong to the replacement environment in a\n            blue/green deployment.</p>"}))
    DeploymentInfo.add_member(:instance_termination_wait_time_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'instanceTerminationWaitTimeStarted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the wait period set for the termination of instances in the original\n            environment has started. Status is 'false' if the KEEP_ALIVE option is specified.\n            Otherwise, 'true' as soon as the termination wait period starts.</p>"}))
    DeploymentInfo.add_member(:blue_green_deployment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: 'blueGreenDeploymentConfiguration', traits: {"smithy.api#documentation" => "<p>Information about blue/green deployment options for this deployment.</p>"}))
    DeploymentInfo.add_member(:load_balancer_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: 'loadBalancerInfo', traits: {"smithy.api#documentation" => "<p>Information about the load balancer used in the deployment.</p>"}))
    DeploymentInfo.add_member(:additional_deployment_status_info, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalDeploymentStatusInfo, location_name: 'additionalDeploymentStatusInfo', traits: {"smithy.api#documentation" => "<p>Provides information about the results of a deployment, such as whether instances in\n            the original environment in a blue/green deployment were not terminated.</p>"}))
    DeploymentInfo.add_member(:file_exists_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: FileExistsBehavior, location_name: 'fileExistsBehavior', traits: {"smithy.api#documentation" => "<p>Information about how CodeDeploy handles files that already exist in a\n            deployment target location but weren't part of the previous successful\n            deployment.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DISALLOW</code>: The deployment fails. This is also the default behavior\n                    if no option is specified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OVERWRITE</code>: The version of the file from the application revision\n                    currently being deployed replaces the version already on the instance.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RETAIN</code>: The version of the file already on the instance is kept\n                    and used as part of the new deployment.</p>\n            </li>\n         </ul>"}))
    DeploymentInfo.add_member(:deployment_status_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatusMessageList, location_name: 'deploymentStatusMessages', traits: {"smithy.api#documentation" => "<p>Messages that contain information about the status of a deployment.</p>"}))
    DeploymentInfo.add_member(:compute_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputePlatform, location_name: 'computePlatform', traits: {"smithy.api#documentation" => "<p>The destination platform type for the deployment (<code>Lambda</code>,\n                <code>Server</code>, or <code>ECS</code>).</p>"}))
    DeploymentInfo.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The unique ID for an external resource (for example, a CloudFormation stack\n            ID) that is linked to this deployment.</p>"}))
    DeploymentInfo.add_member(:related_deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedDeployments, location_name: 'relatedDeployments'))
    DeploymentInfo.add_member(:override_alarm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: 'overrideAlarmConfiguration'))
    DeploymentInfo.type = Types::DeploymentInfo
    DeploymentIsNotInReadyStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentIsNotInReadyStateException.type = Types::DeploymentIsNotInReadyStateException
    DeploymentLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentLimitExceededException.type = Types::DeploymentLimitExceededException
    DeploymentNotStartedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentNotStartedException.type = Types::DeploymentNotStartedException
    DeploymentOption.add_member(:with_traffic_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITH_TRAFFIC_CONTROL', traits: {"smithy.api#enumValue" => "WITH_TRAFFIC_CONTROL"}))
    DeploymentOption.add_member(:without_traffic_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WITHOUT_TRAFFIC_CONTROL', traits: {"smithy.api#enumValue" => "WITHOUT_TRAFFIC_CONTROL"}))
    DeploymentOverview.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'Pending', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of instances in the deployment in a pending state.</p>"}))
    DeploymentOverview.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'InProgress', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of instances in which the deployment is in progress.</p>"}))
    DeploymentOverview.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'Succeeded', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of instances in the deployment to which revisions have been successfully\n            deployed.</p>"}))
    DeploymentOverview.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'Failed', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of instances in the deployment in a failed state.</p>"}))
    DeploymentOverview.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'Skipped', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of instances in the deployment in a skipped state.</p>"}))
    DeploymentOverview.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'Ready', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of instances in a replacement environment ready to receive traffic in a\n            blue/green deployment.</p>"}))
    DeploymentOverview.type = Types::DeploymentOverview
    DeploymentReadyAction.add_member(:continue_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTINUE_DEPLOYMENT', traits: {"smithy.api#enumValue" => "CONTINUE_DEPLOYMENT"}))
    DeploymentReadyAction.add_member(:stop_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOP_DEPLOYMENT', traits: {"smithy.api#enumValue" => "STOP_DEPLOYMENT"}))
    DeploymentReadyOption.add_member(:action_on_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentReadyAction, location_name: 'actionOnTimeout', traits: {"smithy.api#documentation" => "<p>Information about when to reroute traffic from an original environment to a\n            replacement environment in a blue/green deployment.</p>\n         <ul>\n            <li>\n               <p>CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately\n                    after the new application revision is installed on the instances in the\n                    replacement environment.</p>\n            </li>\n            <li>\n               <p>STOP_DEPLOYMENT: Do not register new instances with a load balancer unless\n                    traffic rerouting is started using <a>ContinueDeployment</a>. If\n                    traffic rerouting is not started before the end of the specified wait period,\n                    the deployment status is changed to Stopped.</p>\n            </li>\n         </ul>"}))
    DeploymentReadyOption.add_member(:wait_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Duration, location_name: 'waitTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of minutes to wait before the status of a blue/green deployment is changed\n            to Stopped if rerouting is not started manually. Applies only to the\n                <code>STOP_DEPLOYMENT</code> option for <code>actionOnTimeout</code>.</p>"}))
    DeploymentReadyOption.type = Types::DeploymentReadyOption
    DeploymentStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "Created"}))
    DeploymentStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "Queued"}))
    DeploymentStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    DeploymentStatus.add_member(:baking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAKING', traits: {"smithy.api#enumValue" => "Baking"}))
    DeploymentStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "Succeeded"}))
    DeploymentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    DeploymentStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "Stopped"}))
    DeploymentStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "Ready"}))
    DeploymentStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus)
    DeploymentStatusMessageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage)
    DeploymentStyle.add_member(:deployment_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentType, location_name: 'deploymentType', traits: {"smithy.api#documentation" => "<p>Indicates whether to run an in-place deployment or a blue/green deployment.</p>"}))
    DeploymentStyle.add_member(:deployment_option, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentOption, location_name: 'deploymentOption', traits: {"smithy.api#documentation" => "<p>Indicates whether to route deployment traffic behind a load balancer.</p>"}))
    DeploymentStyle.type = Types::DeploymentStyle
    DeploymentTarget.add_member(:deployment_target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetType, location_name: 'deploymentTargetType', traits: {"smithy.api#documentation" => "<p>The deployment type that is specific to the deployment's compute platform or\n            deployments initiated by a CloudFormation stack update.</p>"}))
    DeploymentTarget.add_member(:instance_target, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTarget, location_name: 'instanceTarget', traits: {"smithy.api#documentation" => "<p> Information about the target for a deployment that uses the EC2/On-premises compute\n            platform. </p>"}))
    DeploymentTarget.add_member(:lambda_target, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaTarget, location_name: 'lambdaTarget', traits: {"smithy.api#documentation" => "<p> Information about the target for a deployment that uses the Lambda\n            compute platform. </p>"}))
    DeploymentTarget.add_member(:ecs_target, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTarget, location_name: 'ecsTarget', traits: {"smithy.api#documentation" => "<p> Information about the target for a deployment that uses the Amazon ECS\n            compute platform. </p>"}))
    DeploymentTarget.add_member(:cloud_formation_target, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationTarget, location_name: 'cloudFormationTarget'))
    DeploymentTarget.type = Types::DeploymentTarget
    DeploymentTargetDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentTargetDoesNotExistException.type = Types::DeploymentTargetDoesNotExistException
    DeploymentTargetIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentTargetIdRequiredException.type = Types::DeploymentTargetIdRequiredException
    DeploymentTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTarget)
    DeploymentTargetListSizeExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DeploymentTargetListSizeExceededException.type = Types::DeploymentTargetListSizeExceededException
    DeploymentTargetType.add_member(:instance_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_TARGET', traits: {"smithy.api#enumValue" => "InstanceTarget"}))
    DeploymentTargetType.add_member(:lambda_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_TARGET', traits: {"smithy.api#enumValue" => "LambdaTarget"}))
    DeploymentTargetType.add_member(:ecs_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS_TARGET', traits: {"smithy.api#enumValue" => "ECSTarget"}))
    DeploymentTargetType.add_member(:cloudformation_target, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION_TARGET', traits: {"smithy.api#enumValue" => "CloudFormationTarget"}))
    DeploymentType.add_member(:in_place, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PLACE', traits: {"smithy.api#enumValue" => "IN_PLACE"}))
    DeploymentType.add_member(:blue_green, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLUE_GREEN', traits: {"smithy.api#enumValue" => "BLUE_GREEN"}))
    DeploymentWaitType.add_member(:ready_wait, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_WAIT', traits: {"smithy.api#enumValue" => "READY_WAIT"}))
    DeploymentWaitType.add_member(:termination_wait, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATION_WAIT', traits: {"smithy.api#enumValue" => "TERMINATION_WAIT"}))
    DeploymentsInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentInfo)
    DeploymentsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId)
    DeregisterOnPremisesInstanceInput.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p>The name of the on-premises instance to deregister.</p>", "smithy.api#required" => {}}))
    DeregisterOnPremisesInstanceInput.type = Types::DeregisterOnPremisesInstanceInput
    DescriptionTooLongException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    DescriptionTooLongException.type = Types::DescriptionTooLongException
    Diagnostics.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The associated error code:</p>\n         <ul>\n            <li>\n               <p>Success: The specified script ran.</p>\n            </li>\n            <li>\n               <p>ScriptMissing: The specified script was not found in the specified\n                    location.</p>\n            </li>\n            <li>\n               <p>ScriptNotExecutable: The specified script is not a recognized executable file\n                    type.</p>\n            </li>\n            <li>\n               <p>ScriptTimedOut: The specified script did not finish running in the specified\n                    time period.</p>\n            </li>\n            <li>\n               <p>ScriptFailed: The specified script failed to run as expected.</p>\n            </li>\n            <li>\n               <p>UnknownError: The specified script did not run for an unknown reason.</p>\n            </li>\n         </ul>"}))
    Diagnostics.add_member(:script_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptName, location_name: 'scriptName', traits: {"smithy.api#documentation" => "<p>The name of the script.</p>"}))
    Diagnostics.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message associated with the error.</p>"}))
    Diagnostics.add_member(:log_tail, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTail, location_name: 'logTail', traits: {"smithy.api#documentation" => "<p>The last portion of the diagnostic log.</p>\n         <p>If available, CodeDeploy returns up to the last 4 KB of the diagnostic\n            log.</p>"}))
    Diagnostics.type = Types::Diagnostics
    EC2TagFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag filter key.</p>"}))
    EC2TagFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag filter value.</p>"}))
    EC2TagFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilterType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The tag filter type:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>KEY_ONLY</code>: Key only.</p>\n            </li>\n            <li>\n               <p>\n                  <code>VALUE_ONLY</code>: Value only.</p>\n            </li>\n            <li>\n               <p>\n                  <code>KEY_AND_VALUE</code>: Key and value.</p>\n            </li>\n         </ul>"}))
    EC2TagFilter.type = Types::EC2TagFilter
    EC2TagFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilter)
    EC2TagFilterType.add_member(:key_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_ONLY', traits: {"smithy.api#enumValue" => "KEY_ONLY"}))
    EC2TagFilterType.add_member(:value_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALUE_ONLY', traits: {"smithy.api#enumValue" => "VALUE_ONLY"}))
    EC2TagFilterType.add_member(:key_and_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_AND_VALUE', traits: {"smithy.api#enumValue" => "KEY_AND_VALUE"}))
    EC2TagSet.add_member(:ec2_tag_set_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagSetList, location_name: 'ec2TagSetList', traits: {"smithy.api#documentation" => "<p>A list that contains other lists of Amazon EC2 instance tag groups. For an\n            instance to be included in the deployment group, it must be identified by all of the tag\n            groups in the list.</p>"}))
    EC2TagSet.type = Types::EC2TagSet
    EC2TagSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilterList)
    ECSService.add_member(:service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSServiceName, location_name: 'serviceName', traits: {"smithy.api#documentation" => "<p> The name of the target Amazon ECS service. </p>"}))
    ECSService.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSClusterName, location_name: 'clusterName', traits: {"smithy.api#documentation" => "<p> The name of the cluster that the Amazon ECS service is associated with.\n        </p>"}))
    ECSService.type = Types::ECSService
    ECSServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ECSService)
    ECSServiceMappingLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ECSServiceMappingLimitExceededException.type = Types::ECSServiceMappingLimitExceededException
    ECSTarget.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    ECSTarget.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment target that has a type of <code>ecsTarget</code>.\n        </p>"}))
    ECSTarget.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the target. </p>"}))
    ECSTarget.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The date and time when the target Amazon ECS application was updated by a\n            deployment. </p>"}))
    ECSTarget.add_member(:lifecycle_events, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: 'lifecycleEvents', traits: {"smithy.api#documentation" => "<p> The lifecycle events of the deployment to this target Amazon ECS application.\n        </p>"}))
    ECSTarget.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status an Amazon ECS deployment's target ECS application. </p>"}))
    ECSTarget.add_member(:task_sets_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSetList, location_name: 'taskSetsInfo', traits: {"smithy.api#documentation" => "<p> The <code>ECSTaskSet</code> objects associated with the ECS target. </p>"}))
    ECSTarget.type = Types::ECSTarget
    ECSTaskSet.add_member(:identifer, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSetIdentifier, location_name: 'identifer', traits: {"smithy.api#documentation" => "<p> A unique ID of an <code>ECSTaskSet</code>. </p>"}))
    ECSTaskSet.add_member(:desired_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSetCount, location_name: 'desiredCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of tasks in a task set. During a deployment that uses the Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a new task set and\n            uses this value to determine how many tasks to create. After the updated task set is\n            created, CodeDeploy shifts traffic to the new task set. </p>"}))
    ECSTaskSet.add_member(:pending_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSetCount, location_name: 'pendingCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of tasks in the task set that are in the <code>PENDING</code> status\n            during an Amazon ECS deployment. A task in the <code>PENDING</code> state is\n            preparing to enter the <code>RUNNING</code> state. A task set enters the\n                <code>PENDING</code> status when it launches for the first time, or when it is\n            restarted after being in the <code>STOPPED</code> state. </p>"}))
    ECSTaskSet.add_member(:running_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSetCount, location_name: 'runningCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The number of tasks in the task set that are in the <code>RUNNING</code> status\n            during an Amazon ECS deployment. A task in the <code>RUNNING</code> state is\n            running and ready for use. </p>"}))
    ECSTaskSet.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the task set. There are three valid task set statuses: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PRIMARY</code>: Indicates the task set is serving production traffic.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>ACTIVE</code>: Indicates the task set is not serving production traffic.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>DRAINING</code>: Indicates the tasks in the task set are being stopped and\n                    their corresponding targets are being deregistered from their target group.\n                </p>\n            </li>\n         </ul>"}))
    ECSTaskSet.add_member(:traffic_weight, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficWeight, location_name: 'trafficWeight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The percentage of traffic served by this task set. </p>"}))
    ECSTaskSet.add_member(:target_group, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupInfo, location_name: 'targetGroup', traits: {"smithy.api#documentation" => "<p> The target group associated with the task set. The target group is used by CodeDeploy to manage traffic to a task set. </p>"}))
    ECSTaskSet.add_member(:task_set_label, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetLabel, location_name: 'taskSetLabel', traits: {"smithy.api#documentation" => "<p> A label that identifies whether the ECS task set is an original target\n                (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>"}))
    ECSTaskSet.type = Types::ECSTaskSet
    ECSTaskSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ECSTaskSet)
    ELBInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ELBName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>For blue/green deployments, the name of the Classic Load Balancer that is used to\n            route traffic from original instances to replacement instances in a blue/green\n            deployment. For in-place deployments, the name of the Classic Load Balancer that\n            instances are deregistered from so they are not serving traffic during a deployment, and\n            then re-registered with after the deployment is complete.</p>"}))
    ELBInfo.type = Types::ELBInfo
    ELBInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ELBInfo)
    ErrorCode.add_member(:agent_issue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT_ISSUE', traits: {"smithy.api#enumValue" => "AGENT_ISSUE"}))
    ErrorCode.add_member(:alarm_active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALARM_ACTIVE', traits: {"smithy.api#enumValue" => "ALARM_ACTIVE"}))
    ErrorCode.add_member(:application_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION_MISSING', traits: {"smithy.api#enumValue" => "APPLICATION_MISSING"}))
    ErrorCode.add_member(:autoscaling_validation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOSCALING_VALIDATION_ERROR', traits: {"smithy.api#enumValue" => "AUTOSCALING_VALIDATION_ERROR"}))
    ErrorCode.add_member(:auto_scaling_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_CONFIGURATION', traits: {"smithy.api#enumValue" => "AUTO_SCALING_CONFIGURATION"}))
    ErrorCode.add_member(:auto_scaling_iam_role_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_SCALING_IAM_ROLE_PERMISSIONS', traits: {"smithy.api#enumValue" => "AUTO_SCALING_IAM_ROLE_PERMISSIONS"}))
    ErrorCode.add_member(:codedeploy_resource_cannot_be_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND', traits: {"smithy.api#enumValue" => "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND"}))
    ErrorCode.add_member(:customer_application_unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_APPLICATION_UNHEALTHY', traits: {"smithy.api#enumValue" => "CUSTOMER_APPLICATION_UNHEALTHY"}))
    ErrorCode.add_member(:deployment_group_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_GROUP_MISSING', traits: {"smithy.api#enumValue" => "DEPLOYMENT_GROUP_MISSING"}))
    ErrorCode.add_member(:ecs_update_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS_UPDATE_ERROR', traits: {"smithy.api#enumValue" => "ECS_UPDATE_ERROR"}))
    ErrorCode.add_member(:elastic_load_balancing_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC_LOAD_BALANCING_INVALID', traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCING_INVALID"}))
    ErrorCode.add_member(:elb_invalid_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELB_INVALID_INSTANCE', traits: {"smithy.api#enumValue" => "ELB_INVALID_INSTANCE"}))
    ErrorCode.add_member(:health_constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTH_CONSTRAINTS', traits: {"smithy.api#enumValue" => "HEALTH_CONSTRAINTS"}))
    ErrorCode.add_member(:health_constraints_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTH_CONSTRAINTS_INVALID', traits: {"smithy.api#enumValue" => "HEALTH_CONSTRAINTS_INVALID"}))
    ErrorCode.add_member(:hook_execution_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOOK_EXECUTION_FAILURE', traits: {"smithy.api#enumValue" => "HOOK_EXECUTION_FAILURE"}))
    ErrorCode.add_member(:iam_role_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_MISSING', traits: {"smithy.api#enumValue" => "IAM_ROLE_MISSING"}))
    ErrorCode.add_member(:iam_role_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_PERMISSIONS', traits: {"smithy.api#enumValue" => "IAM_ROLE_PERMISSIONS"}))
    ErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ErrorCode.add_member(:invalid_ecs_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ECS_SERVICE', traits: {"smithy.api#enumValue" => "INVALID_ECS_SERVICE"}))
    ErrorCode.add_member(:invalid_lambda_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LAMBDA_CONFIGURATION', traits: {"smithy.api#enumValue" => "INVALID_LAMBDA_CONFIGURATION"}))
    ErrorCode.add_member(:invalid_lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_LAMBDA_FUNCTION', traits: {"smithy.api#enumValue" => "INVALID_LAMBDA_FUNCTION"}))
    ErrorCode.add_member(:invalid_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_REVISION', traits: {"smithy.api#enumValue" => "INVALID_REVISION"}))
    ErrorCode.add_member(:manual_stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL_STOP', traits: {"smithy.api#enumValue" => "MANUAL_STOP"}))
    ErrorCode.add_member(:missing_blue_green_deployment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION', traits: {"smithy.api#enumValue" => "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION"}))
    ErrorCode.add_member(:missing_elb_information, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_ELB_INFORMATION', traits: {"smithy.api#enumValue" => "MISSING_ELB_INFORMATION"}))
    ErrorCode.add_member(:missing_github_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_GITHUB_TOKEN', traits: {"smithy.api#enumValue" => "MISSING_GITHUB_TOKEN"}))
    ErrorCode.add_member(:no_ec2_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_EC2_SUBSCRIPTION', traits: {"smithy.api#enumValue" => "NO_EC2_SUBSCRIPTION"}))
    ErrorCode.add_member(:no_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_INSTANCES', traits: {"smithy.api#enumValue" => "NO_INSTANCES"}))
    ErrorCode.add_member(:over_max_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVER_MAX_INSTANCES', traits: {"smithy.api#enumValue" => "OVER_MAX_INSTANCES"}))
    ErrorCode.add_member(:resource_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "RESOURCE_LIMIT_EXCEEDED"}))
    ErrorCode.add_member(:revision_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVISION_MISSING', traits: {"smithy.api#enumValue" => "REVISION_MISSING"}))
    ErrorCode.add_member(:throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THROTTLED', traits: {"smithy.api#enumValue" => "THROTTLED"}))
    ErrorCode.add_member(:timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMEOUT', traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    ErrorCode.add_member(:cloudformation_stack_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION_STACK_FAILURE', traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_FAILURE"}))
    ErrorInformation.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html\">Error Codes for CodeDeploy</a> in the <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide\">CodeDeploy User Guide</a>.</p>\n         <p>The error code:</p>\n         <ul>\n            <li>\n               <p>APPLICATION_MISSING: The application was missing. This error code is most\n                    likely raised if the application is deleted after the deployment is created, but\n                    before it is started.</p>\n            </li>\n            <li>\n               <p>DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code is\n                    most likely raised if the deployment group is deleted after the deployment is\n                    created, but before it is started.</p>\n            </li>\n            <li>\n               <p>HEALTH_CONSTRAINTS: The deployment failed on too many instances to be\n                    successfully deployed within the instance health constraints specified.</p>\n            </li>\n            <li>\n               <p>HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed\n                    within the instance health constraints specified.</p>\n            </li>\n            <li>\n               <p>IAM_ROLE_MISSING: The service role cannot be accessed.</p>\n            </li>\n            <li>\n               <p>IAM_ROLE_PERMISSIONS: The service role does not have the\n                    correct permissions.</p>\n            </li>\n            <li>\n               <p>INTERNAL_ERROR: There was an internal error.</p>\n            </li>\n            <li>\n               <p>NO_EC2_SUBSCRIPTION: The calling account is not subscribed to Amazon EC2.</p>\n            </li>\n            <li>\n               <p>NO_INSTANCES: No instances were specified, or no instances can be\n                    found.</p>\n            </li>\n            <li>\n               <p>OVER_MAX_INSTANCES: The maximum number of instances was exceeded.</p>\n            </li>\n            <li>\n               <p>THROTTLED: The operation was throttled because the calling account exceeded\n                    the throttling limits of one or more Amazon Web Services services.</p>\n            </li>\n            <li>\n               <p>TIMEOUT: The deployment has timed out.</p>\n            </li>\n            <li>\n               <p>REVISION_MISSING: The revision ID was missing. This error code is most likely\n                    raised if the revision is deleted after the deployment is created, but before it\n                    is started.</p>\n            </li>\n         </ul>"}))
    ErrorInformation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>An accompanying error message.</p>"}))
    ErrorInformation.type = Types::ErrorInformation
    FileExistsBehavior.add_member(:disallow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISALLOW', traits: {"smithy.api#enumValue" => "DISALLOW"}))
    FileExistsBehavior.add_member(:overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERWRITE', traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    FileExistsBehavior.add_member(:retain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETAIN', traits: {"smithy.api#enumValue" => "RETAIN"}))
    FilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GenericRevisionInfo.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A comment about the revision.</p>"}))
    GenericRevisionInfo.add_member(:deployment_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupsList, location_name: 'deploymentGroups', traits: {"smithy.api#documentation" => "<p>The deployment groups for which this is the current target revision.</p>"}))
    GenericRevisionInfo.add_member(:first_used_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'firstUsedTime', traits: {"smithy.api#documentation" => "<p>When the revision was first used by CodeDeploy.</p>"}))
    GenericRevisionInfo.add_member(:last_used_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUsedTime', traits: {"smithy.api#documentation" => "<p>When the revision was last used by CodeDeploy.</p>"}))
    GenericRevisionInfo.add_member(:register_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'registerTime', traits: {"smithy.api#documentation" => "<p>When the revision was registered with CodeDeploy.</p>"}))
    GenericRevisionInfo.type = Types::GenericRevisionInfo
    GetApplicationInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: 'application', traits: {"smithy.api#documentation" => "<p>Information about the application.</p>"}))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetApplicationRevisionInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of the application that corresponds to the revision.</p>", "smithy.api#required" => {}}))
    GetApplicationRevisionInput.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>Information about the application revision to get, including type and location.</p>", "smithy.api#required" => {}}))
    GetApplicationRevisionInput.type = Types::GetApplicationRevisionInput
    GetApplicationRevisionOutput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of the application that corresponds to the revision.</p>"}))
    GetApplicationRevisionOutput.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>Additional information about the revision, including type and location.</p>"}))
    GetApplicationRevisionOutput.add_member(:revision_info, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericRevisionInfo, location_name: 'revisionInfo', traits: {"smithy.api#documentation" => "<p>General information about the revision.</p>"}))
    GetApplicationRevisionOutput.type = Types::GetApplicationRevisionOutput
    GetDeploymentConfigInput.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The name of a deployment configuration associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    GetDeploymentConfigInput.type = Types::GetDeploymentConfigInput
    GetDeploymentConfigOutput.add_member(:deployment_config_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigInfo, location_name: 'deploymentConfigInfo', traits: {"smithy.api#documentation" => "<p>Information about the deployment configuration.</p>"}))
    GetDeploymentConfigOutput.type = Types::GetDeploymentConfigOutput
    GetDeploymentGroupInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    GetDeploymentGroupInput.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p>The name of a deployment group for the specified application.</p>", "smithy.api#required" => {}}))
    GetDeploymentGroupInput.type = Types::GetDeploymentGroupInput
    GetDeploymentGroupOutput.add_member(:deployment_group_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupInfo, location_name: 'deploymentGroupInfo', traits: {"smithy.api#documentation" => "<p>Information about the deployment group.</p>"}))
    GetDeploymentGroupOutput.type = Types::GetDeploymentGroupOutput
    GetDeploymentInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment associated with the user or Amazon Web Services account.\n        </p>", "smithy.api#required" => {}}))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentInstanceInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    GetDeploymentInstanceInput.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p> The unique ID of an instance in the deployment group. </p>", "smithy.api#required" => {}}))
    GetDeploymentInstanceInput.type = Types::GetDeploymentInstanceInput
    GetDeploymentInstanceOutput.add_member(:instance_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummary, location_name: 'instanceSummary', traits: {"smithy.api#documentation" => "<p> Information about the instance. </p>"}))
    GetDeploymentInstanceOutput.type = Types::GetDeploymentInstanceOutput
    GetDeploymentOutput.add_member(:deployment_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentInfo, location_name: 'deploymentInfo', traits: {"smithy.api#documentation" => "<p>Information about the deployment.</p>"}))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetDeploymentTargetInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    GetDeploymentTargetInput.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment target. </p>", "smithy.api#required" => {}}))
    GetDeploymentTargetInput.type = Types::GetDeploymentTargetInput
    GetDeploymentTargetOutput.add_member(:deployment_target, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTarget, location_name: 'deploymentTarget', traits: {"smithy.api#documentation" => "<p> A deployment target that contains information about a deployment such as its status,\n            lifecycle events, and when it was last updated. It also contains metadata about the\n            deployment target. The deployment target metadata depends on the deployment target's\n            type (<code>instanceTarget</code>, <code>lambdaTarget</code>, or\n            <code>ecsTarget</code>). </p>"}))
    GetDeploymentTargetOutput.type = Types::GetDeploymentTargetOutput
    GetOnPremisesInstanceInput.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p> The name of the on-premises instance about which to get information. </p>", "smithy.api#required" => {}}))
    GetOnPremisesInstanceInput.type = Types::GetOnPremisesInstanceInput
    GetOnPremisesInstanceOutput.add_member(:instance_info, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceInfo, location_name: 'instanceInfo', traits: {"smithy.api#documentation" => "<p> Information about the on-premises instance. </p>"}))
    GetOnPremisesInstanceOutput.type = Types::GetOnPremisesInstanceOutput
    GitHubAccountTokenDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    GitHubAccountTokenDoesNotExistException.type = Types::GitHubAccountTokenDoesNotExistException
    GitHubAccountTokenNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenName)
    GitHubAccountTokenNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    GitHubAccountTokenNameRequiredException.type = Types::GitHubAccountTokenNameRequiredException
    GitHubLocation.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The GitHub account and repository pair that stores a reference to the commit that\n            represents the bundled artifacts for the application revision. </p>\n         <p>Specified as account/repository.</p>"}))
    GitHubLocation.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the\n            application revision.</p>"}))
    GitHubLocation.type = Types::GitHubLocation
    GreenFleetProvisioningAction.add_member(:discover_existing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCOVER_EXISTING', traits: {"smithy.api#enumValue" => "DISCOVER_EXISTING"}))
    GreenFleetProvisioningAction.add_member(:copy_auto_scaling_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPY_AUTO_SCALING_GROUP', traits: {"smithy.api#enumValue" => "COPY_AUTO_SCALING_GROUP"}))
    GreenFleetProvisioningOption.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: GreenFleetProvisioningAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The method used to add instances to a replacement environment.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DISCOVER_EXISTING</code>: Use instances that already exist or will be\n                    created manually.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COPY_AUTO_SCALING_GROUP</code>: Use settings from a specified Auto Scaling group to define and create instances in a new Auto Scaling\n                    group.</p>\n            </li>\n         </ul>"}))
    GreenFleetProvisioningOption.type = Types::GreenFleetProvisioningOption
    IamArnRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    IamArnRequiredException.type = Types::IamArnRequiredException
    IamSessionArnAlreadyRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    IamSessionArnAlreadyRegisteredException.type = Types::IamSessionArnAlreadyRegisteredException
    IamUserArnAlreadyRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    IamUserArnAlreadyRegisteredException.type = Types::IamUserArnAlreadyRegisteredException
    IamUserArnRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    IamUserArnRequiredException.type = Types::IamUserArnRequiredException
    InstanceAction.add_member(:terminate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE', traits: {"smithy.api#enumValue" => "TERMINATE"}))
    InstanceAction.add_member(:keep_alive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEEP_ALIVE', traits: {"smithy.api#enumValue" => "KEEP_ALIVE"}))
    InstanceDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InstanceDoesNotExistException.type = Types::InstanceDoesNotExistException
    InstanceIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InstanceIdRequiredException.type = Types::InstanceIdRequiredException
    InstanceInfo.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p>The name of the on-premises instance.</p>"}))
    InstanceInfo.add_member(:iam_session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamSessionArn, location_name: 'iamSessionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM session associated with the on-premises\n            instance.</p>"}))
    InstanceInfo.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamUserArn, location_name: 'iamUserArn', traits: {"smithy.api#documentation" => "<p>The user ARN associated with the on-premises instance.</p>"}))
    InstanceInfo.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'instanceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the on-premises instance.</p>"}))
    InstanceInfo.add_member(:register_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'registerTime', traits: {"smithy.api#documentation" => "<p>The time at which the on-premises instance was registered.</p>"}))
    InstanceInfo.add_member(:deregister_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'deregisterTime', traits: {"smithy.api#documentation" => "<p>If the on-premises instance was deregistered, the time at which the on-premises\n            instance was deregistered.</p>"}))
    InstanceInfo.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags currently associated with the on-premises instance.</p>"}))
    InstanceInfo.type = Types::InstanceInfo
    InstanceInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceInfo)
    InstanceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InstanceLimitExceededException.type = Types::InstanceLimitExceededException
    InstanceNameAlreadyRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InstanceNameAlreadyRegisteredException.type = Types::InstanceNameAlreadyRegisteredException
    InstanceNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName)
    InstanceNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InstanceNameRequiredException.type = Types::InstanceNameRequiredException
    InstanceNotRegisteredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InstanceNotRegisteredException.type = Types::InstanceNotRegisteredException
    InstanceStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    InstanceStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    InstanceStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "Succeeded"}))
    InstanceStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    InstanceStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "Skipped"}))
    InstanceStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "Unknown"}))
    InstanceStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "Ready"}))
    InstanceStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus)
    InstanceSummary.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    InstanceSummary.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'instanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    InstanceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The deployment status for this instance:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Pending</code>: The deployment is pending for this instance.</p>\n            </li>\n            <li>\n               <p>\n                  <code>In Progress</code>: The deployment is in progress for this\n                    instance.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Succeeded</code>: The deployment has succeeded for this instance.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Failed</code>: The deployment has failed for this instance.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Skipped</code>: The deployment has been skipped for this\n                    instance.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Unknown</code>: The deployment status is unknown for this\n                    instance.</p>\n            </li>\n         </ul>"}))
    InstanceSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the instance information was last updated.</p>"}))
    InstanceSummary.add_member(:lifecycle_events, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: 'lifecycleEvents', traits: {"smithy.api#documentation" => "<p>A list of lifecycle events for this instance.</p>"}))
    InstanceSummary.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>Information about which environment an instance belongs to in a blue/green\n            deployment.</p>\n         <ul>\n            <li>\n               <p>BLUE: The instance is part of the original environment.</p>\n            </li>\n            <li>\n               <p>GREEN: The instance is part of the replacement environment.</p>\n            </li>\n         </ul>"}))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceSummary)
    InstanceTarget.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    InstanceTarget.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment target that has a type of <code>instanceTarget</code>.\n        </p>"}))
    InstanceTarget.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the target. </p>"}))
    InstanceTarget.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status an EC2/On-premises deployment's target instance. </p>"}))
    InstanceTarget.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The date and time when the target instance was updated by a deployment. </p>"}))
    InstanceTarget.add_member(:lifecycle_events, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: 'lifecycleEvents', traits: {"smithy.api#documentation" => "<p> The lifecycle events of the deployment to this target instance. </p>"}))
    InstanceTarget.add_member(:instance_label, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetLabel, location_name: 'instanceLabel', traits: {"smithy.api#documentation" => "<p> A label that identifies whether the instance is an original target\n            (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>"}))
    InstanceTarget.type = Types::InstanceTarget
    InstanceType.add_member(:blue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLUE', traits: {"smithy.api#enumValue" => "Blue"}))
    InstanceType.add_member(:green, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREEN', traits: {"smithy.api#enumValue" => "Green"}))
    InstanceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType)
    InstancesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId)
    InvalidAlarmConfigException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidAlarmConfigException.type = Types::InvalidAlarmConfigException
    InvalidApplicationNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidApplicationNameException.type = Types::InvalidApplicationNameException
    InvalidArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidArnException.type = Types::InvalidArnException
    InvalidAutoRollbackConfigException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidAutoRollbackConfigException.type = Types::InvalidAutoRollbackConfigException
    InvalidAutoScalingGroupException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidAutoScalingGroupException.type = Types::InvalidAutoScalingGroupException
    InvalidBlueGreenDeploymentConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidBlueGreenDeploymentConfigurationException.type = Types::InvalidBlueGreenDeploymentConfigurationException
    InvalidBucketNameFilterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidBucketNameFilterException.type = Types::InvalidBucketNameFilterException
    InvalidComputePlatformException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidComputePlatformException.type = Types::InvalidComputePlatformException
    InvalidDeployedStateFilterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeployedStateFilterException.type = Types::InvalidDeployedStateFilterException
    InvalidDeploymentConfigNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentConfigNameException.type = Types::InvalidDeploymentConfigNameException
    InvalidDeploymentGroupNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentGroupNameException.type = Types::InvalidDeploymentGroupNameException
    InvalidDeploymentIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentIdException.type = Types::InvalidDeploymentIdException
    InvalidDeploymentInstanceTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentInstanceTypeException.type = Types::InvalidDeploymentInstanceTypeException
    InvalidDeploymentStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentStatusException.type = Types::InvalidDeploymentStatusException
    InvalidDeploymentStyleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentStyleException.type = Types::InvalidDeploymentStyleException
    InvalidDeploymentTargetIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentTargetIdException.type = Types::InvalidDeploymentTargetIdException
    InvalidDeploymentWaitTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidDeploymentWaitTypeException.type = Types::InvalidDeploymentWaitTypeException
    InvalidEC2TagCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidEC2TagCombinationException.type = Types::InvalidEC2TagCombinationException
    InvalidEC2TagException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidEC2TagException.type = Types::InvalidEC2TagException
    InvalidECSServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidECSServiceException.type = Types::InvalidECSServiceException
    InvalidExternalIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidExternalIdException.type = Types::InvalidExternalIdException
    InvalidFileExistsBehaviorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidFileExistsBehaviorException.type = Types::InvalidFileExistsBehaviorException
    InvalidGitHubAccountTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidGitHubAccountTokenException.type = Types::InvalidGitHubAccountTokenException
    InvalidGitHubAccountTokenNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidGitHubAccountTokenNameException.type = Types::InvalidGitHubAccountTokenNameException
    InvalidIamSessionArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidIamSessionArnException.type = Types::InvalidIamSessionArnException
    InvalidIamUserArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidIamUserArnException.type = Types::InvalidIamUserArnException
    InvalidIgnoreApplicationStopFailuresValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidIgnoreApplicationStopFailuresValueException.type = Types::InvalidIgnoreApplicationStopFailuresValueException
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidInputException.type = Types::InvalidInputException
    InvalidInstanceNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidInstanceNameException.type = Types::InvalidInstanceNameException
    InvalidInstanceStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidInstanceStatusException.type = Types::InvalidInstanceStatusException
    InvalidInstanceTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidInstanceTypeException.type = Types::InvalidInstanceTypeException
    InvalidKeyPrefixFilterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidKeyPrefixFilterException.type = Types::InvalidKeyPrefixFilterException
    InvalidLifecycleEventHookExecutionIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidLifecycleEventHookExecutionIdException.type = Types::InvalidLifecycleEventHookExecutionIdException
    InvalidLifecycleEventHookExecutionStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidLifecycleEventHookExecutionStatusException.type = Types::InvalidLifecycleEventHookExecutionStatusException
    InvalidLoadBalancerInfoException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidLoadBalancerInfoException.type = Types::InvalidLoadBalancerInfoException
    InvalidMinimumHealthyHostValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidMinimumHealthyHostValueException.type = Types::InvalidMinimumHealthyHostValueException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidOnPremisesTagCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidOnPremisesTagCombinationException.type = Types::InvalidOnPremisesTagCombinationException
    InvalidOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidRegistrationStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidRegistrationStatusException.type = Types::InvalidRegistrationStatusException
    InvalidRevisionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidRevisionException.type = Types::InvalidRevisionException
    InvalidRoleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidRoleException.type = Types::InvalidRoleException
    InvalidSortByException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidSortByException.type = Types::InvalidSortByException
    InvalidSortOrderException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidSortOrderException.type = Types::InvalidSortOrderException
    InvalidTagException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTagException.type = Types::InvalidTagException
    InvalidTagFilterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTagFilterException.type = Types::InvalidTagFilterException
    InvalidTagsToAddException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTagsToAddException.type = Types::InvalidTagsToAddException
    InvalidTargetFilterNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTargetFilterNameException.type = Types::InvalidTargetFilterNameException
    InvalidTargetGroupPairException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTargetGroupPairException.type = Types::InvalidTargetGroupPairException
    InvalidTargetInstancesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTargetInstancesException.type = Types::InvalidTargetInstancesException
    InvalidTimeRangeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTimeRangeException.type = Types::InvalidTimeRangeException
    InvalidTrafficRoutingConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTrafficRoutingConfigurationException.type = Types::InvalidTrafficRoutingConfigurationException
    InvalidTriggerConfigException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidTriggerConfigException.type = Types::InvalidTriggerConfigException
    InvalidUpdateOutdatedInstancesOnlyValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidUpdateOutdatedInstancesOnlyValueException.type = Types::InvalidUpdateOutdatedInstancesOnlyValueException
    InvalidZonalDeploymentConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    InvalidZonalDeploymentConfigurationException.type = Types::InvalidZonalDeploymentConfigurationException
    LambdaFunctionInfo.add_member(:function_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionName, location_name: 'functionName', traits: {"smithy.api#documentation" => "<p> The name of a Lambda function. </p>"}))
    LambdaFunctionInfo.add_member(:function_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionAlias, location_name: 'functionAlias', traits: {"smithy.api#documentation" => "<p> The alias of a Lambda function. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html\">Lambda Function Aliases</a> in the <i>Lambda Developer\n                Guide</i>.</p>"}))
    LambdaFunctionInfo.add_member(:current_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'currentVersion', traits: {"smithy.api#documentation" => "<p> The version of a Lambda function that production traffic points to.\n        </p>"}))
    LambdaFunctionInfo.add_member(:target_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'targetVersion', traits: {"smithy.api#documentation" => "<p> The version of a Lambda function that production traffic points to after\n            the Lambda function is deployed. </p>"}))
    LambdaFunctionInfo.add_member(:target_version_weight, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficWeight, location_name: 'targetVersionWeight', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The percentage of production traffic that the target version of a Lambda\n            function receives. </p>"}))
    LambdaFunctionInfo.type = Types::LambdaFunctionInfo
    LambdaTarget.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    LambdaTarget.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment target that has a type of <code>lambdaTarget</code>.\n        </p>"}))
    LambdaTarget.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the target. </p>"}))
    LambdaTarget.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status an Lambda deployment's target Lambda function.\n        </p>"}))
    LambdaTarget.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p> The date and time when the target Lambda function was updated by a\n            deployment. </p>"}))
    LambdaTarget.add_member(:lifecycle_events, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventList, location_name: 'lifecycleEvents', traits: {"smithy.api#documentation" => "<p> The lifecycle events of the deployment to this target Lambda function.\n        </p>"}))
    LambdaTarget.add_member(:lambda_function_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionInfo, location_name: 'lambdaFunctionInfo', traits: {"smithy.api#documentation" => "<p> A <code>LambdaFunctionInfo</code> object that describes a target Lambda\n            function. </p>"}))
    LambdaTarget.type = Types::LambdaTarget
    LastDeploymentInfo.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>"}))
    LastDeploymentInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the most recent deployment.</p>"}))
    LastDeploymentInfo.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the most recent deployment to the deployment group was\n            complete.</p>"}))
    LastDeploymentInfo.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the most recent deployment to the deployment group\n            started.</p>"}))
    LastDeploymentInfo.type = Types::LastDeploymentInfo
    LifecycleErrorCode.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "Success"}))
    LifecycleErrorCode.add_member(:script_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCRIPT_MISSING', traits: {"smithy.api#enumValue" => "ScriptMissing"}))
    LifecycleErrorCode.add_member(:script_not_executable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCRIPT_NOT_EXECUTABLE', traits: {"smithy.api#enumValue" => "ScriptNotExecutable"}))
    LifecycleErrorCode.add_member(:script_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCRIPT_TIMED_OUT', traits: {"smithy.api#enumValue" => "ScriptTimedOut"}))
    LifecycleErrorCode.add_member(:script_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCRIPT_FAILED', traits: {"smithy.api#enumValue" => "ScriptFailed"}))
    LifecycleErrorCode.add_member(:unknown_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UnknownError"}))
    LifecycleEvent.add_member(:lifecycle_event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventName, location_name: 'lifecycleEventName', traits: {"smithy.api#documentation" => "<p>The deployment lifecycle event name, such as <code>ApplicationStop</code>,\n                <code>BeforeInstall</code>, <code>AfterInstall</code>,\n            <code>ApplicationStart</code>, or <code>ValidateService</code>.</p>"}))
    LifecycleEvent.add_member(:diagnostics, Smithy::Schema::Shapes::ShapeRef.new(shape: Diagnostics, location_name: 'diagnostics', traits: {"smithy.api#documentation" => "<p>Diagnostic information about the deployment lifecycle event.</p>"}))
    LifecycleEvent.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the deployment lifecycle event started.</p>"}))
    LifecycleEvent.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>A timestamp that indicates when the deployment lifecycle event ended.</p>"}))
    LifecycleEvent.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The deployment lifecycle event status:</p>\n         <ul>\n            <li>\n               <p>Pending: The deployment lifecycle event is pending.</p>\n            </li>\n            <li>\n               <p>InProgress: The deployment lifecycle event is in progress.</p>\n            </li>\n            <li>\n               <p>Succeeded: The deployment lifecycle event ran successfully.</p>\n            </li>\n            <li>\n               <p>Failed: The deployment lifecycle event has failed.</p>\n            </li>\n            <li>\n               <p>Skipped: The deployment lifecycle event has been skipped.</p>\n            </li>\n            <li>\n               <p>Unknown: The deployment lifecycle event is unknown.</p>\n            </li>\n         </ul>"}))
    LifecycleEvent.type = Types::LifecycleEvent
    LifecycleEventAlreadyCompletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    LifecycleEventAlreadyCompletedException.type = Types::LifecycleEventAlreadyCompletedException
    LifecycleEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEvent)
    LifecycleEventStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    LifecycleEventStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    LifecycleEventStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "Succeeded"}))
    LifecycleEventStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    LifecycleEventStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "Skipped"}))
    LifecycleEventStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "Unknown"}))
    LifecycleHookLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    LifecycleHookLimitExceededException.type = Types::LifecycleHookLimitExceededException
    ListApplicationRevisionsInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p> The name of an CodeDeploy application associated with the user or Amazon Web Services account. </p>", "smithy.api#required" => {}}))
    ListApplicationRevisionsInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationRevisionSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The column name to use to sort the list results:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>registerTime</code>: Sort by the time the revisions were registered with\n                        CodeDeploy.</p>\n            </li>\n            <li>\n               <p>\n                  <code>firstUsedTime</code>: Sort by the time the revisions were first used in\n                    a deployment.</p>\n            </li>\n            <li>\n               <p>\n                  <code>lastUsedTime</code>: Sort by the time the revisions were last used in a\n                    deployment.</p>\n            </li>\n         </ul>\n         <p> If not specified or set to null, the results are returned in an arbitrary order.\n        </p>"}))
    ListApplicationRevisionsInput.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sortOrder', traits: {"smithy.api#documentation" => "<p> The order in which to sort the list results: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ascending</code>: ascending order.</p>\n            </li>\n            <li>\n               <p>\n                  <code>descending</code>: descending order.</p>\n            </li>\n         </ul>\n         <p>If not specified, the results are sorted in ascending order.</p>\n         <p>If set to null, the results are sorted in an arbitrary order.</p>"}))
    ListApplicationRevisionsInput.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p> An Amazon S3 bucket name to limit the search for revisions. </p>\n         <p> If set to null, all of the user's buckets are searched. </p>"}))
    ListApplicationRevisionsInput.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3KeyPrefix', traits: {"smithy.api#documentation" => "<p> A key prefix for the set of Amazon S3 objects to limit the search for\n            revisions. </p>"}))
    ListApplicationRevisionsInput.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStateFilterAction, location_name: 'deployed', traits: {"smithy.api#documentation" => "<p> Whether to list revisions based on whether the revision is the target revision of a\n            deployment group: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>include</code>: List revisions that are target revisions of a deployment\n                    group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>exclude</code>: Do not list revisions that are target revisions of a\n                    deployment group.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ignore</code>: List all revisions.</p>\n            </li>\n         </ul>"}))
    ListApplicationRevisionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous <code>ListApplicationRevisions</code> call.\n            It can be used to return the next set of applications in the list.</p>"}))
    ListApplicationRevisionsInput.type = Types::ListApplicationRevisionsInput
    ListApplicationRevisionsOutput.add_member(:revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocationList, location_name: 'revisions', traits: {"smithy.api#documentation" => "<p>A list of locations that contain the matching revisions.</p>"}))
    ListApplicationRevisionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list application revisions call to return the next set of\n            application revisions in the list.</p>"}))
    ListApplicationRevisionsOutput.type = Types::ListApplicationRevisionsOutput
    ListApplicationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous list applications call. It can be used to\n            return the next set of applications in the list.</p>"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationsList, location_name: 'applications', traits: {"smithy.api#documentation" => "<p>A list of application names.</p>"}))
    ListApplicationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list applications call to return the next set of applications in\n            the list.</p>"}))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListDeploymentConfigsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous <code>ListDeploymentConfigs</code> call. It\n            can be used to return the next set of deployment configurations in the list. </p>"}))
    ListDeploymentConfigsInput.type = Types::ListDeploymentConfigsInput
    ListDeploymentConfigsOutput.add_member(:deployment_configs_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigsList, location_name: 'deploymentConfigsList', traits: {"smithy.api#documentation" => "<p>A list of deployment configurations, including built-in configurations such as\n                <code>CodeDeployDefault.OneAtATime</code>.</p>"}))
    ListDeploymentConfigsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list deployment configurations call to return the next set of\n            deployment configurations in the list.</p>"}))
    ListDeploymentConfigsOutput.type = Types::ListDeploymentConfigsOutput
    ListDeploymentGroupsInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    ListDeploymentGroupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous list deployment groups call. It can be used\n            to return the next set of deployment groups in the list.</p>"}))
    ListDeploymentGroupsInput.type = Types::ListDeploymentGroupsInput
    ListDeploymentGroupsOutput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    ListDeploymentGroupsOutput.add_member(:deployment_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupsList, location_name: 'deploymentGroups', traits: {"smithy.api#documentation" => "<p>A list of deployment group names.</p>"}))
    ListDeploymentGroupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list deployment groups call to return the next set of deployment\n            groups in the list.</p>"}))
    ListDeploymentGroupsOutput.type = Types::ListDeploymentGroupsOutput
    ListDeploymentInstancesInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    ListDeploymentInstancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous list deployment instances call. It can be\n            used to return the next set of deployment instances in the list.</p>"}))
    ListDeploymentInstancesInput.add_member(:instance_status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceStatusList, location_name: 'instanceStatusFilter', traits: {"smithy.api#documentation" => "<p>A subset of instances to list by status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Pending</code>: Include those instances with pending deployments.</p>\n            </li>\n            <li>\n               <p>\n                  <code>InProgress</code>: Include those instances where deployments are still\n                    in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Succeeded</code>: Include those instances with successful\n                    deployments.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Failed</code>: Include those instances with failed deployments.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Skipped</code>: Include those instances with skipped deployments.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Unknown</code>: Include those instances with deployments in an unknown\n                    state.</p>\n            </li>\n         </ul>"}))
    ListDeploymentInstancesInput.add_member(:instance_type_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: 'instanceTypeFilter', traits: {"smithy.api#documentation" => "<p>The set of instances in a blue/green deployment, either those in the original\n            environment (\"BLUE\") or those in the replacement environment (\"GREEN\"), for which you\n            want to view instance information.</p>"}))
    ListDeploymentInstancesInput.type = Types::ListDeploymentInstancesInput
    ListDeploymentInstancesOutput.add_member(:instances_list, Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesList, location_name: 'instancesList', traits: {"smithy.api#documentation" => "<p>A list of instance IDs.</p>"}))
    ListDeploymentInstancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list deployment instances call to return the next set of\n            deployment instances in the list.</p>"}))
    ListDeploymentInstancesOutput.type = Types::ListDeploymentInstancesOutput
    ListDeploymentTargetsInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    ListDeploymentTargetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> A token identifier returned from the previous <code>ListDeploymentTargets</code>\n            call. It can be used to return the next set of deployment targets in the list. </p>"}))
    ListDeploymentTargetsInput.add_member(:target_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilters, location_name: 'targetFilters', traits: {"smithy.api#documentation" => "<p> A key used to filter the returned targets. The two valid values are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TargetStatus</code> - A <code>TargetStatus</code> filter string can be\n                        <code>Failed</code>, <code>InProgress</code>, <code>Pending</code>,\n                        <code>Ready</code>, <code>Skipped</code>, <code>Succeeded</code>, or\n                        <code>Unknown</code>. </p>\n            </li>\n            <li>\n               <p>\n                  <code>ServerInstanceLabel</code> - A <code>ServerInstanceLabel</code> filter\n                    string can be <code>Blue</code> or <code>Green</code>. </p>\n            </li>\n         </ul>"}))
    ListDeploymentTargetsInput.type = Types::ListDeploymentTargetsInput
    ListDeploymentTargetsOutput.add_member(:target_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdList, location_name: 'targetIds', traits: {"smithy.api#documentation" => "<p> The unique IDs of deployment targets. </p>"}))
    ListDeploymentTargetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> If a large amount of information is returned, a token identifier is also returned. It\n            can be used in a subsequent <code>ListDeploymentTargets</code> call to return the next\n            set of deployment targets in the list. </p>"}))
    ListDeploymentTargetsOutput.type = Types::ListDeploymentTargetsOutput
    ListDeploymentsInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>\n         <note>\n            <p>If <code>applicationName</code> is specified, then\n                    <code>deploymentGroupName</code> must be specified. If it is not specified, then\n                    <code>deploymentGroupName</code> must not be specified. </p>\n         </note>"}))
    ListDeploymentsInput.add_member(:deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'deploymentGroupName', traits: {"smithy.api#documentation" => "<p>The name of a deployment group for the specified application.</p>\n         <note>\n            <p>If <code>deploymentGroupName</code> is specified, then\n                    <code>applicationName</code> must be specified. If it is not specified, then\n                    <code>applicationName</code> must not be specified. </p>\n         </note>"}))
    ListDeploymentsInput.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The unique ID of an external resource for returning deployments linked to the external\n            resource.</p>"}))
    ListDeploymentsInput.add_member(:include_only_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStatusList, location_name: 'includeOnlyStatuses', traits: {"smithy.api#documentation" => "<p>A subset of deployments to list by status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Created</code>: Include created deployments in the resulting\n                    list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Queued</code>: Include queued deployments in the resulting list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>In Progress</code>: Include in-progress deployments in the resulting\n                    list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Succeeded</code>: Include successful deployments in the resulting\n                    list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Failed</code>: Include failed deployments in the resulting list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Stopped</code>: Include stopped deployments in the resulting\n                    list.</p>\n            </li>\n         </ul>"}))
    ListDeploymentsInput.add_member(:create_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'createTimeRange', traits: {"smithy.api#documentation" => "<p>A time range (start and end) for returning a subset of the list of deployments.</p>"}))
    ListDeploymentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous list deployments call. It can be used to\n            return the next set of deployments in the list.</p>"}))
    ListDeploymentsInput.type = Types::ListDeploymentsInput
    ListDeploymentsOutput.add_member(:deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentsList, location_name: 'deployments', traits: {"smithy.api#documentation" => "<p>A list of deployment IDs.</p>"}))
    ListDeploymentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list deployments call to return the next set of deployments in\n            the list.</p>"}))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListGitHubAccountTokenNamesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous <code>ListGitHubAccountTokenNames</code>\n            call. It can be used to return the next set of names in the list. </p>"}))
    ListGitHubAccountTokenNamesInput.type = Types::ListGitHubAccountTokenNamesInput
    ListGitHubAccountTokenNamesOutput.add_member(:token_name_list, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenNameList, location_name: 'tokenNameList', traits: {"smithy.api#documentation" => "<p>A list of names of connections to GitHub accounts.</p>"}))
    ListGitHubAccountTokenNamesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent <code>ListGitHubAccountTokenNames</code> call to return the next\n            set of names in the list. </p>"}))
    ListGitHubAccountTokenNamesOutput.type = Types::ListGitHubAccountTokenNamesOutput
    ListOnPremisesInstancesInput.add_member(:registration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: 'registrationStatus', traits: {"smithy.api#documentation" => "<p>The registration status of the on-premises instances:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Deregistered</code>: Include deregistered on-premises instances in the\n                    resulting list.</p>\n            </li>\n            <li>\n               <p>\n                  <code>Registered</code>: Include registered on-premises instances in the\n                    resulting list.</p>\n            </li>\n         </ul>"}))
    ListOnPremisesInstancesInput.add_member(:tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterList, location_name: 'tagFilters', traits: {"smithy.api#documentation" => "<p>The on-premises instance tags that are used to restrict the on-premises instance names\n            returned.</p>"}))
    ListOnPremisesInstancesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous list on-premises instances call. It can be\n            used to return the next set of on-premises instances in the list.</p>"}))
    ListOnPremisesInstancesInput.type = Types::ListOnPremisesInstancesInput
    ListOnPremisesInstancesOutput.add_member(:instance_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameList, location_name: 'instanceNames', traits: {"smithy.api#documentation" => "<p>The list of matching on-premises instance names.</p>"}))
    ListOnPremisesInstancesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list on-premises instances call to return the next set of\n            on-premises instances in the list.</p>"}))
    ListOnPremisesInstancesOutput.type = Types::ListOnPremisesInstancesOutput
    ListStateFilterAction.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Include', traits: {"smithy.api#enumValue" => "include"}))
    ListStateFilterAction.add_member(:exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Exclude', traits: {"smithy.api#enumValue" => "exclude"}))
    ListStateFilterAction.add_member(:ignore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ignore', traits: {"smithy.api#enumValue" => "ignore"}))
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The ARN of a CodeDeploy resource. <code>ListTagsForResource</code> returns all the\n            tags associated with the resource that is identified by the <code>ResourceArn</code>.\n        </p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An identifier returned from the previous <code>ListTagsForResource</code> call. It can\n            be used to return the next set of applications in the list.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A list of tags returned by <code>ListTagsForResource</code>. The tags are associated\n            with the resource identified by the input <code>ResourceArn</code> parameter. </p>"}))
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a large amount of information is returned, an identifier is also returned. It can\n            be used in a subsequent list application revisions call to return the next set of\n            application revisions in the list.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListenerArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArn)
    LoadBalancerInfo.add_member(:elb_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ELBInfoList, location_name: 'elbInfoList', traits: {"smithy.api#documentation" => "<p>An array that contains information about the load balancers to use for load balancing\n            in a deployment. If you're using Classic Load Balancers, specify those load balancers in\n            this array. </p>\n         <note>\n            <p>You can add up to 10 load balancers to the array.</p>\n         </note>\n         <note>\n            <p>If you're using Application Load Balancers or Network Load Balancers, use the\n                    <code>targetGroupInfoList</code> array instead of this one.</p>\n         </note>"}))
    LoadBalancerInfo.add_member(:target_group_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupInfoList, location_name: 'targetGroupInfoList', traits: {"smithy.api#documentation" => "<p>An array that contains information about the target groups to use for load balancing\n            in a deployment. If you're using Application Load Balancers and Network Load Balancers,\n            specify their associated target groups in this array.</p>\n         <note>\n            <p>You can add up to 10 target groups to the array.</p>\n         </note>\n         <note>\n            <p>If you're using Classic Load Balancers, use the <code>elbInfoList</code> array\n                instead of this one.</p>\n         </note>"}))
    LoadBalancerInfo.add_member(:target_group_pair_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupPairInfoList, location_name: 'targetGroupPairInfoList', traits: {"smithy.api#documentation" => "<p> The target group pair information. This is an array of\n                <code>TargeGroupPairInfo</code> objects with a maximum size of one. </p>"}))
    LoadBalancerInfo.type = Types::LoadBalancerInfo
    MinimumHealthyHosts.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHostsType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The minimum healthy instance type:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HOST_COUNT</code>: The minimum number of healthy instances as an\n                    absolute value.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FLEET_PERCENT</code>: The minimum number of healthy instances as a\n                    percentage of the total number of instances in the deployment.</p>\n            </li>\n         </ul>\n         <p>In an example of nine instances, if a HOST_COUNT of six is specified, deploy to up to\n            three instances at a time. The deployment is successful if six or more instances are\n            deployed to successfully. Otherwise, the deployment fails. If a FLEET_PERCENT of 40 is\n            specified, deploy to up to five instances at a time. The deployment is successful if\n            four or more instances are deployed to successfully. Otherwise, the deployment\n            fails.</p>\n         <note>\n            <p>In a call to the <code>GetDeploymentConfig</code>, CodeDeployDefault.OneAtATime\n                returns a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This\n                means a deployment to only one instance at a time. (You cannot set the type to\n                MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with\n                CodeDeployDefault.OneAtATime, CodeDeploy attempts to ensure that all\n                instances but one are kept in a healthy state during the deployment. Although this\n                allows one instance at a time to be taken offline for a new deployment, it also\n                means that if the deployment to the last instance fails, the overall deployment is\n                still successful.</p>\n         </note>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html\">CodeDeploy\n                Instance Health</a> in the <i>CodeDeploy User\n                Guide</i>.</p>"}))
    MinimumHealthyHosts.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHostsValue, location_name: 'value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum healthy instance value.</p>"}))
    MinimumHealthyHosts.type = Types::MinimumHealthyHosts
    MinimumHealthyHostsPerZone.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHostsPerZoneType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The <code>type</code> associated with the <code>MinimumHealthyHostsPerZone</code>\n            option.</p>"}))
    MinimumHealthyHostsPerZone.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHostsPerZoneValue, location_name: 'value', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The <code>value</code> associated with the <code>MinimumHealthyHostsPerZone</code>\n            option.</p>"}))
    MinimumHealthyHostsPerZone.type = Types::MinimumHealthyHostsPerZone
    MinimumHealthyHostsPerZoneType.add_member(:host_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_COUNT', traits: {"smithy.api#enumValue" => "HOST_COUNT"}))
    MinimumHealthyHostsPerZoneType.add_member(:fleet_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_PERCENT', traits: {"smithy.api#enumValue" => "FLEET_PERCENT"}))
    MinimumHealthyHostsType.add_member(:host_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_COUNT', traits: {"smithy.api#enumValue" => "HOST_COUNT"}))
    MinimumHealthyHostsType.add_member(:fleet_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_PERCENT', traits: {"smithy.api#enumValue" => "FLEET_PERCENT"}))
    MultipleIamArnsProvidedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    MultipleIamArnsProvidedException.type = Types::MultipleIamArnsProvidedException
    OnPremisesTagSet.add_member(:on_premises_tag_set_list, Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremisesTagSetList, location_name: 'onPremisesTagSetList', traits: {"smithy.api#documentation" => "<p>A list that contains other lists of on-premises instance tag groups. For an instance\n            to be included in the deployment group, it must be identified by all of the tag groups\n            in the list.</p>"}))
    OnPremisesTagSet.type = Types::OnPremisesTagSet
    OnPremisesTagSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterList)
    OperationNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    OperationNotSupportedException.type = Types::OperationNotSupportedException
    OutdatedInstancesStrategy.add_member(:update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Update', traits: {"smithy.api#enumValue" => "UPDATE"}))
    OutdatedInstancesStrategy.add_member(:ignore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ignore', traits: {"smithy.api#enumValue" => "IGNORE"}))
    PutLifecycleEventHookExecutionStatusInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. Pass this ID to a Lambda function that\n            validates a deployment lifecycle event. </p>"}))
    PutLifecycleEventHookExecutionStatusInput.add_member(:lifecycle_event_hook_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventHookExecutionId, location_name: 'lifecycleEventHookExecutionId', traits: {"smithy.api#documentation" => "<p> The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is\n            specified in the <code>hooks</code> section of the AppSpec file. </p>"}))
    PutLifecycleEventHookExecutionStatusInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The result of a Lambda function that validates a deployment lifecycle\n            event. The values listed in <b>Valid Values</b> are valid for\n            lifecycle statuses in general; however, only <code>Succeeded</code> and\n                <code>Failed</code> can be passed successfully in your API call.</p>"}))
    PutLifecycleEventHookExecutionStatusInput.type = Types::PutLifecycleEventHookExecutionStatusInput
    PutLifecycleEventHookExecutionStatusOutput.add_member(:lifecycle_event_hook_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventHookExecutionId, location_name: 'lifecycleEventHookExecutionId', traits: {"smithy.api#documentation" => "<p>The execution ID of the lifecycle event hook. A hook is specified in the\n                <code>hooks</code> section of the deployment's AppSpec file.</p>"}))
    PutLifecycleEventHookExecutionStatusOutput.type = Types::PutLifecycleEventHookExecutionStatusOutput
    RawString.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: RawStringContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The YAML-formatted or JSON-formatted revision string. It includes information about\n            which Lambda function to update and optional Lambda functions\n            that validate deployment lifecycle events.</p>"}))
    RawString.add_member(:sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: RawStringSha256, location_name: 'sha256', traits: {"smithy.api#documentation" => "<p>The SHA256 hash value of the revision content.</p>"}))
    RawString.type = Types::RawString
    RegisterApplicationRevisionInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The name of an CodeDeploy application associated with the user or Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    RegisterApplicationRevisionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A comment about the revision.</p>"}))
    RegisterApplicationRevisionInput.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>Information about the application revision to register, including type and\n            location.</p>", "smithy.api#required" => {}}))
    RegisterApplicationRevisionInput.type = Types::RegisterApplicationRevisionInput
    RegisterOnPremisesInstanceInput.add_member(:instance_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceName, location_name: 'instanceName', traits: {"smithy.api#documentation" => "<p>The name of the on-premises instance to register.</p>", "smithy.api#required" => {}}))
    RegisterOnPremisesInstanceInput.add_member(:iam_session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamSessionArn, location_name: 'iamSessionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM session to associate with the on-premises\n            instance.</p>"}))
    RegisterOnPremisesInstanceInput.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamUserArn, location_name: 'iamUserArn', traits: {"smithy.api#documentation" => "<p>The ARN of the user to associate with the on-premises instance.</p>"}))
    RegisterOnPremisesInstanceInput.type = Types::RegisterOnPremisesInstanceInput
    RegistrationStatus.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Registered', traits: {"smithy.api#enumValue" => "Registered"}))
    RegistrationStatus.add_member(:deregistered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deregistered', traits: {"smithy.api#enumValue" => "Deregistered"}))
    RelatedDeployments.add_member(:auto_update_outdated_instances_root_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'autoUpdateOutdatedInstancesRootDeploymentId', traits: {"smithy.api#documentation" => "<p>The deployment ID of the root deployment that triggered this deployment.</p>"}))
    RelatedDeployments.add_member(:auto_update_outdated_instances_deployment_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentsList, location_name: 'autoUpdateOutdatedInstancesDeploymentIds', traits: {"smithy.api#documentation" => "<p>The deployment IDs of 'auto-update outdated instances' deployments triggered by this\n            deployment.</p>"}))
    RelatedDeployments.type = Types::RelatedDeployments
    RemoveTagsFromOnPremisesInstancesInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tag key-value pairs to remove from the on-premises instances.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromOnPremisesInstancesInput.add_member(:instance_names, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameList, location_name: 'instanceNames', traits: {"smithy.api#documentation" => "<p>The names of the on-premises instances from which to remove tags.</p>", "smithy.api#required" => {}}))
    RemoveTagsFromOnPremisesInstancesInput.type = Types::RemoveTagsFromOnPremisesInstancesInput
    ResourceArnRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ResourceArnRequiredException.type = Types::ResourceArnRequiredException
    ResourceValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ResourceValidationException.type = Types::ResourceValidationException
    RevisionDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    RevisionDoesNotExistException.type = Types::RevisionDoesNotExistException
    RevisionInfo.add_member(:revision_location, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation, location_name: 'revisionLocation', traits: {"smithy.api#documentation" => "<p>Information about the location and type of an application revision.</p>"}))
    RevisionInfo.add_member(:generic_revision_info, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericRevisionInfo, location_name: 'genericRevisionInfo', traits: {"smithy.api#documentation" => "<p>Information about an application revision, including usage details and associated\n            deployment groups.</p>"}))
    RevisionInfo.type = Types::RevisionInfo
    RevisionInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionInfo)
    RevisionLocation.add_member(:revision_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocationType, location_name: 'revisionType', traits: {"smithy.api#documentation" => "<p>The type of application revision:</p>\n         <ul>\n            <li>\n               <p>S3: An application revision stored in Amazon S3.</p>\n            </li>\n            <li>\n               <p>GitHub: An application revision stored in GitHub (EC2/On-premises deployments\n                    only).</p>\n            </li>\n            <li>\n               <p>String: A YAML-formatted or JSON-formatted string (Lambda\n                    deployments only).</p>\n            </li>\n            <li>\n               <p>AppSpecContent: An <code>AppSpecContent</code> object that contains the\n                    contents of an AppSpec file for an Lambda or Amazon ECS\n                    deployment. The content is formatted as JSON or YAML stored as a\n                    RawString.</p>\n            </li>\n         </ul>"}))
    RevisionLocation.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>Information about the location of a revision stored in Amazon S3. </p>"}))
    RevisionLocation.add_member(:git_hub_location, Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubLocation, location_name: 'gitHubLocation', traits: {"smithy.api#documentation" => "<p>Information about the location of application artifacts stored in GitHub.</p>"}))
    RevisionLocation.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: RawString, location_name: 'string', traits: {"smithy.api#documentation" => "<p>Information about the location of an Lambda deployment revision stored\n            as a RawString.</p>"}))
    RevisionLocation.add_member(:app_spec_content, Smithy::Schema::Shapes::ShapeRef.new(shape: AppSpecContent, location_name: 'appSpecContent', traits: {"smithy.api#documentation" => "<p> The content of an AppSpec file for an Lambda or Amazon ECS\n            deployment. The content is formatted as JSON or YAML and stored as a RawString. </p>"}))
    RevisionLocation.type = Types::RevisionLocation
    RevisionLocationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionLocation)
    RevisionLocationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    RevisionLocationType.add_member(:git_hub, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GitHub', traits: {"smithy.api#enumValue" => "GitHub"}))
    RevisionLocationType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'String', traits: {"smithy.api#enumValue" => "String"}))
    RevisionLocationType.add_member(:app_spec_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AppSpecContent', traits: {"smithy.api#enumValue" => "AppSpecContent"}))
    RevisionRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    RevisionRequiredException.type = Types::RevisionRequiredException
    RoleRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    RoleRequiredException.type = Types::RoleRequiredException
    RollbackInfo.add_member(:rollback_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'rollbackDeploymentId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment rollback.</p>"}))
    RollbackInfo.add_member(:rollback_triggering_deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'rollbackTriggeringDeploymentId', traits: {"smithy.api#documentation" => "<p>The deployment ID of the deployment that was underway and triggered a rollback\n            deployment because it failed or was stopped.</p>"}))
    RollbackInfo.add_member(:rollback_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'rollbackMessage', traits: {"smithy.api#documentation" => "<p>Information that describes the status of a deployment rollback (for example, whether\n            the deployment can't be rolled back, is in progress, failed, or succeeded). </p>"}))
    RollbackInfo.type = Types::RollbackInfo
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket where the application revision is\n            stored.</p>"}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 object that represents the bundled artifacts for the\n            application revision.</p>"}))
    S3Location.add_member(:bundle_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleType, location_name: 'bundleType', traits: {"smithy.api#documentation" => "<p>The file type of the application revision. Must be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>tar</code>: A tar archive file.</p>\n            </li>\n            <li>\n               <p>\n                  <code>tgz</code>: A compressed tar archive file.</p>\n            </li>\n            <li>\n               <p>\n                  <code>zip</code>: A zip archive file.</p>\n            </li>\n            <li>\n               <p>\n                  <code>YAML</code>: A YAML-formatted file.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JSON</code>: A JSON-formatted file.</p>\n            </li>\n         </ul>"}))
    S3Location.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionId, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A specific version of the Amazon S3 object that represents the bundled\n            artifacts for the application revision.</p>\n         <p>If the version is not specified, the system uses the most recent version by\n            default.</p>"}))
    S3Location.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'eTag', traits: {"smithy.api#documentation" => "<p>The ETag of the Amazon S3 object that represents the bundled artifacts for the\n            application revision.</p>\n         <p>If the ETag is not specified as an input parameter, ETag validation of the object is\n            skipped.</p>"}))
    S3Location.type = Types::S3Location
    SkipWaitTimeForInstanceTerminationInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a blue/green deployment for which you want to skip the instance\n            termination wait time. </p>"}))
    SkipWaitTimeForInstanceTerminationInput.type = Types::SkipWaitTimeForInstanceTerminationInput
    SortOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ascending', traits: {"smithy.api#enumValue" => "ascending"}))
    SortOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Descending', traits: {"smithy.api#enumValue" => "descending"}))
    StopDeploymentInput.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentId, location_name: 'deploymentId', traits: {"smithy.api#documentation" => "<p> The unique ID of a deployment. </p>", "smithy.api#required" => {}}))
    StopDeploymentInput.add_member(:auto_rollback_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'autoRollbackEnabled', traits: {"smithy.api#documentation" => "<p> Indicates, when a deployment is stopped, whether instances that have been updated\n            should be rolled back to the previous version of the application revision. </p>"}))
    StopDeploymentInput.type = Types::StopDeploymentInput
    StopDeploymentOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StopStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the stop deployment operation:</p>\n         <ul>\n            <li>\n               <p>Pending: The stop operation is pending.</p>\n            </li>\n            <li>\n               <p>Succeeded: The stop operation was successful.</p>\n            </li>\n         </ul>"}))
    StopDeploymentOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>An accompanying status message.</p>"}))
    StopDeploymentOutput.type = Types::StopDeploymentOutput
    StopStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    StopStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "Succeeded"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>"}))
    Tag.type = Types::Tag
    TagFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The on-premises instance tag filter key.</p>"}))
    TagFilter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The on-premises instance tag filter value.</p>"}))
    TagFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The on-premises instance tag filter type:</p>\n         <ul>\n            <li>\n               <p>KEY_ONLY: Key only.</p>\n            </li>\n            <li>\n               <p>VALUE_ONLY: Value only.</p>\n            </li>\n            <li>\n               <p>KEY_AND_VALUE: Key and value.</p>\n            </li>\n         </ul>"}))
    TagFilter.type = Types::TagFilter
    TagFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter)
    TagFilterType.add_member(:key_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_ONLY', traits: {"smithy.api#enumValue" => "KEY_ONLY"}))
    TagFilterType.add_member(:value_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALUE_ONLY', traits: {"smithy.api#enumValue" => "VALUE_ONLY"}))
    TagFilterType.add_member(:key_and_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_AND_VALUE', traits: {"smithy.api#enumValue" => "KEY_AND_VALUE"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Key)
    TagLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    TagLimitExceededException.type = Types::TagLimitExceededException
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    TagRequiredException.type = Types::TagRequiredException
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The ARN of a resource, such as a CodeDeploy application or deployment group. </p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p> A list of tags that <code>TagResource</code> associates with a resource. The resource\n            is identified by the <code>ResourceArn</code> input parameter. </p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagSetListLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    TagSetListLimitExceededException.type = Types::TagSetListLimitExceededException
    TargetFilterName.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_STATUS', traits: {"smithy.api#enumValue" => "TargetStatus"}))
    TargetFilterName.add_member(:server_instance_label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVER_INSTANCE_LABEL', traits: {"smithy.api#enumValue" => "ServerInstanceLabel"}))
    TargetFilters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilterName)
    TargetFilters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList)
    TargetGroupInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>For blue/green deployments, the name of the target group that instances in the\n            original environment are deregistered from, and instances in the replacement environment\n            are registered with. For in-place deployments, the name of the target group that\n            instances are deregistered from, so they are not serving traffic during a deployment,\n            and then re-registered with after the deployment is complete. </p>"}))
    TargetGroupInfo.type = Types::TargetGroupInfo
    TargetGroupInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupInfo)
    TargetGroupPairInfo.add_member(:target_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupInfoList, location_name: 'targetGroups', traits: {"smithy.api#documentation" => "<p> One pair of target groups. One is associated with the original task set. The second\n            is associated with the task set that serves traffic after the deployment is complete.\n        </p>"}))
    TargetGroupPairInfo.add_member(:prod_traffic_route, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficRoute, location_name: 'prodTrafficRoute', traits: {"smithy.api#documentation" => "<p> The path used by a load balancer to route production traffic when an Amazon ECS deployment is complete. </p>"}))
    TargetGroupPairInfo.add_member(:test_traffic_route, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficRoute, location_name: 'testTrafficRoute', traits: {"smithy.api#documentation" => "<p> An optional path used by a load balancer to route test traffic after an Amazon ECS deployment. Validation can occur while test traffic is served during a\n            deployment. </p>"}))
    TargetGroupPairInfo.type = Types::TargetGroupPairInfo
    TargetGroupPairInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetGroupPairInfo)
    TargetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId)
    TargetInstances.add_member(:tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: 'tagFilters', traits: {"smithy.api#documentation" => "<p>The tag filter key, type, and value used to identify Amazon EC2 instances in a\n            replacement environment for a blue/green deployment. Cannot be used in the same call as\n                <code>ec2TagSet</code>.</p>"}))
    TargetInstances.add_member(:auto_scaling_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: 'autoScalingGroups', traits: {"smithy.api#documentation" => "<p>The names of one or more Auto Scaling groups to identify a replacement\n            environment for a blue/green deployment.</p>"}))
    TargetInstances.add_member(:ec2_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagSet, location_name: 'ec2TagSet', traits: {"smithy.api#documentation" => "<p>Information about the groups of Amazon EC2 instance tags that an instance must\n            be identified by in order for it to be included in the replacement environment for a\n            blue/green deployment. Cannot be used in the same call as\n            <code>tagFilters</code>.</p>"}))
    TargetInstances.type = Types::TargetInstances
    TargetLabel.add_member(:blue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLUE', traits: {"smithy.api#enumValue" => "Blue"}))
    TargetLabel.add_member(:green, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREEN', traits: {"smithy.api#enumValue" => "Green"}))
    TargetStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "Pending"}))
    TargetStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "InProgress"}))
    TargetStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "Succeeded"}))
    TargetStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    TargetStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "Skipped"}))
    TargetStatus.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "Unknown"}))
    TargetStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "Ready"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeBasedCanary.add_member(:canary_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'canaryPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of traffic to shift in the first increment of a\n                <code>TimeBasedCanary</code> deployment.</p>"}))
    TimeBasedCanary.add_member(:canary_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeInMins, location_name: 'canaryInterval', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of minutes between the first and second traffic shifts of a\n                <code>TimeBasedCanary</code> deployment.</p>"}))
    TimeBasedCanary.type = Types::TimeBasedCanary
    TimeBasedLinear.add_member(:linear_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'linearPercentage', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The percentage of traffic that is shifted at the start of each increment of a\n                <code>TimeBasedLinear</code> deployment.</p>"}))
    TimeBasedLinear.add_member(:linear_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeInMins, location_name: 'linearInterval', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of minutes between each incremental traffic shift of a\n                <code>TimeBasedLinear</code> deployment.</p>"}))
    TimeBasedLinear.type = Types::TimeBasedLinear
    TimeRange.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'start', traits: {"smithy.api#documentation" => "<p>The start time of the time range.</p>\n         <note>\n            <p>Specify null to leave the start time open-ended.</p>\n         </note>"}))
    TimeRange.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'end', traits: {"smithy.api#documentation" => "<p>The end time of the time range.</p>\n         <note>\n            <p>Specify null to leave the end time open-ended.</p>\n         </note>"}))
    TimeRange.type = Types::TimeRange
    TrafficRoute.add_member(:listener_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ListenerArnList, location_name: 'listenerArns', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of one listener. The listener identifies the route\n            between a target group and a load balancer. This is an array of strings with a maximum\n            size of one. </p>"}))
    TrafficRoute.type = Types::TrafficRoute
    TrafficRoutingConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficRoutingType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of traffic shifting (<code>TimeBasedCanary</code> or\n                <code>TimeBasedLinear</code>) used by a deployment configuration.</p>"}))
    TrafficRoutingConfig.add_member(:time_based_canary, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedCanary, location_name: 'timeBasedCanary', traits: {"smithy.api#documentation" => "<p>A configuration that shifts traffic from one version of a Lambda function\n            or ECS task set to another in two increments. The original and target Lambda\n            function versions or ECS task sets are specified in the deployment's AppSpec\n            file.</p>"}))
    TrafficRoutingConfig.add_member(:time_based_linear, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedLinear, location_name: 'timeBasedLinear', traits: {"smithy.api#documentation" => "<p>A configuration that shifts traffic from one version of a Lambda function\n            or Amazon ECS task set to another in equal increments, with an equal number of\n            minutes between each increment. The original and target Lambda function\n            versions or Amazon ECS task sets are specified in the deployment's AppSpec\n            file.</p>"}))
    TrafficRoutingConfig.type = Types::TrafficRoutingConfig
    TrafficRoutingType.add_member(:time_based_canary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimeBasedCanary', traits: {"smithy.api#enumValue" => "TimeBasedCanary"}))
    TrafficRoutingType.add_member(:time_based_linear, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimeBasedLinear', traits: {"smithy.api#enumValue" => "TimeBasedLinear"}))
    TrafficRoutingType.add_member(:all_at_once, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AllAtOnce', traits: {"smithy.api#enumValue" => "AllAtOnce"}))
    TriggerConfig.add_member(:trigger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerName, location_name: 'triggerName', traits: {"smithy.api#documentation" => "<p>The name of the notification trigger.</p>"}))
    TriggerConfig.add_member(:trigger_target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerTargetArn, location_name: 'triggerTargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic through\n            which notifications about deployment or instance events are sent.</p>"}))
    TriggerConfig.add_member(:trigger_events, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerEventTypeList, location_name: 'triggerEvents', traits: {"smithy.api#documentation" => "<p>The event type or types for which notifications are triggered.</p>"}))
    TriggerConfig.type = Types::TriggerConfig
    TriggerConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerConfig)
    TriggerEventType.add_member(:deployment_start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_START', traits: {"smithy.api#enumValue" => "DeploymentStart"}))
    TriggerEventType.add_member(:deployment_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_SUCCESS', traits: {"smithy.api#enumValue" => "DeploymentSuccess"}))
    TriggerEventType.add_member(:deployment_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_FAILURE', traits: {"smithy.api#enumValue" => "DeploymentFailure"}))
    TriggerEventType.add_member(:deployment_stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_STOP', traits: {"smithy.api#enumValue" => "DeploymentStop"}))
    TriggerEventType.add_member(:deployment_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_ROLLBACK', traits: {"smithy.api#enumValue" => "DeploymentRollback"}))
    TriggerEventType.add_member(:deployment_ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_READY', traits: {"smithy.api#enumValue" => "DeploymentReady"}))
    TriggerEventType.add_member(:instance_start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_START', traits: {"smithy.api#enumValue" => "InstanceStart"}))
    TriggerEventType.add_member(:instance_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_SUCCESS', traits: {"smithy.api#enumValue" => "InstanceSuccess"}))
    TriggerEventType.add_member(:instance_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_FAILURE', traits: {"smithy.api#enumValue" => "InstanceFailure"}))
    TriggerEventType.add_member(:instance_ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_READY', traits: {"smithy.api#enumValue" => "InstanceReady"}))
    TriggerEventTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerEventType)
    TriggerTargetsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    TriggerTargetsLimitExceededException.type = Types::TriggerTargetsLimitExceededException
    UnsupportedActionForDeploymentTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message that corresponds to the exception thrown by CodeDeploy.</p>"}))
    UnsupportedActionForDeploymentTypeException.type = Types::UnsupportedActionForDeploymentTypeException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that specifies from which resource to disassociate the\n            tags with the keys in the <code>TagKeys</code> input parameter. </p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p> A list of keys of <code>Tag</code> objects. The <code>Tag</code> objects identified\n            by the keys are disassociated from the resource specified by the\n                <code>ResourceArn</code> input parameter. </p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The current name of the application you want to change.</p>"}))
    UpdateApplicationInput.add_member(:new_application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'newApplicationName', traits: {"smithy.api#documentation" => "<p>The new name to give the application.</p>"}))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateDeploymentGroupInput.add_member(:application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'applicationName', traits: {"smithy.api#documentation" => "<p>The application name that corresponds to the deployment group to update.</p>", "smithy.api#required" => {}}))
    UpdateDeploymentGroupInput.add_member(:current_deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'currentDeploymentGroupName', traits: {"smithy.api#documentation" => "<p>The current name of the deployment group.</p>", "smithy.api#required" => {}}))
    UpdateDeploymentGroupInput.add_member(:new_deployment_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupName, location_name: 'newDeploymentGroupName', traits: {"smithy.api#documentation" => "<p>The new name of the deployment group, if you want to change it.</p>"}))
    UpdateDeploymentGroupInput.add_member(:deployment_config_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigName, location_name: 'deploymentConfigName', traits: {"smithy.api#documentation" => "<p>The replacement deployment configuration name to use, if you want to change it.</p>"}))
    UpdateDeploymentGroupInput.add_member(:ec2_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagFilterList, location_name: 'ec2TagFilters', traits: {"smithy.api#documentation" => "<p>The replacement set of Amazon EC2 tags on which to filter, if you want to\n            change them. To keep the existing tags, enter their names. To remove tags, do not enter\n            any tag names.</p>"}))
    UpdateDeploymentGroupInput.add_member(:on_premises_instance_tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterList, location_name: 'onPremisesInstanceTagFilters', traits: {"smithy.api#documentation" => "<p>The replacement set of on-premises instance tags on which to filter, if you want to\n            change them. To keep the existing tags, enter their names. To remove tags, do not enter\n            any tag names.</p>"}))
    UpdateDeploymentGroupInput.add_member(:auto_scaling_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupNameList, location_name: 'autoScalingGroups', traits: {"smithy.api#documentation" => "<p>The replacement list of Auto Scaling groups to be included in the deployment\n            group, if you want to change them.</p>\n         <ul>\n            <li>\n               <p>To keep the Auto Scaling groups, enter their names or do not specify this\n                    parameter. </p>\n            </li>\n            <li>\n               <p>To remove Auto Scaling groups, specify a non-null empty list of Auto Scaling group names to detach all CodeDeploy-managed Auto Scaling lifecycle hooks. For examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/troubleshooting-auto-scaling.html#troubleshooting-auto-scaling-heartbeat\">Amazon EC2 instances in an Amazon EC2 Auto Scaling group fail to\n                        launch and receive the error \"Heartbeat Timeout\"</a> in the\n                            <i>CodeDeploy User Guide</i>.</p>\n            </li>\n         </ul>"}))
    UpdateDeploymentGroupInput.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'serviceRoleArn', traits: {"smithy.api#documentation" => "<p>A replacement ARN for the service role, if you want to change it.</p>"}))
    UpdateDeploymentGroupInput.add_member(:trigger_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerConfigList, location_name: 'triggerConfigurations', traits: {"smithy.api#documentation" => "<p>Information about triggers to change when the deployment group is updated. For\n            examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html\">Edit a Trigger in a\n                CodeDeploy Deployment Group</a> in the <i>CodeDeploy User\n                Guide</i>.</p>"}))
    UpdateDeploymentGroupInput.add_member(:alarm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: 'alarmConfiguration', traits: {"smithy.api#documentation" => "<p>Information to add or change about Amazon CloudWatch alarms when the deployment group\n            is updated.</p>"}))
    UpdateDeploymentGroupInput.add_member(:auto_rollback_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRollbackConfiguration, location_name: 'autoRollbackConfiguration', traits: {"smithy.api#documentation" => "<p>Information for an automatic rollback configuration that is added or changed when a\n            deployment group is updated.</p>"}))
    UpdateDeploymentGroupInput.add_member(:outdated_instances_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: OutdatedInstancesStrategy, location_name: 'outdatedInstancesStrategy', traits: {"smithy.api#documentation" => "<p>Indicates what happens when new Amazon EC2 instances are launched\n            mid-deployment and do not receive the deployed application revision.</p>\n         <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates\n            one or more 'auto-update outdated instances' deployments to apply the deployed\n            application revision to the new Amazon EC2 instances.</p>\n         <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a\n            deployment to update the new Amazon EC2 instances. This may result in instances\n            having different revisions.</p>"}))
    UpdateDeploymentGroupInput.add_member(:deployment_style, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStyle, location_name: 'deploymentStyle', traits: {"smithy.api#documentation" => "<p>Information about the type of deployment, either in-place or blue/green, you want to\n            run and whether to route deployment traffic behind a load balancer.</p>"}))
    UpdateDeploymentGroupInput.add_member(:blue_green_deployment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BlueGreenDeploymentConfiguration, location_name: 'blueGreenDeploymentConfiguration', traits: {"smithy.api#documentation" => "<p>Information about blue/green deployment options for a deployment group.</p>"}))
    UpdateDeploymentGroupInput.add_member(:load_balancer_info, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerInfo, location_name: 'loadBalancerInfo', traits: {"smithy.api#documentation" => "<p>Information about the load balancer used in a deployment.</p>"}))
    UpdateDeploymentGroupInput.add_member(:ec2_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2TagSet, location_name: 'ec2TagSet', traits: {"smithy.api#documentation" => "<p>Information about groups of tags applied to on-premises instances. The deployment\n            group includes only Amazon EC2 instances identified by all the tag\n            groups.</p>"}))
    UpdateDeploymentGroupInput.add_member(:ecs_services, Smithy::Schema::Shapes::ShapeRef.new(shape: ECSServiceList, location_name: 'ecsServices', traits: {"smithy.api#documentation" => "<p> The target Amazon ECS services in the deployment group. This applies only to\n            deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name\n            pair using the format <code><clustername>:<servicename></code>. </p>"}))
    UpdateDeploymentGroupInput.add_member(:on_premises_tag_set, Smithy::Schema::Shapes::ShapeRef.new(shape: OnPremisesTagSet, location_name: 'onPremisesTagSet', traits: {"smithy.api#documentation" => "<p>Information about an on-premises instance tag set. The deployment group includes only\n            on-premises instances identified by all the tag groups.</p>"}))
    UpdateDeploymentGroupInput.add_member(:termination_hook_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'terminationHookEnabled', traits: {"smithy.api#documentation" => "<p>This parameter only applies if you are using CodeDeploy with Amazon EC2 Auto Scaling. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html\">Integrating\n                CodeDeploy with Amazon EC2 Auto Scaling</a> in the <i>CodeDeploy User Guide</i>.</p>\n         <p>Set <code>terminationHookEnabled</code> to <code>true</code> to have CodeDeploy install a termination hook into your Auto Scaling group when you update a\n            deployment group. When this hook is installed, CodeDeploy will perform\n            termination deployments.</p>\n         <p>For information about termination deployments, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable\">Enabling termination deployments during Auto Scaling scale-in events</a> in the\n            <i>CodeDeploy User Guide</i>.</p>\n         <p>For more information about Auto Scaling scale-in events, see the <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in\">Scale in</a> topic in the <i>Amazon EC2 Auto Scaling User\n                Guide</i>.</p>"}))
    UpdateDeploymentGroupInput.type = Types::UpdateDeploymentGroupInput
    UpdateDeploymentGroupOutput.add_member(:hooks_not_cleaned_up, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'hooksNotCleanedUp', traits: {"smithy.api#documentation" => "<p>If the output contains no data, and the corresponding deployment group contained at\n            least one Auto Scaling group, CodeDeploy successfully removed all\n            corresponding Auto Scaling lifecycle event hooks from the Amazon Web Services account. If the output contains data, CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the Amazon Web Services account.</p>"}))
    UpdateDeploymentGroupOutput.type = Types::UpdateDeploymentGroupOutput
    ZonalConfig.add_member(:first_zone_monitor_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeInSeconds, location_name: 'firstZoneMonitorDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The period of time, in seconds, that CodeDeploy must wait after completing a\n            deployment to the <i>first</i> Availability Zone. CodeDeploy will\n            wait this amount of time before starting a deployment to the second Availability Zone.\n            You might set this option if you want to allow extra bake time for the first\n            Availability Zone. If you don't specify a value for\n                <code>firstZoneMonitorDurationInSeconds</code>, then CodeDeploy uses the\n                <code>monitorDurationInSeconds</code> value for the first Availability Zone.</p>\n         <p>For more information about the zonal configuration feature, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config\">zonal configuration</a> in the <i>CodeDeploy User\n                Guide</i>.</p>"}))
    ZonalConfig.add_member(:monitor_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: WaitTimeInSeconds, location_name: 'monitorDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The period of time, in seconds, that CodeDeploy must wait after completing a\n            deployment to an Availability Zone. CodeDeploy will wait this amount of time\n            before starting a deployment to the next Availability Zone. Consider adding a monitor\n            duration to give the deployment some time to prove itself (or 'bake') in one\n            Availability Zone before it is released in the next zone. If you don't specify a\n                <code>monitorDurationInSeconds</code>, CodeDeploy starts deploying to the\n            next Availability Zone immediately.</p>\n         <p>For more information about the zonal configuration feature, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config\">zonal configuration</a> in the <i>CodeDeploy User\n                Guide</i>.</p>"}))
    ZonalConfig.add_member(:minimum_healthy_hosts_per_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumHealthyHostsPerZone, location_name: 'minimumHealthyHostsPerZone', traits: {"smithy.api#documentation" => "<p>The number or percentage of instances that must remain available per Availability Zone\n            during a deployment. This option works in conjunction with the\n                <code>MinimumHealthyHosts</code> option. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html#minimum-healthy-hosts-az\">About the minimum number of healthy hosts per Availability Zone</a> in the\n                    <i>CodeDeploy User Guide</i>.</p>\n         <p>If you don't specify the <code>minimumHealthyHostsPerZone</code> option, then CodeDeploy uses a default value of <code>0</code> percent.</p>\n         <p>For more information about the zonal configuration feature, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations-create.html#zonal-config\">zonal configuration</a> in the <i>CodeDeploy User\n                Guide</i>.</p>"}))
    ZonalConfig.type = Types::ZonalConfig

    CodeDeploy20141006 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codedeploy#CodeDeploy_20141006"
      service.name = "CodeDeploy20141006"
      service.version = "2014-10-06"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeDeploy", "arnNamespace" => "codedeploy", "cloudFormationName" => "CodeDeploy", "cloudTrailEventSource" => "codedeploy.amazonaws.com", "endpointPrefix" => "codedeploy"}, "aws.auth#sigv4" => {"name" => "codedeploy"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodeDeploy", "smithy.api#xmlNamespace" => {"uri" => "http://codedeploy.amazonaws.com/doc/2014-10-06/"}}
      service.add_operation(:add_tags_to_on_premises_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#AddTagsToOnPremisesInstances"
        operation.name = "AddTagsToOnPremisesInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToOnPremisesInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNotRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_application_revisions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetApplicationRevisions"
        operation.name = "BatchGetApplicationRevisions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetApplicationRevisionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetApplicationRevisionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetApplications"
        operation.name = "BatchGetApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_deployment_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeploymentGroups"
        operation.name = "BatchGetDeploymentGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_deployment_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeploymentInstances"
        operation.name = "BatchGetDeploymentInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use BatchGetDeploymentTargets instead."}}
      end)
      service.add_operation(:batch_get_deployment_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeploymentTargets"
        operation.name = "BatchGetDeploymentTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetListSizeExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentTargetIdException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeployments"
        operation.name = "BatchGetDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetDeploymentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_on_premises_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetOnPremisesInstances"
        operation.name = "BatchGetOnPremisesInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetOnPremisesInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetOnPremisesInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.traits = {}
      end)
      service.add_operation(:continue_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ContinueDeployment"
        operation.name = "ContinueDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ContinueDeploymentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIsNotInReadyStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentWaitTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        operation.traits = {}
      end)
      service.add_operation(:create_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionTooLongException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAlarmConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAutoRollbackConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAutoScalingGroupException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileExistsBehaviorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGitHubAccountTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIgnoreApplicationStopFailuresValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerInfoException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetInstancesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUpdateOutdatedInstancesOnlyValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_deployment_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateDeploymentConfig"
        operation.name = "CreateDeploymentConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMinimumHealthyHostValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidZonalDeploymentConfigurationException)
        operation.traits = {}
      end)
      service.add_operation(:create_deployment_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateDeploymentGroup"
        operation.name = "CreateDeploymentGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ECSServiceMappingLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAlarmConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAutoRollbackConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAutoScalingGroupException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentStyleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEC2TagCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEC2TagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidECSServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerInfoException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOnPremisesTagCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetGroupPairException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTriggerConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleHookLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RoleRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagSetListLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerTargetsLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.traits = {}
      end)
      service.add_operation(:delete_deployment_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteDeploymentConfig"
        operation.name = "DeleteDeploymentConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOperationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_deployment_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteDeploymentGroup"
        operation.name = "DeleteDeploymentGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.traits = {}
      end)
      service.add_operation(:delete_git_hub_account_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteGitHubAccountToken"
        operation.name = "DeleteGitHubAccountToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGitHubAccountTokenInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGitHubAccountTokenOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: GitHubAccountTokenNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGitHubAccountTokenNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resources_by_external_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteResourcesByExternalId"
        operation.name = "DeleteResourcesByExternalId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcesByExternalIdInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcesByExternalIdOutput)
        operation.traits = {}
      end)
      service.add_operation(:deregister_on_premises_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeregisterOnPremisesInstance"
        operation.name = "DeregisterOnPremisesInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterOnPremisesInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.traits = {}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.traits = {}
      end)
      service.add_operation(:get_application_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetApplicationRevision"
        operation.name = "GetApplicationRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRevisionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.traits = {}
      end)
      service.add_operation(:get_deployment_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentConfig"
        operation.name = "GetDeploymentConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        operation.traits = {}
      end)
      service.add_operation(:get_deployment_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentGroup"
        operation.name = "GetDeploymentGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.traits = {}
      end)
      service.add_operation(:get_deployment_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentInstance"
        operation.name = "GetDeploymentInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentInstanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use GetDeploymentTarget instead."}}
      end)
      service.add_operation(:get_deployment_target, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentTarget"
        operation.name = "GetDeploymentTarget"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentTargetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentTargetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTargetIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentTargetIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.traits = {}
      end)
      service.add_operation(:get_on_premises_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetOnPremisesInstance"
        operation.name = "GetOnPremisesInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOnPremisesInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetOnPremisesInstanceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNotRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.traits = {}
      end)
      service.add_operation(:list_application_revisions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListApplicationRevisions"
        operation.name = "ListApplicationRevisions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationRevisionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationRevisionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BucketNameFilterRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBucketNameFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeployedStateFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKeyPrefixFilterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSortByException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSortOrderException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationRevisions.new
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListApplicationsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_deployment_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentConfigs"
        operation.name = "ListDeploymentConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentConfigsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentConfigsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeploymentConfigs.new
      end)
      service.add_operation(:list_deployment_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentGroups"
        operation.name = "ListDeploymentGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeploymentGroups.new
      end)
      service.add_operation(:list_deployment_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentInstances"
        operation.name = "ListDeploymentInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidComputePlatformException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentInstanceTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetFilterNameException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use ListDeploymentTargets instead."}}
        operation[:paginator] = Paginators::ListDeploymentInstances.new
      end)
      service.add_operation(:list_deployment_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentTargets"
        operation.name = "ListDeploymentTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentInstanceTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetFilterNameException)
        operation.traits = {}
      end)
      service.add_operation(:list_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExternalIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_git_hub_account_token_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListGitHubAccountTokenNames"
        operation.name = "ListGitHubAccountTokenNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGitHubAccountTokenNamesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGitHubAccountTokenNamesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_on_premises_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListOnPremisesInstances"
        operation.name = "ListOnPremisesInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOnPremisesInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOnPremisesInstancesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRegistrationStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFilterException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArnNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_event_hook_execution_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#PutLifecycleEventHookExecutionStatus"
        operation.name = "PutLifecycleEventHookExecutionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecycleEventHookExecutionStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecycleEventHookExecutionStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLifecycleEventHookExecutionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLifecycleEventHookExecutionStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventAlreadyCompletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
        operation.traits = {}
      end)
      service.add_operation(:register_application_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#RegisterApplicationRevision"
        operation.name = "RegisterApplicationRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterApplicationRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionTooLongException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:register_on_premises_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#RegisterOnPremisesInstance"
        operation.name = "RegisterOnPremisesInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterOnPremisesInstanceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IamArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IamSessionArnAlreadyRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IamUserArnAlreadyRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IamUserArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameAlreadyRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIamSessionArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidIamUserArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleIamArnsProvidedException)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_on_premises_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#RemoveTagsFromOnPremisesInstances"
        operation.name = "RemoveTagsFromOnPremisesInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromOnPremisesInstancesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceNotRegisteredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInstanceNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:skip_wait_time_for_instance_termination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#SkipWaitTimeForInstanceTermination"
        operation.name = "SkipWaitTimeForInstanceTermination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SkipWaitTimeForInstanceTerminationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentNotStartedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead."}}
      end)
      service.add_operation(:stop_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#StopDeployment"
        operation.name = "StopDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDeploymentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentAlreadyCompletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedActionForDeploymentTypeException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArnNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ArnNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsToAddException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.traits = {}
      end)
      service.add_operation(:update_deployment_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#UpdateDeploymentGroup"
        operation.name = "UpdateDeploymentGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeploymentGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeploymentGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlarmsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentConfigDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentGroupNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ECSServiceMappingLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAlarmConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApplicationNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAutoRollbackConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAutoScalingGroupException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlueGreenDeploymentConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentConfigNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentGroupNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeploymentStyleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEC2TagCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEC2TagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidECSServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidLoadBalancerInfoException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOnPremisesTagCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetGroupPairException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTrafficRoutingConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTriggerConfigException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleHookLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagSetListLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerTargetsLimitExceededException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
