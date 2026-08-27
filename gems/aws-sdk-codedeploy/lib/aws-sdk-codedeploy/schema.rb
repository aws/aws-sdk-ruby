# frozen_string_literal: true

# This is generated code!

module Aws::CodeDeploy
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddTagsToOnPremisesInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#AddTagsToOnPremisesInstancesInput", name: "AddTagsToOnPremisesInstancesInput")
    AdditionalDeploymentStatusInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#AdditionalDeploymentStatusInfo", name: "AdditionalDeploymentStatusInfo", traits: {"smithy.api#deprecated" => {"message" => "AdditionalDeploymentStatusInfo is deprecated, use DeploymentStatusMessageList instead."}})
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#Alarm", name: "Alarm")
    AlarmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#AlarmConfiguration", name: "AlarmConfiguration")
    AlarmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#AlarmList", name: "AlarmList")
    AlarmName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#AlarmName", name: "AlarmName")
    AlarmsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#AlarmsLimitExceededException", name: "AlarmsLimitExceededException", traits: {"smithy.api#error" => "client"})
    AppSpecContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#AppSpecContent", name: "AppSpecContent")
    ApplicationAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ApplicationAlreadyExistsException", name: "ApplicationAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ApplicationDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ApplicationDoesNotExistException", name: "ApplicationDoesNotExistException", traits: {"smithy.api#error" => "client"})
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ApplicationId", name: "ApplicationId")
    ApplicationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ApplicationInfo", name: "ApplicationInfo")
    ApplicationLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ApplicationLimitExceededException", name: "ApplicationLimitExceededException", traits: {"smithy.api#error" => "client"})
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApplicationNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ApplicationNameRequiredException", name: "ApplicationNameRequiredException", traits: {"smithy.api#error" => "client"})
    ApplicationRevisionSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#ApplicationRevisionSortBy", name: "ApplicationRevisionSortBy")
    ApplicationsInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#ApplicationsInfoList", name: "ApplicationsInfoList")
    ApplicationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#ApplicationsList", name: "ApplicationsList")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ArnNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ArnNotSupportedException", name: "ArnNotSupportedException", traits: {"smithy.api#error" => "client"})
    AutoRollbackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#AutoRollbackConfiguration", name: "AutoRollbackConfiguration")
    AutoRollbackEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#AutoRollbackEvent", name: "AutoRollbackEvent")
    AutoRollbackEventsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#AutoRollbackEventsList", name: "AutoRollbackEventsList")
    AutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#AutoScalingGroup", name: "AutoScalingGroup")
    AutoScalingGroupHook = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#AutoScalingGroupHook", name: "AutoScalingGroupHook")
    AutoScalingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#AutoScalingGroupList", name: "AutoScalingGroupList")
    AutoScalingGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#AutoScalingGroupName", name: "AutoScalingGroupName")
    AutoScalingGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#AutoScalingGroupNameList", name: "AutoScalingGroupNameList")
    BatchGetApplicationRevisionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetApplicationRevisionsInput", name: "BatchGetApplicationRevisionsInput")
    BatchGetApplicationRevisionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetApplicationRevisionsOutput", name: "BatchGetApplicationRevisionsOutput")
    BatchGetApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetApplicationsInput", name: "BatchGetApplicationsInput")
    BatchGetApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetApplicationsOutput", name: "BatchGetApplicationsOutput")
    BatchGetDeploymentGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentGroupsInput", name: "BatchGetDeploymentGroupsInput")
    BatchGetDeploymentGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentGroupsOutput", name: "BatchGetDeploymentGroupsOutput")
    BatchGetDeploymentInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentInstancesInput", name: "BatchGetDeploymentInstancesInput")
    BatchGetDeploymentInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentInstancesOutput", name: "BatchGetDeploymentInstancesOutput")
    BatchGetDeploymentTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentTargetsInput", name: "BatchGetDeploymentTargetsInput")
    BatchGetDeploymentTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentTargetsOutput", name: "BatchGetDeploymentTargetsOutput")
    BatchGetDeploymentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentsInput", name: "BatchGetDeploymentsInput")
    BatchGetDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetDeploymentsOutput", name: "BatchGetDeploymentsOutput")
    BatchGetOnPremisesInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetOnPremisesInstancesInput", name: "BatchGetOnPremisesInstancesInput")
    BatchGetOnPremisesInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchGetOnPremisesInstancesOutput", name: "BatchGetOnPremisesInstancesOutput")
    BatchLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BatchLimitExceededException", name: "BatchLimitExceededException", traits: {"smithy.api#error" => "client"})
    BlueGreenDeploymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BlueGreenDeploymentConfiguration", name: "BlueGreenDeploymentConfiguration")
    BlueInstanceTerminationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BlueInstanceTerminationOption", name: "BlueInstanceTerminationOption")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codedeploy#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BucketNameFilterRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#BucketNameFilterRequiredException", name: "BucketNameFilterRequiredException", traits: {"smithy.api#error" => "client"})
    BundleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#BundleType", name: "BundleType")
    CloudFormationResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#CloudFormationResourceType", name: "CloudFormationResourceType")
    CloudFormationTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CloudFormationTarget", name: "CloudFormationTarget")
    CommitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#CommitId", name: "CommitId")
    ComputePlatform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#ComputePlatform", name: "ComputePlatform")
    ContinueDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ContinueDeploymentInput", name: "ContinueDeploymentInput")
    CreateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateApplicationInput", name: "CreateApplicationInput")
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateApplicationOutput", name: "CreateApplicationOutput")
    CreateDeploymentConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateDeploymentConfigInput", name: "CreateDeploymentConfigInput")
    CreateDeploymentConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateDeploymentConfigOutput", name: "CreateDeploymentConfigOutput")
    CreateDeploymentGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateDeploymentGroupInput", name: "CreateDeploymentGroupInput")
    CreateDeploymentGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateDeploymentGroupOutput", name: "CreateDeploymentGroupOutput")
    CreateDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateDeploymentInput", name: "CreateDeploymentInput")
    CreateDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#CreateDeploymentOutput", name: "CreateDeploymentOutput")
    DeleteApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteApplicationInput", name: "DeleteApplicationInput")
    DeleteDeploymentConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteDeploymentConfigInput", name: "DeleteDeploymentConfigInput")
    DeleteDeploymentGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteDeploymentGroupInput", name: "DeleteDeploymentGroupInput")
    DeleteDeploymentGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteDeploymentGroupOutput", name: "DeleteDeploymentGroupOutput")
    DeleteGitHubAccountTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteGitHubAccountTokenInput", name: "DeleteGitHubAccountTokenInput")
    DeleteGitHubAccountTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteGitHubAccountTokenOutput", name: "DeleteGitHubAccountTokenOutput")
    DeleteResourcesByExternalIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteResourcesByExternalIdInput", name: "DeleteResourcesByExternalIdInput")
    DeleteResourcesByExternalIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeleteResourcesByExternalIdOutput", name: "DeleteResourcesByExternalIdOutput")
    DeploymentAlreadyCompletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentAlreadyCompletedException", name: "DeploymentAlreadyCompletedException", traits: {"smithy.api#error" => "client"})
    DeploymentConfigAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigAlreadyExistsException", name: "DeploymentConfigAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    DeploymentConfigDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigDoesNotExistException", name: "DeploymentConfigDoesNotExistException", traits: {"smithy.api#error" => "client"})
    DeploymentConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigId", name: "DeploymentConfigId")
    DeploymentConfigInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigInUseException", name: "DeploymentConfigInUseException", traits: {"smithy.api#error" => "client"})
    DeploymentConfigInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigInfo", name: "DeploymentConfigInfo")
    DeploymentConfigLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigLimitExceededException", name: "DeploymentConfigLimitExceededException", traits: {"smithy.api#error" => "client"})
    DeploymentConfigName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigName", name: "DeploymentConfigName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeploymentConfigNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigNameRequiredException", name: "DeploymentConfigNameRequiredException", traits: {"smithy.api#error" => "client"})
    DeploymentConfigsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentConfigsList", name: "DeploymentConfigsList")
    DeploymentCreator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentCreator", name: "DeploymentCreator")
    DeploymentDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentDoesNotExistException", name: "DeploymentDoesNotExistException", traits: {"smithy.api#error" => "client"})
    DeploymentGroupAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupAlreadyExistsException", name: "DeploymentGroupAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    DeploymentGroupDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupDoesNotExistException", name: "DeploymentGroupDoesNotExistException", traits: {"smithy.api#error" => "client"})
    DeploymentGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupId", name: "DeploymentGroupId")
    DeploymentGroupInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupInfo", name: "DeploymentGroupInfo")
    DeploymentGroupInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupInfoList", name: "DeploymentGroupInfoList")
    DeploymentGroupLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupLimitExceededException", name: "DeploymentGroupLimitExceededException", traits: {"smithy.api#error" => "client"})
    DeploymentGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupName", name: "DeploymentGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DeploymentGroupNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupNameRequiredException", name: "DeploymentGroupNameRequiredException", traits: {"smithy.api#error" => "client"})
    DeploymentGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentGroupsList", name: "DeploymentGroupsList")
    DeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#DeploymentId", name: "DeploymentId")
    DeploymentIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentIdRequiredException", name: "DeploymentIdRequiredException", traits: {"smithy.api#error" => "client"})
    DeploymentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentInfo", name: "DeploymentInfo")
    DeploymentIsNotInReadyStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentIsNotInReadyStateException", name: "DeploymentIsNotInReadyStateException", traits: {"smithy.api#error" => "client"})
    DeploymentLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentLimitExceededException", name: "DeploymentLimitExceededException", traits: {"smithy.api#error" => "client"})
    DeploymentNotStartedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentNotStartedException", name: "DeploymentNotStartedException", traits: {"smithy.api#error" => "client"})
    DeploymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentOption", name: "DeploymentOption")
    DeploymentOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentOverview", name: "DeploymentOverview")
    DeploymentReadyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentReadyAction", name: "DeploymentReadyAction")
    DeploymentReadyOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentReadyOption", name: "DeploymentReadyOption")
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentStatus", name: "DeploymentStatus")
    DeploymentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentStatusList", name: "DeploymentStatusList")
    DeploymentStatusMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentStatusMessageList", name: "DeploymentStatusMessageList")
    DeploymentStyle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentStyle", name: "DeploymentStyle")
    DeploymentTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentTarget", name: "DeploymentTarget")
    DeploymentTargetDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentTargetDoesNotExistException", name: "DeploymentTargetDoesNotExistException", traits: {"smithy.api#error" => "client"})
    DeploymentTargetIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentTargetIdRequiredException", name: "DeploymentTargetIdRequiredException", traits: {"smithy.api#error" => "client"})
    DeploymentTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentTargetList", name: "DeploymentTargetList")
    DeploymentTargetListSizeExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeploymentTargetListSizeExceededException", name: "DeploymentTargetListSizeExceededException", traits: {"smithy.api#error" => "client"})
    DeploymentTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentTargetType", name: "DeploymentTargetType")
    DeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentType", name: "DeploymentType")
    DeploymentWaitType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#DeploymentWaitType", name: "DeploymentWaitType")
    DeploymentsInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentsInfoList", name: "DeploymentsInfoList")
    DeploymentsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#DeploymentsList", name: "DeploymentsList")
    DeregisterOnPremisesInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DeregisterOnPremisesInstanceInput", name: "DeregisterOnPremisesInstanceInput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Description", name: "Description")
    DescriptionTooLongException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#DescriptionTooLongException", name: "DescriptionTooLongException", traits: {"smithy.api#error" => "client"})
    Diagnostics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#Diagnostics", name: "Diagnostics")
    Duration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#Duration", name: "Duration", traits: {"smithy.api#default" => 0})
    EC2TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#EC2TagFilter", name: "EC2TagFilter")
    EC2TagFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#EC2TagFilterList", name: "EC2TagFilterList")
    EC2TagFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#EC2TagFilterType", name: "EC2TagFilterType")
    EC2TagSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#EC2TagSet", name: "EC2TagSet")
    EC2TagSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#EC2TagSetList", name: "EC2TagSetList")
    ECSClusterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ECSClusterName", name: "ECSClusterName")
    ECSService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ECSService", name: "ECSService")
    ECSServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#ECSServiceList", name: "ECSServiceList")
    ECSServiceMappingLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ECSServiceMappingLimitExceededException", name: "ECSServiceMappingLimitExceededException", traits: {"smithy.api#error" => "client"})
    ECSServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ECSServiceName", name: "ECSServiceName")
    ECSTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ECSTarget", name: "ECSTarget")
    ECSTaskSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ECSTaskSet", name: "ECSTaskSet")
    ECSTaskSetCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#ECSTaskSetCount", name: "ECSTaskSetCount", traits: {"smithy.api#default" => 0})
    ECSTaskSetIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ECSTaskSetIdentifier", name: "ECSTaskSetIdentifier")
    ECSTaskSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#ECSTaskSetList", name: "ECSTaskSetList")
    ECSTaskSetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ECSTaskSetStatus", name: "ECSTaskSetStatus")
    ELBInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ELBInfo", name: "ELBInfo")
    ELBInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#ELBInfoList", name: "ELBInfoList")
    ELBName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ELBName", name: "ELBName")
    ETag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ETag", name: "ETag")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#ErrorCode", name: "ErrorCode")
    ErrorInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ErrorInformation", name: "ErrorInformation")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ErrorMessage", name: "ErrorMessage")
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ExternalId", name: "ExternalId")
    FileExistsBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#FileExistsBehavior", name: "FileExistsBehavior")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#FilterValue", name: "FilterValue")
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#FilterValueList", name: "FilterValueList")
    GenericRevisionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GenericRevisionInfo", name: "GenericRevisionInfo")
    GetApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetApplicationInput", name: "GetApplicationInput")
    GetApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetApplicationOutput", name: "GetApplicationOutput")
    GetApplicationRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetApplicationRevisionInput", name: "GetApplicationRevisionInput")
    GetApplicationRevisionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetApplicationRevisionOutput", name: "GetApplicationRevisionOutput")
    GetDeploymentConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentConfigInput", name: "GetDeploymentConfigInput")
    GetDeploymentConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentConfigOutput", name: "GetDeploymentConfigOutput")
    GetDeploymentGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentGroupInput", name: "GetDeploymentGroupInput")
    GetDeploymentGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentGroupOutput", name: "GetDeploymentGroupOutput")
    GetDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentInput", name: "GetDeploymentInput")
    GetDeploymentInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentInstanceInput", name: "GetDeploymentInstanceInput")
    GetDeploymentInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentInstanceOutput", name: "GetDeploymentInstanceOutput")
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentOutput", name: "GetDeploymentOutput")
    GetDeploymentTargetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentTargetInput", name: "GetDeploymentTargetInput")
    GetDeploymentTargetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetDeploymentTargetOutput", name: "GetDeploymentTargetOutput")
    GetOnPremisesInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetOnPremisesInstanceInput", name: "GetOnPremisesInstanceInput")
    GetOnPremisesInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GetOnPremisesInstanceOutput", name: "GetOnPremisesInstanceOutput")
    GitHubAccountTokenDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GitHubAccountTokenDoesNotExistException", name: "GitHubAccountTokenDoesNotExistException", traits: {"smithy.api#error" => "client"})
    GitHubAccountTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#GitHubAccountTokenName", name: "GitHubAccountTokenName")
    GitHubAccountTokenNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#GitHubAccountTokenNameList", name: "GitHubAccountTokenNameList")
    GitHubAccountTokenNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GitHubAccountTokenNameRequiredException", name: "GitHubAccountTokenNameRequiredException", traits: {"smithy.api#error" => "client"})
    GitHubLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GitHubLocation", name: "GitHubLocation")
    GreenFleetProvisioningAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#GreenFleetProvisioningAction", name: "GreenFleetProvisioningAction")
    GreenFleetProvisioningOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#GreenFleetProvisioningOption", name: "GreenFleetProvisioningOption")
    IamArnRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#IamArnRequiredException", name: "IamArnRequiredException", traits: {"smithy.api#error" => "client"})
    IamSessionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#IamSessionArn", name: "IamSessionArn")
    IamSessionArnAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#IamSessionArnAlreadyRegisteredException", name: "IamSessionArnAlreadyRegisteredException", traits: {"smithy.api#error" => "client"})
    IamUserArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#IamUserArn", name: "IamUserArn")
    IamUserArnAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#IamUserArnAlreadyRegisteredException", name: "IamUserArnAlreadyRegisteredException", traits: {"smithy.api#error" => "client"})
    IamUserArnRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#IamUserArnRequiredException", name: "IamUserArnRequiredException", traits: {"smithy.api#error" => "client"})
    InstanceAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#InstanceAction", name: "InstanceAction")
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#InstanceArn", name: "InstanceArn")
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#InstanceCount", name: "InstanceCount", traits: {"smithy.api#default" => 0})
    InstanceDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceDoesNotExistException", name: "InstanceDoesNotExistException", traits: {"smithy.api#deprecated" => {"message" => "This exception is deprecated, use DeploymentTargetDoesNotExistException instead."}, "smithy.api#error" => "client"})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#InstanceId", name: "InstanceId")
    InstanceIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceIdRequiredException", name: "InstanceIdRequiredException", traits: {"smithy.api#deprecated" => {"message" => "This exception is deprecated, use DeploymentTargetIdRequiredException instead."}, "smithy.api#error" => "client"})
    InstanceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceInfo", name: "InstanceInfo")
    InstanceInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#InstanceInfoList", name: "InstanceInfoList")
    InstanceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceLimitExceededException", name: "InstanceLimitExceededException", traits: {"smithy.api#error" => "client"})
    InstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#InstanceName", name: "InstanceName")
    InstanceNameAlreadyRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceNameAlreadyRegisteredException", name: "InstanceNameAlreadyRegisteredException", traits: {"smithy.api#error" => "client"})
    InstanceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#InstanceNameList", name: "InstanceNameList")
    InstanceNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceNameRequiredException", name: "InstanceNameRequiredException", traits: {"smithy.api#error" => "client"})
    InstanceNotRegisteredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceNotRegisteredException", name: "InstanceNotRegisteredException", traits: {"smithy.api#error" => "client"})
    InstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#InstanceStatus", name: "InstanceStatus", traits: {"smithy.api#deprecated" => {"message" => "InstanceStatus is deprecated, use TargetStatus instead."}})
    InstanceStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#InstanceStatusList", name: "InstanceStatusList")
    InstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceSummary", name: "InstanceSummary", traits: {"smithy.api#deprecated" => {"message" => "InstanceSummary is deprecated, use DeploymentTarget instead."}})
    InstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#InstanceSummaryList", name: "InstanceSummaryList")
    InstanceTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InstanceTarget", name: "InstanceTarget")
    InstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#InstanceType", name: "InstanceType")
    InstanceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#InstanceTypeList", name: "InstanceTypeList")
    InstancesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#InstancesList", name: "InstancesList")
    InvalidAlarmConfigException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidAlarmConfigException", name: "InvalidAlarmConfigException", traits: {"smithy.api#error" => "client"})
    InvalidApplicationNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidApplicationNameException", name: "InvalidApplicationNameException", traits: {"smithy.api#error" => "client"})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidArnException", name: "InvalidArnException", traits: {"smithy.api#error" => "client"})
    InvalidAutoRollbackConfigException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidAutoRollbackConfigException", name: "InvalidAutoRollbackConfigException", traits: {"smithy.api#error" => "client"})
    InvalidAutoScalingGroupException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidAutoScalingGroupException", name: "InvalidAutoScalingGroupException", traits: {"smithy.api#error" => "client"})
    InvalidBlueGreenDeploymentConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidBlueGreenDeploymentConfigurationException", name: "InvalidBlueGreenDeploymentConfigurationException", traits: {"smithy.api#error" => "client"})
    InvalidBucketNameFilterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidBucketNameFilterException", name: "InvalidBucketNameFilterException", traits: {"smithy.api#error" => "client"})
    InvalidComputePlatformException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidComputePlatformException", name: "InvalidComputePlatformException", traits: {"smithy.api#error" => "client"})
    InvalidDeployedStateFilterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeployedStateFilterException", name: "InvalidDeployedStateFilterException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentConfigNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentConfigNameException", name: "InvalidDeploymentConfigNameException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentGroupNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentGroupNameException", name: "InvalidDeploymentGroupNameException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentIdException", name: "InvalidDeploymentIdException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentInstanceTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentInstanceTypeException", name: "InvalidDeploymentInstanceTypeException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentStatusException", name: "InvalidDeploymentStatusException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentStyleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentStyleException", name: "InvalidDeploymentStyleException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentTargetIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentTargetIdException", name: "InvalidDeploymentTargetIdException", traits: {"smithy.api#error" => "client"})
    InvalidDeploymentWaitTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidDeploymentWaitTypeException", name: "InvalidDeploymentWaitTypeException", traits: {"smithy.api#error" => "client"})
    InvalidEC2TagCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidEC2TagCombinationException", name: "InvalidEC2TagCombinationException", traits: {"smithy.api#error" => "client"})
    InvalidEC2TagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidEC2TagException", name: "InvalidEC2TagException", traits: {"smithy.api#error" => "client"})
    InvalidECSServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidECSServiceException", name: "InvalidECSServiceException", traits: {"smithy.api#error" => "client"})
    InvalidExternalIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidExternalIdException", name: "InvalidExternalIdException", traits: {"smithy.api#error" => "client"})
    InvalidFileExistsBehaviorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidFileExistsBehaviorException", name: "InvalidFileExistsBehaviorException", traits: {"smithy.api#error" => "client"})
    InvalidGitHubAccountTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidGitHubAccountTokenException", name: "InvalidGitHubAccountTokenException", traits: {"smithy.api#error" => "client"})
    InvalidGitHubAccountTokenNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidGitHubAccountTokenNameException", name: "InvalidGitHubAccountTokenNameException", traits: {"smithy.api#error" => "client"})
    InvalidIamSessionArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidIamSessionArnException", name: "InvalidIamSessionArnException", traits: {"smithy.api#error" => "client"})
    InvalidIamUserArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidIamUserArnException", name: "InvalidIamUserArnException", traits: {"smithy.api#error" => "client"})
    InvalidIgnoreApplicationStopFailuresValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidIgnoreApplicationStopFailuresValueException", name: "InvalidIgnoreApplicationStopFailuresValueException", traits: {"smithy.api#error" => "client"})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client"})
    InvalidInstanceNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidInstanceNameException", name: "InvalidInstanceNameException", traits: {"smithy.api#error" => "client"})
    InvalidInstanceStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidInstanceStatusException", name: "InvalidInstanceStatusException", traits: {"smithy.api#error" => "client"})
    InvalidInstanceTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidInstanceTypeException", name: "InvalidInstanceTypeException", traits: {"smithy.api#error" => "client"})
    InvalidKeyPrefixFilterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidKeyPrefixFilterException", name: "InvalidKeyPrefixFilterException", traits: {"smithy.api#error" => "client"})
    InvalidLifecycleEventHookExecutionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidLifecycleEventHookExecutionIdException", name: "InvalidLifecycleEventHookExecutionIdException", traits: {"smithy.api#error" => "client"})
    InvalidLifecycleEventHookExecutionStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidLifecycleEventHookExecutionStatusException", name: "InvalidLifecycleEventHookExecutionStatusException", traits: {"smithy.api#error" => "client"})
    InvalidLoadBalancerInfoException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidLoadBalancerInfoException", name: "InvalidLoadBalancerInfoException", traits: {"smithy.api#error" => "client"})
    InvalidMinimumHealthyHostValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidMinimumHealthyHostValueException", name: "InvalidMinimumHealthyHostValueException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidOnPremisesTagCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidOnPremisesTagCombinationException", name: "InvalidOnPremisesTagCombinationException", traits: {"smithy.api#error" => "client"})
    InvalidOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidOperationException", name: "InvalidOperationException", traits: {"smithy.api#error" => "client"})
    InvalidRegistrationStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidRegistrationStatusException", name: "InvalidRegistrationStatusException", traits: {"smithy.api#error" => "client"})
    InvalidRevisionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidRevisionException", name: "InvalidRevisionException", traits: {"smithy.api#error" => "client"})
    InvalidRoleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidRoleException", name: "InvalidRoleException", traits: {"smithy.api#error" => "client"})
    InvalidSortByException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidSortByException", name: "InvalidSortByException", traits: {"smithy.api#error" => "client"})
    InvalidSortOrderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidSortOrderException", name: "InvalidSortOrderException", traits: {"smithy.api#error" => "client"})
    InvalidTagException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTagException", name: "InvalidTagException", traits: {"smithy.api#error" => "client"})
    InvalidTagFilterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTagFilterException", name: "InvalidTagFilterException", traits: {"smithy.api#error" => "client"})
    InvalidTagsToAddException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTagsToAddException", name: "InvalidTagsToAddException", traits: {"smithy.api#error" => "client"})
    InvalidTargetFilterNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTargetFilterNameException", name: "InvalidTargetFilterNameException", traits: {"smithy.api#error" => "client"})
    InvalidTargetGroupPairException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTargetGroupPairException", name: "InvalidTargetGroupPairException", traits: {"smithy.api#error" => "client"})
    InvalidTargetInstancesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTargetInstancesException", name: "InvalidTargetInstancesException", traits: {"smithy.api#error" => "client"})
    InvalidTimeRangeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTimeRangeException", name: "InvalidTimeRangeException", traits: {"smithy.api#error" => "client"})
    InvalidTrafficRoutingConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTrafficRoutingConfigurationException", name: "InvalidTrafficRoutingConfigurationException", traits: {"smithy.api#error" => "client"})
    InvalidTriggerConfigException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidTriggerConfigException", name: "InvalidTriggerConfigException", traits: {"smithy.api#error" => "client"})
    InvalidUpdateOutdatedInstancesOnlyValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidUpdateOutdatedInstancesOnlyValueException", name: "InvalidUpdateOutdatedInstancesOnlyValueException", traits: {"smithy.api#error" => "client"})
    InvalidZonalDeploymentConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#InvalidZonalDeploymentConfigurationException", name: "InvalidZonalDeploymentConfigurationException", traits: {"smithy.api#error" => "client"})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Key", name: "Key")
    LambdaFunctionAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#LambdaFunctionAlias", name: "LambdaFunctionAlias")
    LambdaFunctionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LambdaFunctionInfo", name: "LambdaFunctionInfo")
    LambdaFunctionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#LambdaFunctionName", name: "LambdaFunctionName")
    LambdaTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LambdaTarget", name: "LambdaTarget")
    LastDeploymentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LastDeploymentInfo", name: "LastDeploymentInfo")
    LifecycleErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#LifecycleErrorCode", name: "LifecycleErrorCode")
    LifecycleEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LifecycleEvent", name: "LifecycleEvent")
    LifecycleEventAlreadyCompletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LifecycleEventAlreadyCompletedException", name: "LifecycleEventAlreadyCompletedException", traits: {"smithy.api#error" => "client"})
    LifecycleEventHookExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#LifecycleEventHookExecutionId", name: "LifecycleEventHookExecutionId")
    LifecycleEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#LifecycleEventList", name: "LifecycleEventList")
    LifecycleEventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#LifecycleEventName", name: "LifecycleEventName")
    LifecycleEventStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#LifecycleEventStatus", name: "LifecycleEventStatus")
    LifecycleHookLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LifecycleHookLimitExceededException", name: "LifecycleHookLimitExceededException", traits: {"smithy.api#error" => "client"})
    LifecycleMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#LifecycleMessage", name: "LifecycleMessage")
    ListApplicationRevisionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListApplicationRevisionsInput", name: "ListApplicationRevisionsInput")
    ListApplicationRevisionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListApplicationRevisionsOutput", name: "ListApplicationRevisionsOutput")
    ListApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListApplicationsInput", name: "ListApplicationsInput")
    ListApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListApplicationsOutput", name: "ListApplicationsOutput")
    ListDeploymentConfigsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentConfigsInput", name: "ListDeploymentConfigsInput")
    ListDeploymentConfigsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentConfigsOutput", name: "ListDeploymentConfigsOutput")
    ListDeploymentGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentGroupsInput", name: "ListDeploymentGroupsInput")
    ListDeploymentGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentGroupsOutput", name: "ListDeploymentGroupsOutput")
    ListDeploymentInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentInstancesInput", name: "ListDeploymentInstancesInput")
    ListDeploymentInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentInstancesOutput", name: "ListDeploymentInstancesOutput")
    ListDeploymentTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentTargetsInput", name: "ListDeploymentTargetsInput")
    ListDeploymentTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentTargetsOutput", name: "ListDeploymentTargetsOutput")
    ListDeploymentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentsInput", name: "ListDeploymentsInput")
    ListDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListDeploymentsOutput", name: "ListDeploymentsOutput")
    ListGitHubAccountTokenNamesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListGitHubAccountTokenNamesInput", name: "ListGitHubAccountTokenNamesInput")
    ListGitHubAccountTokenNamesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListGitHubAccountTokenNamesOutput", name: "ListGitHubAccountTokenNamesOutput")
    ListOnPremisesInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListOnPremisesInstancesInput", name: "ListOnPremisesInstancesInput")
    ListOnPremisesInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListOnPremisesInstancesOutput", name: "ListOnPremisesInstancesOutput")
    ListStateFilterAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#ListStateFilterAction", name: "ListStateFilterAction")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListenerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ListenerArn", name: "ListenerArn")
    ListenerArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#ListenerArnList", name: "ListenerArnList")
    LoadBalancerInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#LoadBalancerInfo", name: "LoadBalancerInfo")
    LogTail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#LogTail", name: "LogTail")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Message", name: "Message")
    MinimumHealthyHosts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#MinimumHealthyHosts", name: "MinimumHealthyHosts")
    MinimumHealthyHostsPerZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#MinimumHealthyHostsPerZone", name: "MinimumHealthyHostsPerZone")
    MinimumHealthyHostsPerZoneType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#MinimumHealthyHostsPerZoneType", name: "MinimumHealthyHostsPerZoneType")
    MinimumHealthyHostsPerZoneValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#MinimumHealthyHostsPerZoneValue", name: "MinimumHealthyHostsPerZoneValue", traits: {"smithy.api#default" => 0})
    MinimumHealthyHostsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#MinimumHealthyHostsType", name: "MinimumHealthyHostsType")
    MinimumHealthyHostsValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#MinimumHealthyHostsValue", name: "MinimumHealthyHostsValue", traits: {"smithy.api#default" => 0})
    MultipleIamArnsProvidedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#MultipleIamArnsProvidedException", name: "MultipleIamArnsProvidedException", traits: {"smithy.api#error" => "client"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#NextToken", name: "NextToken")
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codedeploy#NullableBoolean", name: "NullableBoolean")
    OnPremisesTagSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#OnPremisesTagSet", name: "OnPremisesTagSet")
    OnPremisesTagSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#OnPremisesTagSetList", name: "OnPremisesTagSetList")
    OperationNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#OperationNotSupportedException", name: "OperationNotSupportedException", traits: {"smithy.api#error" => "client"})
    OutdatedInstancesStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#OutdatedInstancesStrategy", name: "OutdatedInstancesStrategy")
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#Percentage", name: "Percentage", traits: {"smithy.api#default" => 0})
    PutLifecycleEventHookExecutionStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#PutLifecycleEventHookExecutionStatusInput", name: "PutLifecycleEventHookExecutionStatusInput")
    PutLifecycleEventHookExecutionStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#PutLifecycleEventHookExecutionStatusOutput", name: "PutLifecycleEventHookExecutionStatusOutput")
    RawString = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RawString", name: "RawString", traits: {"smithy.api#deprecated" => {"message" => "RawString and String revision type are deprecated, use AppSpecContent type instead."}})
    RawStringContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#RawStringContent", name: "RawStringContent")
    RawStringSha256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#RawStringSha256", name: "RawStringSha256")
    RegisterApplicationRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RegisterApplicationRevisionInput", name: "RegisterApplicationRevisionInput")
    RegisterOnPremisesInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RegisterOnPremisesInstanceInput", name: "RegisterOnPremisesInstanceInput")
    RegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#RegistrationStatus", name: "RegistrationStatus")
    RelatedDeployments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RelatedDeployments", name: "RelatedDeployments")
    RemoveTagsFromOnPremisesInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RemoveTagsFromOnPremisesInstancesInput", name: "RemoveTagsFromOnPremisesInstancesInput")
    Repository = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Repository", name: "Repository")
    ResourceArnRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ResourceArnRequiredException", name: "ResourceArnRequiredException", traits: {"smithy.api#error" => "client"})
    ResourceValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ResourceValidationException", name: "ResourceValidationException", traits: {"smithy.api#error" => "client"})
    RevisionDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RevisionDoesNotExistException", name: "RevisionDoesNotExistException", traits: {"smithy.api#error" => "client"})
    RevisionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RevisionInfo", name: "RevisionInfo")
    RevisionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#RevisionInfoList", name: "RevisionInfoList")
    RevisionLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RevisionLocation", name: "RevisionLocation")
    RevisionLocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#RevisionLocationList", name: "RevisionLocationList")
    RevisionLocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#RevisionLocationType", name: "RevisionLocationType")
    RevisionRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RevisionRequiredException", name: "RevisionRequiredException", traits: {"smithy.api#error" => "client"})
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Role", name: "Role")
    RoleRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RoleRequiredException", name: "RoleRequiredException", traits: {"smithy.api#error" => "client"})
    RollbackInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#RollbackInfo", name: "RollbackInfo")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#S3Bucket", name: "S3Bucket")
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#S3Key", name: "S3Key")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#S3Location", name: "S3Location")
    ScriptName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#ScriptName", name: "ScriptName")
    SkipWaitTimeForInstanceTerminationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#SkipWaitTimeForInstanceTerminationInput", name: "SkipWaitTimeForInstanceTerminationInput")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#SortOrder", name: "SortOrder")
    StopDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#StopDeploymentInput", name: "StopDeploymentInput")
    StopDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#StopDeploymentOutput", name: "StopDeploymentOutput")
    StopStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#StopStatus", name: "StopStatus")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#Tag", name: "Tag")
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TagFilter", name: "TagFilter")
    TagFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TagFilterList", name: "TagFilterList")
    TagFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#TagFilterType", name: "TagFilterType")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TagKeyList", name: "TagKeyList")
    TagLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TagLimitExceededException", name: "TagLimitExceededException", traits: {"smithy.api#error" => "client"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TagList", name: "TagList")
    TagRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TagRequiredException", name: "TagRequiredException", traits: {"smithy.api#error" => "client"})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TagResourceOutput", name: "TagResourceOutput")
    TagSetListLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TagSetListLimitExceededException", name: "TagSetListLimitExceededException", traits: {"smithy.api#error" => "client"})
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#TargetArn", name: "TargetArn")
    TargetFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#TargetFilterName", name: "TargetFilterName")
    TargetFilters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codedeploy#TargetFilters", name: "TargetFilters")
    TargetGroupInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TargetGroupInfo", name: "TargetGroupInfo")
    TargetGroupInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TargetGroupInfoList", name: "TargetGroupInfoList")
    TargetGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#TargetGroupName", name: "TargetGroupName")
    TargetGroupPairInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TargetGroupPairInfo", name: "TargetGroupPairInfo")
    TargetGroupPairInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TargetGroupPairInfoList", name: "TargetGroupPairInfoList")
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#TargetId", name: "TargetId")
    TargetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TargetIdList", name: "TargetIdList")
    TargetInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TargetInstances", name: "TargetInstances")
    TargetLabel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#TargetLabel", name: "TargetLabel")
    TargetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#TargetStatus", name: "TargetStatus")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client"})
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codedeploy#Time", name: "Time")
    TimeBasedCanary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TimeBasedCanary", name: "TimeBasedCanary")
    TimeBasedLinear = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TimeBasedLinear", name: "TimeBasedLinear")
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TimeRange", name: "TimeRange")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codedeploy#Timestamp", name: "Timestamp")
    TrafficRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TrafficRoute", name: "TrafficRoute")
    TrafficRoutingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TrafficRoutingConfig", name: "TrafficRoutingConfig")
    TrafficRoutingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#TrafficRoutingType", name: "TrafficRoutingType")
    TrafficWeight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.codedeploy#TrafficWeight", name: "TrafficWeight", traits: {"smithy.api#default" => 0})
    TriggerConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TriggerConfig", name: "TriggerConfig")
    TriggerConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TriggerConfigList", name: "TriggerConfigList")
    TriggerEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codedeploy#TriggerEventType", name: "TriggerEventType")
    TriggerEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codedeploy#TriggerEventTypeList", name: "TriggerEventTypeList")
    TriggerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#TriggerName", name: "TriggerName")
    TriggerTargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#TriggerTargetArn", name: "TriggerTargetArn")
    TriggerTargetsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#TriggerTargetsLimitExceededException", name: "TriggerTargetsLimitExceededException", traits: {"smithy.api#error" => "client"})
    UnsupportedActionForDeploymentTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#UnsupportedActionForDeploymentTypeException", name: "UnsupportedActionForDeploymentTypeException", traits: {"smithy.api#error" => "client"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#UpdateApplicationInput", name: "UpdateApplicationInput")
    UpdateDeploymentGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#UpdateDeploymentGroupInput", name: "UpdateDeploymentGroupInput")
    UpdateDeploymentGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#UpdateDeploymentGroupOutput", name: "UpdateDeploymentGroupOutput")
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Value", name: "Value")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#Version", name: "Version")
    VersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codedeploy#VersionId", name: "VersionId")
    WaitTimeInMins = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#WaitTimeInMins", name: "WaitTimeInMins", traits: {"smithy.api#default" => 0})
    WaitTimeInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codedeploy#WaitTimeInSeconds", name: "WaitTimeInSeconds")
    ZonalConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codedeploy#ZonalConfig", name: "ZonalConfig")

    AddTagsToOnPremisesInstancesInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    AddTagsToOnPremisesInstancesInput.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNameList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    AddTagsToOnPremisesInstancesInput.type = Types::AddTagsToOnPremisesInstancesInput
    Alarm.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmName, name: "name"))
    Alarm.type = Types::Alarm
    AlarmConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    AlarmConfiguration.add_member(:ignore_poll_alarm_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ignorePollAlarmFailure", traits: {"smithy.api#default" => false}))
    AlarmConfiguration.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmList, name: "alarms"))
    AlarmConfiguration.type = Types::AlarmConfiguration
    AlarmList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "member")
    AlarmsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    AlarmsLimitExceededException.type = Types::AlarmsLimitExceededException
    AppSpecContent.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RawStringContent, name: "content"))
    AppSpecContent.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: RawStringSha256, name: "sha256"))
    AppSpecContent.type = Types::AppSpecContent
    ApplicationAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApplicationAlreadyExistsException.type = Types::ApplicationAlreadyExistsException
    ApplicationDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApplicationDoesNotExistException.type = Types::ApplicationDoesNotExistException
    ApplicationInfo.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId"))
    ApplicationInfo.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    ApplicationInfo.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createTime"))
    ApplicationInfo.add_member(:linked_to_git_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "linkedToGitHub", traits: {"smithy.api#default" => false}))
    ApplicationInfo.add_member(:git_hub_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubAccountTokenName, name: "gitHubAccountName"))
    ApplicationInfo.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    ApplicationInfo.type = Types::ApplicationInfo
    ApplicationLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApplicationLimitExceededException.type = Types::ApplicationLimitExceededException
    ApplicationNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApplicationNameRequiredException.type = Types::ApplicationNameRequiredException
    ApplicationRevisionSortBy.add_member(:register_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegisterTime", traits: {"smithy.api#enumValue" => "registerTime"}))
    ApplicationRevisionSortBy.add_member(:first_used_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FirstUsedTime", traits: {"smithy.api#enumValue" => "firstUsedTime"}))
    ApplicationRevisionSortBy.add_member(:last_used_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastUsedTime", traits: {"smithy.api#enumValue" => "lastUsedTime"}))
    ApplicationsInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInfo, name: "member")
    ApplicationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "member")
    ArnNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ArnNotSupportedException.type = Types::ArnNotSupportedException
    AutoRollbackConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false}))
    AutoRollbackConfiguration.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackEventsList, name: "events"))
    AutoRollbackConfiguration.type = Types::AutoRollbackConfiguration
    AutoRollbackEvent.add_member(:deployment_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_FAILURE", traits: {"smithy.api#enumValue" => "DEPLOYMENT_FAILURE"}))
    AutoRollbackEvent.add_member(:deployment_stop_on_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_STOP_ON_ALARM", traits: {"smithy.api#enumValue" => "DEPLOYMENT_STOP_ON_ALARM"}))
    AutoRollbackEvent.add_member(:deployment_stop_on_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_STOP_ON_REQUEST", traits: {"smithy.api#enumValue" => "DEPLOYMENT_STOP_ON_REQUEST"}))
    AutoRollbackEventsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackEvent, name: "member")
    AutoScalingGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupName, name: "name"))
    AutoScalingGroup.add_member(:hook, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupHook, name: "hook"))
    AutoScalingGroup.add_member(:termination_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupHook, name: "terminationHook"))
    AutoScalingGroup.type = Types::AutoScalingGroup
    AutoScalingGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroup, name: "member")
    AutoScalingGroupNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupName, name: "member")
    BatchGetApplicationRevisionsInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    BatchGetApplicationRevisionsInput.add_member(:revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocationList, name: "revisions", traits: {"smithy.api#required" => {}}))
    BatchGetApplicationRevisionsInput.type = Types::BatchGetApplicationRevisionsInput
    BatchGetApplicationRevisionsOutput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    BatchGetApplicationRevisionsOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchGetApplicationRevisionsOutput.add_member(:revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionInfoList, name: "revisions"))
    BatchGetApplicationRevisionsOutput.type = Types::BatchGetApplicationRevisionsOutput
    BatchGetApplicationsInput.add_member(:application_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationsList, name: "applicationNames", traits: {"smithy.api#required" => {}}))
    BatchGetApplicationsInput.type = Types::BatchGetApplicationsInput
    BatchGetApplicationsOutput.add_member(:applications_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationsInfoList, name: "applicationsInfo"))
    BatchGetApplicationsOutput.type = Types::BatchGetApplicationsOutput
    BatchGetDeploymentGroupsInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentGroupsInput.add_member(:deployment_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupsList, name: "deploymentGroupNames", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentGroupsInput.type = Types::BatchGetDeploymentGroupsInput
    BatchGetDeploymentGroupsOutput.add_member(:deployment_groups_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupInfoList, name: "deploymentGroupsInfo"))
    BatchGetDeploymentGroupsOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchGetDeploymentGroupsOutput.type = Types::BatchGetDeploymentGroupsOutput
    BatchGetDeploymentInstancesInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentInstancesInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesList, name: "instanceIds", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentInstancesInput.type = Types::BatchGetDeploymentInstancesInput
    BatchGetDeploymentInstancesOutput.add_member(:instances_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummaryList, name: "instancesSummary"))
    BatchGetDeploymentInstancesOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchGetDeploymentInstancesOutput.type = Types::BatchGetDeploymentInstancesOutput
    BatchGetDeploymentTargetsInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentTargetsInput.add_member(:target_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdList, name: "targetIds", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentTargetsInput.type = Types::BatchGetDeploymentTargetsInput
    BatchGetDeploymentTargetsOutput.add_member(:deployment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargetList, name: "deploymentTargets"))
    BatchGetDeploymentTargetsOutput.type = Types::BatchGetDeploymentTargetsOutput
    BatchGetDeploymentsInput.add_member(:deployment_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentsList, name: "deploymentIds", traits: {"smithy.api#required" => {}}))
    BatchGetDeploymentsInput.type = Types::BatchGetDeploymentsInput
    BatchGetDeploymentsOutput.add_member(:deployments_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentsInfoList, name: "deploymentsInfo"))
    BatchGetDeploymentsOutput.type = Types::BatchGetDeploymentsOutput
    BatchGetOnPremisesInstancesInput.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNameList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    BatchGetOnPremisesInstancesInput.type = Types::BatchGetOnPremisesInstancesInput
    BatchGetOnPremisesInstancesOutput.add_member(:instance_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInfoList, name: "instanceInfos"))
    BatchGetOnPremisesInstancesOutput.type = Types::BatchGetOnPremisesInstancesOutput
    BatchLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BatchLimitExceededException.type = Types::BatchLimitExceededException
    BlueGreenDeploymentConfiguration.add_member(:terminate_blue_instances_on_deployment_success, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueInstanceTerminationOption, name: "terminateBlueInstancesOnDeploymentSuccess"))
    BlueGreenDeploymentConfiguration.add_member(:deployment_ready_option, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentReadyOption, name: "deploymentReadyOption"))
    BlueGreenDeploymentConfiguration.add_member(:green_fleet_provisioning_option, ::Smithy::Schema::Shapes::MemberShape.new(target: GreenFleetProvisioningOption, name: "greenFleetProvisioningOption"))
    BlueGreenDeploymentConfiguration.type = Types::BlueGreenDeploymentConfiguration
    BlueInstanceTerminationOption.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAction, name: "action"))
    BlueInstanceTerminationOption.add_member(:termination_wait_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "terminationWaitTimeInMinutes", traits: {"smithy.api#default" => 0}))
    BlueInstanceTerminationOption.type = Types::BlueInstanceTerminationOption
    BucketNameFilterRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BucketNameFilterRequiredException.type = Types::BucketNameFilterRequiredException
    BundleType.add_member(:tar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Tar", traits: {"smithy.api#enumValue" => "tar"}))
    BundleType.add_member(:tar_g_zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TarGZip", traits: {"smithy.api#enumValue" => "tgz"}))
    BundleType.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Zip", traits: {"smithy.api#enumValue" => "zip"}))
    BundleType.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    BundleType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    CloudFormationTarget.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    CloudFormationTarget.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    CloudFormationTarget.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "lastUpdatedAt"))
    CloudFormationTarget.add_member(:lifecycle_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventList, name: "lifecycleEvents"))
    CloudFormationTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatus, name: "status"))
    CloudFormationTarget.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationResourceType, name: "resourceType"))
    CloudFormationTarget.add_member(:target_version_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficWeight, name: "targetVersionWeight", traits: {"smithy.api#default" => 0}))
    CloudFormationTarget.type = Types::CloudFormationTarget
    ComputePlatform.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER", traits: {"smithy.api#enumValue" => "Server"}))
    ComputePlatform.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "Lambda"}))
    ComputePlatform.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    ContinueDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    ContinueDeploymentInput.add_member(:deployment_wait_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentWaitType, name: "deploymentWaitType"))
    ContinueDeploymentInput.type = Types::ContinueDeploymentInput
    CreateApplicationInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    CreateApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId"))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateDeploymentConfigInput.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentConfigInput.add_member(:minimum_healthy_hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHosts, name: "minimumHealthyHosts"))
    CreateDeploymentConfigInput.add_member(:traffic_routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficRoutingConfig, name: "trafficRoutingConfig"))
    CreateDeploymentConfigInput.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    CreateDeploymentConfigInput.add_member(:zonal_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalConfig, name: "zonalConfig"))
    CreateDeploymentConfigInput.type = Types::CreateDeploymentConfigInput
    CreateDeploymentConfigOutput.add_member(:deployment_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigId, name: "deploymentConfigId"))
    CreateDeploymentConfigOutput.type = Types::CreateDeploymentConfigOutput
    CreateDeploymentGroupInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentGroupInput.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentGroupInput.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName"))
    CreateDeploymentGroupInput.add_member(:ec2_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilterList, name: "ec2TagFilters"))
    CreateDeploymentGroupInput.add_member(:on_premises_instance_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterList, name: "onPremisesInstanceTagFilters"))
    CreateDeploymentGroupInput.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupNameList, name: "autoScalingGroups"))
    CreateDeploymentGroupInput.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "serviceRoleArn", traits: {"smithy.api#required" => {}}))
    CreateDeploymentGroupInput.add_member(:trigger_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfigList, name: "triggerConfigurations"))
    CreateDeploymentGroupInput.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "alarmConfiguration"))
    CreateDeploymentGroupInput.add_member(:auto_rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackConfiguration, name: "autoRollbackConfiguration"))
    CreateDeploymentGroupInput.add_member(:outdated_instances_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OutdatedInstancesStrategy, name: "outdatedInstancesStrategy"))
    CreateDeploymentGroupInput.add_member(:deployment_style, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStyle, name: "deploymentStyle"))
    CreateDeploymentGroupInput.add_member(:blue_green_deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentConfiguration, name: "blueGreenDeploymentConfiguration"))
    CreateDeploymentGroupInput.add_member(:load_balancer_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerInfo, name: "loadBalancerInfo"))
    CreateDeploymentGroupInput.add_member(:ec2_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagSet, name: "ec2TagSet"))
    CreateDeploymentGroupInput.add_member(:ecs_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceList, name: "ecsServices"))
    CreateDeploymentGroupInput.add_member(:on_premises_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremisesTagSet, name: "onPremisesTagSet"))
    CreateDeploymentGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDeploymentGroupInput.add_member(:termination_hook_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminationHookEnabled"))
    CreateDeploymentGroupInput.type = Types::CreateDeploymentGroupInput
    CreateDeploymentGroupOutput.add_member(:deployment_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupId, name: "deploymentGroupId"))
    CreateDeploymentGroupOutput.type = Types::CreateDeploymentGroupOutput
    CreateDeploymentInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    CreateDeploymentInput.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName"))
    CreateDeploymentInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "revision"))
    CreateDeploymentInput.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName"))
    CreateDeploymentInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateDeploymentInput.add_member(:ignore_application_stop_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ignoreApplicationStopFailures", traits: {"smithy.api#default" => false}))
    CreateDeploymentInput.add_member(:target_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstances, name: "targetInstances"))
    CreateDeploymentInput.add_member(:auto_rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackConfiguration, name: "autoRollbackConfiguration"))
    CreateDeploymentInput.add_member(:update_outdated_instances_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "updateOutdatedInstancesOnly", traits: {"smithy.api#default" => false}))
    CreateDeploymentInput.add_member(:file_exists_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FileExistsBehavior, name: "fileExistsBehavior"))
    CreateDeploymentInput.add_member(:override_alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "overrideAlarmConfiguration"))
    CreateDeploymentInput.type = Types::CreateDeploymentInput
    CreateDeploymentOutput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    CreateDeploymentOutput.type = Types::CreateDeploymentOutput
    DeleteApplicationInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteDeploymentConfigInput.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName", traits: {"smithy.api#required" => {}}))
    DeleteDeploymentConfigInput.type = Types::DeleteDeploymentConfigInput
    DeleteDeploymentGroupInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    DeleteDeploymentGroupInput.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName", traits: {"smithy.api#required" => {}}))
    DeleteDeploymentGroupInput.type = Types::DeleteDeploymentGroupInput
    DeleteDeploymentGroupOutput.add_member(:hooks_not_cleaned_up, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupList, name: "hooksNotCleanedUp"))
    DeleteDeploymentGroupOutput.type = Types::DeleteDeploymentGroupOutput
    DeleteGitHubAccountTokenInput.add_member(:token_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubAccountTokenName, name: "tokenName"))
    DeleteGitHubAccountTokenInput.type = Types::DeleteGitHubAccountTokenInput
    DeleteGitHubAccountTokenOutput.add_member(:token_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubAccountTokenName, name: "tokenName"))
    DeleteGitHubAccountTokenOutput.type = Types::DeleteGitHubAccountTokenOutput
    DeleteResourcesByExternalIdInput.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    DeleteResourcesByExternalIdInput.type = Types::DeleteResourcesByExternalIdInput
    DeleteResourcesByExternalIdOutput.type = Types::DeleteResourcesByExternalIdOutput
    DeploymentAlreadyCompletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentAlreadyCompletedException.type = Types::DeploymentAlreadyCompletedException
    DeploymentConfigAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentConfigAlreadyExistsException.type = Types::DeploymentConfigAlreadyExistsException
    DeploymentConfigDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentConfigDoesNotExistException.type = Types::DeploymentConfigDoesNotExistException
    DeploymentConfigInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentConfigInUseException.type = Types::DeploymentConfigInUseException
    DeploymentConfigInfo.add_member(:deployment_config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigId, name: "deploymentConfigId"))
    DeploymentConfigInfo.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName"))
    DeploymentConfigInfo.add_member(:minimum_healthy_hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHosts, name: "minimumHealthyHosts"))
    DeploymentConfigInfo.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createTime"))
    DeploymentConfigInfo.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    DeploymentConfigInfo.add_member(:traffic_routing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficRoutingConfig, name: "trafficRoutingConfig"))
    DeploymentConfigInfo.add_member(:zonal_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ZonalConfig, name: "zonalConfig"))
    DeploymentConfigInfo.type = Types::DeploymentConfigInfo
    DeploymentConfigLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentConfigLimitExceededException.type = Types::DeploymentConfigLimitExceededException
    DeploymentConfigNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentConfigNameRequiredException.type = Types::DeploymentConfigNameRequiredException
    DeploymentConfigsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "member")
    DeploymentCreator.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "User", traits: {"smithy.api#enumValue" => "user"}))
    DeploymentCreator.add_member(:autoscaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Autoscaling", traits: {"smithy.api#enumValue" => "autoscaling"}))
    DeploymentCreator.add_member(:code_deploy_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeDeployRollback", traits: {"smithy.api#enumValue" => "codeDeployRollback"}))
    DeploymentCreator.add_member(:code_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeDeploy", traits: {"smithy.api#enumValue" => "CodeDeploy"}))
    DeploymentCreator.add_member(:code_deploy_auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeDeployAutoUpdate", traits: {"smithy.api#enumValue" => "CodeDeployAutoUpdate"}))
    DeploymentCreator.add_member(:cloud_formation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFormation", traits: {"smithy.api#enumValue" => "CloudFormation"}))
    DeploymentCreator.add_member(:cloud_formation_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFormationRollback", traits: {"smithy.api#enumValue" => "CloudFormationRollback"}))
    DeploymentCreator.add_member(:autoscaling_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutoscalingTermination", traits: {"smithy.api#enumValue" => "autoscalingTermination"}))
    DeploymentDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentDoesNotExistException.type = Types::DeploymentDoesNotExistException
    DeploymentGroupAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentGroupAlreadyExistsException.type = Types::DeploymentGroupAlreadyExistsException
    DeploymentGroupDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentGroupDoesNotExistException.type = Types::DeploymentGroupDoesNotExistException
    DeploymentGroupInfo.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    DeploymentGroupInfo.add_member(:deployment_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupId, name: "deploymentGroupId"))
    DeploymentGroupInfo.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName"))
    DeploymentGroupInfo.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName"))
    DeploymentGroupInfo.add_member(:ec2_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilterList, name: "ec2TagFilters"))
    DeploymentGroupInfo.add_member(:on_premises_instance_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterList, name: "onPremisesInstanceTagFilters"))
    DeploymentGroupInfo.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupList, name: "autoScalingGroups"))
    DeploymentGroupInfo.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "serviceRoleArn"))
    DeploymentGroupInfo.add_member(:target_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "targetRevision"))
    DeploymentGroupInfo.add_member(:trigger_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfigList, name: "triggerConfigurations"))
    DeploymentGroupInfo.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "alarmConfiguration"))
    DeploymentGroupInfo.add_member(:auto_rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackConfiguration, name: "autoRollbackConfiguration"))
    DeploymentGroupInfo.add_member(:deployment_style, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStyle, name: "deploymentStyle"))
    DeploymentGroupInfo.add_member(:outdated_instances_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OutdatedInstancesStrategy, name: "outdatedInstancesStrategy"))
    DeploymentGroupInfo.add_member(:blue_green_deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentConfiguration, name: "blueGreenDeploymentConfiguration"))
    DeploymentGroupInfo.add_member(:load_balancer_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerInfo, name: "loadBalancerInfo"))
    DeploymentGroupInfo.add_member(:last_successful_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: LastDeploymentInfo, name: "lastSuccessfulDeployment"))
    DeploymentGroupInfo.add_member(:last_attempted_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: LastDeploymentInfo, name: "lastAttemptedDeployment"))
    DeploymentGroupInfo.add_member(:ec2_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagSet, name: "ec2TagSet"))
    DeploymentGroupInfo.add_member(:on_premises_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremisesTagSet, name: "onPremisesTagSet"))
    DeploymentGroupInfo.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    DeploymentGroupInfo.add_member(:ecs_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceList, name: "ecsServices"))
    DeploymentGroupInfo.add_member(:termination_hook_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "terminationHookEnabled", traits: {"smithy.api#default" => false}))
    DeploymentGroupInfo.type = Types::DeploymentGroupInfo
    DeploymentGroupInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupInfo, name: "member")
    DeploymentGroupLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentGroupLimitExceededException.type = Types::DeploymentGroupLimitExceededException
    DeploymentGroupNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentGroupNameRequiredException.type = Types::DeploymentGroupNameRequiredException
    DeploymentGroupsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "member")
    DeploymentIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentIdRequiredException.type = Types::DeploymentIdRequiredException
    DeploymentInfo.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    DeploymentInfo.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName"))
    DeploymentInfo.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName"))
    DeploymentInfo.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    DeploymentInfo.add_member(:previous_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "previousRevision"))
    DeploymentInfo.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "revision"))
    DeploymentInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, name: "status"))
    DeploymentInfo.add_member(:error_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInformation, name: "errorInformation"))
    DeploymentInfo.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createTime"))
    DeploymentInfo.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    DeploymentInfo.add_member(:complete_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "completeTime"))
    DeploymentInfo.add_member(:deployment_overview, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentOverview, name: "deploymentOverview"))
    DeploymentInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    DeploymentInfo.add_member(:creator, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCreator, name: "creator"))
    DeploymentInfo.add_member(:ignore_application_stop_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ignoreApplicationStopFailures", traits: {"smithy.api#default" => false}))
    DeploymentInfo.add_member(:auto_rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackConfiguration, name: "autoRollbackConfiguration"))
    DeploymentInfo.add_member(:update_outdated_instances_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "updateOutdatedInstancesOnly", traits: {"smithy.api#default" => false}))
    DeploymentInfo.add_member(:rollback_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RollbackInfo, name: "rollbackInfo"))
    DeploymentInfo.add_member(:deployment_style, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStyle, name: "deploymentStyle"))
    DeploymentInfo.add_member(:target_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetInstances, name: "targetInstances"))
    DeploymentInfo.add_member(:instance_termination_wait_time_started, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "instanceTerminationWaitTimeStarted", traits: {"smithy.api#default" => false}))
    DeploymentInfo.add_member(:blue_green_deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentConfiguration, name: "blueGreenDeploymentConfiguration"))
    DeploymentInfo.add_member(:load_balancer_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerInfo, name: "loadBalancerInfo"))
    DeploymentInfo.add_member(:additional_deployment_status_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalDeploymentStatusInfo, name: "additionalDeploymentStatusInfo"))
    DeploymentInfo.add_member(:file_exists_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FileExistsBehavior, name: "fileExistsBehavior"))
    DeploymentInfo.add_member(:deployment_status_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatusMessageList, name: "deploymentStatusMessages"))
    DeploymentInfo.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    DeploymentInfo.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    DeploymentInfo.add_member(:related_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedDeployments, name: "relatedDeployments"))
    DeploymentInfo.add_member(:override_alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "overrideAlarmConfiguration"))
    DeploymentInfo.type = Types::DeploymentInfo
    DeploymentIsNotInReadyStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentIsNotInReadyStateException.type = Types::DeploymentIsNotInReadyStateException
    DeploymentLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentLimitExceededException.type = Types::DeploymentLimitExceededException
    DeploymentNotStartedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentNotStartedException.type = Types::DeploymentNotStartedException
    DeploymentOption.add_member(:with_traffic_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITH_TRAFFIC_CONTROL", traits: {"smithy.api#enumValue" => "WITH_TRAFFIC_CONTROL"}))
    DeploymentOption.add_member(:without_traffic_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WITHOUT_TRAFFIC_CONTROL", traits: {"smithy.api#enumValue" => "WITHOUT_TRAFFIC_CONTROL"}))
    DeploymentOverview.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "Pending", traits: {"smithy.api#default" => 0}))
    DeploymentOverview.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "InProgress", traits: {"smithy.api#default" => 0}))
    DeploymentOverview.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "Succeeded", traits: {"smithy.api#default" => 0}))
    DeploymentOverview.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "Failed", traits: {"smithy.api#default" => 0}))
    DeploymentOverview.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "Skipped", traits: {"smithy.api#default" => 0}))
    DeploymentOverview.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, name: "Ready", traits: {"smithy.api#default" => 0}))
    DeploymentOverview.type = Types::DeploymentOverview
    DeploymentReadyAction.add_member(:continue_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE_DEPLOYMENT", traits: {"smithy.api#enumValue" => "CONTINUE_DEPLOYMENT"}))
    DeploymentReadyAction.add_member(:stop_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_DEPLOYMENT", traits: {"smithy.api#enumValue" => "STOP_DEPLOYMENT"}))
    DeploymentReadyOption.add_member(:action_on_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentReadyAction, name: "actionOnTimeout"))
    DeploymentReadyOption.add_member(:wait_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "waitTimeInMinutes", traits: {"smithy.api#default" => 0}))
    DeploymentReadyOption.type = Types::DeploymentReadyOption
    DeploymentStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "Created"}))
    DeploymentStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "Queued"}))
    DeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    DeploymentStatus.add_member(:baking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAKING", traits: {"smithy.api#enumValue" => "Baking"}))
    DeploymentStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    DeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    DeploymentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    DeploymentStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "Ready"}))
    DeploymentStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, name: "member")
    DeploymentStatusMessageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "member")
    DeploymentStyle.add_member(:deployment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "deploymentType"))
    DeploymentStyle.add_member(:deployment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentOption, name: "deploymentOption"))
    DeploymentStyle.type = Types::DeploymentStyle
    DeploymentTarget.add_member(:deployment_target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTargetType, name: "deploymentTargetType"))
    DeploymentTarget.add_member(:instance_target, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTarget, name: "instanceTarget"))
    DeploymentTarget.add_member(:lambda_target, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaTarget, name: "lambdaTarget"))
    DeploymentTarget.add_member(:ecs_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTarget, name: "ecsTarget"))
    DeploymentTarget.add_member(:cloud_formation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudFormationTarget, name: "cloudFormationTarget"))
    DeploymentTarget.type = Types::DeploymentTarget
    DeploymentTargetDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentTargetDoesNotExistException.type = Types::DeploymentTargetDoesNotExistException
    DeploymentTargetIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentTargetIdRequiredException.type = Types::DeploymentTargetIdRequiredException
    DeploymentTargetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTarget, name: "member")
    DeploymentTargetListSizeExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DeploymentTargetListSizeExceededException.type = Types::DeploymentTargetListSizeExceededException
    DeploymentTargetType.add_member(:instance_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_TARGET", traits: {"smithy.api#enumValue" => "InstanceTarget"}))
    DeploymentTargetType.add_member(:lambda_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_TARGET", traits: {"smithy.api#enumValue" => "LambdaTarget"}))
    DeploymentTargetType.add_member(:ecs_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_TARGET", traits: {"smithy.api#enumValue" => "ECSTarget"}))
    DeploymentTargetType.add_member(:cloudformation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFORMATION_TARGET", traits: {"smithy.api#enumValue" => "CloudFormationTarget"}))
    DeploymentType.add_member(:in_place, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PLACE", traits: {"smithy.api#enumValue" => "IN_PLACE"}))
    DeploymentType.add_member(:blue_green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLUE_GREEN", traits: {"smithy.api#enumValue" => "BLUE_GREEN"}))
    DeploymentWaitType.add_member(:ready_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY_WAIT", traits: {"smithy.api#enumValue" => "READY_WAIT"}))
    DeploymentWaitType.add_member(:termination_wait, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATION_WAIT", traits: {"smithy.api#enumValue" => "TERMINATION_WAIT"}))
    DeploymentsInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentInfo, name: "member")
    DeploymentsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "member")
    DeregisterOnPremisesInstanceInput.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    DeregisterOnPremisesInstanceInput.type = Types::DeregisterOnPremisesInstanceInput
    DescriptionTooLongException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DescriptionTooLongException.type = Types::DescriptionTooLongException
    Diagnostics.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleErrorCode, name: "errorCode"))
    Diagnostics.add_member(:script_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptName, name: "scriptName"))
    Diagnostics.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleMessage, name: "message"))
    Diagnostics.add_member(:log_tail, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTail, name: "logTail"))
    Diagnostics.type = Types::Diagnostics
    EC2TagFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key"))
    EC2TagFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value"))
    EC2TagFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilterType, name: "Type"))
    EC2TagFilter.type = Types::EC2TagFilter
    EC2TagFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilter, name: "member")
    EC2TagFilterType.add_member(:key_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_ONLY", traits: {"smithy.api#enumValue" => "KEY_ONLY"}))
    EC2TagFilterType.add_member(:value_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE_ONLY", traits: {"smithy.api#enumValue" => "VALUE_ONLY"}))
    EC2TagFilterType.add_member(:key_and_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_AND_VALUE", traits: {"smithy.api#enumValue" => "KEY_AND_VALUE"}))
    EC2TagSet.add_member(:ec2_tag_set_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagSetList, name: "ec2TagSetList"))
    EC2TagSet.type = Types::EC2TagSet
    EC2TagSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilterList, name: "member")
    ECSService.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceName, name: "serviceName"))
    ECSService.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSClusterName, name: "clusterName"))
    ECSService.type = Types::ECSService
    ECSServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSService, name: "member")
    ECSServiceMappingLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ECSServiceMappingLimitExceededException.type = Types::ECSServiceMappingLimitExceededException
    ECSTarget.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    ECSTarget.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    ECSTarget.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "targetArn"))
    ECSTarget.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "lastUpdatedAt"))
    ECSTarget.add_member(:lifecycle_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventList, name: "lifecycleEvents"))
    ECSTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatus, name: "status"))
    ECSTarget.add_member(:task_sets_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSetList, name: "taskSetsInfo"))
    ECSTarget.type = Types::ECSTarget
    ECSTaskSet.add_member(:identifer, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSetIdentifier, name: "identifer"))
    ECSTaskSet.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSetCount, name: "desiredCount", traits: {"smithy.api#default" => 0}))
    ECSTaskSet.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSetCount, name: "pendingCount", traits: {"smithy.api#default" => 0}))
    ECSTaskSet.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSetCount, name: "runningCount", traits: {"smithy.api#default" => 0}))
    ECSTaskSet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSetStatus, name: "status"))
    ECSTaskSet.add_member(:traffic_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficWeight, name: "trafficWeight", traits: {"smithy.api#default" => 0}))
    ECSTaskSet.add_member(:target_group, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupInfo, name: "targetGroup"))
    ECSTaskSet.add_member(:task_set_label, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLabel, name: "taskSetLabel"))
    ECSTaskSet.type = Types::ECSTaskSet
    ECSTaskSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSTaskSet, name: "member")
    ELBInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ELBName, name: "name"))
    ELBInfo.type = Types::ELBInfo
    ELBInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ELBInfo, name: "member")
    ErrorCode.add_member(:agent_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_ISSUE", traits: {"smithy.api#enumValue" => "AGENT_ISSUE"}))
    ErrorCode.add_member(:alarm_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM_ACTIVE", traits: {"smithy.api#enumValue" => "ALARM_ACTIVE"}))
    ErrorCode.add_member(:application_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_MISSING", traits: {"smithy.api#enumValue" => "APPLICATION_MISSING"}))
    ErrorCode.add_member(:autoscaling_validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOSCALING_VALIDATION_ERROR", traits: {"smithy.api#enumValue" => "AUTOSCALING_VALIDATION_ERROR"}))
    ErrorCode.add_member(:auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_CONFIGURATION", traits: {"smithy.api#enumValue" => "AUTO_SCALING_CONFIGURATION"}))
    ErrorCode.add_member(:auto_scaling_iam_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_IAM_ROLE_PERMISSIONS", traits: {"smithy.api#enumValue" => "AUTO_SCALING_IAM_ROLE_PERMISSIONS"}))
    ErrorCode.add_member(:codedeploy_resource_cannot_be_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND", traits: {"smithy.api#enumValue" => "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND"}))
    ErrorCode.add_member(:customer_application_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_APPLICATION_UNHEALTHY", traits: {"smithy.api#enumValue" => "CUSTOMER_APPLICATION_UNHEALTHY"}))
    ErrorCode.add_member(:deployment_group_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_GROUP_MISSING", traits: {"smithy.api#enumValue" => "DEPLOYMENT_GROUP_MISSING"}))
    ErrorCode.add_member(:ecs_update_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_UPDATE_ERROR", traits: {"smithy.api#enumValue" => "ECS_UPDATE_ERROR"}))
    ErrorCode.add_member(:elastic_load_balancing_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC_LOAD_BALANCING_INVALID", traits: {"smithy.api#enumValue" => "ELASTIC_LOAD_BALANCING_INVALID"}))
    ErrorCode.add_member(:elb_invalid_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELB_INVALID_INSTANCE", traits: {"smithy.api#enumValue" => "ELB_INVALID_INSTANCE"}))
    ErrorCode.add_member(:health_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTH_CONSTRAINTS", traits: {"smithy.api#enumValue" => "HEALTH_CONSTRAINTS"}))
    ErrorCode.add_member(:health_constraints_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTH_CONSTRAINTS_INVALID", traits: {"smithy.api#enumValue" => "HEALTH_CONSTRAINTS_INVALID"}))
    ErrorCode.add_member(:hook_execution_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK_EXECUTION_FAILURE", traits: {"smithy.api#enumValue" => "HOOK_EXECUTION_FAILURE"}))
    ErrorCode.add_member(:iam_role_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE_MISSING", traits: {"smithy.api#enumValue" => "IAM_ROLE_MISSING"}))
    ErrorCode.add_member(:iam_role_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE_PERMISSIONS", traits: {"smithy.api#enumValue" => "IAM_ROLE_PERMISSIONS"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ErrorCode.add_member(:invalid_ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ECS_SERVICE", traits: {"smithy.api#enumValue" => "INVALID_ECS_SERVICE"}))
    ErrorCode.add_member(:invalid_lambda_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LAMBDA_CONFIGURATION", traits: {"smithy.api#enumValue" => "INVALID_LAMBDA_CONFIGURATION"}))
    ErrorCode.add_member(:invalid_lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_LAMBDA_FUNCTION", traits: {"smithy.api#enumValue" => "INVALID_LAMBDA_FUNCTION"}))
    ErrorCode.add_member(:invalid_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REVISION", traits: {"smithy.api#enumValue" => "INVALID_REVISION"}))
    ErrorCode.add_member(:manual_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL_STOP", traits: {"smithy.api#enumValue" => "MANUAL_STOP"}))
    ErrorCode.add_member(:missing_blue_green_deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION", traits: {"smithy.api#enumValue" => "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION"}))
    ErrorCode.add_member(:missing_elb_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_ELB_INFORMATION", traits: {"smithy.api#enumValue" => "MISSING_ELB_INFORMATION"}))
    ErrorCode.add_member(:missing_github_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_GITHUB_TOKEN", traits: {"smithy.api#enumValue" => "MISSING_GITHUB_TOKEN"}))
    ErrorCode.add_member(:no_ec2_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_EC2_SUBSCRIPTION", traits: {"smithy.api#enumValue" => "NO_EC2_SUBSCRIPTION"}))
    ErrorCode.add_member(:no_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_INSTANCES", traits: {"smithy.api#enumValue" => "NO_INSTANCES"}))
    ErrorCode.add_member(:over_max_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVER_MAX_INSTANCES", traits: {"smithy.api#enumValue" => "OVER_MAX_INSTANCES"}))
    ErrorCode.add_member(:resource_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "RESOURCE_LIMIT_EXCEEDED"}))
    ErrorCode.add_member(:revision_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVISION_MISSING", traits: {"smithy.api#enumValue" => "REVISION_MISSING"}))
    ErrorCode.add_member(:throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THROTTLED", traits: {"smithy.api#enumValue" => "THROTTLED"}))
    ErrorCode.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT", traits: {"smithy.api#enumValue" => "TIMEOUT"}))
    ErrorCode.add_member(:cloudformation_stack_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFORMATION_STACK_FAILURE", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_FAILURE"}))
    ErrorInformation.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ErrorInformation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ErrorInformation.type = Types::ErrorInformation
    FileExistsBehavior.add_member(:disallow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISALLOW", traits: {"smithy.api#enumValue" => "DISALLOW"}))
    FileExistsBehavior.add_member(:overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERWRITE", traits: {"smithy.api#enumValue" => "OVERWRITE"}))
    FileExistsBehavior.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIN", traits: {"smithy.api#enumValue" => "RETAIN"}))
    FilterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member")
    GenericRevisionInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GenericRevisionInfo.add_member(:deployment_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupsList, name: "deploymentGroups"))
    GenericRevisionInfo.add_member(:first_used_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "firstUsedTime"))
    GenericRevisionInfo.add_member(:last_used_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUsedTime"))
    GenericRevisionInfo.add_member(:register_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "registerTime"))
    GenericRevisionInfo.type = Types::GenericRevisionInfo
    GetApplicationInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationInfo, name: "application"))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetApplicationRevisionInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    GetApplicationRevisionInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "revision", traits: {"smithy.api#required" => {}}))
    GetApplicationRevisionInput.type = Types::GetApplicationRevisionInput
    GetApplicationRevisionOutput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    GetApplicationRevisionOutput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "revision"))
    GetApplicationRevisionOutput.add_member(:revision_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericRevisionInfo, name: "revisionInfo"))
    GetApplicationRevisionOutput.type = Types::GetApplicationRevisionOutput
    GetDeploymentConfigInput.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName", traits: {"smithy.api#required" => {}}))
    GetDeploymentConfigInput.type = Types::GetDeploymentConfigInput
    GetDeploymentConfigOutput.add_member(:deployment_config_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigInfo, name: "deploymentConfigInfo"))
    GetDeploymentConfigOutput.type = Types::GetDeploymentConfigOutput
    GetDeploymentGroupInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    GetDeploymentGroupInput.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName", traits: {"smithy.api#required" => {}}))
    GetDeploymentGroupInput.type = Types::GetDeploymentGroupInput
    GetDeploymentGroupOutput.add_member(:deployment_group_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupInfo, name: "deploymentGroupInfo"))
    GetDeploymentGroupOutput.type = Types::GetDeploymentGroupOutput
    GetDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    GetDeploymentInput.type = Types::GetDeploymentInput
    GetDeploymentInstanceInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    GetDeploymentInstanceInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "instanceId", traits: {"smithy.api#required" => {}}))
    GetDeploymentInstanceInput.type = Types::GetDeploymentInstanceInput
    GetDeploymentInstanceOutput.add_member(:instance_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummary, name: "instanceSummary"))
    GetDeploymentInstanceOutput.type = Types::GetDeploymentInstanceOutput
    GetDeploymentOutput.add_member(:deployment_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentInfo, name: "deploymentInfo"))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetDeploymentTargetInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    GetDeploymentTargetInput.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId", traits: {"smithy.api#required" => {}}))
    GetDeploymentTargetInput.type = Types::GetDeploymentTargetInput
    GetDeploymentTargetOutput.add_member(:deployment_target, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentTarget, name: "deploymentTarget"))
    GetDeploymentTargetOutput.type = Types::GetDeploymentTargetOutput
    GetOnPremisesInstanceInput.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    GetOnPremisesInstanceInput.type = Types::GetOnPremisesInstanceInput
    GetOnPremisesInstanceOutput.add_member(:instance_info, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInfo, name: "instanceInfo"))
    GetOnPremisesInstanceOutput.type = Types::GetOnPremisesInstanceOutput
    GitHubAccountTokenDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    GitHubAccountTokenDoesNotExistException.type = Types::GitHubAccountTokenDoesNotExistException
    GitHubAccountTokenNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubAccountTokenName, name: "member")
    GitHubAccountTokenNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    GitHubAccountTokenNameRequiredException.type = Types::GitHubAccountTokenNameRequiredException
    GitHubLocation.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, name: "repository"))
    GitHubLocation.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "commitId"))
    GitHubLocation.type = Types::GitHubLocation
    GreenFleetProvisioningAction.add_member(:discover_existing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCOVER_EXISTING", traits: {"smithy.api#enumValue" => "DISCOVER_EXISTING"}))
    GreenFleetProvisioningAction.add_member(:copy_auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY_AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "COPY_AUTO_SCALING_GROUP"}))
    GreenFleetProvisioningOption.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GreenFleetProvisioningAction, name: "action"))
    GreenFleetProvisioningOption.type = Types::GreenFleetProvisioningOption
    IamArnRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    IamArnRequiredException.type = Types::IamArnRequiredException
    IamSessionArnAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    IamSessionArnAlreadyRegisteredException.type = Types::IamSessionArnAlreadyRegisteredException
    IamUserArnAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    IamUserArnAlreadyRegisteredException.type = Types::IamUserArnAlreadyRegisteredException
    IamUserArnRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    IamUserArnRequiredException.type = Types::IamUserArnRequiredException
    InstanceAction.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE", traits: {"smithy.api#enumValue" => "TERMINATE"}))
    InstanceAction.add_member(:keep_alive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEEP_ALIVE", traits: {"smithy.api#enumValue" => "KEEP_ALIVE"}))
    InstanceDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InstanceDoesNotExistException.type = Types::InstanceDoesNotExistException
    InstanceIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InstanceIdRequiredException.type = Types::InstanceIdRequiredException
    InstanceInfo.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName"))
    InstanceInfo.add_member(:iam_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamSessionArn, name: "iamSessionArn"))
    InstanceInfo.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamUserArn, name: "iamUserArn"))
    InstanceInfo.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "instanceArn"))
    InstanceInfo.add_member(:register_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "registerTime"))
    InstanceInfo.add_member(:deregister_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deregisterTime"))
    InstanceInfo.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    InstanceInfo.type = Types::InstanceInfo
    InstanceInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceInfo, name: "member")
    InstanceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InstanceLimitExceededException.type = Types::InstanceLimitExceededException
    InstanceNameAlreadyRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InstanceNameAlreadyRegisteredException.type = Types::InstanceNameAlreadyRegisteredException
    InstanceNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "member")
    InstanceNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InstanceNameRequiredException.type = Types::InstanceNameRequiredException
    InstanceNotRegisteredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InstanceNotRegisteredException.type = Types::InstanceNotRegisteredException
    InstanceStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    InstanceStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    InstanceStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    InstanceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    InstanceStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "Skipped"}))
    InstanceStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "Unknown"}))
    InstanceStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "Ready"}))
    InstanceStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, name: "member")
    InstanceSummary.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    InstanceSummary.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "instanceId"))
    InstanceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, name: "status"))
    InstanceSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    InstanceSummary.add_member(:lifecycle_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventList, name: "lifecycleEvents"))
    InstanceSummary.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummary, name: "member")
    InstanceTarget.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    InstanceTarget.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    InstanceTarget.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "targetArn"))
    InstanceTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatus, name: "status"))
    InstanceTarget.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "lastUpdatedAt"))
    InstanceTarget.add_member(:lifecycle_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventList, name: "lifecycleEvents"))
    InstanceTarget.add_member(:instance_label, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetLabel, name: "instanceLabel"))
    InstanceTarget.type = Types::InstanceTarget
    InstanceType.add_member(:blue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLUE", traits: {"smithy.api#enumValue" => "Blue"}))
    InstanceType.add_member(:green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREEN", traits: {"smithy.api#enumValue" => "Green"}))
    InstanceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "member")
    InstancesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "member")
    InvalidAlarmConfigException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidAlarmConfigException.type = Types::InvalidAlarmConfigException
    InvalidApplicationNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApplicationNameException.type = Types::InvalidApplicationNameException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidArnException.type = Types::InvalidArnException
    InvalidAutoRollbackConfigException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidAutoRollbackConfigException.type = Types::InvalidAutoRollbackConfigException
    InvalidAutoScalingGroupException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidAutoScalingGroupException.type = Types::InvalidAutoScalingGroupException
    InvalidBlueGreenDeploymentConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidBlueGreenDeploymentConfigurationException.type = Types::InvalidBlueGreenDeploymentConfigurationException
    InvalidBucketNameFilterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidBucketNameFilterException.type = Types::InvalidBucketNameFilterException
    InvalidComputePlatformException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidComputePlatformException.type = Types::InvalidComputePlatformException
    InvalidDeployedStateFilterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeployedStateFilterException.type = Types::InvalidDeployedStateFilterException
    InvalidDeploymentConfigNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentConfigNameException.type = Types::InvalidDeploymentConfigNameException
    InvalidDeploymentGroupNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentGroupNameException.type = Types::InvalidDeploymentGroupNameException
    InvalidDeploymentIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentIdException.type = Types::InvalidDeploymentIdException
    InvalidDeploymentInstanceTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentInstanceTypeException.type = Types::InvalidDeploymentInstanceTypeException
    InvalidDeploymentStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentStatusException.type = Types::InvalidDeploymentStatusException
    InvalidDeploymentStyleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentStyleException.type = Types::InvalidDeploymentStyleException
    InvalidDeploymentTargetIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentTargetIdException.type = Types::InvalidDeploymentTargetIdException
    InvalidDeploymentWaitTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeploymentWaitTypeException.type = Types::InvalidDeploymentWaitTypeException
    InvalidEC2TagCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidEC2TagCombinationException.type = Types::InvalidEC2TagCombinationException
    InvalidEC2TagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidEC2TagException.type = Types::InvalidEC2TagException
    InvalidECSServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidECSServiceException.type = Types::InvalidECSServiceException
    InvalidExternalIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidExternalIdException.type = Types::InvalidExternalIdException
    InvalidFileExistsBehaviorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidFileExistsBehaviorException.type = Types::InvalidFileExistsBehaviorException
    InvalidGitHubAccountTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidGitHubAccountTokenException.type = Types::InvalidGitHubAccountTokenException
    InvalidGitHubAccountTokenNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidGitHubAccountTokenNameException.type = Types::InvalidGitHubAccountTokenNameException
    InvalidIamSessionArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidIamSessionArnException.type = Types::InvalidIamSessionArnException
    InvalidIamUserArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidIamUserArnException.type = Types::InvalidIamUserArnException
    InvalidIgnoreApplicationStopFailuresValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidIgnoreApplicationStopFailuresValueException.type = Types::InvalidIgnoreApplicationStopFailuresValueException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidInstanceNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidInstanceNameException.type = Types::InvalidInstanceNameException
    InvalidInstanceStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidInstanceStatusException.type = Types::InvalidInstanceStatusException
    InvalidInstanceTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidInstanceTypeException.type = Types::InvalidInstanceTypeException
    InvalidKeyPrefixFilterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidKeyPrefixFilterException.type = Types::InvalidKeyPrefixFilterException
    InvalidLifecycleEventHookExecutionIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidLifecycleEventHookExecutionIdException.type = Types::InvalidLifecycleEventHookExecutionIdException
    InvalidLifecycleEventHookExecutionStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidLifecycleEventHookExecutionStatusException.type = Types::InvalidLifecycleEventHookExecutionStatusException
    InvalidLoadBalancerInfoException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidLoadBalancerInfoException.type = Types::InvalidLoadBalancerInfoException
    InvalidMinimumHealthyHostValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidMinimumHealthyHostValueException.type = Types::InvalidMinimumHealthyHostValueException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidOnPremisesTagCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidOnPremisesTagCombinationException.type = Types::InvalidOnPremisesTagCombinationException
    InvalidOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidOperationException.type = Types::InvalidOperationException
    InvalidRegistrationStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRegistrationStatusException.type = Types::InvalidRegistrationStatusException
    InvalidRevisionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRevisionException.type = Types::InvalidRevisionException
    InvalidRoleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRoleException.type = Types::InvalidRoleException
    InvalidSortByException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidSortByException.type = Types::InvalidSortByException
    InvalidSortOrderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidSortOrderException.type = Types::InvalidSortOrderException
    InvalidTagException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTagException.type = Types::InvalidTagException
    InvalidTagFilterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTagFilterException.type = Types::InvalidTagFilterException
    InvalidTagsToAddException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTagsToAddException.type = Types::InvalidTagsToAddException
    InvalidTargetFilterNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTargetFilterNameException.type = Types::InvalidTargetFilterNameException
    InvalidTargetGroupPairException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTargetGroupPairException.type = Types::InvalidTargetGroupPairException
    InvalidTargetInstancesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTargetInstancesException.type = Types::InvalidTargetInstancesException
    InvalidTimeRangeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTimeRangeException.type = Types::InvalidTimeRangeException
    InvalidTrafficRoutingConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTrafficRoutingConfigurationException.type = Types::InvalidTrafficRoutingConfigurationException
    InvalidTriggerConfigException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTriggerConfigException.type = Types::InvalidTriggerConfigException
    InvalidUpdateOutdatedInstancesOnlyValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidUpdateOutdatedInstancesOnlyValueException.type = Types::InvalidUpdateOutdatedInstancesOnlyValueException
    InvalidZonalDeploymentConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidZonalDeploymentConfigurationException.type = Types::InvalidZonalDeploymentConfigurationException
    LambdaFunctionInfo.add_member(:function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionName, name: "functionName"))
    LambdaFunctionInfo.add_member(:function_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionAlias, name: "functionAlias"))
    LambdaFunctionInfo.add_member(:current_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "currentVersion"))
    LambdaFunctionInfo.add_member(:target_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "targetVersion"))
    LambdaFunctionInfo.add_member(:target_version_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficWeight, name: "targetVersionWeight", traits: {"smithy.api#default" => 0}))
    LambdaFunctionInfo.type = Types::LambdaFunctionInfo
    LambdaTarget.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    LambdaTarget.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "targetId"))
    LambdaTarget.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "targetArn"))
    LambdaTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetStatus, name: "status"))
    LambdaTarget.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "lastUpdatedAt"))
    LambdaTarget.add_member(:lifecycle_events, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventList, name: "lifecycleEvents"))
    LambdaTarget.add_member(:lambda_function_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionInfo, name: "lambdaFunctionInfo"))
    LambdaTarget.type = Types::LambdaTarget
    LastDeploymentInfo.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    LastDeploymentInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, name: "status"))
    LastDeploymentInfo.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    LastDeploymentInfo.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createTime"))
    LastDeploymentInfo.type = Types::LastDeploymentInfo
    LifecycleErrorCode.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    LifecycleErrorCode.add_member(:script_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRIPT_MISSING", traits: {"smithy.api#enumValue" => "ScriptMissing"}))
    LifecycleErrorCode.add_member(:script_not_executable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRIPT_NOT_EXECUTABLE", traits: {"smithy.api#enumValue" => "ScriptNotExecutable"}))
    LifecycleErrorCode.add_member(:script_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRIPT_TIMED_OUT", traits: {"smithy.api#enumValue" => "ScriptTimedOut"}))
    LifecycleErrorCode.add_member(:script_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCRIPT_FAILED", traits: {"smithy.api#enumValue" => "ScriptFailed"}))
    LifecycleErrorCode.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UnknownError"}))
    LifecycleEvent.add_member(:lifecycle_event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventName, name: "lifecycleEventName"))
    LifecycleEvent.add_member(:diagnostics, ::Smithy::Schema::Shapes::MemberShape.new(target: Diagnostics, name: "diagnostics"))
    LifecycleEvent.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    LifecycleEvent.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    LifecycleEvent.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventStatus, name: "status"))
    LifecycleEvent.type = Types::LifecycleEvent
    LifecycleEventAlreadyCompletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    LifecycleEventAlreadyCompletedException.type = Types::LifecycleEventAlreadyCompletedException
    LifecycleEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEvent, name: "member")
    LifecycleEventStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    LifecycleEventStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    LifecycleEventStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    LifecycleEventStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    LifecycleEventStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "Skipped"}))
    LifecycleEventStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "Unknown"}))
    LifecycleHookLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    LifecycleHookLimitExceededException.type = Types::LifecycleHookLimitExceededException
    ListApplicationRevisionsInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    ListApplicationRevisionsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationRevisionSortBy, name: "sortBy"))
    ListApplicationRevisionsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder"))
    ListApplicationRevisionsInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "s3Bucket"))
    ListApplicationRevisionsInput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "s3KeyPrefix"))
    ListApplicationRevisionsInput.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStateFilterAction, name: "deployed"))
    ListApplicationRevisionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationRevisionsInput.type = Types::ListApplicationRevisionsInput
    ListApplicationRevisionsOutput.add_member(:revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocationList, name: "revisions"))
    ListApplicationRevisionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationRevisionsOutput.type = Types::ListApplicationRevisionsOutput
    ListApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationsList, name: "applications"))
    ListApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListDeploymentConfigsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentConfigsInput.type = Types::ListDeploymentConfigsInput
    ListDeploymentConfigsOutput.add_member(:deployment_configs_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigsList, name: "deploymentConfigsList"))
    ListDeploymentConfigsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentConfigsOutput.type = Types::ListDeploymentConfigsOutput
    ListDeploymentGroupsInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    ListDeploymentGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentGroupsInput.type = Types::ListDeploymentGroupsInput
    ListDeploymentGroupsOutput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    ListDeploymentGroupsOutput.add_member(:deployment_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupsList, name: "deploymentGroups"))
    ListDeploymentGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentGroupsOutput.type = Types::ListDeploymentGroupsOutput
    ListDeploymentInstancesInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    ListDeploymentInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentInstancesInput.add_member(:instance_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatusList, name: "instanceStatusFilter"))
    ListDeploymentInstancesInput.add_member(:instance_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, name: "instanceTypeFilter"))
    ListDeploymentInstancesInput.type = Types::ListDeploymentInstancesInput
    ListDeploymentInstancesOutput.add_member(:instances_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancesList, name: "instancesList"))
    ListDeploymentInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentInstancesOutput.type = Types::ListDeploymentInstancesOutput
    ListDeploymentTargetsInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    ListDeploymentTargetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentTargetsInput.add_member(:target_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilters, name: "targetFilters"))
    ListDeploymentTargetsInput.type = Types::ListDeploymentTargetsInput
    ListDeploymentTargetsOutput.add_member(:target_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdList, name: "targetIds"))
    ListDeploymentTargetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentTargetsOutput.type = Types::ListDeploymentTargetsOutput
    ListDeploymentsInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    ListDeploymentsInput.add_member(:deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "deploymentGroupName"))
    ListDeploymentsInput.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "externalId"))
    ListDeploymentsInput.add_member(:include_only_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatusList, name: "includeOnlyStatuses"))
    ListDeploymentsInput.add_member(:create_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "createTimeRange"))
    ListDeploymentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentsInput.type = Types::ListDeploymentsInput
    ListDeploymentsOutput.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentsList, name: "deployments"))
    ListDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListGitHubAccountTokenNamesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListGitHubAccountTokenNamesInput.type = Types::ListGitHubAccountTokenNamesInput
    ListGitHubAccountTokenNamesOutput.add_member(:token_name_list, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubAccountTokenNameList, name: "tokenNameList"))
    ListGitHubAccountTokenNamesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListGitHubAccountTokenNamesOutput.type = Types::ListGitHubAccountTokenNamesOutput
    ListOnPremisesInstancesInput.add_member(:registration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationStatus, name: "registrationStatus"))
    ListOnPremisesInstancesInput.add_member(:tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterList, name: "tagFilters"))
    ListOnPremisesInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListOnPremisesInstancesInput.type = Types::ListOnPremisesInstancesInput
    ListOnPremisesInstancesOutput.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNameList, name: "instanceNames"))
    ListOnPremisesInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListOnPremisesInstancesOutput.type = Types::ListOnPremisesInstancesOutput
    ListStateFilterAction.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Include", traits: {"smithy.api#enumValue" => "include"}))
    ListStateFilterAction.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Exclude", traits: {"smithy.api#enumValue" => "exclude"}))
    ListStateFilterAction.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "ignore"}))
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListenerArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArn, name: "member")
    LoadBalancerInfo.add_member(:elb_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ELBInfoList, name: "elbInfoList"))
    LoadBalancerInfo.add_member(:target_group_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupInfoList, name: "targetGroupInfoList"))
    LoadBalancerInfo.add_member(:target_group_pair_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupPairInfoList, name: "targetGroupPairInfoList"))
    LoadBalancerInfo.type = Types::LoadBalancerInfo
    MinimumHealthyHosts.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHostsType, name: "type"))
    MinimumHealthyHosts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHostsValue, name: "value", traits: {"smithy.api#default" => 0}))
    MinimumHealthyHosts.type = Types::MinimumHealthyHosts
    MinimumHealthyHostsPerZone.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHostsPerZoneType, name: "type"))
    MinimumHealthyHostsPerZone.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHostsPerZoneValue, name: "value", traits: {"smithy.api#default" => 0}))
    MinimumHealthyHostsPerZone.type = Types::MinimumHealthyHostsPerZone
    MinimumHealthyHostsPerZoneType.add_member(:host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST_COUNT", traits: {"smithy.api#enumValue" => "HOST_COUNT"}))
    MinimumHealthyHostsPerZoneType.add_member(:fleet_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEET_PERCENT", traits: {"smithy.api#enumValue" => "FLEET_PERCENT"}))
    MinimumHealthyHostsType.add_member(:host_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST_COUNT", traits: {"smithy.api#enumValue" => "HOST_COUNT"}))
    MinimumHealthyHostsType.add_member(:fleet_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEET_PERCENT", traits: {"smithy.api#enumValue" => "FLEET_PERCENT"}))
    MultipleIamArnsProvidedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MultipleIamArnsProvidedException.type = Types::MultipleIamArnsProvidedException
    OnPremisesTagSet.add_member(:on_premises_tag_set_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremisesTagSetList, name: "onPremisesTagSetList"))
    OnPremisesTagSet.type = Types::OnPremisesTagSet
    OnPremisesTagSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterList, name: "member")
    OperationNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    OperationNotSupportedException.type = Types::OperationNotSupportedException
    OutdatedInstancesStrategy.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Update", traits: {"smithy.api#enumValue" => "UPDATE"}))
    OutdatedInstancesStrategy.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "IGNORE"}))
    PutLifecycleEventHookExecutionStatusInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    PutLifecycleEventHookExecutionStatusInput.add_member(:lifecycle_event_hook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventHookExecutionId, name: "lifecycleEventHookExecutionId"))
    PutLifecycleEventHookExecutionStatusInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventStatus, name: "status"))
    PutLifecycleEventHookExecutionStatusInput.type = Types::PutLifecycleEventHookExecutionStatusInput
    PutLifecycleEventHookExecutionStatusOutput.add_member(:lifecycle_event_hook_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleEventHookExecutionId, name: "lifecycleEventHookExecutionId"))
    PutLifecycleEventHookExecutionStatusOutput.type = Types::PutLifecycleEventHookExecutionStatusOutput
    RawString.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: RawStringContent, name: "content"))
    RawString.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: RawStringSha256, name: "sha256"))
    RawString.type = Types::RawString
    RegisterApplicationRevisionInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    RegisterApplicationRevisionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegisterApplicationRevisionInput.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "revision", traits: {"smithy.api#required" => {}}))
    RegisterApplicationRevisionInput.type = Types::RegisterApplicationRevisionInput
    RegisterOnPremisesInstanceInput.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName", traits: {"smithy.api#required" => {}}))
    RegisterOnPremisesInstanceInput.add_member(:iam_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamSessionArn, name: "iamSessionArn"))
    RegisterOnPremisesInstanceInput.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamUserArn, name: "iamUserArn"))
    RegisterOnPremisesInstanceInput.type = Types::RegisterOnPremisesInstanceInput
    RegistrationStatus.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Registered", traits: {"smithy.api#enumValue" => "Registered"}))
    RegistrationStatus.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deregistered", traits: {"smithy.api#enumValue" => "Deregistered"}))
    RelatedDeployments.add_member(:auto_update_outdated_instances_root_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "autoUpdateOutdatedInstancesRootDeploymentId"))
    RelatedDeployments.add_member(:auto_update_outdated_instances_deployment_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentsList, name: "autoUpdateOutdatedInstancesDeploymentIds"))
    RelatedDeployments.type = Types::RelatedDeployments
    RemoveTagsFromOnPremisesInstancesInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromOnPremisesInstancesInput.add_member(:instance_names, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceNameList, name: "instanceNames", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromOnPremisesInstancesInput.type = Types::RemoveTagsFromOnPremisesInstancesInput
    ResourceArnRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ResourceArnRequiredException.type = Types::ResourceArnRequiredException
    ResourceValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ResourceValidationException.type = Types::ResourceValidationException
    RevisionDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RevisionDoesNotExistException.type = Types::RevisionDoesNotExistException
    RevisionInfo.add_member(:revision_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "revisionLocation"))
    RevisionInfo.add_member(:generic_revision_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericRevisionInfo, name: "genericRevisionInfo"))
    RevisionInfo.type = Types::RevisionInfo
    RevisionInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionInfo, name: "member")
    RevisionLocation.add_member(:revision_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocationType, name: "revisionType"))
    RevisionLocation.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    RevisionLocation.add_member(:git_hub_location, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubLocation, name: "gitHubLocation"))
    RevisionLocation.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: RawString, name: "string"))
    RevisionLocation.add_member(:app_spec_content, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSpecContent, name: "appSpecContent"))
    RevisionLocation.type = Types::RevisionLocation
    RevisionLocationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionLocation, name: "member")
    RevisionLocationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    RevisionLocationType.add_member(:git_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GitHub", traits: {"smithy.api#enumValue" => "GitHub"}))
    RevisionLocationType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "String", traits: {"smithy.api#enumValue" => "String"}))
    RevisionLocationType.add_member(:app_spec_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppSpecContent", traits: {"smithy.api#enumValue" => "AppSpecContent"}))
    RevisionRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RevisionRequiredException.type = Types::RevisionRequiredException
    RoleRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RoleRequiredException.type = Types::RoleRequiredException
    RollbackInfo.add_member(:rollback_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "rollbackDeploymentId"))
    RollbackInfo.add_member(:rollback_triggering_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "rollbackTriggeringDeploymentId"))
    RollbackInfo.add_member(:rollback_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "rollbackMessage"))
    RollbackInfo.type = Types::RollbackInfo
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "bucket"))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "key"))
    S3Location.add_member(:bundle_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleType, name: "bundleType"))
    S3Location.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionId, name: "version"))
    S3Location.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "eTag"))
    S3Location.type = Types::S3Location
    SkipWaitTimeForInstanceTerminationInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId"))
    SkipWaitTimeForInstanceTerminationInput.type = Types::SkipWaitTimeForInstanceTerminationInput
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ascending", traits: {"smithy.api#enumValue" => "ascending"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Descending", traits: {"smithy.api#enumValue" => "descending"}))
    StopDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, name: "deploymentId", traits: {"smithy.api#required" => {}}))
    StopDeploymentInput.add_member(:auto_rollback_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "autoRollbackEnabled"))
    StopDeploymentInput.type = Types::StopDeploymentInput
    StopDeploymentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StopStatus, name: "status"))
    StopDeploymentOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "statusMessage"))
    StopDeploymentOutput.type = Types::StopDeploymentOutput
    StopStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    StopStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value"))
    Tag.type = Types::Tag
    TagFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key"))
    TagFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value"))
    TagFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterType, name: "Type"))
    TagFilter.type = Types::TagFilter
    TagFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter, name: "member")
    TagFilterType.add_member(:key_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_ONLY", traits: {"smithy.api#enumValue" => "KEY_ONLY"}))
    TagFilterType.add_member(:value_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE_ONLY", traits: {"smithy.api#enumValue" => "VALUE_ONLY"}))
    TagFilterType.add_member(:key_and_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_AND_VALUE", traits: {"smithy.api#enumValue" => "KEY_AND_VALUE"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "member")
    TagLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TagLimitExceededException.type = Types::TagLimitExceededException
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TagRequiredException.type = Types::TagRequiredException
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagSetListLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TagSetListLimitExceededException.type = Types::TagSetListLimitExceededException
    TargetFilterName.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_STATUS", traits: {"smithy.api#enumValue" => "TargetStatus"}))
    TargetFilterName.add_member(:server_instance_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_INSTANCE_LABEL", traits: {"smithy.api#enumValue" => "ServerInstanceLabel"}))
    TargetFilters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilterName, name: "key")
    TargetFilters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValueList, name: "value")
    TargetGroupInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupName, name: "name"))
    TargetGroupInfo.type = Types::TargetGroupInfo
    TargetGroupInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupInfo, name: "member")
    TargetGroupPairInfo.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupInfoList, name: "targetGroups"))
    TargetGroupPairInfo.add_member(:prod_traffic_route, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficRoute, name: "prodTrafficRoute"))
    TargetGroupPairInfo.add_member(:test_traffic_route, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficRoute, name: "testTrafficRoute"))
    TargetGroupPairInfo.type = Types::TargetGroupPairInfo
    TargetGroupPairInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGroupPairInfo, name: "member")
    TargetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, name: "member")
    TargetInstances.add_member(:tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilterList, name: "tagFilters"))
    TargetInstances.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupNameList, name: "autoScalingGroups"))
    TargetInstances.add_member(:ec2_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagSet, name: "ec2TagSet"))
    TargetInstances.type = Types::TargetInstances
    TargetLabel.add_member(:blue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLUE", traits: {"smithy.api#enumValue" => "Blue"}))
    TargetLabel.add_member(:green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREEN", traits: {"smithy.api#enumValue" => "Green"}))
    TargetStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    TargetStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    TargetStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "Succeeded"}))
    TargetStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TargetStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "Skipped"}))
    TargetStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "Unknown"}))
    TargetStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "Ready"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TimeBasedCanary.add_member(:canary_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "canaryPercentage", traits: {"smithy.api#default" => 0}))
    TimeBasedCanary.add_member(:canary_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeInMins, name: "canaryInterval", traits: {"smithy.api#default" => 0}))
    TimeBasedCanary.type = Types::TimeBasedCanary
    TimeBasedLinear.add_member(:linear_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "linearPercentage", traits: {"smithy.api#default" => 0}))
    TimeBasedLinear.add_member(:linear_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeInMins, name: "linearInterval", traits: {"smithy.api#default" => 0}))
    TimeBasedLinear.type = Types::TimeBasedLinear
    TimeRange.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "start"))
    TimeRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "end"))
    TimeRange.type = Types::TimeRange
    TrafficRoute.add_member(:listener_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerArnList, name: "listenerArns"))
    TrafficRoute.type = Types::TrafficRoute
    TrafficRoutingConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficRoutingType, name: "type"))
    TrafficRoutingConfig.add_member(:time_based_canary, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeBasedCanary, name: "timeBasedCanary"))
    TrafficRoutingConfig.add_member(:time_based_linear, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeBasedLinear, name: "timeBasedLinear"))
    TrafficRoutingConfig.type = Types::TrafficRoutingConfig
    TrafficRoutingType.add_member(:time_based_canary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimeBasedCanary", traits: {"smithy.api#enumValue" => "TimeBasedCanary"}))
    TrafficRoutingType.add_member(:time_based_linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimeBasedLinear", traits: {"smithy.api#enumValue" => "TimeBasedLinear"}))
    TrafficRoutingType.add_member(:all_at_once, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllAtOnce", traits: {"smithy.api#enumValue" => "AllAtOnce"}))
    TriggerConfig.add_member(:trigger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerName, name: "triggerName"))
    TriggerConfig.add_member(:trigger_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerTargetArn, name: "triggerTargetArn"))
    TriggerConfig.add_member(:trigger_events, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerEventTypeList, name: "triggerEvents"))
    TriggerConfig.type = Types::TriggerConfig
    TriggerConfigList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfig, name: "member")
    TriggerEventType.add_member(:deployment_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_START", traits: {"smithy.api#enumValue" => "DeploymentStart"}))
    TriggerEventType.add_member(:deployment_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_SUCCESS", traits: {"smithy.api#enumValue" => "DeploymentSuccess"}))
    TriggerEventType.add_member(:deployment_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_FAILURE", traits: {"smithy.api#enumValue" => "DeploymentFailure"}))
    TriggerEventType.add_member(:deployment_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_STOP", traits: {"smithy.api#enumValue" => "DeploymentStop"}))
    TriggerEventType.add_member(:deployment_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_ROLLBACK", traits: {"smithy.api#enumValue" => "DeploymentRollback"}))
    TriggerEventType.add_member(:deployment_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_READY", traits: {"smithy.api#enumValue" => "DeploymentReady"}))
    TriggerEventType.add_member(:instance_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_START", traits: {"smithy.api#enumValue" => "InstanceStart"}))
    TriggerEventType.add_member(:instance_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_SUCCESS", traits: {"smithy.api#enumValue" => "InstanceSuccess"}))
    TriggerEventType.add_member(:instance_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FAILURE", traits: {"smithy.api#enumValue" => "InstanceFailure"}))
    TriggerEventType.add_member(:instance_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_READY", traits: {"smithy.api#enumValue" => "InstanceReady"}))
    TriggerEventTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerEventType, name: "member")
    TriggerTargetsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TriggerTargetsLimitExceededException.type = Types::TriggerTargetsLimitExceededException
    UnsupportedActionForDeploymentTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    UnsupportedActionForDeploymentTypeException.type = Types::UnsupportedActionForDeploymentTypeException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName"))
    UpdateApplicationInput.add_member(:new_application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "newApplicationName"))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateDeploymentGroupInput.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "applicationName", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentGroupInput.add_member(:current_deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "currentDeploymentGroupName", traits: {"smithy.api#required" => {}}))
    UpdateDeploymentGroupInput.add_member(:new_deployment_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentGroupName, name: "newDeploymentGroupName"))
    UpdateDeploymentGroupInput.add_member(:deployment_config_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfigName, name: "deploymentConfigName"))
    UpdateDeploymentGroupInput.add_member(:ec2_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagFilterList, name: "ec2TagFilters"))
    UpdateDeploymentGroupInput.add_member(:on_premises_instance_tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterList, name: "onPremisesInstanceTagFilters"))
    UpdateDeploymentGroupInput.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupNameList, name: "autoScalingGroups"))
    UpdateDeploymentGroupInput.add_member(:service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "serviceRoleArn"))
    UpdateDeploymentGroupInput.add_member(:trigger_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerConfigList, name: "triggerConfigurations"))
    UpdateDeploymentGroupInput.add_member(:alarm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmConfiguration, name: "alarmConfiguration"))
    UpdateDeploymentGroupInput.add_member(:auto_rollback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRollbackConfiguration, name: "autoRollbackConfiguration"))
    UpdateDeploymentGroupInput.add_member(:outdated_instances_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: OutdatedInstancesStrategy, name: "outdatedInstancesStrategy"))
    UpdateDeploymentGroupInput.add_member(:deployment_style, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStyle, name: "deploymentStyle"))
    UpdateDeploymentGroupInput.add_member(:blue_green_deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueGreenDeploymentConfiguration, name: "blueGreenDeploymentConfiguration"))
    UpdateDeploymentGroupInput.add_member(:load_balancer_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancerInfo, name: "loadBalancerInfo"))
    UpdateDeploymentGroupInput.add_member(:ec2_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2TagSet, name: "ec2TagSet"))
    UpdateDeploymentGroupInput.add_member(:ecs_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceList, name: "ecsServices"))
    UpdateDeploymentGroupInput.add_member(:on_premises_tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremisesTagSet, name: "onPremisesTagSet"))
    UpdateDeploymentGroupInput.add_member(:termination_hook_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminationHookEnabled"))
    UpdateDeploymentGroupInput.type = Types::UpdateDeploymentGroupInput
    UpdateDeploymentGroupOutput.add_member(:hooks_not_cleaned_up, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupList, name: "hooksNotCleanedUp"))
    UpdateDeploymentGroupOutput.type = Types::UpdateDeploymentGroupOutput
    ZonalConfig.add_member(:first_zone_monitor_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeInSeconds, name: "firstZoneMonitorDurationInSeconds"))
    ZonalConfig.add_member(:monitor_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WaitTimeInSeconds, name: "monitorDurationInSeconds"))
    ZonalConfig.add_member(:minimum_healthy_hosts_per_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyHostsPerZone, name: "minimumHealthyHostsPerZone"))
    ZonalConfig.type = Types::ZonalConfig

    CodeDeploy20141006 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codedeploy#CodeDeploy_20141006"
      service.name = "CodeDeploy20141006"
      service.version = "2014-10-06"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeDeploy", "arnNamespace" => "codedeploy", "cloudFormationName" => "CodeDeploy", "cloudTrailEventSource" => "codedeploy.amazonaws.com", "endpointPrefix" => "codedeploy"}, "aws.auth#sigv4" => {"name" => "codedeploy"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodeDeploy", "smithy.api#xmlNamespace" => {"uri" => "http://codedeploy.amazonaws.com/doc/2014-10-06/"}}
      service.add_operation(:add_tags_to_on_premises_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#AddTagsToOnPremisesInstances"
        operation.name = "AddTagsToOnPremisesInstances"
        operation.input = AddTagsToOnPremisesInstancesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InstanceLimitExceededException
        operation.errors << InstanceNameRequiredException
        operation.errors << InstanceNotRegisteredException
        operation.errors << InvalidInstanceNameException
        operation.errors << InvalidTagException
        operation.errors << TagLimitExceededException
        operation.errors << TagRequiredException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_application_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetApplicationRevisions"
        operation.name = "BatchGetApplicationRevisions"
        operation.input = BatchGetApplicationRevisionsInput
        operation.output = BatchGetApplicationRevisionsOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << BatchLimitExceededException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidRevisionException
        operation.errors << RevisionRequiredException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetApplications"
        operation.name = "BatchGetApplications"
        operation.input = BatchGetApplicationsInput
        operation.output = BatchGetApplicationsOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << BatchLimitExceededException
        operation.errors << InvalidApplicationNameException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_deployment_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeploymentGroups"
        operation.name = "BatchGetDeploymentGroups"
        operation.input = BatchGetDeploymentGroupsInput
        operation.output = BatchGetDeploymentGroupsOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << BatchLimitExceededException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_deployment_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeploymentInstances"
        operation.name = "BatchGetDeploymentInstances"
        operation.input = BatchGetDeploymentInstancesInput
        operation.output = BatchGetDeploymentInstancesOutput
        operation.errors << BatchLimitExceededException
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << InstanceIdRequiredException
        operation.errors << InvalidComputePlatformException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidInstanceNameException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use BatchGetDeploymentTargets instead."}}
      end)
      service.add_operation(:batch_get_deployment_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeploymentTargets"
        operation.name = "BatchGetDeploymentTargets"
        operation.input = BatchGetDeploymentTargetsInput
        operation.output = BatchGetDeploymentTargetsOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << DeploymentNotStartedException
        operation.errors << DeploymentTargetDoesNotExistException
        operation.errors << DeploymentTargetIdRequiredException
        operation.errors << DeploymentTargetListSizeExceededException
        operation.errors << InstanceDoesNotExistException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidDeploymentTargetIdException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetDeployments"
        operation.name = "BatchGetDeployments"
        operation.input = BatchGetDeploymentsInput
        operation.output = BatchGetDeploymentsOutput
        operation.errors << BatchLimitExceededException
        operation.errors << DeploymentIdRequiredException
        operation.errors << InvalidDeploymentIdException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_on_premises_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#BatchGetOnPremisesInstances"
        operation.name = "BatchGetOnPremisesInstances"
        operation.input = BatchGetOnPremisesInstancesInput
        operation.output = BatchGetOnPremisesInstancesOutput
        operation.errors << BatchLimitExceededException
        operation.errors << InstanceNameRequiredException
        operation.errors << InvalidInstanceNameException
        operation.traits = {}
      end)
      service.add_operation(:continue_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ContinueDeployment"
        operation.name = "ContinueDeployment"
        operation.input = ContinueDeploymentInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeploymentAlreadyCompletedException
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << DeploymentIsNotInReadyStateException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidDeploymentStatusException
        operation.errors << InvalidDeploymentWaitTypeException
        operation.errors << UnsupportedActionForDeploymentTypeException
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationInput
        operation.output = CreateApplicationOutput
        operation.errors << ApplicationAlreadyExistsException
        operation.errors << ApplicationLimitExceededException
        operation.errors << ApplicationNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidComputePlatformException
        operation.errors << InvalidTagsToAddException
        operation.traits = {}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentInput
        operation.output = CreateDeploymentOutput
        operation.errors << AlarmsLimitExceededException
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << DeploymentLimitExceededException
        operation.errors << DescriptionTooLongException
        operation.errors << InvalidAlarmConfigException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidAutoRollbackConfigException
        operation.errors << InvalidAutoScalingGroupException
        operation.errors << InvalidDeploymentConfigNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.errors << InvalidFileExistsBehaviorException
        operation.errors << InvalidGitHubAccountTokenException
        operation.errors << InvalidIgnoreApplicationStopFailuresValueException
        operation.errors << InvalidLoadBalancerInfoException
        operation.errors << InvalidRevisionException
        operation.errors << InvalidRoleException
        operation.errors << InvalidTargetInstancesException
        operation.errors << InvalidTrafficRoutingConfigurationException
        operation.errors << InvalidUpdateOutdatedInstancesOnlyValueException
        operation.errors << RevisionDoesNotExistException
        operation.errors << RevisionRequiredException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_deployment_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateDeploymentConfig"
        operation.name = "CreateDeploymentConfig"
        operation.input = CreateDeploymentConfigInput
        operation.output = CreateDeploymentConfigOutput
        operation.errors << DeploymentConfigAlreadyExistsException
        operation.errors << DeploymentConfigLimitExceededException
        operation.errors << DeploymentConfigNameRequiredException
        operation.errors << InvalidComputePlatformException
        operation.errors << InvalidDeploymentConfigNameException
        operation.errors << InvalidMinimumHealthyHostValueException
        operation.errors << InvalidTrafficRoutingConfigurationException
        operation.errors << InvalidZonalDeploymentConfigurationException
        operation.traits = {}
      end)
      service.add_operation(:create_deployment_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#CreateDeploymentGroup"
        operation.name = "CreateDeploymentGroup"
        operation.input = CreateDeploymentGroupInput
        operation.output = CreateDeploymentGroupOutput
        operation.errors << AlarmsLimitExceededException
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupAlreadyExistsException
        operation.errors << DeploymentGroupLimitExceededException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << ECSServiceMappingLimitExceededException
        operation.errors << InvalidAlarmConfigException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidAutoRollbackConfigException
        operation.errors << InvalidAutoScalingGroupException
        operation.errors << InvalidBlueGreenDeploymentConfigurationException
        operation.errors << InvalidDeploymentConfigNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.errors << InvalidDeploymentStyleException
        operation.errors << InvalidEC2TagCombinationException
        operation.errors << InvalidEC2TagException
        operation.errors << InvalidECSServiceException
        operation.errors << InvalidInputException
        operation.errors << InvalidLoadBalancerInfoException
        operation.errors << InvalidOnPremisesTagCombinationException
        operation.errors << InvalidRoleException
        operation.errors << InvalidTagException
        operation.errors << InvalidTagsToAddException
        operation.errors << InvalidTargetGroupPairException
        operation.errors << InvalidTrafficRoutingConfigurationException
        operation.errors << InvalidTriggerConfigException
        operation.errors << LifecycleHookLimitExceededException
        operation.errors << RoleRequiredException
        operation.errors << TagSetListLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TriggerTargetsLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ApplicationNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidRoleException
        operation.traits = {}
      end)
      service.add_operation(:delete_deployment_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteDeploymentConfig"
        operation.name = "DeleteDeploymentConfig"
        operation.input = DeleteDeploymentConfigInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeploymentConfigInUseException
        operation.errors << DeploymentConfigNameRequiredException
        operation.errors << InvalidDeploymentConfigNameException
        operation.errors << InvalidOperationException
        operation.traits = {}
      end)
      service.add_operation(:delete_deployment_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteDeploymentGroup"
        operation.name = "DeleteDeploymentGroup"
        operation.input = DeleteDeploymentGroupInput
        operation.output = DeleteDeploymentGroupOutput
        operation.errors << ApplicationNameRequiredException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.errors << InvalidRoleException
        operation.traits = {}
      end)
      service.add_operation(:delete_git_hub_account_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteGitHubAccountToken"
        operation.name = "DeleteGitHubAccountToken"
        operation.input = DeleteGitHubAccountTokenInput
        operation.output = DeleteGitHubAccountTokenOutput
        operation.errors << GitHubAccountTokenDoesNotExistException
        operation.errors << GitHubAccountTokenNameRequiredException
        operation.errors << InvalidGitHubAccountTokenNameException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_resources_by_external_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeleteResourcesByExternalId"
        operation.name = "DeleteResourcesByExternalId"
        operation.input = DeleteResourcesByExternalIdInput
        operation.output = DeleteResourcesByExternalIdOutput
        operation.traits = {}
      end)
      service.add_operation(:deregister_on_premises_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#DeregisterOnPremisesInstance"
        operation.name = "DeregisterOnPremisesInstance"
        operation.input = DeregisterOnPremisesInstanceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InstanceNameRequiredException
        operation.errors << InvalidInstanceNameException
        operation.traits = {}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationInput
        operation.output = GetApplicationOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.traits = {}
      end)
      service.add_operation(:get_application_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetApplicationRevision"
        operation.name = "GetApplicationRevision"
        operation.input = GetApplicationRevisionInput
        operation.output = GetApplicationRevisionOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidRevisionException
        operation.errors << RevisionDoesNotExistException
        operation.errors << RevisionRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = GetDeploymentInput
        operation.output = GetDeploymentOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << InvalidDeploymentIdException
        operation.traits = {}
      end)
      service.add_operation(:get_deployment_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentConfig"
        operation.name = "GetDeploymentConfig"
        operation.input = GetDeploymentConfigInput
        operation.output = GetDeploymentConfigOutput
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentConfigNameRequiredException
        operation.errors << InvalidComputePlatformException
        operation.errors << InvalidDeploymentConfigNameException
        operation.traits = {}
      end)
      service.add_operation(:get_deployment_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentGroup"
        operation.name = "GetDeploymentGroup"
        operation.input = GetDeploymentGroupInput
        operation.output = GetDeploymentGroupOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.traits = {}
      end)
      service.add_operation(:get_deployment_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentInstance"
        operation.name = "GetDeploymentInstance"
        operation.input = GetDeploymentInstanceInput
        operation.output = GetDeploymentInstanceOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << InstanceDoesNotExistException
        operation.errors << InstanceIdRequiredException
        operation.errors << InvalidComputePlatformException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidInstanceNameException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use GetDeploymentTarget instead."}}
      end)
      service.add_operation(:get_deployment_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetDeploymentTarget"
        operation.name = "GetDeploymentTarget"
        operation.input = GetDeploymentTargetInput
        operation.output = GetDeploymentTargetOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << DeploymentNotStartedException
        operation.errors << DeploymentTargetDoesNotExistException
        operation.errors << DeploymentTargetIdRequiredException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidDeploymentTargetIdException
        operation.errors << InvalidInstanceNameException
        operation.traits = {}
      end)
      service.add_operation(:get_on_premises_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#GetOnPremisesInstance"
        operation.name = "GetOnPremisesInstance"
        operation.input = GetOnPremisesInstanceInput
        operation.output = GetOnPremisesInstanceOutput
        operation.errors << InstanceNameRequiredException
        operation.errors << InstanceNotRegisteredException
        operation.errors << InvalidInstanceNameException
        operation.traits = {}
      end)
      service.add_operation(:list_application_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListApplicationRevisions"
        operation.name = "ListApplicationRevisions"
        operation.input = ListApplicationRevisionsInput
        operation.output = ListApplicationRevisionsOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << BucketNameFilterRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidBucketNameFilterException
        operation.errors << InvalidDeployedStateFilterException
        operation.errors << InvalidKeyPrefixFilterException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidSortByException
        operation.errors << InvalidSortOrderException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationRevisions.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsInput
        operation.output = ListApplicationsOutput
        operation.errors << InvalidNextTokenException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListApplicationsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_deployment_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentConfigs"
        operation.name = "ListDeploymentConfigs"
        operation.input = ListDeploymentConfigsInput
        operation.output = ListDeploymentConfigsOutput
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeploymentConfigs.new
      end)
      service.add_operation(:list_deployment_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentGroups"
        operation.name = "ListDeploymentGroups"
        operation.input = ListDeploymentGroupsInput
        operation.output = ListDeploymentGroupsOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeploymentGroups.new
      end)
      service.add_operation(:list_deployment_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentInstances"
        operation.name = "ListDeploymentInstances"
        operation.input = ListDeploymentInstancesInput
        operation.output = ListDeploymentInstancesOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << DeploymentNotStartedException
        operation.errors << InvalidComputePlatformException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidDeploymentInstanceTypeException
        operation.errors << InvalidInstanceStatusException
        operation.errors << InvalidInstanceTypeException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidTargetFilterNameException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use ListDeploymentTargets instead."}}
        operation[:paginator] = Paginators::ListDeploymentInstances.new
      end)
      service.add_operation(:list_deployment_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeploymentTargets"
        operation.name = "ListDeploymentTargets"
        operation.input = ListDeploymentTargetsInput
        operation.output = ListDeploymentTargetsOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << DeploymentNotStartedException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidDeploymentInstanceTypeException
        operation.errors << InvalidInstanceStatusException
        operation.errors << InvalidInstanceTypeException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidTargetFilterNameException
        operation.traits = {}
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ListDeploymentsInput
        operation.output = ListDeploymentsOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.errors << InvalidDeploymentStatusException
        operation.errors << InvalidExternalIdException
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidTimeRangeException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_git_hub_account_token_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListGitHubAccountTokenNames"
        operation.name = "ListGitHubAccountTokenNames"
        operation.input = ListGitHubAccountTokenNamesInput
        operation.output = ListGitHubAccountTokenNamesOutput
        operation.errors << InvalidNextTokenException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_on_premises_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListOnPremisesInstances"
        operation.name = "ListOnPremisesInstances"
        operation.input = ListOnPremisesInstancesInput
        operation.output = ListOnPremisesInstancesOutput
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidRegistrationStatusException
        operation.errors << InvalidTagFilterException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ArnNotSupportedException
        operation.errors << InvalidArnException
        operation.errors << ResourceArnRequiredException
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_event_hook_execution_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#PutLifecycleEventHookExecutionStatus"
        operation.name = "PutLifecycleEventHookExecutionStatus"
        operation.input = PutLifecycleEventHookExecutionStatusInput
        operation.output = PutLifecycleEventHookExecutionStatusOutput
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << InvalidDeploymentIdException
        operation.errors << InvalidLifecycleEventHookExecutionIdException
        operation.errors << InvalidLifecycleEventHookExecutionStatusException
        operation.errors << LifecycleEventAlreadyCompletedException
        operation.errors << UnsupportedActionForDeploymentTypeException
        operation.traits = {}
      end)
      service.add_operation(:register_application_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#RegisterApplicationRevision"
        operation.name = "RegisterApplicationRevision"
        operation.input = RegisterApplicationRevisionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << DescriptionTooLongException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidRevisionException
        operation.errors << RevisionRequiredException
        operation.traits = {}
      end)
      service.add_operation(:register_on_premises_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#RegisterOnPremisesInstance"
        operation.name = "RegisterOnPremisesInstance"
        operation.input = RegisterOnPremisesInstanceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << IamArnRequiredException
        operation.errors << IamSessionArnAlreadyRegisteredException
        operation.errors << IamUserArnAlreadyRegisteredException
        operation.errors << IamUserArnRequiredException
        operation.errors << InstanceNameAlreadyRegisteredException
        operation.errors << InstanceNameRequiredException
        operation.errors << InvalidIamSessionArnException
        operation.errors << InvalidIamUserArnException
        operation.errors << InvalidInstanceNameException
        operation.errors << MultipleIamArnsProvidedException
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_on_premises_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#RemoveTagsFromOnPremisesInstances"
        operation.name = "RemoveTagsFromOnPremisesInstances"
        operation.input = RemoveTagsFromOnPremisesInstancesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InstanceLimitExceededException
        operation.errors << InstanceNameRequiredException
        operation.errors << InstanceNotRegisteredException
        operation.errors << InvalidInstanceNameException
        operation.errors << InvalidTagException
        operation.errors << TagLimitExceededException
        operation.errors << TagRequiredException
        operation.traits = {}
      end)
      service.add_operation(:skip_wait_time_for_instance_termination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#SkipWaitTimeForInstanceTermination"
        operation.name = "SkipWaitTimeForInstanceTermination"
        operation.input = SkipWaitTimeForInstanceTerminationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DeploymentAlreadyCompletedException
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << DeploymentNotStartedException
        operation.errors << InvalidDeploymentIdException
        operation.errors << UnsupportedActionForDeploymentTypeException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead."}}
      end)
      service.add_operation(:stop_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#StopDeployment"
        operation.name = "StopDeployment"
        operation.input = StopDeploymentInput
        operation.output = StopDeploymentOutput
        operation.errors << DeploymentAlreadyCompletedException
        operation.errors << DeploymentDoesNotExistException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << DeploymentIdRequiredException
        operation.errors << InvalidDeploymentIdException
        operation.errors << UnsupportedActionForDeploymentTypeException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ArnNotSupportedException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << InvalidArnException
        operation.errors << InvalidTagsToAddException
        operation.errors << ResourceArnRequiredException
        operation.errors << TagRequiredException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ArnNotSupportedException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << InvalidArnException
        operation.errors << InvalidTagsToAddException
        operation.errors << ResourceArnRequiredException
        operation.errors << TagRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ApplicationAlreadyExistsException
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << InvalidApplicationNameException
        operation.traits = {}
      end)
      service.add_operation(:update_deployment_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codedeploy#UpdateDeploymentGroup"
        operation.name = "UpdateDeploymentGroup"
        operation.input = UpdateDeploymentGroupInput
        operation.output = UpdateDeploymentGroupOutput
        operation.errors << AlarmsLimitExceededException
        operation.errors << ApplicationDoesNotExistException
        operation.errors << ApplicationNameRequiredException
        operation.errors << DeploymentConfigDoesNotExistException
        operation.errors << DeploymentGroupAlreadyExistsException
        operation.errors << DeploymentGroupDoesNotExistException
        operation.errors << DeploymentGroupNameRequiredException
        operation.errors << ECSServiceMappingLimitExceededException
        operation.errors << InvalidAlarmConfigException
        operation.errors << InvalidApplicationNameException
        operation.errors << InvalidAutoRollbackConfigException
        operation.errors << InvalidAutoScalingGroupException
        operation.errors << InvalidBlueGreenDeploymentConfigurationException
        operation.errors << InvalidDeploymentConfigNameException
        operation.errors << InvalidDeploymentGroupNameException
        operation.errors << InvalidDeploymentStyleException
        operation.errors << InvalidEC2TagCombinationException
        operation.errors << InvalidEC2TagException
        operation.errors << InvalidECSServiceException
        operation.errors << InvalidInputException
        operation.errors << InvalidLoadBalancerInfoException
        operation.errors << InvalidOnPremisesTagCombinationException
        operation.errors << InvalidRoleException
        operation.errors << InvalidTagException
        operation.errors << InvalidTargetGroupPairException
        operation.errors << InvalidTrafficRoutingConfigurationException
        operation.errors << InvalidTriggerConfigException
        operation.errors << LifecycleHookLimitExceededException
        operation.errors << TagSetListLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TriggerTargetsLimitExceededException
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
