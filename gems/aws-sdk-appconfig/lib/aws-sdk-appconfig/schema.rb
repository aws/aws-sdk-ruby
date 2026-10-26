# frozen_string_literal: true

# This is generated code!

module Aws::AppConfig
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Action", name: "Action")
    ActionInvocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ActionInvocation", name: "ActionInvocation")
    ActionInvocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ActionInvocations", name: "ActionInvocations")
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ActionList", name: "ActionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ActionPoint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#ActionPoint", name: "ActionPoint")
    ActionsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#ActionsMap", name: "ActionsMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Application", name: "Application")
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ApplicationList", name: "ApplicationList")
    AppliedExtension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#AppliedExtension", name: "AppliedExtension")
    AppliedExtensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#AppliedExtensions", name: "AppliedExtensions")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:[a-z]+:((eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:[a-zA-Z0-9-_/:.]+$"})
    AttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#AttributeKey", name: "AttributeKey", traits: {"smithy.api#pattern" => "^(?!enabled$)[a-z][a-zA-Z0-9_-]{0,63}$"})
    AttributeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#AttributeString", name: "AttributeString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    AttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appconfig#AttributeValue", name: "AttributeValue")
    AttributeValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#AttributeValueMap", name: "AttributeValueMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    BadRequestDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appconfig#BadRequestDetails", name: "BadRequestDetails")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BadRequestReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#BadRequestReason", name: "BadRequestReason")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.appconfig#Blob", name: "Blob", traits: {"smithy.api#sensitive" => {}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appconfig#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BytesMeasure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#BytesMeasure", name: "BytesMeasure")
    ConfigurationProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ConfigurationProfileSummary", name: "ConfigurationProfileSummary")
    ConfigurationProfileSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ConfigurationProfileSummaryList", name: "ConfigurationProfileSummaryList")
    ConfigurationProfileType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#ConfigurationProfileType", name: "ConfigurationProfileType", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\.\\-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateApplicationOutput", name: "CreateApplicationOutput")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateConfigurationProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateConfigurationProfileOutput", name: "CreateConfigurationProfileOutput")
    CreateConfigurationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateConfigurationProfileRequest", name: "CreateConfigurationProfileRequest")
    CreateDeploymentStrategyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateDeploymentStrategyOutput", name: "CreateDeploymentStrategyOutput")
    CreateDeploymentStrategyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateDeploymentStrategyRequest", name: "CreateDeploymentStrategyRequest")
    CreateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateEnvironmentOutput", name: "CreateEnvironmentOutput")
    CreateEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateEnvironmentRequest", name: "CreateEnvironmentRequest")
    CreateExperimentDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateExperimentDefinitionOutput", name: "CreateExperimentDefinitionOutput")
    CreateExperimentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateExperimentDefinitionRequest", name: "CreateExperimentDefinitionRequest")
    CreateExtensionAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateExtensionAssociationOutput", name: "CreateExtensionAssociationOutput")
    CreateExtensionAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateExtensionAssociationRequest", name: "CreateExtensionAssociationRequest")
    CreateExtensionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateExtensionOutput", name: "CreateExtensionOutput")
    CreateExtensionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateExtensionRequest", name: "CreateExtensionRequest")
    CreateHostedConfigurationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateHostedConfigurationVersionOutput", name: "CreateHostedConfigurationVersionOutput")
    CreateHostedConfigurationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#CreateHostedConfigurationVersionRequest", name: "CreateHostedConfigurationVersionRequest")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteConfigurationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteConfigurationProfileRequest", name: "DeleteConfigurationProfileRequest")
    DeleteDeploymentStrategyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteDeploymentStrategyRequest", name: "DeleteDeploymentStrategyRequest")
    DeleteEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteEnvironmentRequest", name: "DeleteEnvironmentRequest")
    DeleteExperimentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteExperimentDefinitionRequest", name: "DeleteExperimentDefinitionRequest")
    DeleteExtensionAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteExtensionAssociationRequest", name: "DeleteExtensionAssociationRequest")
    DeleteExtensionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteExtensionRequest", name: "DeleteExtensionRequest")
    DeleteHostedConfigurationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeleteHostedConfigurationVersionRequest", name: "DeleteHostedConfigurationVersionRequest")
    DeleteType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#DeleteType", name: "DeleteType")
    DeletionProtectionCheck = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#DeletionProtectionCheck", name: "DeletionProtectionCheck")
    DeletionProtectionDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfig#DeletionProtectionDuration", name: "DeletionProtectionDuration", traits: {"smithy.api#range" => {"min" => 15, "max" => 1440}})
    DeletionProtectionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeletionProtectionSettings", name: "DeletionProtectionSettings")
    DeploymentEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeploymentEvent", name: "DeploymentEvent")
    DeploymentEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#DeploymentEventType", name: "DeploymentEventType")
    DeploymentEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#DeploymentEvents", name: "DeploymentEvents")
    DeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#DeploymentList", name: "DeploymentList")
    DeploymentParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeploymentParameters", name: "DeploymentParameters")
    DeploymentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#DeploymentState", name: "DeploymentState")
    DeploymentStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeploymentStrategy", name: "DeploymentStrategy")
    DeploymentStrategyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#DeploymentStrategyId", name: "DeploymentStrategyId", traits: {"smithy.api#pattern" => "^(^[a-z0-9]{4,7}$|^AppConfig\\.[A-Za-z0-9]{9,40}$)$"})
    DeploymentStrategyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#DeploymentStrategyList", name: "DeploymentStrategyList")
    DeploymentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#DeploymentSummary", name: "DeploymentSummary")
    DeploymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#DeploymentType", name: "DeploymentType")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appconfig#Double", name: "Double", traits: {"smithy.api#default" => 0})
    DynamicParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#DynamicParameterKey", name: "DynamicParameterKey", traits: {"smithy.api#pattern" => "^([^#\\n]{1,96})#([^\\/#\\n]{1,64})$"})
    DynamicParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#DynamicParameterMap", name: "DynamicParameterMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#sensitive" => {}})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Environment", name: "Environment")
    EnvironmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#EnvironmentList", name: "EnvironmentList")
    EnvironmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#EnvironmentState", name: "EnvironmentState")
    ExperimentDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ExperimentDefinitionList", name: "ExperimentDefinitionList")
    ExperimentDefinitionSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExperimentDefinitionSnapshot", name: "ExperimentDefinitionSnapshot")
    ExperimentDefinitionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#ExperimentDefinitionStatus", name: "ExperimentDefinitionStatus")
    ExperimentDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExperimentDefinitionSummary", name: "ExperimentDefinitionSummary")
    ExperimentRunEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExperimentRunEvent", name: "ExperimentRunEvent")
    ExperimentRunEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ExperimentRunEventList", name: "ExperimentRunEventList")
    ExperimentRunEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#ExperimentRunEventType", name: "ExperimentRunEventType")
    ExperimentRunResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExperimentRunResult", name: "ExperimentRunResult")
    ExperimentRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#ExperimentRunStatus", name: "ExperimentRunStatus")
    ExperimentRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExperimentRunSummary", name: "ExperimentRunSummary")
    ExperimentRunSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ExperimentRunSummaryList", name: "ExperimentRunSummaryList")
    ExtensionAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ExtensionAssociationSummaries", name: "ExtensionAssociationSummaries")
    ExtensionAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExtensionAssociationSummary", name: "ExtensionAssociationSummary")
    ExtensionOrParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#ExtensionOrParameterName", name: "ExtensionOrParameterName", traits: {"smithy.api#pattern" => "^[^\\/#:\\n]{1,64}$"})
    ExtensionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ExtensionSummaries", name: "ExtensionSummaries")
    ExtensionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ExtensionSummary", name: "ExtensionSummary")
    FlagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#FlagKey", name: "FlagKey", traits: {"smithy.api#pattern" => "^[a-z][a-zA-Z0-9_-]{1,64}$"})
    FlagValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#FlagValue", name: "FlagValue")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appconfig#Float", name: "Float", traits: {"smithy.api#default" => 0})
    GetAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetAccountSettingsOutput", name: "GetAccountSettingsOutput")
    GetApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetApplicationOutput", name: "GetApplicationOutput")
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetApplicationRequest", name: "GetApplicationRequest")
    GetConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetConfigurationOutput", name: "GetConfigurationOutput")
    GetConfigurationProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetConfigurationProfileOutput", name: "GetConfigurationProfileOutput")
    GetConfigurationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetConfigurationProfileRequest", name: "GetConfigurationProfileRequest")
    GetConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetConfigurationRequest", name: "GetConfigurationRequest")
    GetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetDeploymentOutput", name: "GetDeploymentOutput")
    GetDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetDeploymentRequest", name: "GetDeploymentRequest")
    GetDeploymentStrategyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetDeploymentStrategyOutput", name: "GetDeploymentStrategyOutput")
    GetDeploymentStrategyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetDeploymentStrategyRequest", name: "GetDeploymentStrategyRequest")
    GetEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetEnvironmentOutput", name: "GetEnvironmentOutput")
    GetEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetEnvironmentRequest", name: "GetEnvironmentRequest")
    GetExperimentDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExperimentDefinitionOutput", name: "GetExperimentDefinitionOutput")
    GetExperimentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExperimentDefinitionRequest", name: "GetExperimentDefinitionRequest")
    GetExperimentRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExperimentRunOutput", name: "GetExperimentRunOutput")
    GetExperimentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExperimentRunRequest", name: "GetExperimentRunRequest")
    GetExtensionAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExtensionAssociationOutput", name: "GetExtensionAssociationOutput")
    GetExtensionAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExtensionAssociationRequest", name: "GetExtensionAssociationRequest")
    GetExtensionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExtensionOutput", name: "GetExtensionOutput")
    GetExtensionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetExtensionRequest", name: "GetExtensionRequest")
    GetHostedConfigurationVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetHostedConfigurationVersionOutput", name: "GetHostedConfigurationVersionOutput")
    GetHostedConfigurationVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#GetHostedConfigurationVersionRequest", name: "GetHostedConfigurationVersionRequest")
    GrowthFactor = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appconfig#GrowthFactor", name: "GrowthFactor", traits: {"smithy.api#range" => {"min" => 1.0, "max" => 100.0}})
    GrowthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#GrowthType", name: "GrowthType")
    HostedConfigurationVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#HostedConfigurationVersionSummary", name: "HostedConfigurationVersionSummary")
    HostedConfigurationVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#HostedConfigurationVersionSummaryList", name: "HostedConfigurationVersionSummaryList")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Id", name: "Id", traits: {"smithy.api#pattern" => "^[a-z0-9]{4,7}$"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfig#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#InvalidConfigurationDetail", name: "InvalidConfigurationDetail")
    InvalidConfigurationDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#InvalidConfigurationDetailList", name: "InvalidConfigurationDetailList")
    Iso8601DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appconfig#Iso8601DateTime", name: "Iso8601DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    KmsKeyIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#KmsKeyIdentifier", name: "KmsKeyIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyIdentifierOrEmpty = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#KmsKeyIdentifierOrEmpty", name: "KmsKeyIdentifierOrEmpty", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ListApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListApplicationsOutput", name: "ListApplicationsOutput")
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListConfigurationProfilesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListConfigurationProfilesOutput", name: "ListConfigurationProfilesOutput")
    ListConfigurationProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListConfigurationProfilesRequest", name: "ListConfigurationProfilesRequest")
    ListDeploymentStrategiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListDeploymentStrategiesOutput", name: "ListDeploymentStrategiesOutput")
    ListDeploymentStrategiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListDeploymentStrategiesRequest", name: "ListDeploymentStrategiesRequest")
    ListDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListDeploymentsOutput", name: "ListDeploymentsOutput")
    ListDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListDeploymentsRequest", name: "ListDeploymentsRequest")
    ListEnvironmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListEnvironmentsOutput", name: "ListEnvironmentsOutput")
    ListEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListEnvironmentsRequest", name: "ListEnvironmentsRequest")
    ListExperimentDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExperimentDefinitionsOutput", name: "ListExperimentDefinitionsOutput")
    ListExperimentDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExperimentDefinitionsRequest", name: "ListExperimentDefinitionsRequest")
    ListExperimentRunEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExperimentRunEventsOutput", name: "ListExperimentRunEventsOutput")
    ListExperimentRunEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExperimentRunEventsRequest", name: "ListExperimentRunEventsRequest")
    ListExperimentRunsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExperimentRunsOutput", name: "ListExperimentRunsOutput")
    ListExperimentRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExperimentRunsRequest", name: "ListExperimentRunsRequest")
    ListExtensionAssociationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExtensionAssociationsOutput", name: "ListExtensionAssociationsOutput")
    ListExtensionAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExtensionAssociationsRequest", name: "ListExtensionAssociationsRequest")
    ListExtensionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExtensionsOutput", name: "ListExtensionsOutput")
    ListExtensionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListExtensionsRequest", name: "ListExtensionsRequest")
    ListHostedConfigurationVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListHostedConfigurationVersionsOutput", name: "ListHostedConfigurationVersionsOutput")
    ListHostedConfigurationVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListHostedConfigurationVersionsRequest", name: "ListHostedConfigurationVersionsRequest")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    LongName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#LongName", name: "LongName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfig#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MinutesBetween0And24Hours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfig#MinutesBetween0And24Hours", name: "MinutesBetween0And24Hours", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1440}})
    Monitor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Monitor", name: "Monitor")
    MonitorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#MonitorList", name: "MonitorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    NameWithReservedAwsPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#NameWithReservedAwsPrefix", name: "NameWithReservedAwsPrefix", traits: {"smithy.api#pattern" => "^(?!AWS\\.).{1,64}$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NullablePercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appconfig#NullablePercentage", name: "NullablePercentage", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    NumberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#NumberList", name: "NumberList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Parameter", name: "Parameter")
    ParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#ParameterMap", name: "ParameterMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ParameterValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#ParameterValueMap", name: "ParameterValueMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PayloadTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#PayloadTooLargeException", name: "PayloadTooLargeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appconfig#Percentage", name: "Percentage", traits: {"smithy.api#range" => {"min" => 1.0, "max" => 100.0}})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appconfig#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    QueryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#QueryName", name: "QueryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ReplicateTo = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#ReplicateTo", name: "ReplicateTo")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((arn):(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov|aws-eusc):(iam)::\\d{12}:role[/].*)$"})
    Rule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Rule", name: "Rule", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StartDeploymentOutput", name: "StartDeploymentOutput")
    StartDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StartDeploymentRequest", name: "StartDeploymentRequest")
    StartExperimentRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StartExperimentRunOutput", name: "StartExperimentRunOutput")
    StartExperimentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StartExperimentRunRequest", name: "StartExperimentRunRequest")
    StopDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StopDeploymentOutput", name: "StopDeploymentOutput")
    StopDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StopDeploymentRequest", name: "StopDeploymentRequest")
    StopExperimentRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StopExperimentRunOutput", name: "StopExperimentRunOutput")
    StopExperimentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#StopExperimentRunRequest", name: "StopExperimentRunRequest")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#StringList", name: "StringList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    StringWithLengthBetween0And32768 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#StringWithLengthBetween0And32768", name: "StringWithLengthBetween0And32768", traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}, "smithy.api#sensitive" => {}})
    StringWithLengthBetween1And2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#StringWithLengthBetween1And2048", name: "StringWithLengthBetween1And2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringWithLengthBetween1And255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#StringWithLengthBetween1And255", name: "StringWithLengthBetween1And255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    StringWithLengthBetween1And64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#StringWithLengthBetween1And64", name: "StringWithLengthBetween1And64", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Treatment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Treatment", name: "Treatment")
    TreatmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#TreatmentInput", name: "TreatmentInput")
    TreatmentInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#TreatmentInputList", name: "TreatmentInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TreatmentKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#TreatmentKey", name: "TreatmentKey", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{1,8}$"})
    TreatmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#TreatmentList", name: "TreatmentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TreatmentOverrideMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appconfig#TreatmentOverrideMap", name: "TreatmentOverrideMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    TreatmentOverrides = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appconfig#TreatmentOverrides", name: "TreatmentOverrides")
    TriggeredBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#TriggeredBy", name: "TriggeredBy")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateAccountSettingsOutput", name: "UpdateAccountSettingsOutput")
    UpdateAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateAccountSettingsRequest", name: "UpdateAccountSettingsRequest")
    UpdateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateApplicationOutput", name: "UpdateApplicationOutput")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateConfigurationProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateConfigurationProfileOutput", name: "UpdateConfigurationProfileOutput")
    UpdateConfigurationProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateConfigurationProfileRequest", name: "UpdateConfigurationProfileRequest")
    UpdateDeploymentStrategyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateDeploymentStrategyOutput", name: "UpdateDeploymentStrategyOutput")
    UpdateDeploymentStrategyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateDeploymentStrategyRequest", name: "UpdateDeploymentStrategyRequest")
    UpdateEnvironmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateEnvironmentOutput", name: "UpdateEnvironmentOutput")
    UpdateEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateEnvironmentRequest", name: "UpdateEnvironmentRequest")
    UpdateExperimentDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExperimentDefinitionOutput", name: "UpdateExperimentDefinitionOutput")
    UpdateExperimentDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExperimentDefinitionRequest", name: "UpdateExperimentDefinitionRequest")
    UpdateExperimentRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExperimentRunOutput", name: "UpdateExperimentRunOutput")
    UpdateExperimentRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExperimentRunRequest", name: "UpdateExperimentRunRequest")
    UpdateExtensionAssociationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExtensionAssociationOutput", name: "UpdateExtensionAssociationOutput")
    UpdateExtensionAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExtensionAssociationRequest", name: "UpdateExtensionAssociationRequest")
    UpdateExtensionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExtensionOutput", name: "UpdateExtensionOutput")
    UpdateExtensionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#UpdateExtensionRequest", name: "UpdateExtensionRequest")
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ValidateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#ValidateConfigurationRequest", name: "ValidateConfigurationRequest")
    Validator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#Validator", name: "Validator")
    ValidatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ValidatorList", name: "ValidatorList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ValidatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appconfig#ValidatorType", name: "ValidatorType")
    ValidatorTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appconfig#ValidatorTypeList", name: "ValidatorTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    VendedMetricsSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appconfig#VendedMetricsSettings", name: "VendedMetricsSettings")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    VersionLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appconfig#VersionLabel", name: "VersionLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[^0-9]"})
    Weight = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.appconfig#Weight", name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0.0}})

    Action.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    Action.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Action.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "Uri"))
    Action.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn"))
    Action.type = Types::Action
    ActionInvocation.add_member(:extension_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExtensionIdentifier"))
    ActionInvocation.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ActionName"))
    ActionInvocation.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "Uri"))
    ActionInvocation.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn"))
    ActionInvocation.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    ActionInvocation.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ActionInvocation.add_member(:invocation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "InvocationId"))
    ActionInvocation.type = Types::ActionInvocation
    ActionInvocations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionInvocation, name: "member"))
    ActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "member"))
    ActionPoint.add_member(:pre_create_hosted_configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_CREATE_HOSTED_CONFIGURATION_VERSION", traits: {"smithy.api#enumValue" => "PRE_CREATE_HOSTED_CONFIGURATION_VERSION"}))
    ActionPoint.add_member(:pre_start_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_START_DEPLOYMENT", traits: {"smithy.api#enumValue" => "PRE_START_DEPLOYMENT"}))
    ActionPoint.add_member(:at_deployment_tick, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_DEPLOYMENT_TICK", traits: {"smithy.api#enumValue" => "AT_DEPLOYMENT_TICK"}))
    ActionPoint.add_member(:on_deployment_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEPLOYMENT_START", traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_START"}))
    ActionPoint.add_member(:on_deployment_step, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEPLOYMENT_STEP", traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_STEP"}))
    ActionPoint.add_member(:on_deployment_baking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEPLOYMENT_BAKING", traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_BAKING"}))
    ActionPoint.add_member(:on_deployment_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEPLOYMENT_COMPLETE", traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_COMPLETE"}))
    ActionPoint.add_member(:on_deployment_rolled_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEPLOYMENT_ROLLED_BACK", traits: {"smithy.api#enumValue" => "ON_DEPLOYMENT_ROLLED_BACK"}))
    ActionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionPoint, name: "key"))
    ActionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "value"))
    Application.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    Application.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Application.type = Types::Application
    ApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "member"))
    AppliedExtension.add_member(:extension_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExtensionId"))
    AppliedExtension.add_member(:extension_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExtensionAssociationId"))
    AppliedExtension.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0}))
    AppliedExtension.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueMap, name: "Parameters"))
    AppliedExtension.type = Types::AppliedExtension
    AppliedExtensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedExtension, name: "member"))
    AttributeValue.add_member(:string_value, Types::AttributeValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeString, name: "StringValue"))
    AttributeValue.add_member(:number_value, Types::AttributeValue::NumberValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "NumberValue"))
    AttributeValue.add_member(:boolean_value, Types::AttributeValue::BooleanValue, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BooleanValue"))
    AttributeValue.add_member(:string_array, Types::AttributeValue::StringArray, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "StringArray"))
    AttributeValue.add_member(:number_array, Types::AttributeValue::NumberArray, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberList, name: "NumberArray"))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    AttributeValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeKey, name: "key"))
    AttributeValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    BadRequestDetails.add_member(:invalid_configuration, Types::BadRequestDetails::InvalidConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidConfigurationDetailList, name: "InvalidConfiguration"))
    BadRequestDetails.add_member(:unknown, Types::BadRequestDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    BadRequestDetails.type = Types::BadRequestDetails
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BadRequestReason, name: "Reason"))
    BadRequestException.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: BadRequestDetails, name: "Details"))
    BadRequestException.type = Types::BadRequestException
    BadRequestReason.add_member(:invalid_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_CONFIGURATION", traits: {"smithy.api#enumValue" => "InvalidConfiguration"}))
    BytesMeasure.add_member(:kilobytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KILOBYTES", traits: {"smithy.api#enumValue" => "KILOBYTES"}))
    ConfigurationProfileSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    ConfigurationProfileSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ConfigurationProfileSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "Name"))
    ConfigurationProfileSummary.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "LocationUri"))
    ConfigurationProfileSummary.add_member(:validator_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorTypeList, name: "ValidatorTypes"))
    ConfigurationProfileSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileType, name: "Type"))
    ConfigurationProfileSummary.type = Types::ConfigurationProfileSummary
    ConfigurationProfileSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileSummary, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateConfigurationProfileOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    CreateConfigurationProfileOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateConfigurationProfileOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "Name"))
    CreateConfigurationProfileOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateConfigurationProfileOutput.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "LocationUri"))
    CreateConfigurationProfileOutput.add_member(:retrieval_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RetrievalRoleArn"))
    CreateConfigurationProfileOutput.add_member(:validators, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorList, name: "Validators"))
    CreateConfigurationProfileOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileType, name: "Type"))
    CreateConfigurationProfileOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    CreateConfigurationProfileOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    CreateConfigurationProfileOutput.type = Types::CreateConfigurationProfileOutput
    CreateConfigurationProfileRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateConfigurationProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateConfigurationProfileRequest.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "LocationUri", traits: {"smithy.api#required" => {}}))
    CreateConfigurationProfileRequest.add_member(:retrieval_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RetrievalRoleArn"))
    CreateConfigurationProfileRequest.add_member(:validators, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorList, name: "Validators"))
    CreateConfigurationProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateConfigurationProfileRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileType, name: "Type"))
    CreateConfigurationProfileRequest.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    CreateConfigurationProfileRequest.type = Types::CreateConfigurationProfileRequest
    CreateDeploymentStrategyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateDeploymentStrategyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateDeploymentStrategyOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDeploymentStrategyOutput.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    CreateDeploymentStrategyOutput.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    CreateDeploymentStrategyOutput.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    CreateDeploymentStrategyOutput.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    CreateDeploymentStrategyOutput.add_member(:replicate_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicateTo, name: "ReplicateTo"))
    CreateDeploymentStrategyOutput.type = Types::CreateDeploymentStrategyOutput
    CreateDeploymentStrategyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDeploymentStrategyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CreateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    CreateDeploymentStrategyRequest.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthFactor, name: "GrowthFactor", traits: {"smithy.api#required" => {}}))
    CreateDeploymentStrategyRequest.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    CreateDeploymentStrategyRequest.add_member(:replicate_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicateTo, name: "ReplicateTo"))
    CreateDeploymentStrategyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateDeploymentStrategyRequest.type = Types::CreateDeploymentStrategyRequest
    CreateEnvironmentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    CreateEnvironmentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEnvironmentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    CreateEnvironmentOutput.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, name: "Monitors"))
    CreateEnvironmentOutput.type = Types::CreateEnvironmentOutput
    CreateEnvironmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateEnvironmentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEnvironmentRequest.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, name: "Monitors"))
    CreateEnvironmentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateEnvironmentRequest.type = Types::CreateEnvironmentRequest
    CreateExperimentDefinitionOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    CreateExperimentDefinitionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateExperimentDefinitionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateExperimentDefinitionOutput.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    CreateExperimentDefinitionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionStatus, name: "Status"))
    CreateExperimentDefinitionOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    CreateExperimentDefinitionOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    CreateExperimentDefinitionOutput.add_member(:flag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagKey, name: "FlagKey"))
    CreateExperimentDefinitionOutput.add_member(:audience_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "AudienceRule"))
    CreateExperimentDefinitionOutput.add_member(:audience_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "AudienceDescription"))
    CreateExperimentDefinitionOutput.add_member(:launch_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LaunchCriteria"))
    CreateExperimentDefinitionOutput.add_member(:treatments, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentList, name: "Treatments"))
    CreateExperimentDefinitionOutput.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Treatment, name: "Control"))
    CreateExperimentDefinitionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CreatedAt"))
    CreateExperimentDefinitionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    CreateExperimentDefinitionOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    CreateExperimentDefinitionOutput.type = Types::CreateExperimentDefinitionOutput
    CreateExperimentDefinitionRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameWithReservedAwsPrefix, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:configuration_profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ConfigurationProfileIdentifier", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "EnvironmentIdentifier", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:flag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagKey, name: "FlagKey", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:treatments, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentInputList, name: "Treatments", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentInput, name: "Control", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:audience_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "AudienceRule", traits: {"smithy.api#required" => {}}))
    CreateExperimentDefinitionRequest.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    CreateExperimentDefinitionRequest.add_member(:audience_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "AudienceDescription"))
    CreateExperimentDefinitionRequest.add_member(:launch_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LaunchCriteria"))
    CreateExperimentDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateExperimentDefinitionRequest.type = Types::CreateExperimentDefinitionRequest
    CreateExtensionAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Id"))
    CreateExtensionAssociationOutput.add_member(:extension_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExtensionArn"))
    CreateExtensionAssociationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    CreateExtensionAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateExtensionAssociationOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueMap, name: "Parameters"))
    CreateExtensionAssociationOutput.add_member(:extension_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ExtensionVersionNumber", traits: {"smithy.api#default" => 0}))
    CreateExtensionAssociationOutput.type = Types::CreateExtensionAssociationOutput
    CreateExtensionAssociationRequest.add_member(:extension_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExtensionIdentifier", traits: {"smithy.api#required" => {}}))
    CreateExtensionAssociationRequest.add_member(:extension_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ExtensionVersionNumber", traits: {"smithy.api#default" => nil}))
    CreateExtensionAssociationRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ResourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateExtensionAssociationRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueMap, name: "Parameters"))
    CreateExtensionAssociationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateExtensionAssociationRequest.type = Types::CreateExtensionAssociationRequest
    CreateExtensionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateExtensionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateExtensionOutput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0}))
    CreateExtensionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateExtensionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateExtensionOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMap, name: "Actions"))
    CreateExtensionOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "Parameters"))
    CreateExtensionOutput.type = Types::CreateExtensionOutput
    CreateExtensionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionOrParameterName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateExtensionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateExtensionRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMap, name: "Actions", traits: {"smithy.api#required" => {}}))
    CreateExtensionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "Parameters"))
    CreateExtensionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateExtensionRequest.add_member(:latest_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "LatestVersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpHeader" => "Latest-Version-Number"}))
    CreateExtensionRequest.type = Types::CreateExtensionRequest
    CreateHostedConfigurationVersionOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId", traits: {"smithy.api#httpHeader" => "Application-Id"}))
    CreateHostedConfigurationVersionOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId", traits: {"smithy.api#httpHeader" => "Configuration-Profile-Id"}))
    CreateHostedConfigurationVersionOutput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Version-Number"}))
    CreateHostedConfigurationVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#httpHeader" => "Description"}))
    CreateHostedConfigurationVersionOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Content", traits: {"smithy.api#httpPayload" => {}}))
    CreateHostedConfigurationVersionOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And255, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    CreateHostedConfigurationVersionOutput.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel", traits: {"smithy.api#httpHeader" => "VersionLabel"}))
    CreateHostedConfigurationVersionOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn", traits: {"smithy.api#httpHeader" => "KmsKeyArn"}))
    CreateHostedConfigurationVersionOutput[:http_payload] = :content
    CreateHostedConfigurationVersionOutput[:http_payload_member] = CreateHostedConfigurationVersionOutput.member(:content)
    CreateHostedConfigurationVersionOutput.type = Types::CreateHostedConfigurationVersionOutput
    CreateHostedConfigurationVersionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#httpHeader" => "Description"}))
    CreateHostedConfigurationVersionRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Content", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And255, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    CreateHostedConfigurationVersionRequest.add_member(:latest_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "LatestVersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpHeader" => "Latest-Version-Number"}))
    CreateHostedConfigurationVersionRequest.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel", traits: {"smithy.api#httpHeader" => "VersionLabel"}))
    CreateHostedConfigurationVersionRequest[:http_payload] = :content
    CreateHostedConfigurationVersionRequest[:http_payload_member] = CreateHostedConfigurationVersionRequest.member(:content)
    CreateHostedConfigurationVersionRequest.type = Types::CreateHostedConfigurationVersionRequest
    DeleteApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteConfigurationProfileRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationProfileRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationProfileRequest.add_member(:deletion_protection_check, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionCheck, name: "DeletionProtectionCheck", traits: {"smithy.api#httpHeader" => "x-amzn-deletion-protection-check"}))
    DeleteConfigurationProfileRequest.type = Types::DeleteConfigurationProfileRequest
    DeleteDeploymentStrategyRequest.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategyId, name: "DeploymentStrategyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDeploymentStrategyRequest.type = Types::DeleteDeploymentStrategyRequest
    DeleteEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEnvironmentRequest.add_member(:deletion_protection_check, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionCheck, name: "DeletionProtectionCheck", traits: {"smithy.api#httpHeader" => "x-amzn-deletion-protection-check"}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteExperimentDefinitionRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentDefinitionRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExperimentDefinitionRequest.add_member(:delete_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteType, name: "DeleteType", traits: {"smithy.api#httpQuery" => "delete_type"}))
    DeleteExperimentDefinitionRequest.type = Types::DeleteExperimentDefinitionRequest
    DeleteExtensionAssociationRequest.add_member(:extension_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExtensionAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExtensionAssociationRequest.type = Types::DeleteExtensionAssociationRequest
    DeleteExtensionRequest.add_member(:extension_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExtensionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteExtensionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "version"}))
    DeleteExtensionRequest.type = Types::DeleteExtensionRequest
    DeleteHostedConfigurationVersionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedConfigurationVersionRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedConfigurationVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHostedConfigurationVersionRequest.type = Types::DeleteHostedConfigurationVersionRequest
    DeleteType.add_member(:archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVE", traits: {"smithy.api#enumValue" => "ARCHIVE"}))
    DeleteType.add_member(:destroy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESTROY", traits: {"smithy.api#enumValue" => "DESTROY"}))
    DeletionProtectionCheck.add_member(:account_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_DEFAULT", traits: {"smithy.api#enumValue" => "ACCOUNT_DEFAULT"}))
    DeletionProtectionCheck.add_member(:apply, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLY", traits: {"smithy.api#enumValue" => "APPLY"}))
    DeletionProtectionCheck.add_member(:bypass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYPASS", traits: {"smithy.api#enumValue" => "BYPASS"}))
    DeletionProtectionSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => nil}))
    DeletionProtectionSettings.add_member(:protection_period_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionDuration, name: "ProtectionPeriodInMinutes"))
    DeletionProtectionSettings.type = Types::DeletionProtectionSettings
    DeploymentEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEventType, name: "EventType"))
    DeploymentEvent.add_member(:triggered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggeredBy, name: "TriggeredBy"))
    DeploymentEvent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DeploymentEvent.add_member(:action_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionInvocations, name: "ActionInvocations"))
    DeploymentEvent.add_member(:occurred_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "OccurredAt"))
    DeploymentEvent.type = Types::DeploymentEvent
    DeploymentEventType.add_member(:percentage_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENTAGE_UPDATED", traits: {"smithy.api#enumValue" => "PERCENTAGE_UPDATED"}))
    DeploymentEventType.add_member(:rollback_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_STARTED", traits: {"smithy.api#enumValue" => "ROLLBACK_STARTED"}))
    DeploymentEventType.add_member(:rollback_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_COMPLETED", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETED"}))
    DeploymentEventType.add_member(:bake_time_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAKE_TIME_STARTED", traits: {"smithy.api#enumValue" => "BAKE_TIME_STARTED"}))
    DeploymentEventType.add_member(:deployment_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_STARTED", traits: {"smithy.api#enumValue" => "DEPLOYMENT_STARTED"}))
    DeploymentEventType.add_member(:deployment_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT_COMPLETED", traits: {"smithy.api#enumValue" => "DEPLOYMENT_COMPLETED"}))
    DeploymentEventType.add_member(:revert_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVERT_COMPLETED", traits: {"smithy.api#enumValue" => "REVERT_COMPLETED"}))
    DeploymentEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEvent, name: "member"))
    DeploymentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentSummary, name: "member"))
    DeploymentParameters.add_member(:dynamic_extension_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicParameterMap, name: "DynamicExtensionParameters"))
    DeploymentParameters.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    DeploymentParameters.type = Types::DeploymentParameters
    DeploymentState.add_member(:baking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAKING", traits: {"smithy.api#enumValue" => "BAKING"}))
    DeploymentState.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    DeploymentState.add_member(:deploying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    DeploymentState.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    DeploymentState.add_member(:rolling_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLING_BACK", traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    DeploymentState.add_member(:rolled_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLED_BACK", traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    DeploymentState.add_member(:reverted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVERTED", traits: {"smithy.api#enumValue" => "REVERTED"}))
    DeploymentStrategy.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    DeploymentStrategy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    DeploymentStrategy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DeploymentStrategy.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    DeploymentStrategy.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    DeploymentStrategy.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    DeploymentStrategy.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    DeploymentStrategy.add_member(:replicate_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicateTo, name: "ReplicateTo"))
    DeploymentStrategy.type = Types::DeploymentStrategy
    DeploymentStrategyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategy, name: "member"))
    DeploymentSummary.add_member(:deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DeploymentNumber", traits: {"smithy.api#default" => 0}))
    DeploymentSummary.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    DeploymentSummary.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ConfigurationName"))
    DeploymentSummary.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion"))
    DeploymentSummary.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    DeploymentSummary.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    DeploymentSummary.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    DeploymentSummary.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    DeploymentSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentState, name: "State"))
    DeploymentSummary.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "PercentageComplete"))
    DeploymentSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    DeploymentSummary.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CompletedAt"))
    DeploymentSummary.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel"))
    DeploymentSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentType, name: "Type"))
    DeploymentSummary.type = Types::DeploymentSummary
    DeploymentType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    DeploymentType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    DynamicParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicParameterKey, name: "key"))
    DynamicParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And2048, name: "value"))
    Environment.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    Environment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    Environment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    Environment.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Environment.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    Environment.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, name: "Monitors"))
    Environment.type = Types::Environment
    EnvironmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Environment, name: "member"))
    EnvironmentState.add_member(:ready_for_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY_FOR_DEPLOYMENT", traits: {"smithy.api#enumValue" => "READY_FOR_DEPLOYMENT"}))
    EnvironmentState.add_member(:deploying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    EnvironmentState.add_member(:rolling_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLING_BACK", traits: {"smithy.api#enumValue" => "ROLLING_BACK"}))
    EnvironmentState.add_member(:rolled_back, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLED_BACK", traits: {"smithy.api#enumValue" => "ROLLED_BACK"}))
    EnvironmentState.add_member(:reverted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVERTED", traits: {"smithy.api#enumValue" => "REVERTED"}))
    ExperimentDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionSummary, name: "member"))
    ExperimentDefinitionSnapshot.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    ExperimentDefinitionSnapshot.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ExperimentDefinitionSnapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ExperimentDefinitionSnapshot.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    ExperimentDefinitionSnapshot.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    ExperimentDefinitionSnapshot.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    ExperimentDefinitionSnapshot.add_member(:flag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagKey, name: "FlagKey"))
    ExperimentDefinitionSnapshot.add_member(:audience_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "AudienceRule"))
    ExperimentDefinitionSnapshot.add_member(:audience_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "AudienceDescription"))
    ExperimentDefinitionSnapshot.add_member(:launch_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LaunchCriteria"))
    ExperimentDefinitionSnapshot.add_member(:treatments, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentList, name: "Treatments"))
    ExperimentDefinitionSnapshot.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Treatment, name: "Control"))
    ExperimentDefinitionSnapshot.type = Types::ExperimentDefinitionSnapshot
    ExperimentDefinitionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ExperimentDefinitionStatus.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "IDLE"}))
    ExperimentDefinitionStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    ExperimentDefinitionSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    ExperimentDefinitionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ExperimentDefinitionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ExperimentDefinitionSummary.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    ExperimentDefinitionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionStatus, name: "Status"))
    ExperimentDefinitionSummary.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    ExperimentDefinitionSummary.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    ExperimentDefinitionSummary.add_member(:flag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagKey, name: "FlagKey"))
    ExperimentDefinitionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CreatedAt"))
    ExperimentDefinitionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    ExperimentDefinitionSummary.type = Types::ExperimentDefinitionSummary
    ExperimentRunEvent.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ExperimentRunEvent.add_member(:associated_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AssociatedDeployment"))
    ExperimentRunEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunEventType, name: "EventType"))
    ExperimentRunEvent.add_member(:occurred_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "OccurredAt"))
    ExperimentRunEvent.add_member(:triggered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggeredBy, name: "TriggeredBy"))
    ExperimentRunEvent.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    ExperimentRunEvent.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    ExperimentRunEvent.type = Types::ExperimentRunEvent
    ExperimentRunEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunEvent, name: "member"))
    ExperimentRunEventType.add_member(:run_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUN_STARTED", traits: {"smithy.api#enumValue" => "RUN_STARTED"}))
    ExperimentRunEventType.add_member(:exposure_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPOSURE_UPDATED", traits: {"smithy.api#enumValue" => "EXPOSURE_UPDATED"}))
    ExperimentRunEventType.add_member(:overrides_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDES_UPDATED", traits: {"smithy.api#enumValue" => "OVERRIDES_UPDATED"}))
    ExperimentRunEventType.add_member(:run_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUN_STOPPED", traits: {"smithy.api#enumValue" => "RUN_STOPPED"}))
    ExperimentRunResult.add_member(:executive_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ExecutiveSummary"))
    ExperimentRunResult.add_member(:reasons_to_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ReasonsToLaunch"))
    ExperimentRunResult.add_member(:reasons_not_to_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "ReasonsNotToLaunch"))
    ExperimentRunResult.type = Types::ExperimentRunResult
    ExperimentRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ExperimentRunStatus.add_member(:done, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DONE", traits: {"smithy.api#enumValue" => "DONE"}))
    ExperimentRunSummary.add_member(:experiment_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExperimentDefinitionId"))
    ExperimentRunSummary.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Run", traits: {"smithy.api#default" => 0}))
    ExperimentRunSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ExperimentRunSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunStatus, name: "Status"))
    ExperimentRunSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    ExperimentRunSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    ExperimentRunSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "EndedAt"))
    ExperimentRunSummary.type = Types::ExperimentRunSummary
    ExperimentRunSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunSummary, name: "member"))
    ExtensionAssociationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionAssociationSummary, name: "member"))
    ExtensionAssociationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Id"))
    ExtensionAssociationSummary.add_member(:extension_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExtensionArn"))
    ExtensionAssociationSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    ExtensionAssociationSummary.type = Types::ExtensionAssociationSummary
    ExtensionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionSummary, name: "member"))
    ExtensionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ExtensionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    ExtensionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0}))
    ExtensionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ExtensionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ExtensionSummary.type = Types::ExtensionSummary
    FlagValue.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    FlagValue.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueMap, name: "AttributeValues"))
    FlagValue.type = Types::FlagValue
    GetAccountSettingsOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionSettings, name: "DeletionProtection"))
    GetAccountSettingsOutput.add_member(:vended_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: VendedMetricsSettings, name: "VendedMetrics"))
    GetAccountSettingsOutput.type = Types::GetAccountSettingsOutput
    GetApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetConfigurationOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Content", traits: {"smithy.api#httpPayload" => {}}))
    GetConfigurationOutput.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion", traits: {"smithy.api#httpHeader" => "Configuration-Version"}))
    GetConfigurationOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetConfigurationOutput[:http_payload] = :content
    GetConfigurationOutput[:http_payload_member] = GetConfigurationOutput.member(:content)
    GetConfigurationOutput.type = Types::GetConfigurationOutput
    GetConfigurationProfileOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    GetConfigurationProfileOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetConfigurationProfileOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "Name"))
    GetConfigurationProfileOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetConfigurationProfileOutput.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "LocationUri"))
    GetConfigurationProfileOutput.add_member(:retrieval_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RetrievalRoleArn"))
    GetConfigurationProfileOutput.add_member(:validators, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorList, name: "Validators"))
    GetConfigurationProfileOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileType, name: "Type"))
    GetConfigurationProfileOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    GetConfigurationProfileOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    GetConfigurationProfileOutput.type = Types::GetConfigurationProfileOutput
    GetConfigurationProfileRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationProfileRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationProfileRequest.type = Types::GetConfigurationProfileRequest
    GetConfigurationRequest.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, name: "Application", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, name: "Environment", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, name: "Configuration", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And64, name: "ClientId", traits: {"smithy.api#httpQuery" => "client_id", "smithy.api#required" => {}}))
    GetConfigurationRequest.add_member(:client_configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ClientConfigurationVersion", traits: {"smithy.api#httpQuery" => "client_configuration_version"}))
    GetConfigurationRequest.type = Types::GetConfigurationRequest
    GetDeploymentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    GetDeploymentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    GetDeploymentOutput.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DeploymentStrategyId"))
    GetDeploymentOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    GetDeploymentOutput.add_member(:deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DeploymentNumber", traits: {"smithy.api#default" => 0}))
    GetDeploymentOutput.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ConfigurationName"))
    GetDeploymentOutput.add_member(:configuration_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "ConfigurationLocationUri"))
    GetDeploymentOutput.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion"))
    GetDeploymentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetDeploymentOutput.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    GetDeploymentOutput.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    GetDeploymentOutput.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    GetDeploymentOutput.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    GetDeploymentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentState, name: "State"))
    GetDeploymentOutput.add_member(:event_log, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEvents, name: "EventLog"))
    GetDeploymentOutput.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "PercentageComplete"))
    GetDeploymentOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    GetDeploymentOutput.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CompletedAt"))
    GetDeploymentOutput.add_member(:applied_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedExtensions, name: "AppliedExtensions"))
    GetDeploymentOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    GetDeploymentOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    GetDeploymentOutput.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel"))
    GetDeploymentOutput.type = Types::GetDeploymentOutput
    GetDeploymentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.add_member(:deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DeploymentNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentRequest.type = Types::GetDeploymentRequest
    GetDeploymentStrategyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetDeploymentStrategyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetDeploymentStrategyOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetDeploymentStrategyOutput.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    GetDeploymentStrategyOutput.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    GetDeploymentStrategyOutput.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    GetDeploymentStrategyOutput.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    GetDeploymentStrategyOutput.add_member(:replicate_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicateTo, name: "ReplicateTo"))
    GetDeploymentStrategyOutput.type = Types::GetDeploymentStrategyOutput
    GetDeploymentStrategyRequest.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategyId, name: "DeploymentStrategyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeploymentStrategyRequest.type = Types::GetDeploymentStrategyRequest
    GetEnvironmentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    GetEnvironmentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetEnvironmentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    GetEnvironmentOutput.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, name: "Monitors"))
    GetEnvironmentOutput.type = Types::GetEnvironmentOutput
    GetEnvironmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEnvironmentRequest.type = Types::GetEnvironmentRequest
    GetExperimentDefinitionOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    GetExperimentDefinitionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetExperimentDefinitionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetExperimentDefinitionOutput.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    GetExperimentDefinitionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionStatus, name: "Status"))
    GetExperimentDefinitionOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    GetExperimentDefinitionOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    GetExperimentDefinitionOutput.add_member(:flag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagKey, name: "FlagKey"))
    GetExperimentDefinitionOutput.add_member(:audience_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "AudienceRule"))
    GetExperimentDefinitionOutput.add_member(:audience_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "AudienceDescription"))
    GetExperimentDefinitionOutput.add_member(:launch_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LaunchCriteria"))
    GetExperimentDefinitionOutput.add_member(:treatments, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentList, name: "Treatments"))
    GetExperimentDefinitionOutput.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Treatment, name: "Control"))
    GetExperimentDefinitionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CreatedAt"))
    GetExperimentDefinitionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    GetExperimentDefinitionOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    GetExperimentDefinitionOutput.type = Types::GetExperimentDefinitionOutput
    GetExperimentDefinitionRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentDefinitionRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentDefinitionRequest.type = Types::GetExperimentDefinitionRequest
    GetExperimentRunOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    GetExperimentRunOutput.add_member(:experiment_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExperimentDefinitionId"))
    GetExperimentRunOutput.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Run", traits: {"smithy.api#default" => 0}))
    GetExperimentRunOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetExperimentRunOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunStatus, name: "Status"))
    GetExperimentRunOutput.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    GetExperimentRunOutput.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    GetExperimentRunOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunResult, name: "Result"))
    GetExperimentRunOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    GetExperimentRunOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    GetExperimentRunOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "EndedAt"))
    GetExperimentRunOutput.add_member(:experiment_definition_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionSnapshot, name: "ExperimentDefinitionSnapshot"))
    GetExperimentRunOutput.type = Types::GetExperimentRunOutput
    GetExperimentRunRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentRunRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentRunRequest.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "Run", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExperimentRunRequest.type = Types::GetExperimentRunRequest
    GetExtensionAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Id"))
    GetExtensionAssociationOutput.add_member(:extension_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExtensionArn"))
    GetExtensionAssociationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    GetExtensionAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetExtensionAssociationOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueMap, name: "Parameters"))
    GetExtensionAssociationOutput.add_member(:extension_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ExtensionVersionNumber", traits: {"smithy.api#default" => 0}))
    GetExtensionAssociationOutput.type = Types::GetExtensionAssociationOutput
    GetExtensionAssociationRequest.add_member(:extension_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExtensionAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExtensionAssociationRequest.type = Types::GetExtensionAssociationRequest
    GetExtensionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetExtensionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetExtensionOutput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0}))
    GetExtensionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetExtensionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetExtensionOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMap, name: "Actions"))
    GetExtensionOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "Parameters"))
    GetExtensionOutput.type = Types::GetExtensionOutput
    GetExtensionRequest.add_member(:extension_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExtensionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExtensionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "version_number"}))
    GetExtensionRequest.type = Types::GetExtensionRequest
    GetHostedConfigurationVersionOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId", traits: {"smithy.api#httpHeader" => "Application-Id"}))
    GetHostedConfigurationVersionOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId", traits: {"smithy.api#httpHeader" => "Configuration-Profile-Id"}))
    GetHostedConfigurationVersionOutput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0, "smithy.api#httpHeader" => "Version-Number"}))
    GetHostedConfigurationVersionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#httpHeader" => "Description"}))
    GetHostedConfigurationVersionOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Content", traits: {"smithy.api#httpPayload" => {}}))
    GetHostedConfigurationVersionOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And255, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetHostedConfigurationVersionOutput.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel", traits: {"smithy.api#httpHeader" => "VersionLabel"}))
    GetHostedConfigurationVersionOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn", traits: {"smithy.api#httpHeader" => "KmsKeyArn"}))
    GetHostedConfigurationVersionOutput[:http_payload] = :content
    GetHostedConfigurationVersionOutput[:http_payload_member] = GetHostedConfigurationVersionOutput.member(:content)
    GetHostedConfigurationVersionOutput.type = Types::GetHostedConfigurationVersionOutput
    GetHostedConfigurationVersionRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedConfigurationVersionRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedConfigurationVersionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetHostedConfigurationVersionRequest.type = Types::GetHostedConfigurationVersionRequest
    GrowthType.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINEAR", traits: {"smithy.api#enumValue" => "LINEAR"}))
    GrowthType.add_member(:exponential, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPONENTIAL", traits: {"smithy.api#enumValue" => "EXPONENTIAL"}))
    HostedConfigurationVersionSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    HostedConfigurationVersionSummary.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    HostedConfigurationVersionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0}))
    HostedConfigurationVersionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    HostedConfigurationVersionSummary.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And255, name: "ContentType"))
    HostedConfigurationVersionSummary.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel"))
    HostedConfigurationVersionSummary.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    HostedConfigurationVersionSummary.type = Types::HostedConfigurationVersionSummary
    HostedConfigurationVersionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedConfigurationVersionSummary, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidConfigurationDetail.add_member(:constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Constraint"))
    InvalidConfigurationDetail.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Location"))
    InvalidConfigurationDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Reason"))
    InvalidConfigurationDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    InvalidConfigurationDetail.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    InvalidConfigurationDetail.type = Types::InvalidConfigurationDetail
    InvalidConfigurationDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvalidConfigurationDetail, name: "member"))
    ListApplicationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, name: "Items"))
    ListApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListConfigurationProfilesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileSummaryList, name: "Items"))
    ListConfigurationProfilesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationProfilesOutput.type = Types::ListConfigurationProfilesOutput
    ListConfigurationProfilesRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConfigurationProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListConfigurationProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListConfigurationProfilesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileType, name: "Type", traits: {"smithy.api#httpQuery" => "type"}))
    ListConfigurationProfilesRequest.type = Types::ListConfigurationProfilesRequest
    ListDeploymentStrategiesOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategyList, name: "Items"))
    ListDeploymentStrategiesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDeploymentStrategiesOutput.type = Types::ListDeploymentStrategiesOutput
    ListDeploymentStrategiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListDeploymentStrategiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListDeploymentStrategiesRequest.type = Types::ListDeploymentStrategiesRequest
    ListDeploymentsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentList, name: "Items"))
    ListDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDeploymentsOutput.type = Types::ListDeploymentsOutput
    ListDeploymentsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListDeploymentsRequest.type = Types::ListDeploymentsRequest
    ListEnvironmentsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentList, name: "Items"))
    ListEnvironmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEnvironmentsOutput.type = Types::ListEnvironmentsOutput
    ListEnvironmentsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListExperimentDefinitionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionList, name: "Items"))
    ListExperimentDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperimentDefinitionsOutput.type = Types::ListExperimentDefinitionsOutput
    ListExperimentDefinitionsRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpQuery" => "application_identifier"}))
    ListExperimentDefinitionsRequest.add_member(:configuration_profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ConfigurationProfileIdentifier", traits: {"smithy.api#httpQuery" => "configuration_profile_identifier"}))
    ListExperimentDefinitionsRequest.add_member(:environment_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "EnvironmentIdentifier", traits: {"smithy.api#httpQuery" => "environment_identifier"}))
    ListExperimentDefinitionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionStatus, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListExperimentDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListExperimentDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListExperimentDefinitionsRequest.type = Types::ListExperimentDefinitionsRequest
    ListExperimentRunEventsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunEventList, name: "Items"))
    ListExperimentRunEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperimentRunEventsOutput.type = Types::ListExperimentRunEventsOutput
    ListExperimentRunEventsRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentRunEventsRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentRunEventsRequest.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "Run", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentRunEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListExperimentRunEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListExperimentRunEventsRequest.type = Types::ListExperimentRunEventsRequest
    ListExperimentRunsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunSummaryList, name: "Items"))
    ListExperimentRunsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperimentRunsOutput.type = Types::ListExperimentRunsOutput
    ListExperimentRunsRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentRunsRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListExperimentRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListExperimentRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListExperimentRunsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunStatus, name: "Status", traits: {"smithy.api#httpQuery" => "status"}))
    ListExperimentRunsRequest.type = Types::ListExperimentRunsRequest
    ListExtensionAssociationsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionAssociationSummaries, name: "Items"))
    ListExtensionAssociationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExtensionAssociationsOutput.type = Types::ListExtensionAssociationsOutput
    ListExtensionAssociationsRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceIdentifier", traits: {"smithy.api#httpQuery" => "resource_identifier"}))
    ListExtensionAssociationsRequest.add_member(:extension_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExtensionIdentifier", traits: {"smithy.api#httpQuery" => "extension_identifier"}))
    ListExtensionAssociationsRequest.add_member(:extension_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ExtensionVersionNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "extension_version_number"}))
    ListExtensionAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListExtensionAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListExtensionAssociationsRequest.type = Types::ListExtensionAssociationsRequest
    ListExtensionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionSummaries, name: "Items"))
    ListExtensionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExtensionsOutput.type = Types::ListExtensionsOutput
    ListExtensionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListExtensionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListExtensionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryName, name: "Name", traits: {"smithy.api#httpQuery" => "name"}))
    ListExtensionsRequest.type = Types::ListExtensionsRequest
    ListHostedConfigurationVersionsOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedConfigurationVersionSummaryList, name: "Items"))
    ListHostedConfigurationVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHostedConfigurationVersionsOutput.type = Types::ListHostedConfigurationVersionsOutput
    ListHostedConfigurationVersionsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListHostedConfigurationVersionsRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListHostedConfigurationVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListHostedConfigurationVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListHostedConfigurationVersionsRequest.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryName, name: "VersionLabel", traits: {"smithy.api#httpQuery" => "version_label"}))
    ListHostedConfigurationVersionsRequest.type = Types::ListHostedConfigurationVersionsRequest
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    Monitor.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And2048, name: "AlarmArn", traits: {"smithy.api#required" => {}}))
    Monitor.add_member(:alarm_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "AlarmRoleArn"))
    Monitor.type = Types::Monitor
    MonitorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Monitor, name: "member"))
    NumberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "member"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Parameter.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Required", traits: {"smithy.api#default" => false}))
    Parameter.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Dynamic", traits: {"smithy.api#default" => false}))
    Parameter.type = Types::Parameter
    ParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionOrParameterName, name: "key"))
    ParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "value"))
    ParameterValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtensionOrParameterName, name: "key"))
    ParameterValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween1And2048, name: "value"))
    PayloadTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    PayloadTooLargeException.add_member(:measure, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesMeasure, name: "Measure"))
    PayloadTooLargeException.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Limit", traits: {"smithy.api#default" => 0}))
    PayloadTooLargeException.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Size", traits: {"smithy.api#default" => 0}))
    PayloadTooLargeException.type = Types::PayloadTooLargeException
    ReplicateTo.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReplicateTo.add_member(:ssm_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSM_DOCUMENT", traits: {"smithy.api#enumValue" => "SSM_DOCUMENT"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartDeploymentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    StartDeploymentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    StartDeploymentOutput.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DeploymentStrategyId"))
    StartDeploymentOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    StartDeploymentOutput.add_member(:deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DeploymentNumber", traits: {"smithy.api#default" => 0}))
    StartDeploymentOutput.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ConfigurationName"))
    StartDeploymentOutput.add_member(:configuration_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "ConfigurationLocationUri"))
    StartDeploymentOutput.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion"))
    StartDeploymentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StartDeploymentOutput.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    StartDeploymentOutput.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    StartDeploymentOutput.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    StartDeploymentOutput.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    StartDeploymentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentState, name: "State"))
    StartDeploymentOutput.add_member(:event_log, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEvents, name: "EventLog"))
    StartDeploymentOutput.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "PercentageComplete"))
    StartDeploymentOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    StartDeploymentOutput.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CompletedAt"))
    StartDeploymentOutput.add_member(:applied_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedExtensions, name: "AppliedExtensions"))
    StartDeploymentOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    StartDeploymentOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    StartDeploymentOutput.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel"))
    StartDeploymentOutput.type = Types::StartDeploymentOutput
    StartDeploymentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategyId, name: "DeploymentStrategyId", traits: {"smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion", traits: {"smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StartDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    StartDeploymentRequest.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    StartDeploymentRequest.add_member(:dynamic_extension_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicParameterMap, name: "DynamicExtensionParameters"))
    StartDeploymentRequest.add_member(:latest_deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "LatestDeploymentNumber", traits: {"smithy.api#default" => nil}))
    StartDeploymentRequest.type = Types::StartDeploymentRequest
    StartExperimentRunOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    StartExperimentRunOutput.add_member(:experiment_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExperimentDefinitionId"))
    StartExperimentRunOutput.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Run", traits: {"smithy.api#default" => 0}))
    StartExperimentRunOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StartExperimentRunOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunStatus, name: "Status"))
    StartExperimentRunOutput.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    StartExperimentRunOutput.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    StartExperimentRunOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunResult, name: "Result"))
    StartExperimentRunOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    StartExperimentRunOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    StartExperimentRunOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "EndedAt"))
    StartExperimentRunOutput.add_member(:experiment_definition_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionSnapshot, name: "ExperimentDefinitionSnapshot"))
    StartExperimentRunOutput.type = Types::StartExperimentRunOutput
    StartExperimentRunRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartExperimentRunRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartExperimentRunRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StartExperimentRunRequest.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    StartExperimentRunRequest.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    StartExperimentRunRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    StartExperimentRunRequest.add_member(:deployment_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentParameters, name: "DeploymentParameters"))
    StartExperimentRunRequest.type = Types::StartExperimentRunRequest
    StopDeploymentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    StopDeploymentOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    StopDeploymentOutput.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DeploymentStrategyId"))
    StopDeploymentOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    StopDeploymentOutput.add_member(:deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DeploymentNumber", traits: {"smithy.api#default" => 0}))
    StopDeploymentOutput.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ConfigurationName"))
    StopDeploymentOutput.add_member(:configuration_location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "ConfigurationLocationUri"))
    StopDeploymentOutput.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion"))
    StopDeploymentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StopDeploymentOutput.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    StopDeploymentOutput.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    StopDeploymentOutput.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    StopDeploymentOutput.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    StopDeploymentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentState, name: "State"))
    StopDeploymentOutput.add_member(:event_log, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEvents, name: "EventLog"))
    StopDeploymentOutput.add_member(:percentage_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "PercentageComplete"))
    StopDeploymentOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    StopDeploymentOutput.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CompletedAt"))
    StopDeploymentOutput.add_member(:applied_extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: AppliedExtensions, name: "AppliedExtensions"))
    StopDeploymentOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    StopDeploymentOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    StopDeploymentOutput.add_member(:version_label, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionLabel, name: "VersionLabel"))
    StopDeploymentOutput.type = Types::StopDeploymentOutput
    StopDeploymentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDeploymentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDeploymentRequest.add_member(:deployment_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DeploymentNumber", traits: {"smithy.api#default" => nil, "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDeploymentRequest.add_member(:allow_revert, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowRevert", traits: {"smithy.api#default" => nil, "smithy.api#httpHeader" => "Allow-Revert"}))
    StopDeploymentRequest.type = Types::StopDeploymentRequest
    StopExperimentRunOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    StopExperimentRunOutput.add_member(:experiment_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExperimentDefinitionId"))
    StopExperimentRunOutput.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Run", traits: {"smithy.api#default" => 0}))
    StopExperimentRunOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    StopExperimentRunOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunStatus, name: "Status"))
    StopExperimentRunOutput.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    StopExperimentRunOutput.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    StopExperimentRunOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunResult, name: "Result"))
    StopExperimentRunOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    StopExperimentRunOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    StopExperimentRunOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "EndedAt"))
    StopExperimentRunOutput.add_member(:experiment_definition_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionSnapshot, name: "ExperimentDefinitionSnapshot"))
    StopExperimentRunOutput.type = Types::StopExperimentRunOutput
    StopExperimentRunRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentRunRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentRunRequest.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "Run", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopExperimentRunRequest.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunResult, name: "Result"))
    StopExperimentRunRequest.add_member(:deployment_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentParameters, name: "DeploymentParameters"))
    StopExperimentRunRequest.type = Types::StopExperimentRunRequest
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeString, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Treatment.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentKey, name: "Key"))
    Treatment.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Treatment.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Treatment.add_member(:flag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagValue, name: "FlagValue", traits: {"smithy.api#required" => {}}))
    Treatment.type = Types::Treatment
    TreatmentInput.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Weight, name: "Weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TreatmentInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    TreatmentInput.add_member(:flag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagValue, name: "FlagValue", traits: {"smithy.api#required" => {}}))
    TreatmentInput.type = Types::TreatmentInput
    TreatmentInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentInput, name: "member"))
    TreatmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Treatment, name: "member"))
    TreatmentOverrideMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "key"))
    TreatmentOverrideMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentKey, name: "value"))
    TreatmentOverrides.add_member(:inline, Types::TreatmentOverrides::Inline, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrideMap, name: "Inline"))
    TreatmentOverrides.add_member(:unknown, Types::TreatmentOverrides::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TreatmentOverrides.type = Types::TreatmentOverrides
    TriggeredBy.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    TriggeredBy.add_member(:appconfig, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPCONFIG", traits: {"smithy.api#enumValue" => "APPCONFIG"}))
    TriggeredBy.add_member(:cloudwatch_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH_ALARM", traits: {"smithy.api#enumValue" => "CLOUDWATCH_ALARM"}))
    TriggeredBy.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAccountSettingsOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionSettings, name: "DeletionProtection"))
    UpdateAccountSettingsOutput.add_member(:vended_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: VendedMetricsSettings, name: "VendedMetrics"))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateAccountSettingsRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionSettings, name: "DeletionProtection"))
    UpdateAccountSettingsRequest.add_member(:vended_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: VendedMetricsSettings, name: "VendedMetrics"))
    UpdateAccountSettingsRequest.type = Types::UpdateAccountSettingsRequest
    UpdateApplicationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateApplicationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    UpdateApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateConfigurationProfileOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    UpdateConfigurationProfileOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateConfigurationProfileOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "Name"))
    UpdateConfigurationProfileOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateConfigurationProfileOutput.add_member(:location_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "LocationUri"))
    UpdateConfigurationProfileOutput.add_member(:retrieval_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RetrievalRoleArn"))
    UpdateConfigurationProfileOutput.add_member(:validators, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorList, name: "Validators"))
    UpdateConfigurationProfileOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationProfileType, name: "Type"))
    UpdateConfigurationProfileOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    UpdateConfigurationProfileOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    UpdateConfigurationProfileOutput.type = Types::UpdateConfigurationProfileOutput
    UpdateConfigurationProfileRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationProfileRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationProfileRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "Name"))
    UpdateConfigurationProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateConfigurationProfileRequest.add_member(:retrieval_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RetrievalRoleArn"))
    UpdateConfigurationProfileRequest.add_member(:validators, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorList, name: "Validators"))
    UpdateConfigurationProfileRequest.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifierOrEmpty, name: "KmsKeyIdentifier"))
    UpdateConfigurationProfileRequest.type = Types::UpdateConfigurationProfileRequest
    UpdateDeploymentStrategyOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateDeploymentStrategyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateDeploymentStrategyOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDeploymentStrategyOutput.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => 0}))
    UpdateDeploymentStrategyOutput.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    UpdateDeploymentStrategyOutput.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "GrowthFactor"))
    UpdateDeploymentStrategyOutput.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    UpdateDeploymentStrategyOutput.add_member(:replicate_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicateTo, name: "ReplicateTo"))
    UpdateDeploymentStrategyOutput.type = Types::UpdateDeploymentStrategyOutput
    UpdateDeploymentStrategyRequest.add_member(:deployment_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategyId, name: "DeploymentStrategyId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDeploymentStrategyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "DeploymentDurationInMinutes", traits: {"smithy.api#default" => nil}))
    UpdateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: MinutesBetween0And24Hours, name: "FinalBakeTimeInMinutes", traits: {"smithy.api#default" => nil}))
    UpdateDeploymentStrategyRequest.add_member(:growth_factor, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthFactor, name: "GrowthFactor"))
    UpdateDeploymentStrategyRequest.add_member(:growth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GrowthType, name: "GrowthType"))
    UpdateDeploymentStrategyRequest.type = Types::UpdateDeploymentStrategyRequest
    UpdateEnvironmentOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    UpdateEnvironmentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateEnvironmentOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateEnvironmentOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEnvironmentOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentState, name: "State"))
    UpdateEnvironmentOutput.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, name: "Monitors"))
    UpdateEnvironmentOutput.type = Types::UpdateEnvironmentOutput
    UpdateEnvironmentRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EnvironmentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateEnvironmentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEnvironmentRequest.add_member(:monitors, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitorList, name: "Monitors"))
    UpdateEnvironmentRequest.type = Types::UpdateEnvironmentRequest
    UpdateExperimentDefinitionOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    UpdateExperimentDefinitionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateExperimentDefinitionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateExperimentDefinitionOutput.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    UpdateExperimentDefinitionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionStatus, name: "Status"))
    UpdateExperimentDefinitionOutput.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConfigurationProfileId"))
    UpdateExperimentDefinitionOutput.add_member(:environment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "EnvironmentId"))
    UpdateExperimentDefinitionOutput.add_member(:flag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FlagKey, name: "FlagKey"))
    UpdateExperimentDefinitionOutput.add_member(:audience_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "AudienceRule"))
    UpdateExperimentDefinitionOutput.add_member(:audience_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "AudienceDescription"))
    UpdateExperimentDefinitionOutput.add_member(:launch_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LaunchCriteria"))
    UpdateExperimentDefinitionOutput.add_member(:treatments, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentList, name: "Treatments"))
    UpdateExperimentDefinitionOutput.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: Treatment, name: "Control"))
    UpdateExperimentDefinitionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "CreatedAt"))
    UpdateExperimentDefinitionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    UpdateExperimentDefinitionOutput.add_member(:kms_key_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyIdentifier, name: "KmsKeyIdentifier"))
    UpdateExperimentDefinitionOutput.type = Types::UpdateExperimentDefinitionOutput
    UpdateExperimentDefinitionRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentDefinitionRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentDefinitionRequest.add_member(:treatments, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentInputList, name: "Treatments"))
    UpdateExperimentDefinitionRequest.add_member(:control, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentInput, name: "Control"))
    UpdateExperimentDefinitionRequest.add_member(:hypothesis, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Hypothesis"))
    UpdateExperimentDefinitionRequest.add_member(:audience_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: Rule, name: "AudienceRule"))
    UpdateExperimentDefinitionRequest.add_member(:audience_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "AudienceDescription"))
    UpdateExperimentDefinitionRequest.add_member(:launch_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "LaunchCriteria"))
    UpdateExperimentDefinitionRequest.type = Types::UpdateExperimentDefinitionRequest
    UpdateExperimentRunOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ApplicationId"))
    UpdateExperimentRunOutput.add_member(:experiment_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExperimentDefinitionId"))
    UpdateExperimentRunOutput.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Run", traits: {"smithy.api#default" => 0}))
    UpdateExperimentRunOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateExperimentRunOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunStatus, name: "Status"))
    UpdateExperimentRunOutput.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    UpdateExperimentRunOutput.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    UpdateExperimentRunOutput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentRunResult, name: "Result"))
    UpdateExperimentRunOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "StartedAt"))
    UpdateExperimentRunOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "UpdatedAt"))
    UpdateExperimentRunOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Iso8601DateTime, name: "EndedAt"))
    UpdateExperimentRunOutput.add_member(:experiment_definition_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDefinitionSnapshot, name: "ExperimentDefinitionSnapshot"))
    UpdateExperimentRunOutput.type = Types::UpdateExperimentRunOutput
    UpdateExperimentRunRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ApplicationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentRunRequest.add_member(:experiment_definition_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExperimentDefinitionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentRunRequest.add_member(:run, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, name: "Run", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExperimentRunRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateExperimentRunRequest.add_member(:exposure_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullablePercentage, name: "ExposurePercentage"))
    UpdateExperimentRunRequest.add_member(:treatment_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TreatmentOverrides, name: "TreatmentOverrides"))
    UpdateExperimentRunRequest.add_member(:deployment_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentParameters, name: "DeploymentParameters"))
    UpdateExperimentRunRequest.type = Types::UpdateExperimentRunRequest
    UpdateExtensionAssociationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Id"))
    UpdateExtensionAssociationOutput.add_member(:extension_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ExtensionArn"))
    UpdateExtensionAssociationOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn"))
    UpdateExtensionAssociationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateExtensionAssociationOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueMap, name: "Parameters"))
    UpdateExtensionAssociationOutput.add_member(:extension_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ExtensionVersionNumber", traits: {"smithy.api#default" => 0}))
    UpdateExtensionAssociationOutput.type = Types::UpdateExtensionAssociationOutput
    UpdateExtensionAssociationRequest.add_member(:extension_association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ExtensionAssociationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExtensionAssociationRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValueMap, name: "Parameters"))
    UpdateExtensionAssociationRequest.type = Types::UpdateExtensionAssociationRequest
    UpdateExtensionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateExtensionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateExtensionOutput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => 0}))
    UpdateExtensionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateExtensionOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateExtensionOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMap, name: "Actions"))
    UpdateExtensionOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "Parameters"))
    UpdateExtensionOutput.type = Types::UpdateExtensionOutput
    UpdateExtensionRequest.add_member(:extension_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "ExtensionIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateExtensionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateExtensionRequest.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsMap, name: "Actions"))
    UpdateExtensionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterMap, name: "Parameters"))
    UpdateExtensionRequest.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "VersionNumber", traits: {"smithy.api#default" => nil}))
    UpdateExtensionRequest.type = Types::UpdateExtensionRequest
    ValidateConfigurationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ApplicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateConfigurationRequest.add_member(:configuration_profile_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LongName, name: "ConfigurationProfileId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateConfigurationRequest.add_member(:configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "ConfigurationVersion", traits: {"smithy.api#httpQuery" => "configuration_version", "smithy.api#required" => {}}))
    ValidateConfigurationRequest.type = Types::ValidateConfigurationRequest
    Validator.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorType, name: "Type", traits: {"smithy.api#required" => {}}))
    Validator.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLengthBetween0And32768, name: "Content", traits: {"smithy.api#required" => {}}))
    Validator.type = Types::Validator
    ValidatorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Validator, name: "member"))
    ValidatorType.add_member(:json_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_SCHEMA", traits: {"smithy.api#enumValue" => "JSON_SCHEMA"}))
    ValidatorType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "LAMBDA"}))
    ValidatorTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatorType, name: "member"))
    VendedMetricsSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => nil}))
    VendedMetricsSettings.type = Types::VendedMetricsSettings

    AmazonAppConfig = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appconfig#AmazonAppConfig"
      service.name = "AmazonAppConfig"
      service.version = "2019-10-09"
      service.traits = {"aws.api#service" => {"sdkId" => "AppConfig", "arnNamespace" => "appconfig", "cloudFormationName" => "AppConfig", "cloudTrailEventSource" => "appconfig.amazonaws.com", "endpointPrefix" => "appconfig"}, "aws.auth#sigv4" => {"name" => "appconfig"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon AppConfig", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-east-1"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "us-gov-west-1"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://appconfig-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://appconfig.us-gov-east-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://appconfig.us-gov-west-1.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://appconfig-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://appconfig.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://appconfig.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 15, "nodes" => "/////wAAAAH/////AAAAAAAAAA4AAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEMAAAABQX14QoF9eELAAAABAAAAAwAAAAJAAAABgAAAAoF9eEJAAAABwX14QYAAAALAAAACAX14QcF9eEIAAAABQAAAA0F9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAPAAAABAX14QIF9eED"}}
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:create_configuration_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateConfigurationProfile"
        operation.name = "CreateConfigurationProfile"
        operation.input = CreateConfigurationProfileRequest
        operation.output = CreateConfigurationProfileOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/configurationprofiles", "code" => 201}}
      end)
      service.add_operation(:create_deployment_strategy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateDeploymentStrategy"
        operation.name = "CreateDeploymentStrategy"
        operation.input = CreateDeploymentStrategyRequest
        operation.output = CreateDeploymentStrategyOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/deploymentstrategies", "code" => 201}}
      end)
      service.add_operation(:create_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateEnvironment"
        operation.name = "CreateEnvironment"
        operation.input = CreateEnvironmentRequest
        operation.output = CreateEnvironmentOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/environments", "code" => 201}}
      end)
      service.add_operation(:create_experiment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateExperimentDefinition"
        operation.name = "CreateExperimentDefinition"
        operation.input = CreateExperimentDefinitionRequest
        operation.output = CreateExperimentDefinitionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions", "code" => 201}}
      end)
      service.add_operation(:create_extension, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateExtension"
        operation.name = "CreateExtension"
        operation.input = CreateExtensionRequest
        operation.output = CreateExtensionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/extensions", "code" => 201}}
      end)
      service.add_operation(:create_extension_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateExtensionAssociation"
        operation.name = "CreateExtensionAssociation"
        operation.input = CreateExtensionAssociationRequest
        operation.output = CreateExtensionAssociationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/extensionassociations", "code" => 201}}
      end)
      service.add_operation(:create_hosted_configuration_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#CreateHostedConfigurationVersion"
        operation.name = "CreateHostedConfigurationVersion"
        operation.input = CreateHostedConfigurationVersionRequest
        operation.output = CreateHostedConfigurationVersionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << PayloadTooLargeException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions", "code" => 201}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}", "code" => 204}}
      end)
      service.add_operation(:delete_configuration_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteConfigurationProfile"
        operation.name = "DeleteConfigurationProfile"
        operation.input = DeleteConfigurationProfileRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", "code" => 204}}
      end)
      service.add_operation(:delete_deployment_strategy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteDeploymentStrategy"
        operation.name = "DeleteDeploymentStrategy"
        operation.input = DeleteDeploymentStrategyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/deployementstrategies/{DeploymentStrategyId}", "code" => 204}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = DeleteEnvironmentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}", "code" => 204}}
      end)
      service.add_operation(:delete_experiment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteExperimentDefinition"
        operation.name = "DeleteExperimentDefinition"
        operation.input = DeleteExperimentDefinitionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_extension, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteExtension"
        operation.name = "DeleteExtension"
        operation.input = DeleteExtensionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/extensions/{ExtensionIdentifier}", "code" => 204}}
      end)
      service.add_operation(:delete_extension_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteExtensionAssociation"
        operation.name = "DeleteExtensionAssociation"
        operation.input = DeleteExtensionAssociationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/extensionassociations/{ExtensionAssociationId}", "code" => 204}}
      end)
      service.add_operation(:delete_hosted_configuration_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#DeleteHostedConfigurationVersion"
        operation.name = "DeleteHostedConfigurationVersion"
        operation.input = DeleteHostedConfigurationVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}", "code" => 204}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountSettingsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:get_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = GetConfigurationRequest
        operation.output = GetConfigurationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#deprecated" => {"message" => "This API has been deprecated in favor of the GetLatestConfiguration API used in conjunction with StartConfigurationSession."}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{Application}/environments/{Environment}/configurations/{Configuration}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetConfigurationProfile"
        operation.name = "GetConfigurationProfile"
        operation.input = GetConfigurationProfileRequest
        operation.output = GetConfigurationProfileOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", "code" => 200}}
      end)
      service.add_operation(:get_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetDeployment"
        operation.name = "GetDeployment"
        operation.input = GetDeploymentRequest
        operation.output = GetDeploymentOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", "code" => 200}}
      end)
      service.add_operation(:get_deployment_strategy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetDeploymentStrategy"
        operation.name = "GetDeploymentStrategy"
        operation.input = GetDeploymentStrategyRequest
        operation.output = GetDeploymentStrategyOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/deploymentstrategies/{DeploymentStrategyId}", "code" => 200}}
      end)
      service.add_operation(:get_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetEnvironment"
        operation.name = "GetEnvironment"
        operation.input = GetEnvironmentRequest
        operation.output = GetEnvironmentOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}", "code" => 200}}
      end)
      service.add_operation(:get_experiment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetExperimentDefinition"
        operation.name = "GetExperimentDefinition"
        operation.input = GetExperimentDefinitionRequest
        operation.output = GetExperimentDefinitionOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_experiment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetExperimentRun"
        operation.name = "GetExperimentRun"
        operation.input = GetExperimentRunRequest
        operation.output = GetExperimentRunOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_extension, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetExtension"
        operation.name = "GetExtension"
        operation.input = GetExtensionRequest
        operation.output = GetExtensionOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensions/{ExtensionIdentifier}", "code" => 200}}
      end)
      service.add_operation(:get_extension_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetExtensionAssociation"
        operation.name = "GetExtensionAssociation"
        operation.input = GetExtensionAssociationRequest
        operation.output = GetExtensionAssociationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensionassociations/{ExtensionAssociationId}", "code" => 200}}
      end)
      service.add_operation(:get_hosted_configuration_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#GetHostedConfigurationVersion"
        operation.name = "GetHostedConfigurationVersion"
        operation.input = GetHostedConfigurationVersionRequest
        operation.output = GetHostedConfigurationVersionOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}", "code" => 200}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_configuration_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListConfigurationProfiles"
        operation.name = "ListConfigurationProfiles"
        operation.input = ListConfigurationProfilesRequest
        operation.output = ListConfigurationProfilesOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationProfiles.new
      end)
      service.add_operation(:list_deployment_strategies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListDeploymentStrategies"
        operation.name = "ListDeploymentStrategies"
        operation.input = ListDeploymentStrategiesRequest
        operation.output = ListDeploymentStrategiesOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/deploymentstrategies", "code" => 200}}
        operation[:paginator] = Paginators::ListDeploymentStrategies.new
      end)
      service.add_operation(:list_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListDeployments"
        operation.name = "ListDeployments"
        operation.input = ListDeploymentsRequest
        operation.output = ListDeploymentsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", "code" => 200}}
        operation[:paginator] = Paginators::ListDeployments.new
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ListEnvironmentsRequest
        operation.output = ListEnvironmentsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/environments", "code" => 200}}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_experiment_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExperimentDefinitions"
        operation.name = "ListExperimentDefinitions"
        operation.input = ListExperimentDefinitionsRequest
        operation.output = ListExperimentDefinitionsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/experimentdefinitions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExperimentDefinitions.new
      end)
      service.add_operation(:list_experiment_run_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExperimentRunEvents"
        operation.name = "ListExperimentRunEvents"
        operation.input = ListExperimentRunEventsRequest
        operation.output = ListExperimentRunEventsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}/events", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExperimentRunEvents.new
      end)
      service.add_operation(:list_experiment_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExperimentRuns"
        operation.name = "ListExperimentRuns"
        operation.input = ListExperimentRunsRequest
        operation.output = ListExperimentRunsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListExperimentRuns.new
      end)
      service.add_operation(:list_extension_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExtensionAssociations"
        operation.name = "ListExtensionAssociations"
        operation.input = ListExtensionAssociationsRequest
        operation.output = ListExtensionAssociationsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensionassociations", "code" => 200}}
        operation[:paginator] = Paginators::ListExtensionAssociations.new
      end)
      service.add_operation(:list_extensions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListExtensions"
        operation.name = "ListExtensions"
        operation.input = ListExtensionsRequest
        operation.output = ListExtensionsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/extensions", "code" => 200}}
        operation[:paginator] = Paginators::ListExtensions.new
      end)
      service.add_operation(:list_hosted_configuration_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListHostedConfigurationVersions"
        operation.name = "ListHostedConfigurationVersions"
        operation.input = ListHostedConfigurationVersionsRequest
        operation.output = ListHostedConfigurationVersionsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions", "code" => 200}}
        operation[:paginator] = Paginators::ListHostedConfigurationVersions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#StartDeployment"
        operation.name = "StartDeployment"
        operation.input = StartDeploymentRequest
        operation.output = StartDeploymentOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", "code" => 201}}
      end)
      service.add_operation(:start_experiment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#StartExperimentRun"
        operation.name = "StartExperimentRun"
        operation.input = StartExperimentRunRequest
        operation.output = StartExperimentRunOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns", "code" => 201}}
      end)
      service.add_operation(:stop_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#StopDeployment"
        operation.name = "StopDeployment"
        operation.input = StopDeploymentRequest
        operation.output = StopDeploymentOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", "code" => 202}}
      end)
      service.add_operation(:stop_experiment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#StopExperimentRun"
        operation.name = "StopExperimentRun"
        operation.input = StopExperimentRunRequest
        operation.output = StopExperimentRunOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = UpdateAccountSettingsRequest
        operation.output = UpdateAccountSettingsOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/settings", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}", "code" => 200}}
      end)
      service.add_operation(:update_configuration_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateConfigurationProfile"
        operation.name = "UpdateConfigurationProfile"
        operation.input = UpdateConfigurationProfileRequest
        operation.output = UpdateConfigurationProfileOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", "code" => 200}}
      end)
      service.add_operation(:update_deployment_strategy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateDeploymentStrategy"
        operation.name = "UpdateDeploymentStrategy"
        operation.input = UpdateDeploymentStrategyRequest
        operation.output = UpdateDeploymentStrategyOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/deploymentstrategies/{DeploymentStrategyId}", "code" => 200}}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = UpdateEnvironmentRequest
        operation.output = UpdateEnvironmentOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationId}/environments/{EnvironmentId}", "code" => 200}}
      end)
      service.add_operation(:update_experiment_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateExperimentDefinition"
        operation.name = "UpdateExperimentDefinition"
        operation.input = UpdateExperimentDefinitionRequest
        operation.output = UpdateExperimentDefinitionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}", "code" => 200}}
      end)
      service.add_operation(:update_experiment_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateExperimentRun"
        operation.name = "UpdateExperimentRun"
        operation.input = UpdateExperimentRunRequest
        operation.output = UpdateExperimentRunOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}/update", "code" => 200}}
      end)
      service.add_operation(:update_extension, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateExtension"
        operation.name = "UpdateExtension"
        operation.input = UpdateExtensionRequest
        operation.output = UpdateExtensionOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/extensions/{ExtensionIdentifier}", "code" => 200}}
      end)
      service.add_operation(:update_extension_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#UpdateExtensionAssociation"
        operation.name = "UpdateExtensionAssociation"
        operation.input = UpdateExtensionAssociationRequest
        operation.output = UpdateExtensionAssociationOutput
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/extensionassociations/{ExtensionAssociationId}", "code" => 200}}
      end)
      service.add_operation(:validate_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appconfig#ValidateConfiguration"
        operation.name = "ValidateConfiguration"
        operation.input = ValidateConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators", "code" => 204}}
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
