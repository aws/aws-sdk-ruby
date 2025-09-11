# frozen_string_literal: true

# This is generated code!

module Aws::ElasticBeanstalk
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ARN', name: 'ARN')
    AbortEnvironmentUpdateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#AbortEnvironmentUpdateMessage', name: 'AbortEnvironmentUpdateMessage')
    AbortableOperationInProgress = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#AbortableOperationInProgress', name: 'AbortableOperationInProgress')
    ActionHistoryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ActionHistoryStatus', name: 'ActionHistoryStatus')
    ActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ActionStatus', name: 'ActionStatus')
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ActionType', name: 'ActionType')
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationArn', name: 'ApplicationArn')
    ApplicationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationDescription', name: 'ApplicationDescription')
    ApplicationDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationDescriptionList', name: 'ApplicationDescriptionList')
    ApplicationDescriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationDescriptionsMessage', name: 'ApplicationDescriptionsMessage')
    ApplicationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationMetrics', name: 'ApplicationMetrics')
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApplicationNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationNamesList', name: 'ApplicationNamesList')
    ApplicationResourceLifecycleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationResourceLifecycleConfig', name: 'ApplicationResourceLifecycleConfig')
    ApplicationResourceLifecycleDescriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationResourceLifecycleDescriptionMessage', name: 'ApplicationResourceLifecycleDescriptionMessage')
    ApplicationVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionArn', name: 'ApplicationVersionArn')
    ApplicationVersionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionDescription', name: 'ApplicationVersionDescription')
    ApplicationVersionDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionDescriptionList', name: 'ApplicationVersionDescriptionList')
    ApplicationVersionDescriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionDescriptionsMessage', name: 'ApplicationVersionDescriptionsMessage')
    ApplicationVersionLifecycleConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionLifecycleConfig', name: 'ApplicationVersionLifecycleConfig')
    ApplicationVersionProccess = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionProccess', name: 'ApplicationVersionProccess')
    ApplicationVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplicationVersionStatus', name: 'ApplicationVersionStatus')
    ApplyEnvironmentManagedActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplyEnvironmentManagedActionRequest', name: 'ApplyEnvironmentManagedActionRequest')
    ApplyEnvironmentManagedActionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ApplyEnvironmentManagedActionResult', name: 'ApplyEnvironmentManagedActionResult')
    AssociateEnvironmentOperationsRoleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#AssociateEnvironmentOperationsRoleMessage', name: 'AssociateEnvironmentOperationsRoleMessage')
    AutoCreateApplication = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#AutoCreateApplication', name: 'AutoCreateApplication')
    AutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#AutoScalingGroup', name: 'AutoScalingGroup')
    AutoScalingGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#AutoScalingGroupList', name: 'AutoScalingGroupList')
    AvailableSolutionStackDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#AvailableSolutionStackDetailsList', name: 'AvailableSolutionStackDetailsList')
    AvailableSolutionStackNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#AvailableSolutionStackNamesList', name: 'AvailableSolutionStackNamesList')
    BoxedBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#BoxedBoolean', name: 'BoxedBoolean')
    BoxedInt = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#BoxedInt', name: 'BoxedInt')
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#BranchName', name: 'BranchName')
    BranchOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#BranchOrder', name: 'BranchOrder', traits: {"smithy.api#default" => 0})
    BuildConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#BuildConfiguration', name: 'BuildConfiguration')
    Builder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Builder', name: 'Builder')
    CPUUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CPUUtilization', name: 'CPUUtilization')
    Cause = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#Cause', name: 'Cause', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Causes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#Causes', name: 'Causes')
    CheckDNSAvailabilityMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CheckDNSAvailabilityMessage', name: 'CheckDNSAvailabilityMessage')
    CheckDNSAvailabilityResultMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CheckDNSAvailabilityResultMessage', name: 'CheckDNSAvailabilityResultMessage')
    CnameAvailability = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#CnameAvailability', name: 'CnameAvailability')
    CodeBuildNotInServiceRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CodeBuildNotInServiceRegionException', name: 'CodeBuildNotInServiceRegionException', traits: {"aws.protocols#awsQueryError" => {"code" => "CodeBuildNotInServiceRegionException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ComposeEnvironmentsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ComposeEnvironmentsMessage', name: 'ComposeEnvironmentsMessage')
    ComposeEnvironmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ComposeEnvironmentsOutput', name: 'ComposeEnvironmentsOutput')
    ComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ComputeType', name: 'ComputeType')
    ConfigurationDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationDeploymentStatus', name: 'ConfigurationDeploymentStatus')
    ConfigurationOptionDefaultValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionDefaultValue', name: 'ConfigurationOptionDefaultValue')
    ConfigurationOptionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionDescription', name: 'ConfigurationOptionDescription')
    ConfigurationOptionDescriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionDescriptionsList', name: 'ConfigurationOptionDescriptionsList')
    ConfigurationOptionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionName', name: 'ConfigurationOptionName')
    ConfigurationOptionPossibleValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionPossibleValue', name: 'ConfigurationOptionPossibleValue')
    ConfigurationOptionPossibleValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionPossibleValues', name: 'ConfigurationOptionPossibleValues')
    ConfigurationOptionSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionSetting', name: 'ConfigurationOptionSetting')
    ConfigurationOptionSettingsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionSettingsList', name: 'ConfigurationOptionSettingsList')
    ConfigurationOptionSeverity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionSeverity', name: 'ConfigurationOptionSeverity')
    ConfigurationOptionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionValue', name: 'ConfigurationOptionValue')
    ConfigurationOptionValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationOptionValueType', name: 'ConfigurationOptionValueType')
    ConfigurationSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationSettingsDescription', name: 'ConfigurationSettingsDescription')
    ConfigurationSettingsDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationSettingsDescriptionList', name: 'ConfigurationSettingsDescriptionList')
    ConfigurationTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationTemplateName', name: 'ConfigurationTemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ConfigurationTemplateNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ConfigurationTemplateNamesList', name: 'ConfigurationTemplateNamesList')
    CreateApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateApplicationMessage', name: 'CreateApplicationMessage')
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateApplicationOutput', name: 'CreateApplicationOutput')
    CreateApplicationVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateApplicationVersionMessage', name: 'CreateApplicationVersionMessage')
    CreateApplicationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateApplicationVersionOutput', name: 'CreateApplicationVersionOutput')
    CreateConfigurationTemplateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateConfigurationTemplateMessage', name: 'CreateConfigurationTemplateMessage')
    CreateConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateConfigurationTemplateOutput', name: 'CreateConfigurationTemplateOutput')
    CreateEnvironmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateEnvironmentMessage', name: 'CreateEnvironmentMessage')
    CreateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateEnvironmentOutput', name: 'CreateEnvironmentOutput')
    CreatePlatformVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreatePlatformVersionRequest', name: 'CreatePlatformVersionRequest')
    CreatePlatformVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreatePlatformVersionResult', name: 'CreatePlatformVersionResult')
    CreateStorageLocationResultMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CreateStorageLocationResultMessage', name: 'CreateStorageLocationResultMessage')
    CreationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#CreationDate', name: 'CreationDate')
    CustomAmi = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#CustomAmi', name: 'CustomAmi')
    CustomAmiList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#CustomAmiList', name: 'CustomAmiList')
    DNSCname = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#DNSCname', name: 'DNSCname', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DNSCnamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#DNSCnamePrefix', name: 'DNSCnamePrefix', traits: {"smithy.api#length" => {"min" => 4, "max" => 63}})
    DeleteApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DeleteApplicationMessage', name: 'DeleteApplicationMessage')
    DeleteApplicationVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DeleteApplicationVersionMessage', name: 'DeleteApplicationVersionMessage')
    DeleteConfigurationTemplateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DeleteConfigurationTemplateMessage', name: 'DeleteConfigurationTemplateMessage')
    DeleteEnvironmentConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DeleteEnvironmentConfigurationMessage', name: 'DeleteEnvironmentConfigurationMessage')
    DeletePlatformVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DeletePlatformVersionRequest', name: 'DeletePlatformVersionRequest')
    DeletePlatformVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DeletePlatformVersionResult', name: 'DeletePlatformVersionResult')
    DeleteSourceBundle = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#DeleteSourceBundle', name: 'DeleteSourceBundle')
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Deployment', name: 'Deployment')
    DeploymentTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#DeploymentTimestamp', name: 'DeploymentTimestamp')
    DescribeAccountAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeAccountAttributesResult', name: 'DescribeAccountAttributesResult')
    DescribeApplicationVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeApplicationVersionsMessage', name: 'DescribeApplicationVersionsMessage')
    DescribeApplicationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeApplicationsMessage', name: 'DescribeApplicationsMessage')
    DescribeConfigurationOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeConfigurationOptionsMessage', name: 'DescribeConfigurationOptionsMessage')
    DescribeConfigurationOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeConfigurationOptionsOutput', name: 'DescribeConfigurationOptionsOutput')
    DescribeConfigurationSettingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeConfigurationSettingsMessage', name: 'DescribeConfigurationSettingsMessage')
    DescribeConfigurationSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeConfigurationSettingsOutput', name: 'DescribeConfigurationSettingsOutput')
    DescribeEnvironmentHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentHealthRequest', name: 'DescribeEnvironmentHealthRequest')
    DescribeEnvironmentHealthResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentHealthResult', name: 'DescribeEnvironmentHealthResult')
    DescribeEnvironmentManagedActionHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentManagedActionHistoryRequest', name: 'DescribeEnvironmentManagedActionHistoryRequest')
    DescribeEnvironmentManagedActionHistoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentManagedActionHistoryResult', name: 'DescribeEnvironmentManagedActionHistoryResult')
    DescribeEnvironmentManagedActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentManagedActionsRequest', name: 'DescribeEnvironmentManagedActionsRequest')
    DescribeEnvironmentManagedActionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentManagedActionsResult', name: 'DescribeEnvironmentManagedActionsResult')
    DescribeEnvironmentResourcesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentResourcesMessage', name: 'DescribeEnvironmentResourcesMessage')
    DescribeEnvironmentsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentsMessage', name: 'DescribeEnvironmentsMessage')
    DescribeEnvironmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEnvironmentsOutput', name: 'DescribeEnvironmentsOutput')
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeInstancesHealthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeInstancesHealthRequest', name: 'DescribeInstancesHealthRequest')
    DescribeInstancesHealthResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribeInstancesHealthResult', name: 'DescribeInstancesHealthResult')
    DescribePlatformVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribePlatformVersionRequest', name: 'DescribePlatformVersionRequest')
    DescribePlatformVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DescribePlatformVersionResult', name: 'DescribePlatformVersionResult')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    DisassociateEnvironmentOperationsRoleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#DisassociateEnvironmentOperationsRoleMessage', name: 'DisassociateEnvironmentOperationsRoleMessage')
    Ec2InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#Ec2InstanceId', name: 'Ec2InstanceId')
    ElasticBeanstalkServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ElasticBeanstalkServiceException', name: 'ElasticBeanstalkServiceException', traits: {"smithy.api#error" => "client"})
    EndpointURL = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#EndpointURL', name: 'EndpointURL')
    EnvironmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentArn', name: 'EnvironmentArn')
    EnvironmentDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentDescription', name: 'EnvironmentDescription')
    EnvironmentDescriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentDescriptionsList', name: 'EnvironmentDescriptionsList')
    EnvironmentHealth = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentHealth', name: 'EnvironmentHealth')
    EnvironmentHealthAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentHealthAttribute', name: 'EnvironmentHealthAttribute')
    EnvironmentHealthAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentHealthAttributes', name: 'EnvironmentHealthAttributes')
    EnvironmentHealthStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentHealthStatus', name: 'EnvironmentHealthStatus')
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentId', name: 'EnvironmentId')
    EnvironmentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentIdList', name: 'EnvironmentIdList')
    EnvironmentInfoDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentInfoDescription', name: 'EnvironmentInfoDescription')
    EnvironmentInfoDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentInfoDescriptionList', name: 'EnvironmentInfoDescriptionList')
    EnvironmentInfoType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentInfoType', name: 'EnvironmentInfoType')
    EnvironmentLink = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentLink', name: 'EnvironmentLink')
    EnvironmentLinks = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentLinks', name: 'EnvironmentLinks')
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 4, "max" => 40}})
    EnvironmentNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentNamesList', name: 'EnvironmentNamesList')
    EnvironmentResourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentResourceDescription', name: 'EnvironmentResourceDescription')
    EnvironmentResourceDescriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentResourceDescriptionsMessage', name: 'EnvironmentResourceDescriptionsMessage')
    EnvironmentResourcesDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentResourcesDescription', name: 'EnvironmentResourcesDescription')
    EnvironmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentStatus', name: 'EnvironmentStatus')
    EnvironmentTier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EnvironmentTier', name: 'EnvironmentTier')
    EventDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#EventDate', name: 'EventDate')
    EventDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EventDescription', name: 'EventDescription')
    EventDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#EventDescriptionList', name: 'EventDescriptionList')
    EventDescriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#EventDescriptionsMessage', name: 'EventDescriptionsMessage')
    EventMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#EventMessage', name: 'EventMessage')
    EventSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#EventSeverity', name: 'EventSeverity')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ExceptionMessage', name: 'ExceptionMessage')
    FailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#FailureType', name: 'FailureType')
    FileTypeExtension = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#FileTypeExtension', name: 'FileTypeExtension', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ForceTerminate = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#ForceTerminate', name: 'ForceTerminate')
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 19}})
    ImageId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ImageId', name: 'ImageId')
    IncludeDeleted = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#IncludeDeleted', name: 'IncludeDeleted')
    IncludeDeletedBackTo = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#IncludeDeletedBackTo', name: 'IncludeDeletedBackTo')
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Instance', name: 'Instance')
    InstanceHealthList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#InstanceHealthList', name: 'InstanceHealthList')
    InstanceHealthSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#InstanceHealthSummary', name: 'InstanceHealthSummary')
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#InstanceList', name: 'InstanceList')
    InstancesHealthAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#InstancesHealthAttribute', name: 'InstancesHealthAttribute')
    InstancesHealthAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#InstancesHealthAttributes', name: 'InstancesHealthAttributes')
    InsufficientPrivilegesException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#InsufficientPrivilegesException', name: 'InsufficientPrivilegesException', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientPrivilegesException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#InvalidRequestException', name: 'InvalidRequestException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRequestException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Latency = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Latency', name: 'Latency')
    LaunchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#LaunchConfiguration', name: 'LaunchConfiguration')
    LaunchConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#LaunchConfigurationList', name: 'LaunchConfigurationList')
    LaunchTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#LaunchTemplate', name: 'LaunchTemplate')
    LaunchTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#LaunchTemplateList', name: 'LaunchTemplateList')
    LaunchedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#LaunchedAt', name: 'LaunchedAt')
    ListAvailableSolutionStacksResultMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ListAvailableSolutionStacksResultMessage', name: 'ListAvailableSolutionStacksResultMessage')
    ListPlatformBranchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ListPlatformBranchesRequest', name: 'ListPlatformBranchesRequest')
    ListPlatformBranchesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ListPlatformBranchesResult', name: 'ListPlatformBranchesResult')
    ListPlatformVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ListPlatformVersionsRequest', name: 'ListPlatformVersionsRequest')
    ListPlatformVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ListPlatformVersionsResult', name: 'ListPlatformVersionsResult')
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ListTagsForResourceMessage', name: 'ListTagsForResourceMessage')
    Listener = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Listener', name: 'Listener')
    LoadAverage = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#LoadAverage', name: 'LoadAverage')
    LoadAverageValue = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.elasticbeanstalk#LoadAverageValue', name: 'LoadAverageValue', traits: {"smithy.api#default" => 0})
    LoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#LoadBalancer', name: 'LoadBalancer')
    LoadBalancerDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#LoadBalancerDescription', name: 'LoadBalancerDescription')
    LoadBalancerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#LoadBalancerList', name: 'LoadBalancerList')
    LoadBalancerListenersDescription = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#LoadBalancerListenersDescription', name: 'LoadBalancerListenersDescription')
    Maintainer = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#Maintainer', name: 'Maintainer')
    ManagedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ManagedAction', name: 'ManagedAction')
    ManagedActionHistoryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ManagedActionHistoryItem', name: 'ManagedActionHistoryItem')
    ManagedActionHistoryItems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ManagedActionHistoryItems', name: 'ManagedActionHistoryItems', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ManagedActionHistoryMaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#ManagedActionHistoryMaxItems', name: 'ManagedActionHistoryMaxItems', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ManagedActionInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ManagedActionInvalidStateException', name: 'ManagedActionInvalidStateException', traits: {"aws.protocols#awsQueryError" => {"code" => "ManagedActionInvalidStateException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ManagedActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ManagedActions', name: 'ManagedActions', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    MaxAgeRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#MaxAgeRule', name: 'MaxAgeRule')
    MaxCountRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#MaxCountRule', name: 'MaxCountRule')
    MaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#MaxRecords', name: 'MaxRecords', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#Message', name: 'Message')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#pattern" => "\\S"})
    NullableDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.elasticbeanstalk#NullableDouble', name: 'NullableDouble')
    NullableInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#NullableInteger', name: 'NullableInteger')
    NullableLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#NullableLong', name: 'NullableLong')
    OperatingSystemName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#OperatingSystemName', name: 'OperatingSystemName')
    OperatingSystemVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#OperatingSystemVersion', name: 'OperatingSystemVersion')
    OperationInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#OperationInProgressException', name: 'OperationInProgressException', traits: {"aws.protocols#awsQueryError" => {"code" => "OperationInProgressFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperationsRole = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#OperationsRole', name: 'OperationsRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    OptionNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionNamespace', name: 'OptionNamespace')
    OptionRestrictionMaxLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionRestrictionMaxLength', name: 'OptionRestrictionMaxLength')
    OptionRestrictionMaxValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionRestrictionMaxValue', name: 'OptionRestrictionMaxValue')
    OptionRestrictionMinValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionRestrictionMinValue', name: 'OptionRestrictionMinValue')
    OptionRestrictionRegex = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionRestrictionRegex', name: 'OptionRestrictionRegex')
    OptionSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionSpecification', name: 'OptionSpecification')
    OptionsSpecifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#OptionsSpecifierList', name: 'OptionsSpecifierList')
    PlatformArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformArn', name: 'PlatformArn')
    PlatformBranchLifecycleState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformBranchLifecycleState', name: 'PlatformBranchLifecycleState')
    PlatformBranchMaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformBranchMaxRecords', name: 'PlatformBranchMaxRecords', traits: {"smithy.api#range" => {"min" => 1}})
    PlatformBranchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformBranchSummary', name: 'PlatformBranchSummary')
    PlatformBranchSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformBranchSummaryList', name: 'PlatformBranchSummaryList')
    PlatformCategory = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformCategory', name: 'PlatformCategory')
    PlatformDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformDescription', name: 'PlatformDescription')
    PlatformFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFilter', name: 'PlatformFilter')
    PlatformFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFilterOperator', name: 'PlatformFilterOperator')
    PlatformFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFilterType', name: 'PlatformFilterType')
    PlatformFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFilterValue', name: 'PlatformFilterValue')
    PlatformFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFilterValueList', name: 'PlatformFilterValueList')
    PlatformFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFilters', name: 'PlatformFilters')
    PlatformFramework = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFramework', name: 'PlatformFramework')
    PlatformFrameworks = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformFrameworks', name: 'PlatformFrameworks')
    PlatformLifecycleState = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformLifecycleState', name: 'PlatformLifecycleState')
    PlatformMaxRecords = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformMaxRecords', name: 'PlatformMaxRecords', traits: {"smithy.api#range" => {"min" => 1}})
    PlatformName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformName', name: 'PlatformName')
    PlatformOwner = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformOwner', name: 'PlatformOwner')
    PlatformProgrammingLanguage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformProgrammingLanguage', name: 'PlatformProgrammingLanguage')
    PlatformProgrammingLanguages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformProgrammingLanguages', name: 'PlatformProgrammingLanguages')
    PlatformStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformStatus', name: 'PlatformStatus')
    PlatformSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformSummary', name: 'PlatformSummary')
    PlatformSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformSummaryList', name: 'PlatformSummaryList')
    PlatformVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformVersion', name: 'PlatformVersion')
    PlatformVersionStillReferencedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#PlatformVersionStillReferencedException', name: 'PlatformVersionStillReferencedException', traits: {"aws.protocols#awsQueryError" => {"code" => "PlatformVersionStillReferencedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Queue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Queue', name: 'Queue')
    QueueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#QueueList', name: 'QueueList')
    RebuildEnvironmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#RebuildEnvironmentMessage', name: 'RebuildEnvironmentMessage')
    RefreshedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#RefreshedAt', name: 'RefreshedAt')
    RegexLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#RegexLabel', name: 'RegexLabel')
    RegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#RegexPattern', name: 'RegexPattern')
    RequestCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.elasticbeanstalk#RequestCount', name: 'RequestCount', traits: {"smithy.api#default" => 0})
    RequestEnvironmentInfoMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#RequestEnvironmentInfoMessage', name: 'RequestEnvironmentInfoMessage')
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#RequestId', name: 'RequestId')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceArn', name: 'ResourceArn')
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceId', name: 'ResourceId')
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceQuota', name: 'ResourceQuota')
    ResourceQuotas = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceQuotas', name: 'ResourceQuotas')
    ResourceTagsDescriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceTagsDescriptionMessage', name: 'ResourceTagsDescriptionMessage')
    ResourceTypeNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ResourceTypeNotSupportedException', name: 'ResourceTypeNotSupportedException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceTypeNotSupportedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RestartAppServerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#RestartAppServerMessage', name: 'RestartAppServerMessage')
    RetrieveEnvironmentInfoMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#RetrieveEnvironmentInfoMessage', name: 'RetrieveEnvironmentInfoMessage')
    RetrieveEnvironmentInfoResultMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#RetrieveEnvironmentInfoResultMessage', name: 'RetrieveEnvironmentInfoResultMessage')
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#S3Location', name: 'S3Location')
    S3LocationNotInServiceRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#S3LocationNotInServiceRegionException', name: 'S3LocationNotInServiceRegionException', traits: {"aws.protocols#awsQueryError" => {"code" => "S3LocationNotInServiceRegionException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    S3SubscriptionRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#S3SubscriptionRequiredException', name: 'S3SubscriptionRequiredException', traits: {"aws.protocols#awsQueryError" => {"code" => "S3SubscriptionRequiredException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SampleTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#SampleTimestamp', name: 'SampleTimestamp')
    SearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SearchFilter', name: 'SearchFilter')
    SearchFilterAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SearchFilterAttribute', name: 'SearchFilterAttribute')
    SearchFilterOperator = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SearchFilterOperator', name: 'SearchFilterOperator')
    SearchFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SearchFilterValue', name: 'SearchFilterValue')
    SearchFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#SearchFilterValues', name: 'SearchFilterValues')
    SearchFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#SearchFilters', name: 'SearchFilters')
    SingleInstanceHealth = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SingleInstanceHealth', name: 'SingleInstanceHealth')
    SolutionStackDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SolutionStackDescription', name: 'SolutionStackDescription')
    SolutionStackFileTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#SolutionStackFileTypeList', name: 'SolutionStackFileTypeList')
    SolutionStackName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SolutionStackName', name: 'SolutionStackName')
    SourceBuildInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SourceBuildInformation', name: 'SourceBuildInformation')
    SourceBundleDeletionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SourceBundleDeletionException', name: 'SourceBundleDeletionException', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceBundleDeletionFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SourceConfiguration', name: 'SourceConfiguration')
    SourceLocation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SourceLocation', name: 'SourceLocation', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^.+/.+$"})
    SourceRepository = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#SourceRepository', name: 'SourceRepository')
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#SourceType', name: 'SourceType')
    StatusCodes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#StatusCodes', name: 'StatusCodes')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#String', name: 'String')
    SupportedAddon = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SupportedAddon', name: 'SupportedAddon')
    SupportedAddonList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#SupportedAddonList', name: 'SupportedAddonList')
    SupportedTier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#SupportedTier', name: 'SupportedTier')
    SupportedTierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#SupportedTierList', name: 'SupportedTierList')
    SwapEnvironmentCNAMEsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SwapEnvironmentCNAMEsMessage', name: 'SwapEnvironmentCNAMEsMessage')
    SystemStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#SystemStatus', name: 'SystemStatus')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#TagKeyList', name: 'TagKeyList')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#TagList', name: 'TagList')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#Tags', name: 'Tags')
    TerminateEnvForce = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#TerminateEnvForce', name: 'TerminateEnvForce')
    TerminateEnvironmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TerminateEnvironmentMessage', name: 'TerminateEnvironmentMessage')
    TerminateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TerminateEnvironmentOutput', name: 'TerminateEnvironmentOutput')
    TerminateEnvironmentResources = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#TerminateEnvironmentResources', name: 'TerminateEnvironmentResources')
    TimeFilterEnd = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#TimeFilterEnd', name: 'TimeFilterEnd')
    TimeFilterStart = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#TimeFilterStart', name: 'TimeFilterStart')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#Timestamp', name: 'Timestamp')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#Token', name: 'Token')
    TooManyApplicationVersionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyApplicationVersionsException', name: 'TooManyApplicationVersionsException', traits: {"smithy.api#error" => "client"})
    TooManyApplicationsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyApplicationsException', name: 'TooManyApplicationsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyApplicationsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyBucketsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyBucketsException', name: 'TooManyBucketsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyBucketsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyConfigurationTemplatesException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyConfigurationTemplatesException', name: 'TooManyConfigurationTemplatesException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyConfigurationTemplatesException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyEnvironmentsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyEnvironmentsException', name: 'TooManyEnvironmentsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyEnvironmentsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyPlatformsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyPlatformsException', name: 'TooManyPlatformsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyPlatformsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#TooManyTagsException', name: 'TooManyTagsException', traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyTagsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Trigger = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#Trigger', name: 'Trigger')
    TriggerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#TriggerList', name: 'TriggerList')
    UpdateApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateApplicationMessage', name: 'UpdateApplicationMessage')
    UpdateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateApplicationOutput', name: 'UpdateApplicationOutput')
    UpdateApplicationResourceLifecycleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateApplicationResourceLifecycleMessage', name: 'UpdateApplicationResourceLifecycleMessage')
    UpdateApplicationVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateApplicationVersionMessage', name: 'UpdateApplicationVersionMessage')
    UpdateApplicationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateApplicationVersionOutput', name: 'UpdateApplicationVersionOutput')
    UpdateConfigurationTemplateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateConfigurationTemplateMessage', name: 'UpdateConfigurationTemplateMessage')
    UpdateConfigurationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateConfigurationTemplateOutput', name: 'UpdateConfigurationTemplateOutput')
    UpdateDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateDate', name: 'UpdateDate')
    UpdateEnvironmentMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateEnvironmentMessage', name: 'UpdateEnvironmentMessage')
    UpdateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateEnvironmentOutput', name: 'UpdateEnvironmentOutput')
    UpdateTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#UpdateTagsForResourceMessage', name: 'UpdateTagsForResourceMessage')
    UserDefinedOption = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.elasticbeanstalk#UserDefinedOption', name: 'UserDefinedOption')
    ValidateConfigurationSettingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ValidateConfigurationSettingsMessage', name: 'ValidateConfigurationSettingsMessage')
    ValidateConfigurationSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ValidateConfigurationSettingsOutput', name: 'ValidateConfigurationSettingsOutput')
    ValidationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.elasticbeanstalk#ValidationMessage', name: 'ValidationMessage')
    ValidationMessageString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#ValidationMessageString', name: 'ValidationMessageString')
    ValidationMessagesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#ValidationMessagesList', name: 'ValidationMessagesList')
    ValidationSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.elasticbeanstalk#ValidationSeverity', name: 'ValidationSeverity')
    VersionLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#VersionLabel', name: 'VersionLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VersionLabels = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#VersionLabels', name: 'VersionLabels')
    VersionLabelsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.elasticbeanstalk#VersionLabelsList', name: 'VersionLabelsList')
    VirtualizationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.elasticbeanstalk#VirtualizationType', name: 'VirtualizationType')

    AbortEnvironmentUpdateMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    AbortEnvironmentUpdateMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    AbortEnvironmentUpdateMessage.type = Types::AbortEnvironmentUpdateMessage
    ActionHistoryStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Completed', traits: {"smithy.api#enumValue" => "Completed"}))
    ActionHistoryStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    ActionHistoryStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "Unknown"}))
    ActionStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Scheduled', traits: {"smithy.api#enumValue" => "Scheduled"}))
    ActionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    ActionStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Running', traits: {"smithy.api#enumValue" => "Running"}))
    ActionStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "Unknown"}))
    ActionType.add_member(:instance_refresh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InstanceRefresh', traits: {"smithy.api#enumValue" => "InstanceRefresh"}))
    ActionType.add_member(:platform_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PlatformUpdate', traits: {"smithy.api#enumValue" => "PlatformUpdate"}))
    ActionType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "Unknown"}))
    ApplicationDescription.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'ApplicationArn'))
    ApplicationDescription.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    ApplicationDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ApplicationDescription.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    ApplicationDescription.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    ApplicationDescription.add_member(:versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabelsList, location_name: 'Versions'))
    ApplicationDescription.add_member(:configuration_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateNamesList, location_name: 'ConfigurationTemplates'))
    ApplicationDescription.add_member(:resource_lifecycle_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: 'ResourceLifecycleConfig'))
    ApplicationDescription.type = Types::ApplicationDescription
    ApplicationDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription)
    ApplicationDescriptionsMessage.add_member(:applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescriptionList, location_name: 'Applications'))
    ApplicationDescriptionsMessage.type = Types::ApplicationDescriptionsMessage
    ApplicationMetrics.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Duration'))
    ApplicationMetrics.add_member(:request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestCount, location_name: 'RequestCount', traits: {"smithy.api#default" => 0}))
    ApplicationMetrics.add_member(:status_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCodes, location_name: 'StatusCodes'))
    ApplicationMetrics.add_member(:latency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Latency, location_name: 'Latency'))
    ApplicationMetrics.type = Types::ApplicationMetrics
    ApplicationNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName)
    ApplicationResourceLifecycleConfig.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRole'))
    ApplicationResourceLifecycleConfig.add_member(:version_lifecycle_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionLifecycleConfig, location_name: 'VersionLifecycleConfig'))
    ApplicationResourceLifecycleConfig.type = Types::ApplicationResourceLifecycleConfig
    ApplicationResourceLifecycleDescriptionMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    ApplicationResourceLifecycleDescriptionMessage.add_member(:resource_lifecycle_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: 'ResourceLifecycleConfig'))
    ApplicationResourceLifecycleDescriptionMessage.type = Types::ApplicationResourceLifecycleDescriptionMessage
    ApplicationVersionDescription.add_member(:application_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionArn, location_name: 'ApplicationVersionArn'))
    ApplicationVersionDescription.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    ApplicationVersionDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ApplicationVersionDescription.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    ApplicationVersionDescription.add_member(:source_build_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceBuildInformation, location_name: 'SourceBuildInformation'))
    ApplicationVersionDescription.add_member(:build_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BuildArn'))
    ApplicationVersionDescription.add_member(:source_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SourceBundle'))
    ApplicationVersionDescription.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    ApplicationVersionDescription.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    ApplicationVersionDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionStatus, location_name: 'Status'))
    ApplicationVersionDescription.type = Types::ApplicationVersionDescription
    ApplicationVersionDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionDescription)
    ApplicationVersionDescriptionsMessage.add_member(:application_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionDescriptionList, location_name: 'ApplicationVersions'))
    ApplicationVersionDescriptionsMessage.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ApplicationVersionDescriptionsMessage.type = Types::ApplicationVersionDescriptionsMessage
    ApplicationVersionLifecycleConfig.add_member(:max_count_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCountRule, location_name: 'MaxCountRule'))
    ApplicationVersionLifecycleConfig.add_member(:max_age_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxAgeRule, location_name: 'MaxAgeRule'))
    ApplicationVersionLifecycleConfig.type = Types::ApplicationVersionLifecycleConfig
    ApplicationVersionStatus.add_member(:processed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processed', traits: {"smithy.api#enumValue" => "Processed"}))
    ApplicationVersionStatus.add_member(:unprocessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unprocessed', traits: {"smithy.api#enumValue" => "Unprocessed"}))
    ApplicationVersionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    ApplicationVersionStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    ApplicationVersionStatus.add_member(:building, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Building', traits: {"smithy.api#enumValue" => "Building"}))
    ApplyEnvironmentManagedActionRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnvironmentName'))
    ApplyEnvironmentManagedActionRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnvironmentId'))
    ApplyEnvironmentManagedActionRequest.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionId', traits: {"smithy.api#required" => {}}))
    ApplyEnvironmentManagedActionRequest.type = Types::ApplyEnvironmentManagedActionRequest
    ApplyEnvironmentManagedActionResult.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionId'))
    ApplyEnvironmentManagedActionResult.add_member(:action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionDescription'))
    ApplyEnvironmentManagedActionResult.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType'))
    ApplyEnvironmentManagedActionResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ApplyEnvironmentManagedActionResult.type = Types::ApplyEnvironmentManagedActionResult
    AssociateEnvironmentOperationsRoleMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName', traits: {"smithy.api#required" => {}}))
    AssociateEnvironmentOperationsRoleMessage.add_member(:operations_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsRole, location_name: 'OperationsRole', traits: {"smithy.api#required" => {}}))
    AssociateEnvironmentOperationsRoleMessage.type = Types::AssociateEnvironmentOperationsRoleMessage
    AutoScalingGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Name'))
    AutoScalingGroup.type = Types::AutoScalingGroup
    AutoScalingGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroup)
    AvailableSolutionStackDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackDescription)
    AvailableSolutionStackNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName)
    BuildConfiguration.add_member(:artifact_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactName'))
    BuildConfiguration.add_member(:code_build_service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'CodeBuildServiceRole', traits: {"smithy.api#required" => {}}))
    BuildConfiguration.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'ComputeType'))
    BuildConfiguration.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Image', traits: {"smithy.api#required" => {}}))
    BuildConfiguration.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInt, location_name: 'TimeoutInMinutes'))
    BuildConfiguration.type = Types::BuildConfiguration
    Builder.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN'))
    Builder.type = Types::Builder
    CPUUtilization.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'User'))
    CPUUtilization.add_member(:nice, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Nice'))
    CPUUtilization.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'System'))
    CPUUtilization.add_member(:idle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Idle'))
    CPUUtilization.add_member(:io_wait, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'IOWait'))
    CPUUtilization.add_member(:irq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'IRQ'))
    CPUUtilization.add_member(:soft_irq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'SoftIRQ'))
    CPUUtilization.add_member(:privileged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'Privileged'))
    CPUUtilization.type = Types::CPUUtilization
    Causes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cause)
    CheckDNSAvailabilityMessage.add_member(:cname_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCnamePrefix, location_name: 'CNAMEPrefix', traits: {"smithy.api#required" => {}}))
    CheckDNSAvailabilityMessage.type = Types::CheckDNSAvailabilityMessage
    CheckDNSAvailabilityResultMessage.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CnameAvailability, location_name: 'Available'))
    CheckDNSAvailabilityResultMessage.add_member(:fully_qualified_cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCname, location_name: 'FullyQualifiedCNAME'))
    CheckDNSAvailabilityResultMessage.type = Types::CheckDNSAvailabilityResultMessage
    CodeBuildNotInServiceRegionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CodeBuildNotInServiceRegionException.type = Types::CodeBuildNotInServiceRegionException
    ComposeEnvironmentsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    ComposeEnvironmentsMessage.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    ComposeEnvironmentsMessage.add_member(:version_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabels, location_name: 'VersionLabels'))
    ComposeEnvironmentsMessage.type = Types::ComposeEnvironmentsMessage
    ComposeEnvironmentsOutput.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDescriptionsList, location_name: 'Environments'))
    ComposeEnvironmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ComposeEnvironmentsOutput.type = Types::ComposeEnvironmentsOutput
    ComputeType.add_member(:build_general1_small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILD_GENERAL1_SMALL', traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_SMALL"}))
    ComputeType.add_member(:build_general1_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILD_GENERAL1_MEDIUM', traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_MEDIUM"}))
    ComputeType.add_member(:build_general1_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILD_GENERAL1_LARGE', traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_LARGE"}))
    ConfigurationDeploymentStatus.add_member(:deployed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deployed', traits: {"smithy.api#enumValue" => "deployed"}))
    ConfigurationDeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending', traits: {"smithy.api#enumValue" => "pending"}))
    ConfigurationDeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'failed', traits: {"smithy.api#enumValue" => "failed"}))
    ConfigurationOptionDescription.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionNamespace, location_name: 'Namespace'))
    ConfigurationOptionDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: 'Name'))
    ConfigurationOptionDescription.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionDefaultValue, location_name: 'DefaultValue'))
    ConfigurationOptionDescription.add_member(:change_severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSeverity, location_name: 'ChangeSeverity'))
    ConfigurationOptionDescription.add_member(:user_defined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserDefinedOption, location_name: 'UserDefined'))
    ConfigurationOptionDescription.add_member(:value_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionValueType, location_name: 'ValueType'))
    ConfigurationOptionDescription.add_member(:value_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionPossibleValues, location_name: 'ValueOptions'))
    ConfigurationOptionDescription.add_member(:min_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionRestrictionMinValue, location_name: 'MinValue'))
    ConfigurationOptionDescription.add_member(:max_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionRestrictionMaxValue, location_name: 'MaxValue'))
    ConfigurationOptionDescription.add_member(:max_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionRestrictionMaxLength, location_name: 'MaxLength'))
    ConfigurationOptionDescription.add_member(:regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionRestrictionRegex, location_name: 'Regex'))
    ConfigurationOptionDescription.type = Types::ConfigurationOptionDescription
    ConfigurationOptionDescriptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionDescription)
    ConfigurationOptionPossibleValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionPossibleValue)
    ConfigurationOptionSetting.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName'))
    ConfigurationOptionSetting.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionNamespace, location_name: 'Namespace'))
    ConfigurationOptionSetting.add_member(:option_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: 'OptionName'))
    ConfigurationOptionSetting.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionValue, location_name: 'Value'))
    ConfigurationOptionSetting.type = Types::ConfigurationOptionSetting
    ConfigurationOptionSettingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSetting)
    ConfigurationOptionValueType.add_member(:scalar, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Scalar', traits: {"smithy.api#enumValue" => "Scalar"}))
    ConfigurationOptionValueType.add_member(:list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'List', traits: {"smithy.api#enumValue" => "List"}))
    ConfigurationSettingsDescription.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    ConfigurationSettingsDescription.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    ConfigurationSettingsDescription.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    ConfigurationSettingsDescription.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    ConfigurationSettingsDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ConfigurationSettingsDescription.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    ConfigurationSettingsDescription.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationDeploymentStatus, location_name: 'DeploymentStatus'))
    ConfigurationSettingsDescription.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    ConfigurationSettingsDescription.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    ConfigurationSettingsDescription.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    ConfigurationSettingsDescription.type = Types::ConfigurationSettingsDescription
    ConfigurationSettingsDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSettingsDescription)
    ConfigurationTemplateNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName)
    CreateApplicationMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    CreateApplicationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateApplicationMessage.add_member(:resource_lifecycle_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: 'ResourceLifecycleConfig'))
    CreateApplicationMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateApplicationMessage.type = Types::CreateApplicationMessage
    CreateApplicationOutput.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'Application'))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateApplicationVersionMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    CreateApplicationVersionMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#required" => {}}))
    CreateApplicationVersionMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateApplicationVersionMessage.add_member(:source_build_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceBuildInformation, location_name: 'SourceBuildInformation'))
    CreateApplicationVersionMessage.add_member(:source_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SourceBundle'))
    CreateApplicationVersionMessage.add_member(:build_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildConfiguration, location_name: 'BuildConfiguration'))
    CreateApplicationVersionMessage.add_member(:auto_create_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoCreateApplication, location_name: 'AutoCreateApplication'))
    CreateApplicationVersionMessage.add_member(:process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionProccess, location_name: 'Process'))
    CreateApplicationVersionMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateApplicationVersionMessage.type = Types::CreateApplicationVersionMessage
    CreateApplicationVersionOutput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionDescription, location_name: 'ApplicationVersion'))
    CreateApplicationVersionOutput.type = Types::CreateApplicationVersionOutput
    CreateConfigurationTemplateMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    CreateConfigurationTemplateMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName', traits: {"smithy.api#required" => {}}))
    CreateConfigurationTemplateMessage.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    CreateConfigurationTemplateMessage.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    CreateConfigurationTemplateMessage.add_member(:source_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: 'SourceConfiguration'))
    CreateConfigurationTemplateMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    CreateConfigurationTemplateMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateConfigurationTemplateMessage.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    CreateConfigurationTemplateMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateConfigurationTemplateMessage.type = Types::CreateConfigurationTemplateMessage
    CreateConfigurationTemplateOutput.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    CreateConfigurationTemplateOutput.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    CreateConfigurationTemplateOutput.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    CreateConfigurationTemplateOutput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    CreateConfigurationTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateConfigurationTemplateOutput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    CreateConfigurationTemplateOutput.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationDeploymentStatus, location_name: 'DeploymentStatus'))
    CreateConfigurationTemplateOutput.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    CreateConfigurationTemplateOutput.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    CreateConfigurationTemplateOutput.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    CreateConfigurationTemplateOutput.type = Types::CreateConfigurationTemplateOutput
    CreateEnvironmentMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    CreateEnvironmentMessage.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    CreateEnvironmentMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateEnvironmentMessage.add_member(:cname_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCnamePrefix, location_name: 'CNAMEPrefix'))
    CreateEnvironmentMessage.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: 'Tier'))
    CreateEnvironmentMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateEnvironmentMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    CreateEnvironmentMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    CreateEnvironmentMessage.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    CreateEnvironmentMessage.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    CreateEnvironmentMessage.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    CreateEnvironmentMessage.add_member(:options_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: 'OptionsToRemove'))
    CreateEnvironmentMessage.add_member(:operations_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsRole, location_name: 'OperationsRole'))
    CreateEnvironmentMessage.type = Types::CreateEnvironmentMessage
    CreateEnvironmentOutput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    CreateEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    CreateEnvironmentOutput.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    CreateEnvironmentOutput.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    CreateEnvironmentOutput.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    CreateEnvironmentOutput.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    CreateEnvironmentOutput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    CreateEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateEnvironmentOutput.add_member(:endpoint_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointURL, location_name: 'EndpointURL'))
    CreateEnvironmentOutput.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCname, location_name: 'CNAME'))
    CreateEnvironmentOutput.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    CreateEnvironmentOutput.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    CreateEnvironmentOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: 'Status'))
    CreateEnvironmentOutput.add_member(:abortable_operation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortableOperationInProgress, location_name: 'AbortableOperationInProgress'))
    CreateEnvironmentOutput.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: 'Health'))
    CreateEnvironmentOutput.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealthStatus, location_name: 'HealthStatus'))
    CreateEnvironmentOutput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentResourcesDescription, location_name: 'Resources'))
    CreateEnvironmentOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: 'Tier'))
    CreateEnvironmentOutput.add_member(:environment_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLinks, location_name: 'EnvironmentLinks'))
    CreateEnvironmentOutput.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'EnvironmentArn'))
    CreateEnvironmentOutput.add_member(:operations_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsRole, location_name: 'OperationsRole'))
    CreateEnvironmentOutput.type = Types::CreateEnvironmentOutput
    CreatePlatformVersionRequest.add_member(:platform_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformName, location_name: 'PlatformName', traits: {"smithy.api#required" => {}}))
    CreatePlatformVersionRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformVersion, location_name: 'PlatformVersion', traits: {"smithy.api#required" => {}}))
    CreatePlatformVersionRequest.add_member(:platform_definition_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'PlatformDefinitionBundle', traits: {"smithy.api#required" => {}}))
    CreatePlatformVersionRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    CreatePlatformVersionRequest.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    CreatePlatformVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreatePlatformVersionRequest.type = Types::CreatePlatformVersionRequest
    CreatePlatformVersionResult.add_member(:platform_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformSummary, location_name: 'PlatformSummary'))
    CreatePlatformVersionResult.add_member(:builder, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Builder, location_name: 'Builder'))
    CreatePlatformVersionResult.type = Types::CreatePlatformVersionResult
    CreateStorageLocationResultMessage.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket'))
    CreateStorageLocationResultMessage.type = Types::CreateStorageLocationResultMessage
    CustomAmi.add_member(:virtualization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualizationType, location_name: 'VirtualizationType'))
    CustomAmi.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageId, location_name: 'ImageId'))
    CustomAmi.type = Types::CustomAmi
    CustomAmiList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAmi)
    DeleteApplicationMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationMessage.add_member(:terminate_env_by_force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateEnvForce, location_name: 'TerminateEnvByForce'))
    DeleteApplicationMessage.type = Types::DeleteApplicationMessage
    DeleteApplicationVersionMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteApplicationVersionMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#required" => {}}))
    DeleteApplicationVersionMessage.add_member(:delete_source_bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceBundle, location_name: 'DeleteSourceBundle'))
    DeleteApplicationVersionMessage.type = Types::DeleteApplicationVersionMessage
    DeleteConfigurationTemplateMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteConfigurationTemplateMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName', traits: {"smithy.api#required" => {}}))
    DeleteConfigurationTemplateMessage.type = Types::DeleteConfigurationTemplateMessage
    DeleteEnvironmentConfigurationMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentConfigurationMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentConfigurationMessage.type = Types::DeleteEnvironmentConfigurationMessage
    DeletePlatformVersionRequest.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    DeletePlatformVersionRequest.type = Types::DeletePlatformVersionRequest
    DeletePlatformVersionResult.add_member(:platform_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformSummary, location_name: 'PlatformSummary'))
    DeletePlatformVersionResult.type = Types::DeletePlatformVersionResult
    Deployment.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionLabel'))
    Deployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'DeploymentId'))
    Deployment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    Deployment.add_member(:deployment_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentTimestamp, location_name: 'DeploymentTime'))
    Deployment.type = Types::Deployment
    DescribeAccountAttributesResult.add_member(:resource_quotas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuotas, location_name: 'ResourceQuotas'))
    DescribeAccountAttributesResult.type = Types::DescribeAccountAttributesResult
    DescribeApplicationVersionsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    DescribeApplicationVersionsMessage.add_member(:version_labels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabelsList, location_name: 'VersionLabels'))
    DescribeApplicationVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeApplicationVersionsMessage.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeApplicationVersionsMessage.type = Types::DescribeApplicationVersionsMessage
    DescribeApplicationsMessage.add_member(:application_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNamesList, location_name: 'ApplicationNames'))
    DescribeApplicationsMessage.type = Types::DescribeApplicationsMessage
    DescribeConfigurationOptionsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    DescribeConfigurationOptionsMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    DescribeConfigurationOptionsMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeConfigurationOptionsMessage.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    DescribeConfigurationOptionsMessage.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    DescribeConfigurationOptionsMessage.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: 'Options'))
    DescribeConfigurationOptionsMessage.type = Types::DescribeConfigurationOptionsMessage
    DescribeConfigurationOptionsOutput.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    DescribeConfigurationOptionsOutput.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    DescribeConfigurationOptionsOutput.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionDescriptionsList, location_name: 'Options'))
    DescribeConfigurationOptionsOutput.type = Types::DescribeConfigurationOptionsOutput
    DescribeConfigurationSettingsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    DescribeConfigurationSettingsMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    DescribeConfigurationSettingsMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeConfigurationSettingsMessage.type = Types::DescribeConfigurationSettingsMessage
    DescribeConfigurationSettingsOutput.add_member(:configuration_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSettingsDescriptionList, location_name: 'ConfigurationSettings'))
    DescribeConfigurationSettingsOutput.type = Types::DescribeConfigurationSettingsOutput
    DescribeEnvironmentHealthRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeEnvironmentHealthRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    DescribeEnvironmentHealthRequest.add_member(:attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealthAttributes, location_name: 'AttributeNames'))
    DescribeEnvironmentHealthRequest.type = Types::DescribeEnvironmentHealthRequest
    DescribeEnvironmentHealthResult.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeEnvironmentHealthResult.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HealthStatus'))
    DescribeEnvironmentHealthResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: 'Status'))
    DescribeEnvironmentHealthResult.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Color'))
    DescribeEnvironmentHealthResult.add_member(:causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Causes, location_name: 'Causes'))
    DescribeEnvironmentHealthResult.add_member(:application_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMetrics, location_name: 'ApplicationMetrics'))
    DescribeEnvironmentHealthResult.add_member(:instances_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHealthSummary, location_name: 'InstancesHealth'))
    DescribeEnvironmentHealthResult.add_member(:refreshed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshedAt, location_name: 'RefreshedAt'))
    DescribeEnvironmentHealthResult.type = Types::DescribeEnvironmentHealthResult
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:max_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedActionHistoryMaxItems, location_name: 'MaxItems'))
    DescribeEnvironmentManagedActionHistoryRequest.type = Types::DescribeEnvironmentManagedActionHistoryRequest
    DescribeEnvironmentManagedActionHistoryResult.add_member(:managed_action_history_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedActionHistoryItems, location_name: 'ManagedActionHistoryItems'))
    DescribeEnvironmentManagedActionHistoryResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeEnvironmentManagedActionHistoryResult.type = Types::DescribeEnvironmentManagedActionHistoryResult
    DescribeEnvironmentManagedActionsRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnvironmentName'))
    DescribeEnvironmentManagedActionsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnvironmentId'))
    DescribeEnvironmentManagedActionsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStatus, location_name: 'Status'))
    DescribeEnvironmentManagedActionsRequest.type = Types::DescribeEnvironmentManagedActionsRequest
    DescribeEnvironmentManagedActionsResult.add_member(:managed_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedActions, location_name: 'ManagedActions'))
    DescribeEnvironmentManagedActionsResult.type = Types::DescribeEnvironmentManagedActionsResult
    DescribeEnvironmentResourcesMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    DescribeEnvironmentResourcesMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeEnvironmentResourcesMessage.type = Types::DescribeEnvironmentResourcesMessage
    DescribeEnvironmentsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    DescribeEnvironmentsMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    DescribeEnvironmentsMessage.add_member(:environment_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentIdList, location_name: 'EnvironmentIds'))
    DescribeEnvironmentsMessage.add_member(:environment_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentNamesList, location_name: 'EnvironmentNames'))
    DescribeEnvironmentsMessage.add_member(:include_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeDeleted, location_name: 'IncludeDeleted'))
    DescribeEnvironmentsMessage.add_member(:included_deleted_back_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeDeletedBackTo, location_name: 'IncludedDeletedBackTo'))
    DescribeEnvironmentsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeEnvironmentsMessage.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeEnvironmentsMessage.type = Types::DescribeEnvironmentsMessage
    DescribeEnvironmentsOutput.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDescriptionsList, location_name: 'Environments'))
    DescribeEnvironmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeEnvironmentsOutput.type = Types::DescribeEnvironmentsOutput
    DescribeEventsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    DescribeEventsMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    DescribeEventsMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    DescribeEventsMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    DescribeEventsMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeEventsMessage.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    DescribeEventsMessage.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    DescribeEventsMessage.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSeverity, location_name: 'Severity'))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeFilterStart, location_name: 'StartTime'))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeFilterEnd, location_name: 'EndTime'))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRecords, location_name: 'MaxRecords'))
    DescribeEventsMessage.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeInstancesHealthRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    DescribeInstancesHealthRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    DescribeInstancesHealthRequest.add_member(:attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesHealthAttributes, location_name: 'AttributeNames'))
    DescribeInstancesHealthRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeInstancesHealthRequest.type = Types::DescribeInstancesHealthRequest
    DescribeInstancesHealthResult.add_member(:instance_health_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceHealthList, location_name: 'InstanceHealthList'))
    DescribeInstancesHealthResult.add_member(:refreshed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshedAt, location_name: 'RefreshedAt'))
    DescribeInstancesHealthResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeInstancesHealthResult.type = Types::DescribeInstancesHealthResult
    DescribePlatformVersionRequest.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    DescribePlatformVersionRequest.type = Types::DescribePlatformVersionRequest
    DescribePlatformVersionResult.add_member(:platform_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformDescription, location_name: 'PlatformDescription'))
    DescribePlatformVersionResult.type = Types::DescribePlatformVersionResult
    DisassociateEnvironmentOperationsRoleMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName', traits: {"smithy.api#required" => {}}))
    DisassociateEnvironmentOperationsRoleMessage.type = Types::DisassociateEnvironmentOperationsRoleMessage
    ElasticBeanstalkServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ElasticBeanstalkServiceException.type = Types::ElasticBeanstalkServiceException
    EnvironmentDescription.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    EnvironmentDescription.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    EnvironmentDescription.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    EnvironmentDescription.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    EnvironmentDescription.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    EnvironmentDescription.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    EnvironmentDescription.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    EnvironmentDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    EnvironmentDescription.add_member(:endpoint_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointURL, location_name: 'EndpointURL'))
    EnvironmentDescription.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCname, location_name: 'CNAME'))
    EnvironmentDescription.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    EnvironmentDescription.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    EnvironmentDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: 'Status'))
    EnvironmentDescription.add_member(:abortable_operation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortableOperationInProgress, location_name: 'AbortableOperationInProgress'))
    EnvironmentDescription.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: 'Health'))
    EnvironmentDescription.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealthStatus, location_name: 'HealthStatus'))
    EnvironmentDescription.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentResourcesDescription, location_name: 'Resources'))
    EnvironmentDescription.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: 'Tier'))
    EnvironmentDescription.add_member(:environment_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLinks, location_name: 'EnvironmentLinks'))
    EnvironmentDescription.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'EnvironmentArn'))
    EnvironmentDescription.add_member(:operations_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsRole, location_name: 'OperationsRole'))
    EnvironmentDescription.type = Types::EnvironmentDescription
    EnvironmentDescriptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDescription)
    EnvironmentHealth.add_member(:green, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Green', traits: {"smithy.api#enumValue" => "Green"}))
    EnvironmentHealth.add_member(:yellow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Yellow', traits: {"smithy.api#enumValue" => "Yellow"}))
    EnvironmentHealth.add_member(:red, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Red', traits: {"smithy.api#enumValue" => "Red"}))
    EnvironmentHealth.add_member(:grey, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Grey', traits: {"smithy.api#enumValue" => "Grey"}))
    EnvironmentHealthAttribute.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Status', traits: {"smithy.api#enumValue" => "Status"}))
    EnvironmentHealthAttribute.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Color', traits: {"smithy.api#enumValue" => "Color"}))
    EnvironmentHealthAttribute.add_member(:causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Causes', traits: {"smithy.api#enumValue" => "Causes"}))
    EnvironmentHealthAttribute.add_member(:application_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApplicationMetrics', traits: {"smithy.api#enumValue" => "ApplicationMetrics"}))
    EnvironmentHealthAttribute.add_member(:instances_health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InstancesHealth', traits: {"smithy.api#enumValue" => "InstancesHealth"}))
    EnvironmentHealthAttribute.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'All', traits: {"smithy.api#enumValue" => "All"}))
    EnvironmentHealthAttribute.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HealthStatus', traits: {"smithy.api#enumValue" => "HealthStatus"}))
    EnvironmentHealthAttribute.add_member(:refreshed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RefreshedAt', traits: {"smithy.api#enumValue" => "RefreshedAt"}))
    EnvironmentHealthAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealthAttribute)
    EnvironmentHealthStatus.add_member(:no_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NoData', traits: {"smithy.api#enumValue" => "NoData"}))
    EnvironmentHealthStatus.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unknown', traits: {"smithy.api#enumValue" => "Unknown"}))
    EnvironmentHealthStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "Pending"}))
    EnvironmentHealthStatus.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ok', traits: {"smithy.api#enumValue" => "Ok"}))
    EnvironmentHealthStatus.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Info', traits: {"smithy.api#enumValue" => "Info"}))
    EnvironmentHealthStatus.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Warning', traits: {"smithy.api#enumValue" => "Warning"}))
    EnvironmentHealthStatus.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Degraded', traits: {"smithy.api#enumValue" => "Degraded"}))
    EnvironmentHealthStatus.add_member(:severe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Severe', traits: {"smithy.api#enumValue" => "Severe"}))
    EnvironmentHealthStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Suspended', traits: {"smithy.api#enumValue" => "Suspended"}))
    EnvironmentIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId)
    EnvironmentInfoDescription.add_member(:info_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoType, location_name: 'InfoType'))
    EnvironmentInfoDescription.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2InstanceId, location_name: 'Ec2InstanceId'))
    EnvironmentInfoDescription.add_member(:sample_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SampleTimestamp, location_name: 'SampleTimestamp'))
    EnvironmentInfoDescription.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    EnvironmentInfoDescription.type = Types::EnvironmentInfoDescription
    EnvironmentInfoDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoDescription)
    EnvironmentInfoType.add_member(:tail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'tail', traits: {"smithy.api#enumValue" => "tail"}))
    EnvironmentInfoType.add_member(:bundle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'bundle', traits: {"smithy.api#enumValue" => "bundle"}))
    EnvironmentLink.add_member(:link_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LinkName'))
    EnvironmentLink.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnvironmentName'))
    EnvironmentLink.type = Types::EnvironmentLink
    EnvironmentLinks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLink)
    EnvironmentNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName)
    EnvironmentResourceDescription.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    EnvironmentResourceDescription.add_member(:auto_scaling_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: 'AutoScalingGroups'))
    EnvironmentResourceDescription.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceList, location_name: 'Instances'))
    EnvironmentResourceDescription.add_member(:launch_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfigurationList, location_name: 'LaunchConfigurations'))
    EnvironmentResourceDescription.add_member(:launch_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplateList, location_name: 'LaunchTemplates'))
    EnvironmentResourceDescription.add_member(:load_balancers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerList, location_name: 'LoadBalancers'))
    EnvironmentResourceDescription.add_member(:triggers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerList, location_name: 'Triggers'))
    EnvironmentResourceDescription.add_member(:queues, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueueList, location_name: 'Queues'))
    EnvironmentResourceDescription.type = Types::EnvironmentResourceDescription
    EnvironmentResourceDescriptionsMessage.add_member(:environment_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentResourceDescription, location_name: 'EnvironmentResources'))
    EnvironmentResourceDescriptionsMessage.type = Types::EnvironmentResourceDescriptionsMessage
    EnvironmentResourcesDescription.add_member(:load_balancer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerDescription, location_name: 'LoadBalancer'))
    EnvironmentResourcesDescription.type = Types::EnvironmentResourcesDescription
    EnvironmentStatus.add_member(:aborting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Aborting', traits: {"smithy.api#enumValue" => "Aborting"}))
    EnvironmentStatus.add_member(:launching, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Launching', traits: {"smithy.api#enumValue" => "Launching"}))
    EnvironmentStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Updating', traits: {"smithy.api#enumValue" => "Updating"}))
    EnvironmentStatus.add_member(:linking_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LinkingFrom', traits: {"smithy.api#enumValue" => "LinkingFrom"}))
    EnvironmentStatus.add_member(:linking_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LinkingTo', traits: {"smithy.api#enumValue" => "LinkingTo"}))
    EnvironmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ready', traits: {"smithy.api#enumValue" => "Ready"}))
    EnvironmentStatus.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminating', traits: {"smithy.api#enumValue" => "Terminating"}))
    EnvironmentStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Terminated', traits: {"smithy.api#enumValue" => "Terminated"}))
    EnvironmentTier.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    EnvironmentTier.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    EnvironmentTier.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    EnvironmentTier.type = Types::EnvironmentTier
    EventDescription.add_member(:event_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDate, location_name: 'EventDate'))
    EventDescription.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventMessage, location_name: 'Message'))
    EventDescription.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    EventDescription.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    EventDescription.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    EventDescription.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    EventDescription.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    EventDescription.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: 'RequestId'))
    EventDescription.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSeverity, location_name: 'Severity'))
    EventDescription.type = Types::EventDescription
    EventDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDescription)
    EventDescriptionsMessage.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDescriptionList, location_name: 'Events'))
    EventDescriptionsMessage.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    EventDescriptionsMessage.type = Types::EventDescriptionsMessage
    EventSeverity.add_member(:trace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRACE', traits: {"smithy.api#enumValue" => "TRACE"}))
    EventSeverity.add_member(:debug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    EventSeverity.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INFO', traits: {"smithy.api#enumValue" => "INFO"}))
    EventSeverity.add_member(:warn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WARN', traits: {"smithy.api#enumValue" => "WARN"}))
    EventSeverity.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    EventSeverity.add_member(:fatal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FATAL', traits: {"smithy.api#enumValue" => "FATAL"}))
    FailureType.add_member(:update_cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateCancelled', traits: {"smithy.api#enumValue" => "UpdateCancelled"}))
    FailureType.add_member(:cancellation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CancellationFailed', traits: {"smithy.api#enumValue" => "CancellationFailed"}))
    FailureType.add_member(:rollback_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RollbackFailed', traits: {"smithy.api#enumValue" => "RollbackFailed"}))
    FailureType.add_member(:rollback_successful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RollbackSuccessful', traits: {"smithy.api#enumValue" => "RollbackSuccessful"}))
    FailureType.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalFailure', traits: {"smithy.api#enumValue" => "InternalFailure"}))
    FailureType.add_member(:invalid_environment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidEnvironmentState', traits: {"smithy.api#enumValue" => "InvalidEnvironmentState"}))
    FailureType.add_member(:permissions_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PermissionsError', traits: {"smithy.api#enumValue" => "PermissionsError"}))
    Instance.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id'))
    Instance.type = Types::Instance
    InstanceHealthList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SingleInstanceHealth)
    InstanceHealthSummary.add_member(:no_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'NoData'))
    InstanceHealthSummary.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Unknown'))
    InstanceHealthSummary.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Pending'))
    InstanceHealthSummary.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Ok'))
    InstanceHealthSummary.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Info'))
    InstanceHealthSummary.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Warning'))
    InstanceHealthSummary.add_member(:degraded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Degraded'))
    InstanceHealthSummary.add_member(:severe, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Severe'))
    InstanceHealthSummary.type = Types::InstanceHealthSummary
    InstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InstancesHealthAttribute.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HealthStatus', traits: {"smithy.api#enumValue" => "HealthStatus"}))
    InstancesHealthAttribute.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Color', traits: {"smithy.api#enumValue" => "Color"}))
    InstancesHealthAttribute.add_member(:causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Causes', traits: {"smithy.api#enumValue" => "Causes"}))
    InstancesHealthAttribute.add_member(:application_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ApplicationMetrics', traits: {"smithy.api#enumValue" => "ApplicationMetrics"}))
    InstancesHealthAttribute.add_member(:refreshed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RefreshedAt', traits: {"smithy.api#enumValue" => "RefreshedAt"}))
    InstancesHealthAttribute.add_member(:launched_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LaunchedAt', traits: {"smithy.api#enumValue" => "LaunchedAt"}))
    InstancesHealthAttribute.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'System', traits: {"smithy.api#enumValue" => "System"}))
    InstancesHealthAttribute.add_member(:deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deployment', traits: {"smithy.api#enumValue" => "Deployment"}))
    InstancesHealthAttribute.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AvailabilityZone', traits: {"smithy.api#enumValue" => "AvailabilityZone"}))
    InstancesHealthAttribute.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InstanceType', traits: {"smithy.api#enumValue" => "InstanceType"}))
    InstancesHealthAttribute.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'All', traits: {"smithy.api#enumValue" => "All"}))
    InstancesHealthAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesHealthAttribute)
    InsufficientPrivilegesException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientPrivilegesException.type = Types::InsufficientPrivilegesException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    Latency.add_member(:p999, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P999'))
    Latency.add_member(:p99, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P99'))
    Latency.add_member(:p95, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P95'))
    Latency.add_member(:p90, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P90'))
    Latency.add_member(:p85, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P85'))
    Latency.add_member(:p75, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P75'))
    Latency.add_member(:p50, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P50'))
    Latency.add_member(:p10, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableDouble, location_name: 'P10'))
    Latency.type = Types::Latency
    LaunchConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Name'))
    LaunchConfiguration.type = Types::LaunchConfiguration
    LaunchConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchConfiguration)
    LaunchTemplate.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Id'))
    LaunchTemplate.type = Types::LaunchTemplate
    LaunchTemplateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchTemplate)
    ListAvailableSolutionStacksResultMessage.add_member(:solution_stacks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableSolutionStackNamesList, location_name: 'SolutionStacks'))
    ListAvailableSolutionStacksResultMessage.add_member(:solution_stack_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableSolutionStackDetailsList, location_name: 'SolutionStackDetails'))
    ListAvailableSolutionStacksResultMessage.type = Types::ListAvailableSolutionStacksResultMessage
    ListPlatformBranchesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilters, location_name: 'Filters'))
    ListPlatformBranchesRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformBranchMaxRecords, location_name: 'MaxRecords'))
    ListPlatformBranchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPlatformBranchesRequest.type = Types::ListPlatformBranchesRequest
    ListPlatformBranchesResult.add_member(:platform_branch_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformBranchSummaryList, location_name: 'PlatformBranchSummaryList'))
    ListPlatformBranchesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPlatformBranchesResult.type = Types::ListPlatformBranchesResult
    ListPlatformVersionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilters, location_name: 'Filters'))
    ListPlatformVersionsRequest.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformMaxRecords, location_name: 'MaxRecords'))
    ListPlatformVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPlatformVersionsRequest.type = Types::ListPlatformVersionsRequest
    ListPlatformVersionsResult.add_member(:platform_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformSummaryList, location_name: 'PlatformSummaryList'))
    ListPlatformVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPlatformVersionsResult.type = Types::ListPlatformVersionsResult
    ListTagsForResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    Listener.add_member(:protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Protocol'))
    Listener.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#default" => 0}))
    Listener.type = Types::Listener
    LoadAverage.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadAverageValue)
    LoadBalancer.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Name'))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancerDescription.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoadBalancerName'))
    LoadBalancerDescription.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    LoadBalancerDescription.add_member(:listeners, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancerListenersDescription, location_name: 'Listeners'))
    LoadBalancerDescription.type = Types::LoadBalancerDescription
    LoadBalancerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBalancer)
    LoadBalancerListenersDescription.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listener)
    ManagedAction.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionId'))
    ManagedAction.add_member(:action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionDescription'))
    ManagedAction.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType'))
    ManagedAction.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStatus, location_name: 'Status'))
    ManagedAction.add_member(:window_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'WindowStartTime'))
    ManagedAction.type = Types::ManagedAction
    ManagedActionHistoryItem.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionId'))
    ManagedActionHistoryItem.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType'))
    ManagedActionHistoryItem.add_member(:action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionDescription'))
    ManagedActionHistoryItem.add_member(:failure_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureType, location_name: 'FailureType'))
    ManagedActionHistoryItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionHistoryStatus, location_name: 'Status'))
    ManagedActionHistoryItem.add_member(:failure_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureDescription'))
    ManagedActionHistoryItem.add_member(:executed_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExecutedTime'))
    ManagedActionHistoryItem.add_member(:finished_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FinishedTime'))
    ManagedActionHistoryItem.type = Types::ManagedActionHistoryItem
    ManagedActionHistoryItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedActionHistoryItem)
    ManagedActionInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ManagedActionInvalidStateException.type = Types::ManagedActionInvalidStateException
    ManagedActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedAction)
    MaxAgeRule.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'Enabled', traits: {"smithy.api#required" => {}}))
    MaxAgeRule.add_member(:max_age_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInt, location_name: 'MaxAgeInDays'))
    MaxAgeRule.add_member(:delete_source_from_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'DeleteSourceFromS3'))
    MaxAgeRule.type = Types::MaxAgeRule
    MaxCountRule.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'Enabled', traits: {"smithy.api#required" => {}}))
    MaxCountRule.add_member(:max_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInt, location_name: 'MaxCount'))
    MaxCountRule.add_member(:delete_source_from_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: 'DeleteSourceFromS3'))
    MaxCountRule.type = Types::MaxCountRule
    OperationInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OperationInProgressException.type = Types::OperationInProgressException
    OptionRestrictionRegex.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexPattern, location_name: 'Pattern'))
    OptionRestrictionRegex.add_member(:label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegexLabel, location_name: 'Label'))
    OptionRestrictionRegex.type = Types::OptionRestrictionRegex
    OptionSpecification.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName'))
    OptionSpecification.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionNamespace, location_name: 'Namespace'))
    OptionSpecification.add_member(:option_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: 'OptionName'))
    OptionSpecification.type = Types::OptionSpecification
    OptionsSpecifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionSpecification)
    PlatformBranchSummary.add_member(:platform_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformName, location_name: 'PlatformName'))
    PlatformBranchSummary.add_member(:branch_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'BranchName'))
    PlatformBranchSummary.add_member(:lifecycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformBranchLifecycleState, location_name: 'LifecycleState'))
    PlatformBranchSummary.add_member(:branch_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchOrder, location_name: 'BranchOrder', traits: {"smithy.api#default" => 0}))
    PlatformBranchSummary.add_member(:supported_tier_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTierList, location_name: 'SupportedTierList'))
    PlatformBranchSummary.type = Types::PlatformBranchSummary
    PlatformBranchSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformBranchSummary)
    PlatformDescription.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    PlatformDescription.add_member(:platform_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformOwner, location_name: 'PlatformOwner'))
    PlatformDescription.add_member(:platform_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformName, location_name: 'PlatformName'))
    PlatformDescription.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformVersion, location_name: 'PlatformVersion'))
    PlatformDescription.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    PlatformDescription.add_member(:platform_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformStatus, location_name: 'PlatformStatus'))
    PlatformDescription.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    PlatformDescription.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    PlatformDescription.add_member(:platform_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCategory, location_name: 'PlatformCategory'))
    PlatformDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    PlatformDescription.add_member(:maintainer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Maintainer, location_name: 'Maintainer'))
    PlatformDescription.add_member(:operating_system_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemName, location_name: 'OperatingSystemName'))
    PlatformDescription.add_member(:operating_system_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemVersion, location_name: 'OperatingSystemVersion'))
    PlatformDescription.add_member(:programming_languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformProgrammingLanguages, location_name: 'ProgrammingLanguages'))
    PlatformDescription.add_member(:frameworks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFrameworks, location_name: 'Frameworks'))
    PlatformDescription.add_member(:custom_ami_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomAmiList, location_name: 'CustomAmiList'))
    PlatformDescription.add_member(:supported_tier_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTierList, location_name: 'SupportedTierList'))
    PlatformDescription.add_member(:supported_addon_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedAddonList, location_name: 'SupportedAddonList'))
    PlatformDescription.add_member(:platform_lifecycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformLifecycleState, location_name: 'PlatformLifecycleState'))
    PlatformDescription.add_member(:platform_branch_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'PlatformBranchName'))
    PlatformDescription.add_member(:platform_branch_lifecycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformBranchLifecycleState, location_name: 'PlatformBranchLifecycleState'))
    PlatformDescription.type = Types::PlatformDescription
    PlatformFilter.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilterType, location_name: 'Type'))
    PlatformFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilterOperator, location_name: 'Operator'))
    PlatformFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilterValueList, location_name: 'Values'))
    PlatformFilter.type = Types::PlatformFilter
    PlatformFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilterValue)
    PlatformFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFilter)
    PlatformFramework.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    PlatformFramework.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    PlatformFramework.type = Types::PlatformFramework
    PlatformFrameworks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformFramework)
    PlatformProgrammingLanguage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    PlatformProgrammingLanguage.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    PlatformProgrammingLanguage.type = Types::PlatformProgrammingLanguage
    PlatformProgrammingLanguages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformProgrammingLanguage)
    PlatformStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Creating', traits: {"smithy.api#enumValue" => "Creating"}))
    PlatformStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    PlatformStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ready', traits: {"smithy.api#enumValue" => "Ready"}))
    PlatformStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleting', traits: {"smithy.api#enumValue" => "Deleting"}))
    PlatformStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deleted', traits: {"smithy.api#enumValue" => "Deleted"}))
    PlatformSummary.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    PlatformSummary.add_member(:platform_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformOwner, location_name: 'PlatformOwner'))
    PlatformSummary.add_member(:platform_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformStatus, location_name: 'PlatformStatus'))
    PlatformSummary.add_member(:platform_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformCategory, location_name: 'PlatformCategory'))
    PlatformSummary.add_member(:operating_system_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemName, location_name: 'OperatingSystemName'))
    PlatformSummary.add_member(:operating_system_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemVersion, location_name: 'OperatingSystemVersion'))
    PlatformSummary.add_member(:supported_tier_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTierList, location_name: 'SupportedTierList'))
    PlatformSummary.add_member(:supported_addon_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedAddonList, location_name: 'SupportedAddonList'))
    PlatformSummary.add_member(:platform_lifecycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformLifecycleState, location_name: 'PlatformLifecycleState'))
    PlatformSummary.add_member(:platform_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformVersion, location_name: 'PlatformVersion'))
    PlatformSummary.add_member(:platform_branch_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'PlatformBranchName'))
    PlatformSummary.add_member(:platform_branch_lifecycle_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformBranchLifecycleState, location_name: 'PlatformBranchLifecycleState'))
    PlatformSummary.type = Types::PlatformSummary
    PlatformSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformSummary)
    PlatformVersionStillReferencedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PlatformVersionStillReferencedException.type = Types::PlatformVersionStillReferencedException
    Queue.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Queue.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'URL'))
    Queue.type = Types::Queue
    QueueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Queue)
    RebuildEnvironmentMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    RebuildEnvironmentMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    RebuildEnvironmentMessage.type = Types::RebuildEnvironmentMessage
    RequestEnvironmentInfoMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    RequestEnvironmentInfoMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    RequestEnvironmentInfoMessage.add_member(:info_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoType, location_name: 'InfoType', traits: {"smithy.api#required" => {}}))
    RequestEnvironmentInfoMessage.type = Types::RequestEnvironmentInfoMessage
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceQuota.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInt, location_name: 'Maximum'))
    ResourceQuota.type = Types::ResourceQuota
    ResourceQuotas.add_member(:application_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuota, location_name: 'ApplicationQuota'))
    ResourceQuotas.add_member(:application_version_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuota, location_name: 'ApplicationVersionQuota'))
    ResourceQuotas.add_member(:environment_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuota, location_name: 'EnvironmentQuota'))
    ResourceQuotas.add_member(:configuration_template_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuota, location_name: 'ConfigurationTemplateQuota'))
    ResourceQuotas.add_member(:custom_platform_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuota, location_name: 'CustomPlatformQuota'))
    ResourceQuotas.type = Types::ResourceQuotas
    ResourceTagsDescriptionMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn'))
    ResourceTagsDescriptionMessage.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'ResourceTags'))
    ResourceTagsDescriptionMessage.type = Types::ResourceTagsDescriptionMessage
    ResourceTypeNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceTypeNotSupportedException.type = Types::ResourceTypeNotSupportedException
    RestartAppServerMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    RestartAppServerMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    RestartAppServerMessage.type = Types::RestartAppServerMessage
    RetrieveEnvironmentInfoMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    RetrieveEnvironmentInfoMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    RetrieveEnvironmentInfoMessage.add_member(:info_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoType, location_name: 'InfoType', traits: {"smithy.api#required" => {}}))
    RetrieveEnvironmentInfoMessage.type = Types::RetrieveEnvironmentInfoMessage
    RetrieveEnvironmentInfoResultMessage.add_member(:environment_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentInfoDescriptionList, location_name: 'EnvironmentInfo'))
    RetrieveEnvironmentInfoResultMessage.type = Types::RetrieveEnvironmentInfoResultMessage
    S3Location.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket'))
    S3Location.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key'))
    S3Location.type = Types::S3Location
    S3LocationNotInServiceRegionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    S3LocationNotInServiceRegionException.type = Types::S3LocationNotInServiceRegionException
    S3SubscriptionRequiredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    S3SubscriptionRequiredException.type = Types::S3SubscriptionRequiredException
    SearchFilter.add_member(:attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterAttribute, location_name: 'Attribute'))
    SearchFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterOperator, location_name: 'Operator'))
    SearchFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterValues, location_name: 'Values'))
    SearchFilter.type = Types::SearchFilter
    SearchFilterValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilterValue)
    SearchFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchFilter)
    SingleInstanceHealth.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'InstanceId'))
    SingleInstanceHealth.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HealthStatus'))
    SingleInstanceHealth.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Color'))
    SingleInstanceHealth.add_member(:causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Causes, location_name: 'Causes'))
    SingleInstanceHealth.add_member(:launched_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LaunchedAt, location_name: 'LaunchedAt'))
    SingleInstanceHealth.add_member(:application_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMetrics, location_name: 'ApplicationMetrics'))
    SingleInstanceHealth.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SystemStatus, location_name: 'System'))
    SingleInstanceHealth.add_member(:deployment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment, location_name: 'Deployment'))
    SingleInstanceHealth.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    SingleInstanceHealth.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType'))
    SingleInstanceHealth.type = Types::SingleInstanceHealth
    SolutionStackDescription.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    SolutionStackDescription.add_member(:permitted_file_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackFileTypeList, location_name: 'PermittedFileTypes'))
    SolutionStackDescription.type = Types::SolutionStackDescription
    SolutionStackFileTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileTypeExtension)
    SourceBuildInformation.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#required" => {}}))
    SourceBuildInformation.add_member(:source_repository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepository, location_name: 'SourceRepository', traits: {"smithy.api#required" => {}}))
    SourceBuildInformation.add_member(:source_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceLocation, location_name: 'SourceLocation', traits: {"smithy.api#required" => {}}))
    SourceBuildInformation.type = Types::SourceBuildInformation
    SourceBundleDeletionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceBundleDeletionException.type = Types::SourceBundleDeletionException
    SourceConfiguration.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    SourceConfiguration.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    SourceConfiguration.type = Types::SourceConfiguration
    SourceRepository.add_member(:code_commit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CodeCommit', traits: {"smithy.api#enumValue" => "CodeCommit"}))
    SourceRepository.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    SourceType.add_member(:git, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Git', traits: {"smithy.api#enumValue" => "Git"}))
    SourceType.add_member(:zip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Zip', traits: {"smithy.api#enumValue" => "Zip"}))
    StatusCodes.add_member(:status2xx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Status2xx'))
    StatusCodes.add_member(:status3xx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Status3xx'))
    StatusCodes.add_member(:status4xx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Status4xx'))
    StatusCodes.add_member(:status5xx, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableInteger, location_name: 'Status5xx'))
    StatusCodes.type = Types::StatusCodes
    SupportedAddonList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedAddon)
    SupportedTierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTier)
    SwapEnvironmentCNAMEsMessage.add_member(:source_environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'SourceEnvironmentId'))
    SwapEnvironmentCNAMEsMessage.add_member(:source_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'SourceEnvironmentName'))
    SwapEnvironmentCNAMEsMessage.add_member(:destination_environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'DestinationEnvironmentId'))
    SwapEnvironmentCNAMEsMessage.add_member(:destination_environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'DestinationEnvironmentName'))
    SwapEnvironmentCNAMEsMessage.type = Types::SwapEnvironmentCNAMEsMessage
    SystemStatus.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CPUUtilization, location_name: 'CPUUtilization'))
    SystemStatus.add_member(:load_average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadAverage, location_name: 'LoadAverage'))
    SystemStatus.type = Types::SystemStatus
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value'))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    Tags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TerminateEnvironmentMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    TerminateEnvironmentMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    TerminateEnvironmentMessage.add_member(:terminate_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateEnvironmentResources, location_name: 'TerminateResources'))
    TerminateEnvironmentMessage.add_member(:force_terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForceTerminate, location_name: 'ForceTerminate'))
    TerminateEnvironmentMessage.type = Types::TerminateEnvironmentMessage
    TerminateEnvironmentOutput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    TerminateEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    TerminateEnvironmentOutput.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    TerminateEnvironmentOutput.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    TerminateEnvironmentOutput.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    TerminateEnvironmentOutput.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    TerminateEnvironmentOutput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    TerminateEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    TerminateEnvironmentOutput.add_member(:endpoint_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointURL, location_name: 'EndpointURL'))
    TerminateEnvironmentOutput.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCname, location_name: 'CNAME'))
    TerminateEnvironmentOutput.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    TerminateEnvironmentOutput.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    TerminateEnvironmentOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: 'Status'))
    TerminateEnvironmentOutput.add_member(:abortable_operation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortableOperationInProgress, location_name: 'AbortableOperationInProgress'))
    TerminateEnvironmentOutput.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: 'Health'))
    TerminateEnvironmentOutput.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealthStatus, location_name: 'HealthStatus'))
    TerminateEnvironmentOutput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentResourcesDescription, location_name: 'Resources'))
    TerminateEnvironmentOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: 'Tier'))
    TerminateEnvironmentOutput.add_member(:environment_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLinks, location_name: 'EnvironmentLinks'))
    TerminateEnvironmentOutput.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'EnvironmentArn'))
    TerminateEnvironmentOutput.add_member(:operations_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsRole, location_name: 'OperationsRole'))
    TerminateEnvironmentOutput.type = Types::TerminateEnvironmentOutput
    TooManyApplicationVersionsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyApplicationVersionsException.type = Types::TooManyApplicationVersionsException
    TooManyApplicationsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyApplicationsException.type = Types::TooManyApplicationsException
    TooManyBucketsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyBucketsException.type = Types::TooManyBucketsException
    TooManyConfigurationTemplatesException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyConfigurationTemplatesException.type = Types::TooManyConfigurationTemplatesException
    TooManyEnvironmentsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyEnvironmentsException.type = Types::TooManyEnvironmentsException
    TooManyPlatformsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyPlatformsException.type = Types::TooManyPlatformsException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    Trigger.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'Name'))
    Trigger.type = Types::Trigger
    TriggerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Trigger)
    UpdateApplicationMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    UpdateApplicationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateApplicationMessage.type = Types::UpdateApplicationMessage
    UpdateApplicationOutput.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: 'Application'))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateApplicationResourceLifecycleMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    UpdateApplicationResourceLifecycleMessage.add_member(:resource_lifecycle_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: 'ResourceLifecycleConfig', traits: {"smithy.api#required" => {}}))
    UpdateApplicationResourceLifecycleMessage.type = Types::UpdateApplicationResourceLifecycleMessage
    UpdateApplicationVersionMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    UpdateApplicationVersionMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#required" => {}}))
    UpdateApplicationVersionMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateApplicationVersionMessage.type = Types::UpdateApplicationVersionMessage
    UpdateApplicationVersionOutput.add_member(:application_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionDescription, location_name: 'ApplicationVersion'))
    UpdateApplicationVersionOutput.type = Types::UpdateApplicationVersionOutput
    UpdateConfigurationTemplateMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    UpdateConfigurationTemplateMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName', traits: {"smithy.api#required" => {}}))
    UpdateConfigurationTemplateMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateConfigurationTemplateMessage.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    UpdateConfigurationTemplateMessage.add_member(:options_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: 'OptionsToRemove'))
    UpdateConfigurationTemplateMessage.type = Types::UpdateConfigurationTemplateMessage
    UpdateConfigurationTemplateOutput.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    UpdateConfigurationTemplateOutput.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    UpdateConfigurationTemplateOutput.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    UpdateConfigurationTemplateOutput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    UpdateConfigurationTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateConfigurationTemplateOutput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    UpdateConfigurationTemplateOutput.add_member(:deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationDeploymentStatus, location_name: 'DeploymentStatus'))
    UpdateConfigurationTemplateOutput.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    UpdateConfigurationTemplateOutput.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    UpdateConfigurationTemplateOutput.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    UpdateConfigurationTemplateOutput.type = Types::UpdateConfigurationTemplateOutput
    UpdateEnvironmentMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    UpdateEnvironmentMessage.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    UpdateEnvironmentMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    UpdateEnvironmentMessage.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName'))
    UpdateEnvironmentMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateEnvironmentMessage.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: 'Tier'))
    UpdateEnvironmentMessage.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    UpdateEnvironmentMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    UpdateEnvironmentMessage.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    UpdateEnvironmentMessage.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    UpdateEnvironmentMessage.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings'))
    UpdateEnvironmentMessage.add_member(:options_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: 'OptionsToRemove'))
    UpdateEnvironmentMessage.type = Types::UpdateEnvironmentMessage
    UpdateEnvironmentOutput.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    UpdateEnvironmentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'EnvironmentId'))
    UpdateEnvironmentOutput.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName'))
    UpdateEnvironmentOutput.add_member(:version_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel'))
    UpdateEnvironmentOutput.add_member(:solution_stack_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SolutionStackName, location_name: 'SolutionStackName'))
    UpdateEnvironmentOutput.add_member(:platform_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformArn, location_name: 'PlatformArn'))
    UpdateEnvironmentOutput.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    UpdateEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateEnvironmentOutput.add_member(:endpoint_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointURL, location_name: 'EndpointURL'))
    UpdateEnvironmentOutput.add_member(:cname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DNSCname, location_name: 'CNAME'))
    UpdateEnvironmentOutput.add_member(:date_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'DateCreated'))
    UpdateEnvironmentOutput.add_member(:date_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDate, location_name: 'DateUpdated'))
    UpdateEnvironmentOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: 'Status'))
    UpdateEnvironmentOutput.add_member(:abortable_operation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortableOperationInProgress, location_name: 'AbortableOperationInProgress'))
    UpdateEnvironmentOutput.add_member(:health, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: 'Health'))
    UpdateEnvironmentOutput.add_member(:health_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentHealthStatus, location_name: 'HealthStatus'))
    UpdateEnvironmentOutput.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentResourcesDescription, location_name: 'Resources'))
    UpdateEnvironmentOutput.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: 'Tier'))
    UpdateEnvironmentOutput.add_member(:environment_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLinks, location_name: 'EnvironmentLinks'))
    UpdateEnvironmentOutput.add_member(:environment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'EnvironmentArn'))
    UpdateEnvironmentOutput.add_member(:operations_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationsRole, location_name: 'OperationsRole'))
    UpdateEnvironmentOutput.type = Types::UpdateEnvironmentOutput
    UpdateTagsForResourceMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UpdateTagsForResourceMessage.add_member(:tags_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagsToAdd'))
    UpdateTagsForResourceMessage.add_member(:tags_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagsToRemove'))
    UpdateTagsForResourceMessage.type = Types::UpdateTagsForResourceMessage
    ValidateConfigurationSettingsMessage.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'ApplicationName', traits: {"smithy.api#required" => {}}))
    ValidateConfigurationSettingsMessage.add_member(:template_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: 'TemplateName'))
    ValidateConfigurationSettingsMessage.add_member(:environment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'EnvironmentName'))
    ValidateConfigurationSettingsMessage.add_member(:option_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: 'OptionSettings', traits: {"smithy.api#required" => {}}))
    ValidateConfigurationSettingsMessage.type = Types::ValidateConfigurationSettingsMessage
    ValidateConfigurationSettingsOutput.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessagesList, location_name: 'Messages'))
    ValidateConfigurationSettingsOutput.type = Types::ValidateConfigurationSettingsOutput
    ValidationMessage.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessageString, location_name: 'Message'))
    ValidationMessage.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationSeverity, location_name: 'Severity'))
    ValidationMessage.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionNamespace, location_name: 'Namespace'))
    ValidationMessage.add_member(:option_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: 'OptionName'))
    ValidationMessage.type = Types::ValidationMessage
    ValidationMessagesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMessage)
    ValidationSeverity.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'error', traits: {"smithy.api#enumValue" => "error"}))
    ValidationSeverity.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'warning', traits: {"smithy.api#enumValue" => "warning"}))
    VersionLabels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel)
    VersionLabelsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel)

    AWSElasticBeanstalkService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.elasticbeanstalk#AWSElasticBeanstalkService"
      service.name = "AWSElasticBeanstalkService"
      service.version = "2010-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Elastic Beanstalk", "arnNamespace" => "elasticbeanstalk", "cloudFormationName" => "ElasticBeanstalk", "cloudTrailEventSource" => "elasticbeanstalk.amazonaws.com", "docId" => "elasticbeanstalk-2010-12-01", "endpointPrefix" => "elasticbeanstalk"}, "aws.auth#sigv4" => {"name" => "elasticbeanstalk"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "AWS Elastic Beanstalk", "smithy.api#xmlNamespace" => {"uri" => "http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/"}}
      service.add_operation(:abort_environment_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#AbortEnvironmentUpdate"
        operation.name = "AbortEnvironmentUpdate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortEnvironmentUpdateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:apply_environment_managed_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ApplyEnvironmentManagedAction"
        operation.name = "ApplyEnvironmentManagedAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyEnvironmentManagedActionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyEnvironmentManagedActionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedActionInvalidStateException)
        operation.traits = {}
      end)
      service.add_operation(:associate_environment_operations_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#AssociateEnvironmentOperationsRole"
        operation.name = "AssociateEnvironmentOperationsRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateEnvironmentOperationsRoleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:check_dns_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CheckDNSAvailability"
        operation.name = "CheckDNSAvailability"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDNSAvailabilityMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDNSAvailabilityResultMessage)
        operation.traits = {}
      end)
      service.add_operation(:compose_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ComposeEnvironments"
        operation.name = "ComposeEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComposeEnvironmentsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComposeEnvironmentsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyEnvironmentsException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyApplicationsException)
        operation.traits = {}
      end)
      service.add_operation(:create_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CreateApplicationVersion"
        operation.name = "CreateApplicationVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationVersionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationVersionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeBuildNotInServiceRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3LocationNotInServiceRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyApplicationsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyApplicationVersionsException)
        operation.traits = {}
      end)
      service.add_operation(:create_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CreateConfigurationTemplate"
        operation.name = "CreateConfigurationTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationTemplateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyConfigurationTemplatesException)
        operation.traits = {}
      end)
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyEnvironmentsException)
        operation.traits = {}
      end)
      service.add_operation(:create_platform_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CreatePlatformVersion"
        operation.name = "CreatePlatformVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlatformVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePlatformVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyPlatformsException)
        operation.traits = {}
      end)
      service.add_operation(:create_storage_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#CreateStorageLocation"
        operation.name = "CreateStorageLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorageLocationResultMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SubscriptionRequiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DeleteApplicationVersion"
        operation.name = "DeleteApplicationVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationVersionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3LocationNotInServiceRegionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceBundleDeletionException)
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DeleteConfigurationTemplate"
        operation.name = "DeleteConfigurationTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationTemplateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:delete_environment_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DeleteEnvironmentConfiguration"
        operation.name = "DeleteEnvironmentConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentConfigurationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:delete_platform_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DeletePlatformVersion"
        operation.name = "DeletePlatformVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlatformVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePlatformVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformVersionStillReferencedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeApplicationVersions"
        operation.name = "DescribeApplicationVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationVersionDescriptionsMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeApplications"
        operation.name = "DescribeApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationDescriptionsMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeConfigurationOptions"
        operation.name = "DescribeConfigurationOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationOptionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeConfigurationSettings"
        operation.name = "DescribeConfigurationSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationSettingsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConfigurationSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_environment_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeEnvironmentHealth"
        operation.name = "DescribeEnvironmentHealth"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentHealthRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentHealthResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_environment_managed_action_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeEnvironmentManagedActionHistory"
        operation.name = "DescribeEnvironmentManagedActionHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionHistoryResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEnvironmentManagedActionHistory.new
      end)
      service.add_operation(:describe_environment_managed_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeEnvironmentManagedActions"
        operation.name = "DescribeEnvironmentManagedActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.traits = {}
      end)
      service.add_operation(:describe_environment_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeEnvironmentResources"
        operation.name = "DescribeEnvironmentResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentResourcesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentResourceDescriptionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:describe_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeEnvironments"
        operation.name = "DescribeEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentsOutput)
        operation.traits = {}
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDescriptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_instances_health, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribeInstancesHealth"
        operation.name = "DescribeInstancesHealth"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstancesHealthRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstancesHealthResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {}
      end)
      service.add_operation(:describe_platform_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DescribePlatformVersion"
        operation.name = "DescribePlatformVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePlatformVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePlatformVersionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_environment_operations_role, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#DisassociateEnvironmentOperationsRole"
        operation.name = "DisassociateEnvironmentOperationsRole"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateEnvironmentOperationsRoleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:list_available_solution_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ListAvailableSolutionStacks"
        operation.name = "ListAvailableSolutionStacks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableSolutionStacksResultMessage)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListAvailableSolutionStacksSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:list_platform_branches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ListPlatformBranches"
        operation.name = "ListPlatformBranches"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlatformBranchesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlatformBranchesResult)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPlatformBranches.new
      end)
      service.add_operation(:list_platform_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ListPlatformVersions"
        operation.name = "ListPlatformVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlatformVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPlatformVersionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPlatformVersions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagsDescriptionMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.traits = {}
      end)
      service.add_operation(:rebuild_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#RebuildEnvironment"
        operation.name = "RebuildEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebuildEnvironmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:request_environment_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#RequestEnvironmentInfo"
        operation.name = "RequestEnvironmentInfo"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestEnvironmentInfoMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:restart_app_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#RestartAppServer"
        operation.name = "RestartAppServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestartAppServerMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:retrieve_environment_info, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#RetrieveEnvironmentInfo"
        operation.name = "RetrieveEnvironmentInfo"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveEnvironmentInfoMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveEnvironmentInfoResultMessage)
        operation.traits = {}
      end)
      service.add_operation(:swap_environment_cnam_es, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#SwapEnvironmentCNAMEs"
        operation.name = "SwapEnvironmentCNAMEs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwapEnvironmentCNAMEsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {}
      end)
      service.add_operation(:terminate_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#TerminateEnvironment"
        operation.name = "TerminateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateEnvironmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationOutput)
        operation.traits = {}
      end)
      service.add_operation(:update_application_resource_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#UpdateApplicationResourceLifecycle"
        operation.name = "UpdateApplicationResourceLifecycle"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResourceLifecycleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleDescriptionMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.traits = {}
      end)
      service.add_operation(:update_application_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#UpdateApplicationVersion"
        operation.name = "UpdateApplicationVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationVersionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationVersionOutput)
        operation.traits = {}
      end)
      service.add_operation(:update_configuration_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#UpdateConfigurationTemplate"
        operation.name = "UpdateConfigurationTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationTemplateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationTemplateOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
        operation.traits = {}
      end)
      service.add_operation(:update_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#UpdateTagsForResource"
        operation.name = "UpdateTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:validate_configuration_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.elasticbeanstalk#ValidateConfigurationSettings"
        operation.name = "ValidateConfigurationSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateConfigurationSettingsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateConfigurationSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyBucketsException)
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
