# frozen_string_literal: true

# This is generated code!

module Aws::AppConfig
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#Action', name: 'Action')
    ActionInvocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ActionInvocation', name: 'ActionInvocation')
    ActionInvocations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ActionInvocations', name: 'ActionInvocations')
    ActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ActionList', name: 'ActionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ActionPoint = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#ActionPoint', name: 'ActionPoint')
    ActionsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appconfig#ActionsMap', name: 'ActionsMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#Application', name: 'Application')
    ApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ApplicationList', name: 'ApplicationList')
    AppliedExtension = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#AppliedExtension', name: 'AppliedExtension')
    AppliedExtensions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#AppliedExtensions', name: 'AppliedExtensions')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:[a-z]+:((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:[a-zA-Z0-9-_/:.]+$"})
    BadRequestDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.appconfig#BadRequestDetails', name: 'BadRequestDetails')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BadRequestReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#BadRequestReason', name: 'BadRequestReason')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.appconfig#Blob', name: 'Blob', traits: {"smithy.api#sensitive" => {}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appconfig#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    BytesMeasure = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#BytesMeasure', name: 'BytesMeasure')
    ConfigurationProfileSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ConfigurationProfileSummary', name: 'ConfigurationProfileSummary')
    ConfigurationProfileSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ConfigurationProfileSummaryList', name: 'ConfigurationProfileSummaryList')
    ConfigurationProfileType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#ConfigurationProfileType', name: 'ConfigurationProfileType', traits: {"smithy.api#pattern" => "^[a-zA-Z\\.]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateApplicationOutput', name: 'CreateApplicationOutput')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateConfigurationProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateConfigurationProfileOutput', name: 'CreateConfigurationProfileOutput')
    CreateConfigurationProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateConfigurationProfileRequest', name: 'CreateConfigurationProfileRequest')
    CreateDeploymentStrategyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateDeploymentStrategyOutput', name: 'CreateDeploymentStrategyOutput')
    CreateDeploymentStrategyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateDeploymentStrategyRequest', name: 'CreateDeploymentStrategyRequest')
    CreateEnvironmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateEnvironmentOutput', name: 'CreateEnvironmentOutput')
    CreateEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateEnvironmentRequest', name: 'CreateEnvironmentRequest')
    CreateExtensionAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateExtensionAssociationOutput', name: 'CreateExtensionAssociationOutput')
    CreateExtensionAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateExtensionAssociationRequest', name: 'CreateExtensionAssociationRequest')
    CreateExtensionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateExtensionOutput', name: 'CreateExtensionOutput')
    CreateExtensionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateExtensionRequest', name: 'CreateExtensionRequest')
    CreateHostedConfigurationVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateHostedConfigurationVersionOutput', name: 'CreateHostedConfigurationVersionOutput')
    CreateHostedConfigurationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#CreateHostedConfigurationVersionRequest', name: 'CreateHostedConfigurationVersionRequest')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteConfigurationProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteConfigurationProfileRequest', name: 'DeleteConfigurationProfileRequest')
    DeleteDeploymentStrategyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteDeploymentStrategyRequest', name: 'DeleteDeploymentStrategyRequest')
    DeleteEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteEnvironmentRequest', name: 'DeleteEnvironmentRequest')
    DeleteExtensionAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteExtensionAssociationRequest', name: 'DeleteExtensionAssociationRequest')
    DeleteExtensionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteExtensionRequest', name: 'DeleteExtensionRequest')
    DeleteHostedConfigurationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeleteHostedConfigurationVersionRequest', name: 'DeleteHostedConfigurationVersionRequest')
    DeletionProtectionCheck = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#DeletionProtectionCheck', name: 'DeletionProtectionCheck')
    DeletionProtectionDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appconfig#DeletionProtectionDuration', name: 'DeletionProtectionDuration', traits: {"smithy.api#range" => {"min" => 15, "max" => 1440}})
    DeletionProtectionSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeletionProtectionSettings', name: 'DeletionProtectionSettings')
    DeploymentEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeploymentEvent', name: 'DeploymentEvent')
    DeploymentEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#DeploymentEventType', name: 'DeploymentEventType')
    DeploymentEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#DeploymentEvents', name: 'DeploymentEvents')
    DeploymentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#DeploymentList', name: 'DeploymentList')
    DeploymentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#DeploymentState', name: 'DeploymentState')
    DeploymentStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeploymentStrategy', name: 'DeploymentStrategy')
    DeploymentStrategyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#DeploymentStrategyId', name: 'DeploymentStrategyId', traits: {"smithy.api#pattern" => "^(^[a-z0-9]{4,7}$|^AppConfig\\.[A-Za-z0-9]{9,40}$)$"})
    DeploymentStrategyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#DeploymentStrategyList', name: 'DeploymentStrategyList')
    DeploymentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#DeploymentSummary', name: 'DeploymentSummary')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DynamicParameterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#DynamicParameterKey', name: 'DynamicParameterKey', traits: {"smithy.api#pattern" => "^([^#\\n]{1,96})#([^\\/#\\n]{1,64})$"})
    DynamicParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appconfig#DynamicParameterMap', name: 'DynamicParameterMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    Environment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#Environment', name: 'Environment')
    EnvironmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#EnvironmentList', name: 'EnvironmentList')
    EnvironmentState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#EnvironmentState', name: 'EnvironmentState')
    ExtensionAssociationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ExtensionAssociationSummaries', name: 'ExtensionAssociationSummaries')
    ExtensionAssociationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ExtensionAssociationSummary', name: 'ExtensionAssociationSummary')
    ExtensionOrParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#ExtensionOrParameterName', name: 'ExtensionOrParameterName', traits: {"smithy.api#pattern" => "^[^\\/#:\\n]{1,64}$"})
    ExtensionSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ExtensionSummaries', name: 'ExtensionSummaries')
    ExtensionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ExtensionSummary', name: 'ExtensionSummary')
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.appconfig#Float', name: 'Float', traits: {"smithy.api#default" => 0})
    GetAccountSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetAccountSettingsOutput', name: 'GetAccountSettingsOutput')
    GetApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetApplicationOutput', name: 'GetApplicationOutput')
    GetApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetApplicationRequest', name: 'GetApplicationRequest')
    GetConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetConfigurationOutput', name: 'GetConfigurationOutput')
    GetConfigurationProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetConfigurationProfileOutput', name: 'GetConfigurationProfileOutput')
    GetConfigurationProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetConfigurationProfileRequest', name: 'GetConfigurationProfileRequest')
    GetConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetConfigurationRequest', name: 'GetConfigurationRequest')
    GetDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetDeploymentOutput', name: 'GetDeploymentOutput')
    GetDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetDeploymentRequest', name: 'GetDeploymentRequest')
    GetDeploymentStrategyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetDeploymentStrategyOutput', name: 'GetDeploymentStrategyOutput')
    GetDeploymentStrategyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetDeploymentStrategyRequest', name: 'GetDeploymentStrategyRequest')
    GetEnvironmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetEnvironmentOutput', name: 'GetEnvironmentOutput')
    GetEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetEnvironmentRequest', name: 'GetEnvironmentRequest')
    GetExtensionAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetExtensionAssociationOutput', name: 'GetExtensionAssociationOutput')
    GetExtensionAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetExtensionAssociationRequest', name: 'GetExtensionAssociationRequest')
    GetExtensionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetExtensionOutput', name: 'GetExtensionOutput')
    GetExtensionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetExtensionRequest', name: 'GetExtensionRequest')
    GetHostedConfigurationVersionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetHostedConfigurationVersionOutput', name: 'GetHostedConfigurationVersionOutput')
    GetHostedConfigurationVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#GetHostedConfigurationVersionRequest', name: 'GetHostedConfigurationVersionRequest')
    GrowthFactor = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.appconfig#GrowthFactor', name: 'GrowthFactor', traits: {"smithy.api#range" => {"min" => 1.0, "max" => 100.0}})
    GrowthType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#GrowthType', name: 'GrowthType')
    HostedConfigurationVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#HostedConfigurationVersionSummary', name: 'HostedConfigurationVersionSummary')
    HostedConfigurationVersionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#HostedConfigurationVersionSummaryList', name: 'HostedConfigurationVersionSummaryList')
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Id', name: 'Id', traits: {"smithy.api#pattern" => "^[a-z0-9]{4,7}$"})
    Identifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Identifier', name: 'Identifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appconfig#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidConfigurationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#InvalidConfigurationDetail', name: 'InvalidConfigurationDetail')
    InvalidConfigurationDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#InvalidConfigurationDetailList', name: 'InvalidConfigurationDetailList')
    Iso8601DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appconfig#Iso8601DateTime', name: 'Iso8601DateTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    KmsKeyIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#KmsKeyIdentifier', name: 'KmsKeyIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyIdentifierOrEmpty = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#KmsKeyIdentifierOrEmpty', name: 'KmsKeyIdentifierOrEmpty', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListApplicationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListApplicationsOutput', name: 'ListApplicationsOutput')
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListConfigurationProfilesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListConfigurationProfilesOutput', name: 'ListConfigurationProfilesOutput')
    ListConfigurationProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListConfigurationProfilesRequest', name: 'ListConfigurationProfilesRequest')
    ListDeploymentStrategiesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListDeploymentStrategiesOutput', name: 'ListDeploymentStrategiesOutput')
    ListDeploymentStrategiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListDeploymentStrategiesRequest', name: 'ListDeploymentStrategiesRequest')
    ListDeploymentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListDeploymentsOutput', name: 'ListDeploymentsOutput')
    ListDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListDeploymentsRequest', name: 'ListDeploymentsRequest')
    ListEnvironmentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListEnvironmentsOutput', name: 'ListEnvironmentsOutput')
    ListEnvironmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListEnvironmentsRequest', name: 'ListEnvironmentsRequest')
    ListExtensionAssociationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListExtensionAssociationsOutput', name: 'ListExtensionAssociationsOutput')
    ListExtensionAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListExtensionAssociationsRequest', name: 'ListExtensionAssociationsRequest')
    ListExtensionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListExtensionsOutput', name: 'ListExtensionsOutput')
    ListExtensionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListExtensionsRequest', name: 'ListExtensionsRequest')
    ListHostedConfigurationVersionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListHostedConfigurationVersionsOutput', name: 'ListHostedConfigurationVersionsOutput')
    ListHostedConfigurationVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListHostedConfigurationVersionsRequest', name: 'ListHostedConfigurationVersionsRequest')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    LongName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#LongName', name: 'LongName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appconfig#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MinutesBetween0And24Hours = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appconfig#MinutesBetween0And24Hours', name: 'MinutesBetween0And24Hours', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1440}})
    Monitor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#Monitor', name: 'Monitor')
    MonitorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#MonitorList', name: 'MonitorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Parameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#Parameter', name: 'Parameter')
    ParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appconfig#ParameterMap', name: 'ParameterMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ParameterValueMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appconfig#ParameterValueMap', name: 'ParameterValueMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PayloadTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#PayloadTooLargeException', name: 'PayloadTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    Percentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.appconfig#Percentage', name: 'Percentage', traits: {"smithy.api#range" => {"min" => 1.0, "max" => 100.0}})
    QueryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#QueryName', name: 'QueryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ReplicateTo = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#ReplicateTo', name: 'ReplicateTo')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((arn):(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov|aws-eusc):(iam)::\\d{12}:role[/].*)$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#StartDeploymentOutput', name: 'StartDeploymentOutput')
    StartDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#StartDeploymentRequest', name: 'StartDeploymentRequest')
    StopDeploymentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#StopDeploymentOutput', name: 'StopDeploymentOutput')
    StopDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#StopDeploymentRequest', name: 'StopDeploymentRequest')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#String', name: 'String')
    StringWithLengthBetween0And32768 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#StringWithLengthBetween0And32768', name: 'StringWithLengthBetween0And32768', traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}, "smithy.api#sensitive" => {}})
    StringWithLengthBetween1And2048 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#StringWithLengthBetween1And2048', name: 'StringWithLengthBetween1And2048', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringWithLengthBetween1And255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#StringWithLengthBetween1And255', name: 'StringWithLengthBetween1And255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    StringWithLengthBetween1And64 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#StringWithLengthBetween1And64', name: 'StringWithLengthBetween1And64', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appconfig#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TriggeredBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#TriggeredBy', name: 'TriggeredBy')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAccountSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateAccountSettingsOutput', name: 'UpdateAccountSettingsOutput')
    UpdateAccountSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateAccountSettingsRequest', name: 'UpdateAccountSettingsRequest')
    UpdateApplicationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateApplicationOutput', name: 'UpdateApplicationOutput')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateConfigurationProfileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateConfigurationProfileOutput', name: 'UpdateConfigurationProfileOutput')
    UpdateConfigurationProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateConfigurationProfileRequest', name: 'UpdateConfigurationProfileRequest')
    UpdateDeploymentStrategyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateDeploymentStrategyOutput', name: 'UpdateDeploymentStrategyOutput')
    UpdateDeploymentStrategyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateDeploymentStrategyRequest', name: 'UpdateDeploymentStrategyRequest')
    UpdateEnvironmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateEnvironmentOutput', name: 'UpdateEnvironmentOutput')
    UpdateEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateEnvironmentRequest', name: 'UpdateEnvironmentRequest')
    UpdateExtensionAssociationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateExtensionAssociationOutput', name: 'UpdateExtensionAssociationOutput')
    UpdateExtensionAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateExtensionAssociationRequest', name: 'UpdateExtensionAssociationRequest')
    UpdateExtensionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateExtensionOutput', name: 'UpdateExtensionOutput')
    UpdateExtensionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#UpdateExtensionRequest', name: 'UpdateExtensionRequest')
    Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Uri', name: 'Uri', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ValidateConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#ValidateConfigurationRequest', name: 'ValidateConfigurationRequest')
    Validator = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appconfig#Validator', name: 'Validator')
    ValidatorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ValidatorList', name: 'ValidatorList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ValidatorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appconfig#ValidatorType', name: 'ValidatorType')
    ValidatorTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appconfig#ValidatorTypeList', name: 'ValidatorTypeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    VersionLabel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appconfig#VersionLabel', name: 'VersionLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[^0-9]"})

    Action.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The action name.</p>"}))
    Action.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the action.</p>"}))
    Action.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The extension URI associated to the action point in the extension definition. The URI\n         can be an Amazon Resource Name (ARN) for one of the following: an Lambda\n         function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.</p>"}))
    Action.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) for an Identity and Access Management assume role.</p>"}))
    Action.type = Types::Action
    ActionInvocation.add_member(:extension_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ExtensionIdentifier', traits: {"smithy.api#documentation" => "<p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>"}))
    ActionInvocation.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ActionName', traits: {"smithy.api#documentation" => "<p>The name of the action.</p>"}))
    ActionInvocation.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'Uri', traits: {"smithy.api#documentation" => "<p>The extension URI associated to the action point in the extension definition. The URI\n         can be an Amazon Resource Name (ARN) for one of the following: an Lambda\n         function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.</p>"}))
    ActionInvocation.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) for an Identity and Access Management assume role.</p>"}))
    ActionInvocation.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message when an extension invocation fails.</p>"}))
    ActionInvocation.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code when an extension invocation fails.</p>"}))
    ActionInvocation.add_member(:invocation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'InvocationId', traits: {"smithy.api#documentation" => "<p>A system-generated ID for this invocation.</p>"}))
    ActionInvocation.type = Types::ActionInvocation
    ActionInvocations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionInvocation)
    ActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    ActionPoint.add_member(:pre_create_hosted_configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRE_CREATE_HOSTED_CONFIGURATION_VERSION', traits: {"smithy.api#enumValue" => "PRE_CREATE_HOSTED_CONFIGURATION_VERSION"}))
    ActionPoint.add_member(:pre_start_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRE_START_DEPLOYMENT', traits: {"smithy.api#enumValue" => "PRE_START_DEPLOYMENT"}))
    ActionPoint.add_member(:at_deployment_tick, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AT_DEPLOYMENT_TICK', traits: {"smithy.api#enumValue" => "AT_DEPLOYMENT_TICK"}))
    ActionPoint.add_member(:on_deployment_start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEPLOYMENT_START', traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_START"}))
    ActionPoint.add_member(:on_deployment_step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEPLOYMENT_STEP', traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_STEP"}))
    ActionPoint.add_member(:on_deployment_baking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEPLOYMENT_BAKING', traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_BAKING"}))
    ActionPoint.add_member(:on_deployment_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEPLOYMENT_COMPLETE', traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_COMPLETE"}))
    ActionPoint.add_member(:on_deployment_rolled_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEPLOYMENT_ROLLED_BACK', traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_ROLLED_BACK"}))
    ActionsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPoint)
    ActionsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList)
    Application.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    Application.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    Application.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    Application.type = Types::Application
    ApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    AppliedExtension.add_member(:extension_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ExtensionId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the extension.</p>"}))
    AppliedExtension.add_member(:extension_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ExtensionAssociationId', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the association.</p>"}))
    AppliedExtension.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The extension version number.</p>"}))
    AppliedExtension.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>One or more parameters for the actions called by the extension.</p>"}))
    AppliedExtension.type = Types::AppliedExtension
    AppliedExtensions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedExtension)
    BadRequestDetails.add_member(:invalid_configuration, Types::BadRequestDetails::InvalidConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationDetailList, location_name: 'InvalidConfiguration', traits: {"smithy.api#documentation" => "<p>Detailed information about the bad request exception error when creating a hosted\n         configuration version.</p>"}))
    BadRequestDetails.add_member(:unknown, Types::BadRequestDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    BadRequestDetails.type = Types::BadRequestDetails
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestReason, location_name: 'Reason'))
    BadRequestException.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestDetails, location_name: 'Details'))
    BadRequestException.type = Types::BadRequestException
    BadRequestReason.add_member(:invalid_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CONFIGURATION', traits: {"smithy.api#enumValue" => "InvalidConfiguration"}))
    BytesMeasure.add_member(:kilobytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KILOBYTES', traits: {"smithy.api#enumValue" => "KILOBYTES"}))
    ConfigurationProfileSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    ConfigurationProfileSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile.</p>"}))
    ConfigurationProfileSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LongName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration profile.</p>"}))
    ConfigurationProfileSummary.add_member(:location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'LocationUri', traits: {"smithy.api#documentation" => "<p>The URI location of the configuration.</p>"}))
    ConfigurationProfileSummary.add_member(:validator_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorTypeList, location_name: 'ValidatorTypes', traits: {"smithy.api#documentation" => "<p>The types of validators in the configuration profile.</p>"}))
    ConfigurationProfileSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of configurations contained in the profile. AppConfig supports\n            <code>feature flags</code> and <code>freeform</code> configurations. We recommend you\n         create feature flag configurations to enable or disable new features and freeform\n         configurations to distribute configurations to an application. When calling this API, enter\n         one of the following values for <code>Type</code>:</p>\n         <p>\n            <code>AWS.AppConfig.FeatureFlags</code>\n         </p>\n         <p>\n            <code>AWS.Freeform</code>\n         </p>"}))
    ConfigurationProfileSummary.type = Types::ConfigurationProfileSummary
    ConfigurationProfileSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileSummary)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateApplicationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    CreateApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    CreateApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the application.</p>"}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata to assign to the application. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which\n         you define.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateConfigurationProfileOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    CreateConfigurationProfileOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>"}))
    CreateConfigurationProfileOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LongName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration profile.</p>"}))
    CreateConfigurationProfileOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The configuration profile description.</p>"}))
    CreateConfigurationProfileOutput.add_member(:location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'LocationUri', traits: {"smithy.api#documentation" => "<p>The URI location of the configuration.</p>"}))
    CreateConfigurationProfileOutput.add_member(:retrieval_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RetrievalRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role with permission to access the configuration at the specified\n            <code>LocationUri</code>.</p>"}))
    CreateConfigurationProfileOutput.add_member(:validators, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorList, location_name: 'Validators', traits: {"smithy.api#documentation" => "<p>A list of methods for validating the configuration.</p>"}))
    CreateConfigurationProfileOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of configurations contained in the profile. AppConfig supports\n            <code>feature flags</code> and <code>freeform</code> configurations. We recommend you\n         create feature flag configurations to enable or disable new features and freeform\n         configurations to distribute configurations to an application. When calling this API, enter\n         one of the following values for <code>Type</code>:</p>\n         <p>\n            <code>AWS.AppConfig.FeatureFlags</code>\n         </p>\n         <p>\n            <code>AWS.Freeform</code>\n         </p>"}))
    CreateConfigurationProfileOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key to encrypt new configuration\n         data versions in the AppConfig hosted configuration store. This attribute is only\n         used for <code>hosted</code> configuration types. To encrypt data managed in other\n         configuration stores, see the documentation for how to specify an KMS key\n         for that particular service.</p>"}))
    CreateConfigurationProfileOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when\n         the resource was created or updated.</p>"}))
    CreateConfigurationProfileOutput.type = Types::CreateConfigurationProfileOutput
    CreateConfigurationProfileRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationProfileRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LongName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the configuration profile.</p>", "smithy.api#required" => {}}))
    CreateConfigurationProfileRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the configuration profile.</p>"}))
    CreateConfigurationProfileRequest.add_member(:location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'LocationUri', traits: {"smithy.api#documentation" => "<p>A URI to locate the configuration. You can specify the following:</p>\n         <ul>\n            <li>\n               <p>For the AppConfig hosted configuration store and for feature flags,\n               specify <code>hosted</code>.</p>\n            </li>\n            <li>\n               <p>For an Amazon Web Services Systems Manager Parameter Store parameter, specify either the parameter name in\n               the format <code>ssm-parameter://<parameter name></code> or the ARN.</p>\n            </li>\n            <li>\n               <p>For an Amazon Web Services\n               CodePipeline pipeline, specify the URI in the following format:\n                  <code>codepipeline</code>://<pipeline name>.</p>\n            </li>\n            <li>\n               <p>For an Secrets Manager secret, specify the URI in the following format:\n                  <code>secretsmanager</code>://<secret name>.</p>\n            </li>\n            <li>\n               <p>For an Amazon S3 object, specify the URI in the following format:\n                  <code>s3://<bucket>/<objectKey> </code>. Here is an example:\n                     <code>s3://amzn-s3-demo-bucket/my-app/us-east-1/my-config.json</code>\n               </p>\n            </li>\n            <li>\n               <p>For an SSM document, specify either the document name in the format\n                  <code>ssm-document://<document name></code> or the Amazon Resource Name\n               (ARN).</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateConfigurationProfileRequest.add_member(:retrieval_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RetrievalRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role with permission to access the configuration at the specified\n            <code>LocationUri</code>.</p>\n         <important>\n            <p>A retrieval role ARN is not required for configurations stored in CodePipeline or the AppConfig hosted configuration store. It is required for all other sources that\n            store your configuration. </p>\n         </important>"}))
    CreateConfigurationProfileRequest.add_member(:validators, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorList, location_name: 'Validators', traits: {"smithy.api#documentation" => "<p>A list of methods for validating the configuration.</p>"}))
    CreateConfigurationProfileRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata to assign to the configuration profile. Tags help organize and categorize your\n            AppConfig resources. Each tag consists of a key and an optional value, both of\n         which you define.</p>"}))
    CreateConfigurationProfileRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of configurations contained in the profile. AppConfig supports\n            <code>feature flags</code> and <code>freeform</code> configurations. We recommend you\n         create feature flag configurations to enable or disable new features and freeform\n         configurations to distribute configurations to an application. When calling this API, enter\n         one of the following values for <code>Type</code>:</p>\n         <p>\n            <code>AWS.AppConfig.FeatureFlags</code>\n         </p>\n         <p>\n            <code>AWS.Freeform</code>\n         </p>"}))
    CreateConfigurationProfileRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for an Key Management Service key to encrypt new configuration data\n         versions in the AppConfig hosted configuration store. This attribute is only used\n         for <code>hosted</code> configuration types. The identifier can be an KMS\n         key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias. To encrypt data\n         managed in other configuration stores, see the documentation for how to specify an KMS key for that particular service.</p>"}))
    CreateConfigurationProfileRequest.type = Types::CreateConfigurationProfileRequest
    CreateDeploymentStrategyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The deployment strategy ID.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the deployment strategy.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment strategy.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets that received a deployed configuration during each\n         interval.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    CreateDeploymentStrategyOutput.add_member(:replicate_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateTo, location_name: 'ReplicateTo', traits: {"smithy.api#documentation" => "<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>"}))
    CreateDeploymentStrategyOutput.type = Types::CreateDeploymentStrategyOutput
    CreateDeploymentStrategyRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the deployment strategy.</p>", "smithy.api#required" => {}}))
    CreateDeploymentStrategyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the deployment strategy.</p>"}))
    CreateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Total amount of time for a deployment to last.</p>", "smithy.api#required" => {}}))
    CreateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Specifies the amount of time AppConfig monitors for Amazon CloudWatch alarms after the\n         configuration has been deployed to 100% of its targets, before considering the deployment\n         to be complete. If an alarm is triggered during this time, AppConfig rolls back\n         the deployment. You must configure permissions for AppConfig to roll back based\n         on CloudWatch alarms. For more information, see <a href=\"https://docs.aws.amazon.com/appconfig/latest/userguide/getting-started-with-appconfig-cloudwatch-alarms-permissions.html\">Configuring permissions for rollback based on Amazon CloudWatch alarms</a> in the\n            <i>AppConfig User Guide</i>.</p>"}))
    CreateDeploymentStrategyRequest.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthFactor, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets to receive a deployed configuration during each\n         interval.</p>", "smithy.api#required" => {}}))
    CreateDeploymentStrategyRequest.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grows over time. AppConfig\n         supports the following growth types:</p>\n         <p>\n            <b>Linear</b>: For this type, AppConfig processes\n         the deployment by dividing the total number of targets by the value specified for\n            <code>Step percentage</code>. For example, a linear deployment that uses a <code>Step\n            percentage</code> of 10 deploys the configuration to 10 percent of the hosts. After\n         those deployments are complete, the system deploys the configuration to the next 10\n         percent. This continues until 100% of the targets have successfully received the\n         configuration.</p>\n         <p>\n            <b>Exponential</b>: For this type, AppConfig\n         processes the deployment exponentially using the following formula: <code>G*(2^N)</code>.\n         In this formula, <code>G</code> is the growth factor specified by the user and\n            <code>N</code> is the number of steps until the configuration is deployed to all\n         targets. For example, if you specify a growth factor of 2, then the system rolls out the\n         configuration as follows:</p>\n         <p>\n            <code>2*(2^0)</code>\n         </p>\n         <p>\n            <code>2*(2^1)</code>\n         </p>\n         <p>\n            <code>2*(2^2)</code>\n         </p>\n         <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the\n         targets, 8% of the targets, and continues until the configuration has been deployed to all\n         targets.</p>"}))
    CreateDeploymentStrategyRequest.add_member(:replicate_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateTo, location_name: 'ReplicateTo', traits: {"smithy.api#documentation" => "<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>"}))
    CreateDeploymentStrategyRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata to assign to the deployment strategy. Tags help organize and categorize your\n            AppConfig resources. Each tag consists of a key and an optional value, both of\n         which you define.</p>"}))
    CreateDeploymentStrategyRequest.type = Types::CreateDeploymentStrategyRequest
    CreateEnvironmentOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    CreateEnvironmentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>"}))
    CreateEnvironmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    CreateEnvironmentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the environment. An environment can be in one of the following states:\n            <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or\n            <code>ROLLED_BACK</code>\n         </p>"}))
    CreateEnvironmentOutput.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#documentation" => "<p>Amazon CloudWatch alarms monitored during the deployment.</p>"}))
    CreateEnvironmentOutput.type = Types::CreateEnvironmentOutput
    CreateEnvironmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the environment.</p>", "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the environment.</p>"}))
    CreateEnvironmentRequest.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#documentation" => "<p>Amazon CloudWatch alarms to monitor during the deployment process.</p>"}))
    CreateEnvironmentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata to assign to the environment. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which\n         you define.</p>"}))
    CreateEnvironmentRequest.type = Types::CreateEnvironmentRequest
    CreateExtensionAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the association.</p>"}))
    CreateExtensionAssociationOutput.add_member(:extension_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ExtensionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the extension defined in the association.</p>"}))
    CreateExtensionAssociationOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARNs of applications, configuration profiles, or environments defined in the\n         association.</p>"}))
    CreateExtensionAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    CreateExtensionAssociationOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameter names and values defined in the association.</p>"}))
    CreateExtensionAssociationOutput.add_member(:extension_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExtensionVersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The version number for the extension defined in the association.</p>"}))
    CreateExtensionAssociationOutput.type = Types::CreateExtensionAssociationOutput
    CreateExtensionAssociationRequest.add_member(:extension_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ExtensionIdentifier', traits: {"smithy.api#documentation" => "<p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>", "smithy.api#required" => {}}))
    CreateExtensionAssociationRequest.add_member(:extension_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExtensionVersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The version number of the extension. If not specified, AppConfig uses the\n         maximum version of the extension.</p>"}))
    CreateExtensionAssociationRequest.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ResourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of an application, configuration profile, or environment.</p>", "smithy.api#required" => {}}))
    CreateExtensionAssociationRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameter names and values defined in the extensions. Extension parameters marked\n            <code>Required</code> must be entered for this field.</p>"}))
    CreateExtensionAssociationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Adds one or more tags for the specified extension association. Tags are metadata that\n         help you categorize resources in different ways, for example, by purpose, owner, or\n         environment. Each tag consists of a key and an optional value, both of which you define.\n      </p>"}))
    CreateExtensionAssociationRequest.type = Types::CreateExtensionAssociationRequest
    CreateExtensionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the extension.</p>"}))
    CreateExtensionOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The extension name.</p>"}))
    CreateExtensionOutput.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The extension version number.</p>"}))
    CreateExtensionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    CreateExtensionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the extension.</p>"}))
    CreateExtensionOutput.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMap, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions defined in the extension.</p>"}))
    CreateExtensionOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameters accepted by the extension. You specify parameter values when you\n         associate the extension to an AppConfig resource by using the\n            <code>CreateExtensionAssociation</code> API action. For Lambda extension\n         actions, these parameters are included in the Lambda request object.</p>"}))
    CreateExtensionOutput.type = Types::CreateExtensionOutput
    CreateExtensionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionOrParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name for the extension. Each extension name in your account must be unique. Extension\n         versions use the same name.</p>", "smithy.api#required" => {}}))
    CreateExtensionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the extension.</p>"}))
    CreateExtensionRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMap, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions defined in the extension.</p>", "smithy.api#required" => {}}))
    CreateExtensionRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameters accepted by the extension. You specify parameter values when you\n         associate the extension to an AppConfig resource by using the\n            <code>CreateExtensionAssociation</code> API action. For Lambda extension\n         actions, these parameters are included in the Lambda request object.</p>"}))
    CreateExtensionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Adds one or more tags for the specified extension. Tags are metadata that help you\n         categorize resources in different ways, for example, by purpose, owner, or environment.\n         Each tag consists of a key and an optional value, both of which you define. </p>"}))
    CreateExtensionRequest.add_member(:latest_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'LatestVersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>You can omit this field when you create an extension. When you create a new version,\n         specify the most recent current version number. For example, you create version 3, enter 2\n         for this field.</p>", "smithy.api#httpHeader" => "Latest-Version-Number"}))
    CreateExtensionRequest.type = Types::CreateExtensionRequest
    CreateHostedConfigurationVersionOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpHeader" => "Application-Id"}))
    CreateHostedConfigurationVersionOutput.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpHeader" => "Configuration-Profile-Id"}))
    CreateHostedConfigurationVersionOutput.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The configuration version.</p>", "smithy.api#httpHeader" => "Version-Number"}))
    CreateHostedConfigurationVersionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the configuration.</p>", "smithy.api#httpHeader" => "Description"}))
    CreateHostedConfigurationVersionOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the configuration or the configuration data.</p>", "smithy.api#httpPayload" => {}}))
    CreateHostedConfigurationVersionOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>A standard MIME type describing the format of the configuration content. For more\n         information, see <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    CreateHostedConfigurationVersionOutput.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>", "smithy.api#httpHeader" => "VersionLabel"}))
    CreateHostedConfigurationVersionOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key that was used to encrypt this\n         specific version of the configuration data in the AppConfig hosted configuration\n         store.</p>", "smithy.api#httpHeader" => "KmsKeyArn"}))
    CreateHostedConfigurationVersionOutput[:http_payload] = :content
    CreateHostedConfigurationVersionOutput[:http_payload_member] = CreateHostedConfigurationVersionOutput.member(:content)
    CreateHostedConfigurationVersionOutput.type = Types::CreateHostedConfigurationVersionOutput
    CreateHostedConfigurationVersionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the configuration.</p>", "smithy.api#httpHeader" => "Description"}))
    CreateHostedConfigurationVersionRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The configuration data, as bytes.</p>\n         <note>\n            <p>AppConfig accepts any type of data, including text formats like JSON or\n            TOML, or binary formats like protocol buffers or compressed data.</p>\n         </note>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>A standard MIME type describing the format of the configuration content. For more\n         information, see <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>", "smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:latest_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'LatestVersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>An optional locking token used to prevent race conditions from overwriting configuration\n         updates when creating a new version. To ensure your data is not overwritten when creating\n         multiple hosted configuration versions in rapid succession, specify the version number of\n         the latest hosted configuration version.</p>", "smithy.api#httpHeader" => "Latest-Version-Number"}))
    CreateHostedConfigurationVersionRequest.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>An optional, user-defined label for the AppConfig hosted configuration\n         version. This value must contain at least one non-numeric character. For example,\n         \"v2.2.0\".</p>", "smithy.api#httpHeader" => "VersionLabel"}))
    CreateHostedConfigurationVersionRequest[:http_payload] = :content
    CreateHostedConfigurationVersionRequest[:http_payload_member] = CreateHostedConfigurationVersionRequest.member(:content)
    CreateHostedConfigurationVersionRequest.type = Types::CreateHostedConfigurationVersionRequest
    DeleteApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteConfigurationProfileRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID that includes the configuration profile you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationProfileRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationProfileRequest.add_member(:deletion_protection_check, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionCheck, location_name: 'DeletionProtectionCheck', traits: {"smithy.api#documentation" => "<p>A parameter to configure deletion protection. Deletion protection prevents a user from\n         deleting a configuration profile if your application has called either <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html\">GetLatestConfiguration</a> or  for the\n         configuration profile during the specified interval. </p>\n         <p>This parameter supports the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>BYPASS</code>: Instructs AppConfig to bypass the deletion\n               protection check and delete a configuration profile even if deletion protection would\n               have otherwise prevented it.</p>\n            </li>\n            <li>\n               <p>\n                  <code>APPLY</code>: Instructs the deletion protection check to run, even if\n               deletion protection is disabled at the account level. <code>APPLY</code> also forces\n               the deletion protection check to run against resources created in the past hour,\n               which are normally excluded from deletion protection checks. </p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCOUNT_DEFAULT</code>: The default setting, which instructs AppConfig to implement the deletion protection value specified in the\n                  <code>UpdateAccountSettings</code> API.</p>\n            </li>\n         </ul>", "smithy.api#httpHeader" => "x-amzn-deletion-protection-check"}))
    DeleteConfigurationProfileRequest.type = Types::DeleteConfigurationProfileRequest
    DeleteDeploymentStrategyRequest.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStrategyId, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment strategy you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentStrategyRequest.type = Types::DeleteDeploymentStrategyRequest
    DeleteEnvironmentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID that includes the environment that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.add_member(:deletion_protection_check, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionCheck, location_name: 'DeletionProtectionCheck', traits: {"smithy.api#documentation" => "<p>A parameter to configure deletion protection. Deletion protection prevents a user from\n         deleting an environment if your application called either <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html\">GetLatestConfiguration</a> or  in the\n         environment during the specified interval. </p>\n         <p>This parameter supports the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>BYPASS</code>: Instructs AppConfig to bypass the deletion\n               protection check and delete a configuration profile even if deletion protection would\n               have otherwise prevented it. </p>\n            </li>\n            <li>\n               <p>\n                  <code>APPLY</code>: Instructs the deletion protection check to run, even if\n               deletion protection is disabled at the account level. <code>APPLY</code> also forces\n               the deletion protection check to run against resources created in the past hour,\n               which are normally excluded from deletion protection checks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCOUNT_DEFAULT</code>: The default setting, which instructs AppConfig to implement the deletion protection value specified in the\n                  <code>UpdateAccountSettings</code> API.</p>\n            </li>\n         </ul>", "smithy.api#httpHeader" => "x-amzn-deletion-protection-check"}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteExtensionAssociationRequest.add_member(:extension_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ExtensionAssociationId', traits: {"smithy.api#documentation" => "<p>The ID of the extension association to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExtensionAssociationRequest.type = Types::DeleteExtensionAssociationRequest
    DeleteExtensionRequest.add_member(:extension_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ExtensionIdentifier', traits: {"smithy.api#documentation" => "<p>The name, ID, or Amazon Resource Name (ARN) of the extension you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExtensionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>A specific version of an extension to delete. If omitted, the highest version is\n         deleted.</p>", "smithy.api#httpQuery" => "version"}))
    DeleteExtensionRequest.type = Types::DeleteExtensionRequest
    DeleteHostedConfigurationVersionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedConfigurationVersionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The versions number to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedConfigurationVersionRequest.type = Types::DeleteHostedConfigurationVersionRequest
    DeletionProtectionCheck.add_member(:account_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_DEFAULT', traits: {"smithy.api#enumValue" => "ACCOUNT_DEFAULT"}))
    DeletionProtectionCheck.add_member(:apply, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLY', traits: {"smithy.api#enumValue" => "APPLY"}))
    DeletionProtectionCheck.add_member(:bypass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYPASS', traits: {"smithy.api#enumValue" => "BYPASS"}))
    DeletionProtectionSettings.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>A parameter that indicates if deletion protection is enabled or not.</p>"}))
    DeletionProtectionSettings.add_member(:protection_period_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionDuration, location_name: 'ProtectionPeriodInMinutes', traits: {"smithy.api#documentation" => "<p>The time interval during which AppConfig monitors for calls to <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html\">GetLatestConfiguration</a> or  for a\n         configuration profile or from an environment. AppConfig returns an error if a\n         user calls  or  for the designated configuration profile or\n         environment. To bypass the error and delete a configuration profile or an environment,\n         specify <code>BYPASS</code> for the <code>DeletionProtectionCheck</code> parameter for\n         either  or .</p>"}))
    DeletionProtectionSettings.type = Types::DeletionProtectionSettings
    DeploymentEvent.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEventType, location_name: 'EventType', traits: {"smithy.api#documentation" => "<p>The type of deployment event. Deployment event types include the start, stop, or\n         completion of a deployment; a percentage update; the start or stop of a bake period; and\n         the start or completion of a rollback.</p>"}))
    DeploymentEvent.add_member(:triggered_by, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggeredBy, location_name: 'TriggeredBy', traits: {"smithy.api#documentation" => "<p>The entity that triggered the deployment event. Events can be triggered by a user,\n            AppConfig, an Amazon CloudWatch alarm, or an internal error.</p>"}))
    DeploymentEvent.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the deployment event. Descriptions include, but are not limited to, the\n         following:</p>\n         <ul>\n            <li>\n               <p>The Amazon Web Services account or the Amazon CloudWatch alarm ARN that initiated a rollback.</p>\n            </li>\n            <li>\n               <p>The percentage of hosts that received the deployment.</p>\n            </li>\n            <li>\n               <p>A recommendation to attempt a new deployment (in the case of an internal\n               error).</p>\n            </li>\n         </ul>"}))
    DeploymentEvent.add_member(:action_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionInvocations, location_name: 'ActionInvocations', traits: {"smithy.api#documentation" => "<p>The list of extensions that were invoked as part of the deployment.</p>"}))
    DeploymentEvent.add_member(:occurred_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'OccurredAt', traits: {"smithy.api#documentation" => "<p>The date and time the event occurred.</p>"}))
    DeploymentEvent.type = Types::DeploymentEvent
    DeploymentEventType.add_member(:percentage_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERCENTAGE_UPDATED', traits: {"smithy.api#enumValue" => "PERCENTAGE_UPDATED"}))
    DeploymentEventType.add_member(:rollback_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_STARTED', traits: {"smithy.api#enumValue" => "ROLLBACK_STARTED"}))
    DeploymentEventType.add_member(:rollback_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_COMPLETED', traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETED"}))
    DeploymentEventType.add_member(:bake_time_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAKE_TIME_STARTED', traits: {"smithy.api#enumValue" => "BAKE_TIME_STARTED"}))
    DeploymentEventType.add_member(:deployment_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_STARTED', traits: {"smithy.api#enumValue" => "DEPLOYMENT_STARTED"}))
    DeploymentEventType.add_member(:deployment_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_COMPLETED', traits: {"smithy.api#enumValue" => "DEPLOYMENT_COMPLETED"}))
    DeploymentEventType.add_member(:revert_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVERT_COMPLETED', traits: {"smithy.api#enumValue" => "REVERT_COMPLETED"}))
    DeploymentEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEvent)
    DeploymentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentSummary)
    DeploymentState.add_member(:baking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BAKING', traits: {"smithy.api#enumValue" => "BAKING"}))
    DeploymentState.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    DeploymentState.add_member(:deploying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYING', traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    DeploymentState.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    DeploymentState.add_member(:rolling_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLING_BACK', traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    DeploymentState.add_member(:rolled_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLED_BACK', traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    DeploymentState.add_member(:reverted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVERTED', traits: {"smithy.api#enumValue" => "REVERTED"}))
    DeploymentStrategy.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The deployment strategy ID.</p>"}))
    DeploymentStrategy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the deployment strategy.</p>"}))
    DeploymentStrategy.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment strategy.</p>"}))
    DeploymentStrategy.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    DeploymentStrategy.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    DeploymentStrategy.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets that received a deployed configuration during each\n         interval.</p>"}))
    DeploymentStrategy.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    DeploymentStrategy.add_member(:replicate_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateTo, location_name: 'ReplicateTo', traits: {"smithy.api#documentation" => "<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>"}))
    DeploymentStrategy.type = Types::DeploymentStrategy
    DeploymentStrategyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStrategy)
    DeploymentSummary.add_member(:deployment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DeploymentNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The sequence number of the deployment.</p>"}))
    DeploymentSummary.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    DeploymentSummary.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The version of the configuration.</p>"}))
    DeploymentSummary.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    DeploymentSummary.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grows over time.</p>"}))
    DeploymentSummary.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets to receive a deployed configuration during each\n         interval.</p>"}))
    DeploymentSummary.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitors for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    DeploymentSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the deployment.</p>"}))
    DeploymentSummary.add_member(:percentage_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'PercentageComplete', traits: {"smithy.api#documentation" => "<p>The percentage of targets for which the deployment is available.</p>"}))
    DeploymentSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>Time the deployment started.</p>"}))
    DeploymentSummary.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'CompletedAt', traits: {"smithy.api#documentation" => "<p>Time the deployment completed.</p>"}))
    DeploymentSummary.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>"}))
    DeploymentSummary.type = Types::DeploymentSummary
    DynamicParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicParameterKey)
    DynamicParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048)
    Environment.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    Environment.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>"}))
    Environment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    Environment.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    Environment.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the environment. An environment can be in one of the following states:\n            <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or\n            <code>ROLLED_BACK</code>\n         </p>"}))
    Environment.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#documentation" => "<p>Amazon CloudWatch alarms monitored during the deployment.</p>"}))
    Environment.type = Types::Environment
    EnvironmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Environment)
    EnvironmentState.add_member(:ready_for_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_FOR_DEPLOYMENT', traits: {"smithy.api#enumValue" => "READY_FOR_DEPLOYMENT"}))
    EnvironmentState.add_member(:deploying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYING', traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    EnvironmentState.add_member(:rolling_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLING_BACK', traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    EnvironmentState.add_member(:rolled_back, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLED_BACK', traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    EnvironmentState.add_member(:reverted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVERTED', traits: {"smithy.api#enumValue" => "REVERTED"}))
    ExtensionAssociationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionAssociationSummary)
    ExtensionAssociationSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The extension association ID. This ID is used to call other\n            <code>ExtensionAssociation</code> API actions such as\n            <code>GetExtensionAssociation</code> or <code>DeleteExtensionAssociation</code>.</p>"}))
    ExtensionAssociationSummary.add_member(:extension_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ExtensionArn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    ExtensionAssociationSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARNs of applications, configuration profiles, or environments defined in the\n         association.</p>"}))
    ExtensionAssociationSummary.type = Types::ExtensionAssociationSummary
    ExtensionSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionSummary)
    ExtensionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the extension.</p>"}))
    ExtensionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The extension name.</p>"}))
    ExtensionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The extension version number.</p>"}))
    ExtensionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    ExtensionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the extension.</p>"}))
    ExtensionSummary.type = Types::ExtensionSummary
    GetAccountSettingsOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionSettings, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>A parameter to configure deletion protection. Deletion protection prevents a user from\n         deleting a configuration profile or an environment if AppConfig has called either\n            <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html\">GetLatestConfiguration</a> or  for the\n         configuration profile or from the environment during the specified interval. The default\n         interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>"}))
    GetAccountSettingsOutput.type = Types::GetAccountSettingsOutput
    GetApplicationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    GetApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    GetApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application you want to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetConfigurationOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the configuration or the configuration data.</p>\n         <important>\n            <p>The <code>Content</code> attribute only contains data if the system finds new or\n            updated configuration data. If there is no new or updated data and\n               <code>ClientConfigurationVersion</code> matches the version of the current\n            configuration, AppConfig returns a <code>204 No Content</code> HTTP response\n            code and the <code>Content</code> value will be empty.</p>\n         </important>", "smithy.api#httpPayload" => {}}))
    GetConfigurationOutput.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The configuration version.</p>", "smithy.api#httpHeader" => "Configuration-Version"}))
    GetConfigurationOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>A standard MIME type describing the format of the configuration content. For more\n         information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    GetConfigurationOutput[:http_payload] = :content
    GetConfigurationOutput[:http_payload_member] = GetConfigurationOutput.member(:content)
    GetConfigurationOutput.type = Types::GetConfigurationOutput
    GetConfigurationProfileOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    GetConfigurationProfileOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>"}))
    GetConfigurationProfileOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LongName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration profile.</p>"}))
    GetConfigurationProfileOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The configuration profile description.</p>"}))
    GetConfigurationProfileOutput.add_member(:location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'LocationUri', traits: {"smithy.api#documentation" => "<p>The URI location of the configuration.</p>"}))
    GetConfigurationProfileOutput.add_member(:retrieval_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RetrievalRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role with permission to access the configuration at the specified\n            <code>LocationUri</code>.</p>"}))
    GetConfigurationProfileOutput.add_member(:validators, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorList, location_name: 'Validators', traits: {"smithy.api#documentation" => "<p>A list of methods for validating the configuration.</p>"}))
    GetConfigurationProfileOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of configurations contained in the profile. AppConfig supports\n            <code>feature flags</code> and <code>freeform</code> configurations. We recommend you\n         create feature flag configurations to enable or disable new features and freeform\n         configurations to distribute configurations to an application. When calling this API, enter\n         one of the following values for <code>Type</code>:</p>\n         <p>\n            <code>AWS.AppConfig.FeatureFlags</code>\n         </p>\n         <p>\n            <code>AWS.Freeform</code>\n         </p>"}))
    GetConfigurationProfileOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key to encrypt new configuration\n         data versions in the AppConfig hosted configuration store. This attribute is only\n         used for <code>hosted</code> configuration types. To encrypt data managed in other\n         configuration stores, see the documentation for how to specify an KMS key\n         for that particular service.</p>"}))
    GetConfigurationProfileOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when\n         the resource was created or updated.</p>"}))
    GetConfigurationProfileOutput.type = Types::GetConfigurationProfileOutput
    GetConfigurationProfileRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that includes the configuration profile you want to\n         get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationProfileRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile that you want to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationProfileRequest.type = Types::GetConfigurationProfileRequest
    GetConfigurationRequest.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: 'Application', traits: {"smithy.api#documentation" => "<p>The application to get. Specify either the application name or the application\n         ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: 'Environment', traits: {"smithy.api#documentation" => "<p>The environment to get. Specify either the environment name or the environment\n         ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration to get. Specify either the configuration name or the configuration\n         ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, location_name: 'ClientId', traits: {"smithy.api#documentation" => "<p>The clientId parameter in the following command is a unique, user-specified ID to\n         identify the client for the configuration. This ID enables AppConfig to deploy\n         the configuration in intervals, as defined in the deployment strategy. </p>", "smithy.api#httpQuery" => "client_id", "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:client_configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ClientConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The configuration version returned in the most recent <a>GetConfiguration</a>\n         response.</p>\n         <important>\n            <p>AppConfig uses the value of the <code>ClientConfigurationVersion</code>\n            parameter to identify the configuration version on your clients. If you don’t send\n               <code>ClientConfigurationVersion</code> with each call to <a>GetConfiguration</a>, your clients receive the current configuration. You are\n            charged each time your clients receive a configuration.</p>\n            <p>To avoid excess charges, we recommend you use the <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html\">StartConfigurationSession</a> and <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html\">GetLatestConfiguration</a> APIs, which track the client configuration version on\n            your behalf. If you choose to continue using <a>GetConfiguration</a>, we\n            recommend that you include the <code>ClientConfigurationVersion</code> value with every\n            call to <a>GetConfiguration</a>. The value to use for\n               <code>ClientConfigurationVersion</code> comes from the\n               <code>ConfigurationVersion</code> attribute returned by <a>GetConfiguration</a> when there is new or updated data, and should be saved\n            for subsequent calls to <a>GetConfiguration</a>.</p>\n         </important>\n         <p>For more information about working with configurations, see <a href=\"http://docs.aws.amazon.com/appconfig/latest/userguide/retrieving-feature-flags.html\">Retrieving feature flags and\n            configuration data in AppConfig</a> in the <i>AppConfig\n            User Guide</i>.</p>", "smithy.api#httpQuery" => "client_configuration_version"}))
    GetConfigurationRequest.type = Types::GetConfigurationRequest
    GetDeploymentOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that was deployed.</p>"}))
    GetDeploymentOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment that was deployed.</p>"}))
    GetDeploymentOutput.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment strategy that was deployed.</p>"}))
    GetDeploymentOutput.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile that was deployed.</p>"}))
    GetDeploymentOutput.add_member(:deployment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DeploymentNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The sequence number of the deployment.</p>"}))
    GetDeploymentOutput.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    GetDeploymentOutput.add_member(:configuration_location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'ConfigurationLocationUri', traits: {"smithy.api#documentation" => "<p>Information about the source location of the configuration.</p>"}))
    GetDeploymentOutput.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The configuration version that was deployed.</p>"}))
    GetDeploymentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment.</p>"}))
    GetDeploymentOutput.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    GetDeploymentOutput.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    GetDeploymentOutput.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets to receive a deployed configuration during each\n         interval.</p>"}))
    GetDeploymentOutput.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    GetDeploymentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the deployment.</p>"}))
    GetDeploymentOutput.add_member(:event_log, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEvents, location_name: 'EventLog', traits: {"smithy.api#documentation" => "<p>A list containing all events related to a deployment. The most recent events are\n         displayed first.</p>"}))
    GetDeploymentOutput.add_member(:percentage_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'PercentageComplete', traits: {"smithy.api#documentation" => "<p>The percentage of targets for which the deployment is available.</p>"}))
    GetDeploymentOutput.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>The time the deployment started.</p>"}))
    GetDeploymentOutput.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'CompletedAt', traits: {"smithy.api#documentation" => "<p>The time the deployment completed. </p>"}))
    GetDeploymentOutput.add_member(:applied_extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedExtensions, location_name: 'AppliedExtensions', traits: {"smithy.api#documentation" => "<p>A list of extensions that were processed as part of the deployment. The extensions that\n         were previously associated to the configuration profile, environment, or the application\n         when <code>StartDeployment</code> was called.</p>"}))
    GetDeploymentOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key used to encrypt configuration\n         data. You can encrypt secrets stored in Secrets Manager, Amazon Simple Storage Service\n         (Amazon S3) objects encrypted with SSE-KMS, or secure string parameters stored in Amazon Web Services Systems Manager\n         Parameter Store. </p>"}))
    GetDeploymentOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when\n         the resource was created or updated.</p>"}))
    GetDeploymentOutput.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>"}))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetDeploymentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that includes the deployment you want to get. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment that includes the deployment you want to get. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:deployment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DeploymentNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The sequence number of the deployment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentStrategyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The deployment strategy ID.</p>"}))
    GetDeploymentStrategyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the deployment strategy.</p>"}))
    GetDeploymentStrategyOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment strategy.</p>"}))
    GetDeploymentStrategyOutput.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    GetDeploymentStrategyOutput.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    GetDeploymentStrategyOutput.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets that received a deployed configuration during each\n         interval.</p>"}))
    GetDeploymentStrategyOutput.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    GetDeploymentStrategyOutput.add_member(:replicate_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateTo, location_name: 'ReplicateTo', traits: {"smithy.api#documentation" => "<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>"}))
    GetDeploymentStrategyOutput.type = Types::GetDeploymentStrategyOutput
    GetDeploymentStrategyRequest.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStrategyId, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment strategy to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentStrategyRequest.type = Types::GetDeploymentStrategyRequest
    GetEnvironmentOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    GetEnvironmentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>"}))
    GetEnvironmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    GetEnvironmentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    GetEnvironmentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the environment. An environment can be in one of the following states:\n            <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or\n            <code>ROLLED_BACK</code>\n         </p>"}))
    GetEnvironmentOutput.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#documentation" => "<p>Amazon CloudWatch alarms monitored during the deployment.</p>"}))
    GetEnvironmentOutput.type = Types::GetEnvironmentOutput
    GetEnvironmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that includes the environment you want to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment that you want to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetExtensionAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the association.</p>"}))
    GetExtensionAssociationOutput.add_member(:extension_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ExtensionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the extension defined in the association.</p>"}))
    GetExtensionAssociationOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARNs of applications, configuration profiles, or environments defined in the\n         association.</p>"}))
    GetExtensionAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    GetExtensionAssociationOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameter names and values defined in the association.</p>"}))
    GetExtensionAssociationOutput.add_member(:extension_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExtensionVersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The version number for the extension defined in the association.</p>"}))
    GetExtensionAssociationOutput.type = Types::GetExtensionAssociationOutput
    GetExtensionAssociationRequest.add_member(:extension_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ExtensionAssociationId', traits: {"smithy.api#documentation" => "<p>The extension association ID to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExtensionAssociationRequest.type = Types::GetExtensionAssociationRequest
    GetExtensionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the extension.</p>"}))
    GetExtensionOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The extension name.</p>"}))
    GetExtensionOutput.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The extension version number.</p>"}))
    GetExtensionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    GetExtensionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the extension.</p>"}))
    GetExtensionOutput.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMap, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions defined in the extension.</p>"}))
    GetExtensionOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameters accepted by the extension. You specify parameter values when you\n         associate the extension to an AppConfig resource by using the\n            <code>CreateExtensionAssociation</code> API action. For Lambda extension\n         actions, these parameters are included in the Lambda request object.</p>"}))
    GetExtensionOutput.type = Types::GetExtensionOutput
    GetExtensionRequest.add_member(:extension_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ExtensionIdentifier', traits: {"smithy.api#documentation" => "<p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExtensionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The extension version number. If no version number was defined, AppConfig uses\n         the highest version.</p>", "smithy.api#httpQuery" => "version_number"}))
    GetExtensionRequest.type = Types::GetExtensionRequest
    GetHostedConfigurationVersionOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpHeader" => "Application-Id"}))
    GetHostedConfigurationVersionOutput.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpHeader" => "Configuration-Profile-Id"}))
    GetHostedConfigurationVersionOutput.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The configuration version.</p>", "smithy.api#httpHeader" => "Version-Number"}))
    GetHostedConfigurationVersionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the configuration.</p>", "smithy.api#httpHeader" => "Description"}))
    GetHostedConfigurationVersionOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the configuration or the configuration data.</p>", "smithy.api#httpPayload" => {}}))
    GetHostedConfigurationVersionOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>A standard MIME type describing the format of the configuration content. For more\n         information, see <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    GetHostedConfigurationVersionOutput.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>", "smithy.api#httpHeader" => "VersionLabel"}))
    GetHostedConfigurationVersionOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key that was used to encrypt this\n         specific version of the configuration data in the AppConfig hosted configuration\n         store.</p>", "smithy.api#httpHeader" => "KmsKeyArn"}))
    GetHostedConfigurationVersionOutput[:http_payload] = :content
    GetHostedConfigurationVersionOutput[:http_payload_member] = GetHostedConfigurationVersionOutput.member(:content)
    GetHostedConfigurationVersionOutput.type = Types::GetHostedConfigurationVersionOutput
    GetHostedConfigurationVersionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedConfigurationVersionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedConfigurationVersionRequest.type = Types::GetHostedConfigurationVersionRequest
    GrowthType.add_member(:linear, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINEAR', traits: {"smithy.api#enumValue" => "LINEAR"}))
    GrowthType.add_member(:exponential, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPONENTIAL', traits: {"smithy.api#enumValue" => "EXPONENTIAL"}))
    HostedConfigurationVersionSummary.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    HostedConfigurationVersionSummary.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>"}))
    HostedConfigurationVersionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The configuration version.</p>"}))
    HostedConfigurationVersionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the configuration.</p>"}))
    HostedConfigurationVersionSummary.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>A standard MIME type describing the format of the configuration content. For more\n         information, see <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17\">Content-Type</a>.</p>"}))
    HostedConfigurationVersionSummary.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>"}))
    HostedConfigurationVersionSummary.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key that was used to encrypt this\n         specific version of the configuration data in the AppConfig hosted configuration\n         store.</p>"}))
    HostedConfigurationVersionSummary.type = Types::HostedConfigurationVersionSummary
    HostedConfigurationVersionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HostedConfigurationVersionSummary)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidConfigurationDetail.add_member(:constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Constraint', traits: {"smithy.api#documentation" => "<p>The invalid or out-of-range validation constraint in your JSON schema that failed\n         validation.</p>"}))
    InvalidConfigurationDetail.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Location', traits: {"smithy.api#documentation" => "<p>Location of the validation constraint in the configuration JSON schema that failed\n         validation.</p>"}))
    InvalidConfigurationDetail.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason for an invalid configuration error.</p>"}))
    InvalidConfigurationDetail.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of error for an invalid configuration.</p>"}))
    InvalidConfigurationDetail.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Details about an error with Lambda when a synchronous extension\n         experiences an error during an invocation.</p>"}))
    InvalidConfigurationDetail.type = Types::InvalidConfigurationDetail
    InvalidConfigurationDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConfigurationDetail)
    ListApplicationsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The elements from this collection.</p>"}))
    ListApplicationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Next token is a pagination token generated by AppConfig to describe what page the previous List call ended on. For the first List\n         request, the nextToken should not be set. On subsequent calls, the nextToken parameter\n         should be set to the previous responses nextToken value. Use this token to get the next set\n         of results. </p>", "smithy.api#httpQuery" => "next_token"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListConfigurationProfilesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The elements from this collection.</p>"}))
    ListConfigurationProfilesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListConfigurationProfilesOutput.type = Types::ListConfigurationProfilesOutput
    ListConfigurationProfilesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfigurationProfilesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListConfigurationProfilesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListConfigurationProfilesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>A filter based on the type of configurations that the configuration profile contains. A\n         configuration can be a feature flag or a freeform configuration.</p>", "smithy.api#httpQuery" => "type"}))
    ListConfigurationProfilesRequest.type = Types::ListConfigurationProfilesRequest
    ListDeploymentStrategiesOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStrategyList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The elements from this collection.</p>"}))
    ListDeploymentStrategiesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListDeploymentStrategiesOutput.type = Types::ListDeploymentStrategiesOutput
    ListDeploymentStrategiesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListDeploymentStrategiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListDeploymentStrategiesRequest.type = Types::ListDeploymentStrategiesRequest
    ListDeploymentsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The elements from this collection.</p>"}))
    ListDeploymentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListDeploymentsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items that may be returned for this call. If there are items that\n         have not yet been returned, the response will include a non-null <code>NextToken</code>\n         that you can provide in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListDeploymentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token returned by a prior call to this operation indicating the next set of results\n         to be returned. If not specified, the operation will return the first set of\n         results.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListEnvironmentsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The elements from this collection.</p>"}))
    ListEnvironmentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListEnvironmentsOutput.type = Types::ListEnvironmentsOutput
    ListEnvironmentsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListEnvironmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListExtensionAssociationsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionAssociationSummaries, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of extension associations. Each item represents an extension association to an\n         application, environment, or configuration profile. </p>"}))
    ListExtensionAssociationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListExtensionAssociationsOutput.type = Types::ListExtensionAssociationsOutput
    ListExtensionAssociationsRequest.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of an application, configuration profile, or environment.</p>", "smithy.api#httpQuery" => "resource_identifier"}))
    ListExtensionAssociationsRequest.add_member(:extension_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ExtensionIdentifier', traits: {"smithy.api#documentation" => "<p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>", "smithy.api#httpQuery" => "extension_identifier"}))
    ListExtensionAssociationsRequest.add_member(:extension_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExtensionVersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The version number for the extension defined in the association.</p>", "smithy.api#httpQuery" => "extension_version_number"}))
    ListExtensionAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListExtensionAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results or pass null to\n         get the first set of results. </p>", "smithy.api#httpQuery" => "next_token"}))
    ListExtensionAssociationsRequest.type = Types::ListExtensionAssociationsRequest
    ListExtensionsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionSummaries, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The list of available extensions. The list includes Amazon Web Services authored and\n         user-created extensions.</p>"}))
    ListExtensionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListExtensionsOutput.type = Types::ListExtensionsOutput
    ListExtensionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. The call also returns a token that\n         you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListExtensionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results. </p>", "smithy.api#httpQuery" => "next_token"}))
    ListExtensionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The extension name.</p>", "smithy.api#httpQuery" => "name"}))
    ListExtensionsRequest.type = Types::ListExtensionsRequest
    ListHostedConfigurationVersionsOutput.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: HostedConfigurationVersionSummaryList, location_name: 'Items', traits: {"smithy.api#documentation" => "<p>The elements from this collection.</p>"}))
    ListHostedConfigurationVersionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of items to return. Use this token to get the next set of\n         results.</p>"}))
    ListHostedConfigurationVersionsOutput.type = Types::ListHostedConfigurationVersionsOutput
    ListHostedConfigurationVersionsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListHostedConfigurationVersionsRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListHostedConfigurationVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return for this call. If <code>MaxResults</code> is not\n         provided in the call, AppConfig returns the maximum of 50. The call also returns\n         a token that you can specify in a subsequent call to get the next set of results.</p>", "smithy.api#httpQuery" => "max_results"}))
    ListHostedConfigurationVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token to start the list. Use this token to get the next set of results. </p>", "smithy.api#httpQuery" => "next_token"}))
    ListHostedConfigurationVersionsRequest.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryName, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>An optional filter that can be used to specify the version label of an AppConfig hosted configuration version. This parameter supports filtering by prefix using a\n         wildcard, for example \"v2*\". If you don't specify an asterisk at the end of the value, only\n         an exact match is returned.</p>", "smithy.api#httpQuery" => "version_label"}))
    ListHostedConfigurationVersionsRequest.type = Types::ListHostedConfigurationVersionsRequest
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata to assign to AppConfig resources. Tags help organize and categorize\n         your AppConfig resources. Each tag consists of a key and an optional value, both\n         of which you define.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    Monitor.add_member(:alarm_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048, location_name: 'AlarmArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the Amazon CloudWatch alarm.</p>", "smithy.api#required" => {}}))
    Monitor.add_member(:alarm_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'AlarmRoleArn', traits: {"smithy.api#documentation" => "<p>ARN of an Identity and Access Management (IAM) role for AppConfig to monitor\n            <code>AlarmArn</code>.</p>"}))
    Monitor.type = Types::Monitor
    MonitorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Monitor)
    Parameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the parameter.</p>"}))
    Parameter.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Required', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A parameter value must be specified in the extension association.</p>"}))
    Parameter.add_member(:dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Dynamic', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether this parameter's value can be supplied at the extension's action point\n         instead of during extension association. Dynamic parameters can't be marked\n            <code>Required</code>.</p>"}))
    Parameter.type = Types::Parameter
    ParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionOrParameterName)
    ParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter)
    ParameterValueMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ExtensionOrParameterName)
    ParameterValueMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048)
    PayloadTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    PayloadTooLargeException.add_member(:measure, Smithy::Schema::Shapes::ShapeRef.new(shape: BytesMeasure, location_name: 'Measure'))
    PayloadTooLargeException.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Limit', traits: {"smithy.api#default" => 0}))
    PayloadTooLargeException.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Size', traits: {"smithy.api#default" => 0}))
    PayloadTooLargeException.type = Types::PayloadTooLargeException
    ReplicateTo.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ReplicateTo.add_member(:ssm_document, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSM_DOCUMENT', traits: {"smithy.api#enumValue" => "SSM_DOCUMENT"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartDeploymentOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that was deployed.</p>"}))
    StartDeploymentOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment that was deployed.</p>"}))
    StartDeploymentOutput.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment strategy that was deployed.</p>"}))
    StartDeploymentOutput.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile that was deployed.</p>"}))
    StartDeploymentOutput.add_member(:deployment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DeploymentNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The sequence number of the deployment.</p>"}))
    StartDeploymentOutput.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    StartDeploymentOutput.add_member(:configuration_location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'ConfigurationLocationUri', traits: {"smithy.api#documentation" => "<p>Information about the source location of the configuration.</p>"}))
    StartDeploymentOutput.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The configuration version that was deployed.</p>"}))
    StartDeploymentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment.</p>"}))
    StartDeploymentOutput.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    StartDeploymentOutput.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    StartDeploymentOutput.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets to receive a deployed configuration during each\n         interval.</p>"}))
    StartDeploymentOutput.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    StartDeploymentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the deployment.</p>"}))
    StartDeploymentOutput.add_member(:event_log, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEvents, location_name: 'EventLog', traits: {"smithy.api#documentation" => "<p>A list containing all events related to a deployment. The most recent events are\n         displayed first.</p>"}))
    StartDeploymentOutput.add_member(:percentage_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'PercentageComplete', traits: {"smithy.api#documentation" => "<p>The percentage of targets for which the deployment is available.</p>"}))
    StartDeploymentOutput.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>The time the deployment started.</p>"}))
    StartDeploymentOutput.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'CompletedAt', traits: {"smithy.api#documentation" => "<p>The time the deployment completed. </p>"}))
    StartDeploymentOutput.add_member(:applied_extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedExtensions, location_name: 'AppliedExtensions', traits: {"smithy.api#documentation" => "<p>A list of extensions that were processed as part of the deployment. The extensions that\n         were previously associated to the configuration profile, environment, or the application\n         when <code>StartDeployment</code> was called.</p>"}))
    StartDeploymentOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key used to encrypt configuration\n         data. You can encrypt secrets stored in Secrets Manager, Amazon Simple Storage Service\n         (Amazon S3) objects encrypted with SSE-KMS, or secure string parameters stored in Amazon Web Services Systems Manager\n         Parameter Store. </p>"}))
    StartDeploymentOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when\n         the resource was created or updated.</p>"}))
    StartDeploymentOutput.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>"}))
    StartDeploymentOutput.type = Types::StartDeploymentOutput
    StartDeploymentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStrategyId, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The deployment strategy ID.</p>", "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The configuration version to deploy. If deploying an AppConfig hosted\n         configuration version, you can specify either the version number or version label. For all\n         other configurations, you must specify the version number.</p>", "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the deployment.</p>"}))
    StartDeploymentRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Metadata to assign to the deployment. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which\n         you define.</p>"}))
    StartDeploymentRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this ID to encrypt the configuration data using a customer managed key. </p>"}))
    StartDeploymentRequest.add_member(:dynamic_extension_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicParameterMap, location_name: 'DynamicExtensionParameters', traits: {"smithy.api#documentation" => "<p>A map of dynamic extension parameter names to values to pass to associated extensions\n         with <code>PRE_START_DEPLOYMENT</code> actions.</p>"}))
    StartDeploymentRequest.type = Types::StartDeploymentRequest
    StopDeploymentOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The ID of the application that was deployed.</p>"}))
    StopDeploymentOutput.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The ID of the environment that was deployed.</p>"}))
    StopDeploymentOutput.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The ID of the deployment strategy that was deployed.</p>"}))
    StopDeploymentOutput.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile that was deployed.</p>"}))
    StopDeploymentOutput.add_member(:deployment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DeploymentNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The sequence number of the deployment.</p>"}))
    StopDeploymentOutput.add_member(:configuration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ConfigurationName', traits: {"smithy.api#documentation" => "<p>The name of the configuration.</p>"}))
    StopDeploymentOutput.add_member(:configuration_location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'ConfigurationLocationUri', traits: {"smithy.api#documentation" => "<p>Information about the source location of the configuration.</p>"}))
    StopDeploymentOutput.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The configuration version that was deployed.</p>"}))
    StopDeploymentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment.</p>"}))
    StopDeploymentOutput.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    StopDeploymentOutput.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    StopDeploymentOutput.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets to receive a deployed configuration during each\n         interval.</p>"}))
    StopDeploymentOutput.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    StopDeploymentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the deployment.</p>"}))
    StopDeploymentOutput.add_member(:event_log, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentEvents, location_name: 'EventLog', traits: {"smithy.api#documentation" => "<p>A list containing all events related to a deployment. The most recent events are\n         displayed first.</p>"}))
    StopDeploymentOutput.add_member(:percentage_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'PercentageComplete', traits: {"smithy.api#documentation" => "<p>The percentage of targets for which the deployment is available.</p>"}))
    StopDeploymentOutput.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>The time the deployment started.</p>"}))
    StopDeploymentOutput.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: 'CompletedAt', traits: {"smithy.api#documentation" => "<p>The time the deployment completed. </p>"}))
    StopDeploymentOutput.add_member(:applied_extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedExtensions, location_name: 'AppliedExtensions', traits: {"smithy.api#documentation" => "<p>A list of extensions that were processed as part of the deployment. The extensions that\n         were previously associated to the configuration profile, environment, or the application\n         when <code>StartDeployment</code> was called.</p>"}))
    StopDeploymentOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key used to encrypt configuration\n         data. You can encrypt secrets stored in Secrets Manager, Amazon Simple Storage Service\n         (Amazon S3) objects encrypted with SSE-KMS, or secure string parameters stored in Amazon Web Services Systems Manager\n         Parameter Store. </p>"}))
    StopDeploymentOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when\n         the resource was created or updated.</p>"}))
    StopDeploymentOutput.add_member(:version_label, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionLabel, location_name: 'VersionLabel', traits: {"smithy.api#documentation" => "<p>A user-defined label for an AppConfig hosted configuration version.</p>"}))
    StopDeploymentOutput.type = Types::StopDeploymentOutput
    StopDeploymentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDeploymentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDeploymentRequest.add_member(:deployment_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DeploymentNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The sequence number of the deployment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDeploymentRequest.add_member(:allow_revert, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowRevert', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>A Boolean that enables AppConfig to rollback a <code>COMPLETED</code>\n         deployment to the previous configuration version. This action moves the deployment to a\n         status of <code>REVERTED</code>.</p>", "smithy.api#httpHeader" => "Allow-Revert"}))
    StopDeploymentRequest.type = Types::StopDeploymentRequest
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource for which to retrieve tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value string map. The valid character set is [a-zA-Z+-=._:/]. The tag key can be\n         up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to\n         256 characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TriggeredBy.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    TriggeredBy.add_member(:appconfig, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPCONFIG', traits: {"smithy.api#enumValue" => "APPCONFIG"}))
    TriggeredBy.add_member(:cloudwatch_alarm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH_ALARM', traits: {"smithy.api#enumValue" => "CLOUDWATCH_ALARM"}))
    TriggeredBy.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource for which to remove tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to delete.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAccountSettingsOutput.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionSettings, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>A parameter to configure deletion protection. Deletion protection prevents a user from\n         deleting a configuration profile or an environment if AppConfig has called either\n            <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html\">GetLatestConfiguration</a> or  for the\n         configuration profile or from the environment during the specified interval. The default\n         interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>"}))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateAccountSettingsRequest.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionSettings, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>A parameter to configure deletion protection. Deletion protection prevents a user from\n         deleting a configuration profile or an environment if AppConfig has called either\n            <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html\">GetLatestConfiguration</a> or  for the\n         configuration profile or from the environment during the specified interval. The default\n         interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>"}))
    UpdateAccountSettingsRequest.type = Types::UpdateAccountSettingsRequest
    UpdateApplicationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    UpdateApplicationOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The application name.</p>"}))
    UpdateApplicationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    UpdateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the application.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateConfigurationProfileOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LongName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration profile.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The configuration profile description.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:location_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Uri, location_name: 'LocationUri', traits: {"smithy.api#documentation" => "<p>The URI location of the configuration.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:retrieval_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RetrievalRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role with permission to access the configuration at the specified\n            <code>LocationUri</code>.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:validators, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorList, location_name: 'Validators', traits: {"smithy.api#documentation" => "<p>A list of methods for validating the configuration.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of configurations contained in the profile. AppConfig supports\n            <code>feature flags</code> and <code>freeform</code> configurations. We recommend you\n         create feature flag configurations to enable or disable new features and freeform\n         configurations to distribute configurations to an application. When calling this API, enter\n         one of the following values for <code>Type</code>:</p>\n         <p>\n            <code>AWS.AppConfig.FeatureFlags</code>\n         </p>\n         <p>\n            <code>AWS.Freeform</code>\n         </p>"}))
    UpdateConfigurationProfileOutput.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the Key Management Service key to encrypt new configuration\n         data versions in the AppConfig hosted configuration store. This attribute is only\n         used for <code>hosted</code> configuration types. To encrypt data managed in other\n         configuration stores, see the documentation for how to specify an KMS key\n         for that particular service.</p>"}))
    UpdateConfigurationProfileOutput.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The Key Management Service key identifier (key ID, key alias, or key ARN) provided when\n         the resource was created or updated.</p>"}))
    UpdateConfigurationProfileOutput.type = Types::UpdateConfigurationProfileOutput
    UpdateConfigurationProfileRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationProfileRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The ID of the configuration profile.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationProfileRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LongName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration profile.</p>"}))
    UpdateConfigurationProfileRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the configuration profile.</p>"}))
    UpdateConfigurationProfileRequest.add_member(:retrieval_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RetrievalRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role with permission to access the configuration at the specified\n            <code>LocationUri</code>.</p>\n         <important>\n            <p>A retrieval role ARN is not required for configurations stored in CodePipeline or the AppConfig hosted configuration store. It is required for all other sources that\n            store your configuration. </p>\n         </important>"}))
    UpdateConfigurationProfileRequest.add_member(:validators, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorList, location_name: 'Validators', traits: {"smithy.api#documentation" => "<p>A list of methods for validating the configuration.</p>"}))
    UpdateConfigurationProfileRequest.add_member(:kms_key_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyIdentifierOrEmpty, location_name: 'KmsKeyIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a Key Management Service key to encrypt new configuration data\n         versions in the AppConfig hosted configuration store. This attribute is only used\n         for <code>hosted</code> configuration types. The identifier can be an KMS\n         key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias. To encrypt data\n         managed in other configuration stores, see the documentation for how to specify an KMS key for that particular service.</p>"}))
    UpdateConfigurationProfileRequest.type = Types::UpdateConfigurationProfileRequest
    UpdateDeploymentStrategyOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The deployment strategy ID.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the deployment strategy.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the deployment strategy.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total amount of time the deployment lasted.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grew over time.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets that received a deployed configuration during each\n         interval.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitored for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    UpdateDeploymentStrategyOutput.add_member(:replicate_to, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicateTo, location_name: 'ReplicateTo', traits: {"smithy.api#documentation" => "<p>Save the deployment strategy to a Systems Manager (SSM) document.</p>"}))
    UpdateDeploymentStrategyOutput.type = Types::UpdateDeploymentStrategyOutput
    UpdateDeploymentStrategyRequest.add_member(:deployment_strategy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentStrategyId, location_name: 'DeploymentStrategyId', traits: {"smithy.api#documentation" => "<p>The deployment strategy ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentStrategyRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the deployment strategy.</p>"}))
    UpdateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'DeploymentDurationInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Total amount of time for a deployment to last.</p>"}))
    UpdateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: 'FinalBakeTimeInMinutes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The amount of time that AppConfig monitors for alarms before considering the\n         deployment to be complete and no longer eligible for automatic rollback.</p>"}))
    UpdateDeploymentStrategyRequest.add_member(:growth_factor, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthFactor, location_name: 'GrowthFactor', traits: {"smithy.api#documentation" => "<p>The percentage of targets to receive a deployed configuration during each\n         interval.</p>"}))
    UpdateDeploymentStrategyRequest.add_member(:growth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GrowthType, location_name: 'GrowthType', traits: {"smithy.api#documentation" => "<p>The algorithm used to define how percentage grows over time. AppConfig\n         supports the following growth types:</p>\n         <p>\n            <b>Linear</b>: For this type, AppConfig processes\n         the deployment by increments of the growth factor evenly distributed over the deployment\n         time. For example, a linear deployment that uses a growth factor of 20 initially makes the\n         configuration available to 20 percent of the targets. After 1/5th of the deployment time\n         has passed, the system updates the percentage to 40 percent. This continues until 100% of\n         the targets are set to receive the deployed configuration.</p>\n         <p>\n            <b>Exponential</b>: For this type, AppConfig\n         processes the deployment exponentially using the following formula: <code>G*(2^N)</code>.\n         In this formula, <code>G</code> is the growth factor specified by the user and\n            <code>N</code> is the number of steps until the configuration is deployed to all\n         targets. For example, if you specify a growth factor of 2, then the system rolls out the\n         configuration as follows:</p>\n         <p>\n            <code>2*(2^0)</code>\n         </p>\n         <p>\n            <code>2*(2^1)</code>\n         </p>\n         <p>\n            <code>2*(2^2)</code>\n         </p>\n         <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the\n         targets, 8% of the targets, and continues until the configuration has been deployed to all\n         targets.</p>"}))
    UpdateDeploymentStrategyRequest.type = Types::UpdateDeploymentStrategyRequest
    UpdateEnvironmentOutput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>"}))
    UpdateEnvironmentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>"}))
    UpdateEnvironmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    UpdateEnvironmentOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the environment.</p>"}))
    UpdateEnvironmentOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the environment. An environment can be in one of the following states:\n            <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or\n            <code>ROLLED_BACK</code>\n         </p>"}))
    UpdateEnvironmentOutput.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#documentation" => "<p>Amazon CloudWatch alarms monitored during the deployment.</p>"}))
    UpdateEnvironmentOutput.type = Types::UpdateEnvironmentOutput
    UpdateEnvironmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'EnvironmentId', traits: {"smithy.api#documentation" => "<p>The environment ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the environment.</p>"}))
    UpdateEnvironmentRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the environment.</p>"}))
    UpdateEnvironmentRequest.add_member(:monitors, Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorList, location_name: 'Monitors', traits: {"smithy.api#documentation" => "<p>Amazon CloudWatch alarms to monitor during the deployment process.</p>"}))
    UpdateEnvironmentRequest.type = Types::UpdateEnvironmentRequest
    UpdateExtensionAssociationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the association.</p>"}))
    UpdateExtensionAssociationOutput.add_member(:extension_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ExtensionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the extension defined in the association.</p>"}))
    UpdateExtensionAssociationOutput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARNs of applications, configuration profiles, or environments defined in the\n         association.</p>"}))
    UpdateExtensionAssociationOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    UpdateExtensionAssociationOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameter names and values defined in the association.</p>"}))
    UpdateExtensionAssociationOutput.add_member(:extension_version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExtensionVersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The version number for the extension defined in the association.</p>"}))
    UpdateExtensionAssociationOutput.type = Types::UpdateExtensionAssociationOutput
    UpdateExtensionAssociationRequest.add_member(:extension_association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ExtensionAssociationId', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the association.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExtensionAssociationRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameter names and values defined in the extension.</p>"}))
    UpdateExtensionAssociationRequest.type = Types::UpdateExtensionAssociationRequest
    UpdateExtensionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the extension.</p>"}))
    UpdateExtensionOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The extension name.</p>"}))
    UpdateExtensionOutput.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The extension version number.</p>"}))
    UpdateExtensionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The system-generated Amazon Resource Name (ARN) for the extension.</p>"}))
    UpdateExtensionOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the extension.</p>"}))
    UpdateExtensionOutput.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMap, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions defined in the extension.</p>"}))
    UpdateExtensionOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The parameters accepted by the extension. You specify parameter values when you\n         associate the extension to an AppConfig resource by using the\n            <code>CreateExtensionAssociation</code> API action. For Lambda extension\n         actions, these parameters are included in the Lambda request object.</p>"}))
    UpdateExtensionOutput.type = Types::UpdateExtensionOutput
    UpdateExtensionRequest.add_member(:extension_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: 'ExtensionIdentifier', traits: {"smithy.api#documentation" => "<p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExtensionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Information about the extension.</p>"}))
    UpdateExtensionRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsMap, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>The actions defined in the extension.</p>"}))
    UpdateExtensionRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMap, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>One or more parameters for the actions called by the extension.</p>"}))
    UpdateExtensionRequest.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VersionNumber', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The extension version number.</p>"}))
    UpdateExtensionRequest.type = Types::UpdateExtensionRequest
    ValidateConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The application ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateConfigurationRequest.add_member(:configuration_profile_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'ConfigurationProfileId', traits: {"smithy.api#documentation" => "<p>The configuration profile ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateConfigurationRequest.add_member(:configuration_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'ConfigurationVersion', traits: {"smithy.api#documentation" => "<p>The version of the configuration to validate.</p>", "smithy.api#httpQuery" => "configuration_version", "smithy.api#required" => {}}))
    ValidateConfigurationRequest.type = Types::ValidateConfigurationRequest
    Validator.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>AppConfig supports validators of type <code>JSON_SCHEMA</code> and\n            <code>LAMBDA</code>\n         </p>", "smithy.api#required" => {}}))
    Validator.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32768, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>Either the JSON Schema content or the Amazon Resource Name (ARN) of an Lambda\n         function.</p>", "smithy.api#required" => {}}))
    Validator.type = Types::Validator
    ValidatorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Validator)
    ValidatorType.add_member(:json_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON_SCHEMA', traits: {"smithy.api#enumValue" => "JSON_SCHEMA"}))
    ValidatorType.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA', traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ValidatorTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorType)

    AmazonAppConfig = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appconfig#AmazonAppConfig"
      service.name = "AmazonAppConfig"
      service.version = "2019-10-09"
      service.traits = {"aws.api#service" => {"sdkId" => "AppConfig", "arnNamespace" => "appconfig", "cloudFormationName" => "AppConfig", "cloudTrailEventSource" => "appconfig.amazonaws.com", "endpointPrefix" => "appconfig"}, "aws.auth#sigv4" => {"name" => "appconfig"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon AppConfig"}
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:create_configuration_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateConfigurationProfile"
        operation.name = "CreateConfigurationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/configurationprofiles", "code" => 201}}
      end)
      service.add_operation(:create_deployment_strategy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateDeploymentStrategy"
        operation.name = "CreateDeploymentStrategy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentStrategyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentStrategyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deploymentstrategies", "code" => 201}}
      end)
      service.add_operation(:create_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/environments", "code" => 201}}
      end)
      service.add_operation(:create_extension, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateExtension"
        operation.name = "CreateExtension"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExtensionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExtensionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/extensions", "code" => 201}}
      end)
      service.add_operation(:create_extension_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateExtensionAssociation"
        operation.name = "CreateExtensionAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExtensionAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExtensionAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/extensionassociations", "code" => 201}}
      end)
      service.add_operation(:create_hosted_configuration_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateHostedConfigurationVersion"
        operation.name = "CreateHostedConfigurationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostedConfigurationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostedConfigurationVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions", "code" => 201}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}", "code" => 204}}
      end)
      service.add_operation(:delete_configuration_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteConfigurationProfile"
        operation.name = "DeleteConfigurationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", "code" => 204}}
      end)
      service.add_operation(:delete_deployment_strategy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteDeploymentStrategy"
        operation.name = "DeleteDeploymentStrategy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDeploymentStrategyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/deployementstrategies/{DeploymentStrategyId}", "code" => 204}}
      end)
      service.add_operation(:delete_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}", "code" => 204}}
      end)
      service.add_operation(:delete_extension, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteExtension"
        operation.name = "DeleteExtension"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExtensionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/extensions/{ExtensionIdentifier}", "code" => 204}}
      end)
      service.add_operation(:delete_extension_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteExtensionAssociation"
        operation.name = "DeleteExtensionAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExtensionAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/extensionassociations/{ExtensionAssociationId}", "code" => 204}}
      end)
      service.add_operation(:delete_hosted_configuration_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteHostedConfigurationVersion"
        operation.name = "DeleteHostedConfigurationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostedConfigurationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}", "code" => 204}}
      end)
      service.add_operation(:get_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:get_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API has been deprecated in favor of the GetLatestConfiguration API used in conjunction with StartConfigurationSession."}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{Application}/environments/{Environment}/configurations/{Configuration}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetConfigurationProfile"
        operation.name = "GetConfigurationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", "code" => 200}}
      end)
      service.add_operation(:get_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", "code" => 200}}
      end)
      service.add_operation(:get_deployment_strategy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetDeploymentStrategy"
        operation.name = "GetDeploymentStrategy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentStrategyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeploymentStrategyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/deploymentstrategies/{DeploymentStrategyId}", "code" => 200}}
      end)
      service.add_operation(:get_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}", "code" => 200}}
      end)
      service.add_operation(:get_extension, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetExtension"
        operation.name = "GetExtension"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExtensionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExtensionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensions/{ExtensionIdentifier}", "code" => 200}}
      end)
      service.add_operation(:get_extension_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetExtensionAssociation"
        operation.name = "GetExtensionAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExtensionAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExtensionAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensionassociations/{ExtensionAssociationId}", "code" => 200}}
      end)
      service.add_operation(:get_hosted_configuration_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetHostedConfigurationVersion"
        operation.name = "GetHostedConfigurationVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedConfigurationVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostedConfigurationVersionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}", "code" => 200}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_configuration_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListConfigurationProfiles"
        operation.name = "ListConfigurationProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationProfilesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationProfiles.new
      end)
      service.add_operation(:list_deployment_strategies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListDeploymentStrategies"
        operation.name = "ListDeploymentStrategies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentStrategiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentStrategiesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/deploymentstrategies", "code" => 200}}
        operation[:paginator] = Paginators::ListDeploymentStrategies.new
      end)
      service.add_operation(:list_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", "code" => 200}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments", "code" => 200}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_extension_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExtensionAssociations"
        operation.name = "ListExtensionAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExtensionAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExtensionAssociationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensionassociations", "code" => 200}}
        operation[:paginator] = Paginators::ListExtensionAssociations.new
      end)
      service.add_operation(:list_extensions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExtensions"
        operation.name = "ListExtensions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExtensionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExtensionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensions", "code" => 200}}
        operation[:paginator] = Paginators::ListExtensions.new
      end)
      service.add_operation(:list_hosted_configuration_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListHostedConfigurationVersions"
        operation.name = "ListHostedConfigurationVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedConfigurationVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostedConfigurationVersionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions", "code" => 200}}
        operation[:paginator] = Paginators::ListHostedConfigurationVersions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#StartDeployment"
        operation.name = "StartDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", "code" => 201}}
      end)
      service.add_operation(:stop_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#StopDeployment"
        operation.name = "StopDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDeploymentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", "code" => 202}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:update_configuration_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateConfigurationProfile"
        operation.name = "UpdateConfigurationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationProfileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", "code" => 200}}
      end)
      service.add_operation(:update_deployment_strategy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateDeploymentStrategy"
        operation.name = "UpdateDeploymentStrategy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeploymentStrategyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDeploymentStrategyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/deploymentstrategies/{DeploymentStrategyId}", "code" => 200}}
      end)
      service.add_operation(:update_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}", "code" => 200}}
      end)
      service.add_operation(:update_extension, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateExtension"
        operation.name = "UpdateExtension"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExtensionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExtensionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/extensions/{ExtensionIdentifier}", "code" => 200}}
      end)
      service.add_operation(:update_extension_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateExtensionAssociation"
        operation.name = "UpdateExtensionAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExtensionAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExtensionAssociationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/extensionassociations/{ExtensionAssociationId}", "code" => 200}}
      end)
      service.add_operation(:validate_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ValidateConfiguration"
        operation.name = "ValidateConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators", "code" => 204}}
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
