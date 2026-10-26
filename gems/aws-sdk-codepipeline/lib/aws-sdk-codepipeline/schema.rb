# frozen_string_literal: true

# This is generated code!

module Aws::CodePipeline
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSRegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#AWSRegionName", name: "AWSRegionName", traits: {"smithy.api#length" => {"min" => 4, "max" => 30}})
    AWSSessionCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#AWSSessionCredentials", name: "AWSSessionCredentials", traits: {"smithy.api#sensitive" => {}})
    AccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#AccessKeyId", name: "AccessKeyId", traits: {"smithy.api#sensitive" => {}})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AcknowledgeJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#AcknowledgeJobInput", name: "AcknowledgeJobInput")
    AcknowledgeJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#AcknowledgeJobOutput", name: "AcknowledgeJobOutput")
    AcknowledgeThirdPartyJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#AcknowledgeThirdPartyJobInput", name: "AcknowledgeThirdPartyJobInput")
    AcknowledgeThirdPartyJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#AcknowledgeThirdPartyJobOutput", name: "AcknowledgeThirdPartyJobOutput")
    ActionCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ActionCategory", name: "ActionCategory")
    ActionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionConfiguration", name: "ActionConfiguration")
    ActionConfigurationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationKey", name: "ActionConfigurationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ActionConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationMap", name: "ActionConfigurationMap")
    ActionConfigurationProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationProperty", name: "ActionConfigurationProperty")
    ActionConfigurationPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationPropertyList", name: "ActionConfigurationPropertyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ActionConfigurationPropertyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationPropertyType", name: "ActionConfigurationPropertyType")
    ActionConfigurationQueryableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationQueryableValue", name: "ActionConfigurationQueryableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ActionConfigurationValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionConfigurationValue", name: "ActionConfigurationValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ActionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionContext", name: "ActionContext")
    ActionDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionDeclaration", name: "ActionDeclaration")
    ActionExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecution", name: "ActionExecution")
    ActionExecutionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecutionDetail", name: "ActionExecutionDetail")
    ActionExecutionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ActionExecutionDetailList", name: "ActionExecutionDetailList")
    ActionExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecutionFilter", name: "ActionExecutionFilter")
    ActionExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionExecutionId", name: "ActionExecutionId")
    ActionExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecutionInput", name: "ActionExecutionInput")
    ActionExecutionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecutionNotFoundException", name: "ActionExecutionNotFoundException", traits: {"smithy.api#error" => "client"})
    ActionExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecutionOutput", name: "ActionExecutionOutput")
    ActionExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionExecutionResult", name: "ActionExecutionResult")
    ActionExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ActionExecutionStatus", name: "ActionExecutionStatus")
    ActionExecutionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionExecutionToken", name: "ActionExecutionToken")
    ActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionName", name: "ActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    ActionNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionNamespace", name: "ActionNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9@\\-_]+$"})
    ActionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionNotFoundException", name: "ActionNotFoundException", traits: {"smithy.api#error" => "client"})
    ActionOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ActionOwner", name: "ActionOwner")
    ActionProvider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionProvider", name: "ActionProvider", traits: {"smithy.api#length" => {"min" => 1, "max" => 35}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    ActionRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionRevision", name: "ActionRevision")
    ActionRunOrder = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#ActionRunOrder", name: "ActionRunOrder", traits: {"smithy.api#range" => {"min" => 1, "max" => 999}})
    ActionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionState", name: "ActionState")
    ActionStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ActionStateList", name: "ActionStateList")
    ActionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#ActionTimeout", name: "ActionTimeout", traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ActionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionType", name: "ActionType")
    ActionTypeArtifactDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeArtifactDetails", name: "ActionTypeArtifactDetails")
    ActionTypeDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeDeclaration", name: "ActionTypeDeclaration")
    ActionTypeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionTypeDescription", name: "ActionTypeDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ActionTypeExecutor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeExecutor", name: "ActionTypeExecutor")
    ActionTypeId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeId", name: "ActionTypeId")
    ActionTypeIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeIdentifier", name: "ActionTypeIdentifier")
    ActionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ActionTypeList", name: "ActionTypeList")
    ActionTypeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeNotFoundException", name: "ActionTypeNotFoundException", traits: {"smithy.api#error" => "client"})
    ActionTypeOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ActionTypeOwner", name: "ActionTypeOwner", traits: {"smithy.api#pattern" => "^AWS|ThirdParty$"})
    ActionTypePermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypePermissions", name: "ActionTypePermissions")
    ActionTypeProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ActionTypeProperties", name: "ActionTypeProperties", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ActionTypeProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeProperty", name: "ActionTypeProperty")
    ActionTypeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeSettings", name: "ActionTypeSettings")
    ActionTypeUrls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ActionTypeUrls", name: "ActionTypeUrls")
    AllowedAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#AllowedAccount", name: "AllowedAccount", traits: {"smithy.api#pattern" => "^[0-9]{12}|\\*$"})
    AllowedAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#AllowedAccounts", name: "AllowedAccounts", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ApprovalAlreadyCompletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ApprovalAlreadyCompletedException", name: "ApprovalAlreadyCompletedException", traits: {"smithy.api#error" => "client"})
    ApprovalResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ApprovalResult", name: "ApprovalResult")
    ApprovalStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ApprovalStatus", name: "ApprovalStatus")
    ApprovalSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ApprovalSummary", name: "ApprovalSummary", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ApprovalToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ApprovalToken", name: "ApprovalToken", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    Artifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#Artifact", name: "Artifact")
    ArtifactDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ArtifactDetail", name: "ArtifactDetail")
    ArtifactDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ArtifactDetailList", name: "ArtifactDetailList")
    ArtifactDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ArtifactDetails", name: "ArtifactDetails")
    ArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ArtifactList", name: "ArtifactList")
    ArtifactLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ArtifactLocation", name: "ArtifactLocation")
    ArtifactLocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ArtifactLocationType", name: "ArtifactLocationType")
    ArtifactName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ArtifactName", name: "ArtifactName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]+$"})
    ArtifactRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ArtifactRevision", name: "ArtifactRevision")
    ArtifactRevisionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ArtifactRevisionList", name: "ArtifactRevisionList")
    ArtifactStore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ArtifactStore", name: "ArtifactStore")
    ArtifactStoreLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ArtifactStoreLocation", name: "ArtifactStoreLocation", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\.]+$"})
    ArtifactStoreMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#ArtifactStoreMap", name: "ArtifactStoreMap")
    ArtifactStoreType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ArtifactStoreType", name: "ArtifactStoreType")
    BeforeEntryConditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#BeforeEntryConditions", name: "BeforeEntryConditions")
    BlockerDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#BlockerDeclaration", name: "BlockerDeclaration")
    BlockerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#BlockerName", name: "BlockerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BlockerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#BlockerType", name: "BlockerType")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codepipeline#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ClientId", name: "ClientId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Code", name: "Code")
    Command = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Command", name: "Command", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CommandList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#CommandList", name: "CommandList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    ConcurrentPipelineExecutionsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ConcurrentPipelineExecutionsLimitExceededException", name: "ConcurrentPipelineExecutionsLimitExceededException", traits: {"smithy.api#error" => "client"})
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#Condition", name: "Condition")
    ConditionExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ConditionExecution", name: "ConditionExecution")
    ConditionExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ConditionExecutionStatus", name: "ConditionExecutionStatus")
    ConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ConditionList", name: "ConditionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ConditionNotOverridableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ConditionNotOverridableException", name: "ConditionNotOverridableException", traits: {"smithy.api#error" => "client"})
    ConditionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ConditionState", name: "ConditionState")
    ConditionStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ConditionStateList", name: "ConditionStateList")
    ConditionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ConditionType", name: "ConditionType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ContinuationToken", name: "ContinuationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    CreateCustomActionTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#CreateCustomActionTypeInput", name: "CreateCustomActionTypeInput")
    CreateCustomActionTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#CreateCustomActionTypeOutput", name: "CreateCustomActionTypeOutput")
    CreatePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#CreatePipelineInput", name: "CreatePipelineInput")
    CreatePipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#CreatePipelineOutput", name: "CreatePipelineOutput")
    CurrentRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#CurrentRevision", name: "CurrentRevision")
    DeleteCustomActionTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeleteCustomActionTypeInput", name: "DeleteCustomActionTypeInput")
    DeletePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeletePipelineInput", name: "DeletePipelineInput")
    DeleteWebhookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeleteWebhookInput", name: "DeleteWebhookInput")
    DeleteWebhookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeleteWebhookOutput", name: "DeleteWebhookOutput")
    DeployActionExecutionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeployActionExecutionTarget", name: "DeployActionExecutionTarget")
    DeployActionExecutionTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#DeployActionExecutionTargetList", name: "DeployActionExecutionTargetList")
    DeployTargetEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeployTargetEvent", name: "DeployTargetEvent")
    DeployTargetEventContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeployTargetEventContext", name: "DeployTargetEventContext")
    DeployTargetEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#DeployTargetEventList", name: "DeployTargetEventList")
    DeregisterWebhookWithThirdPartyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeregisterWebhookWithThirdPartyInput", name: "DeregisterWebhookWithThirdPartyInput")
    DeregisterWebhookWithThirdPartyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DeregisterWebhookWithThirdPartyOutput", name: "DeregisterWebhookWithThirdPartyOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 160}})
    DisableStageTransitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DisableStageTransitionInput", name: "DisableStageTransitionInput")
    DisabledReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#DisabledReason", name: "DisabledReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9!@ \\(\\)\\.\\*\\?\\-]+$"})
    DuplicatedStopRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#DuplicatedStopRequestException", name: "DuplicatedStopRequestException", traits: {"smithy.api#error" => "client"})
    EnableStageTransitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#EnableStageTransitionInput", name: "EnableStageTransitionInput")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codepipeline#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    EncryptionKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#EncryptionKey", name: "EncryptionKey")
    EncryptionKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#EncryptionKeyId", name: "EncryptionKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    EncryptionKeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#EncryptionKeyType", name: "EncryptionKeyType")
    EnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#EnvironmentVariable", name: "EnvironmentVariable")
    EnvironmentVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#EnvironmentVariableList", name: "EnvironmentVariableList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EnvironmentVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#EnvironmentVariableName", name: "EnvironmentVariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    EnvironmentVariableType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#EnvironmentVariableType", name: "EnvironmentVariableType")
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#EnvironmentVariableValue", name: "EnvironmentVariableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => ".*"})
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ErrorDetails", name: "ErrorDetails")
    ExecutionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ExecutionDetails", name: "ExecutionDetails")
    ExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ExecutionId", name: "ExecutionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    ExecutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ExecutionMode", name: "ExecutionMode")
    ExecutionSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ExecutionSummary", name: "ExecutionSummary", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ExecutionTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ExecutionTrigger", name: "ExecutionTrigger")
    ExecutionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ExecutionType", name: "ExecutionType")
    ExecutorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ExecutorConfiguration", name: "ExecutorConfiguration")
    ExecutorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#ExecutorType", name: "ExecutorType")
    ExternalExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ExternalExecutionId", name: "ExternalExecutionId")
    ExternalExecutionSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ExternalExecutionSummary", name: "ExternalExecutionSummary")
    FailureConditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#FailureConditions", name: "FailureConditions")
    FailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#FailureDetails", name: "FailureDetails")
    FailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#FailureType", name: "FailureType")
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#FilePath", name: "FilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FilePathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#FilePathList", name: "FilePathList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetActionTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetActionTypeInput", name: "GetActionTypeInput")
    GetActionTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetActionTypeOutput", name: "GetActionTypeOutput")
    GetJobDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetJobDetailsInput", name: "GetJobDetailsInput")
    GetJobDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetJobDetailsOutput", name: "GetJobDetailsOutput")
    GetPipelineExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetPipelineExecutionInput", name: "GetPipelineExecutionInput")
    GetPipelineExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetPipelineExecutionOutput", name: "GetPipelineExecutionOutput")
    GetPipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetPipelineInput", name: "GetPipelineInput")
    GetPipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetPipelineOutput", name: "GetPipelineOutput")
    GetPipelineStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetPipelineStateInput", name: "GetPipelineStateInput")
    GetPipelineStateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetPipelineStateOutput", name: "GetPipelineStateOutput")
    GetThirdPartyJobDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetThirdPartyJobDetailsInput", name: "GetThirdPartyJobDetailsInput")
    GetThirdPartyJobDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GetThirdPartyJobDetailsOutput", name: "GetThirdPartyJobDetailsOutput")
    GitBranchFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GitBranchFilterCriteria", name: "GitBranchFilterCriteria")
    GitBranchNamePattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#GitBranchNamePattern", name: "GitBranchNamePattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    GitBranchPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#GitBranchPatternList", name: "GitBranchPatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    GitConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GitConfiguration", name: "GitConfiguration")
    GitFilePathFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GitFilePathFilterCriteria", name: "GitFilePathFilterCriteria")
    GitFilePathPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#GitFilePathPattern", name: "GitFilePathPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    GitFilePathPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#GitFilePathPatternList", name: "GitFilePathPatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    GitPullRequestEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#GitPullRequestEventType", name: "GitPullRequestEventType")
    GitPullRequestEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#GitPullRequestEventTypeList", name: "GitPullRequestEventTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GitPullRequestFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GitPullRequestFilter", name: "GitPullRequestFilter")
    GitPullRequestFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#GitPullRequestFilterList", name: "GitPullRequestFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GitPushFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GitPushFilter", name: "GitPushFilter")
    GitPushFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#GitPushFilterList", name: "GitPushFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GitTagFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#GitTagFilterCriteria", name: "GitTagFilterCriteria")
    GitTagNamePattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#GitTagNamePattern", name: "GitTagNamePattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GitTagPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#GitTagPatternList", name: "GitTagPatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    InputArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InputArtifact", name: "InputArtifact")
    InputArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#InputArtifactList", name: "InputArtifactList")
    InvalidActionDeclarationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidActionDeclarationException", name: "InvalidActionDeclarationException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidApprovalTokenException", name: "InvalidApprovalTokenException", traits: {"smithy.api#error" => "client"})
    InvalidArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidArnException", name: "InvalidArnException", traits: {"smithy.api#error" => "client"})
    InvalidBlockerDeclarationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidBlockerDeclarationException", name: "InvalidBlockerDeclarationException", traits: {"smithy.api#error" => "client"})
    InvalidClientTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidClientTokenException", name: "InvalidClientTokenException", traits: {"smithy.api#error" => "client"})
    InvalidJobException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidJobException", name: "InvalidJobException", traits: {"smithy.api#error" => "client"})
    InvalidJobStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidJobStateException", name: "InvalidJobStateException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidNonceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidNonceException", name: "InvalidNonceException", traits: {"smithy.api#error" => "client"})
    InvalidStageDeclarationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidStageDeclarationException", name: "InvalidStageDeclarationException", traits: {"smithy.api#error" => "client"})
    InvalidStructureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidStructureException", name: "InvalidStructureException", traits: {"smithy.api#error" => "client"})
    InvalidTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidTagsException", name: "InvalidTagsException", traits: {"smithy.api#error" => "client"})
    InvalidWebhookAuthenticationParametersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidWebhookAuthenticationParametersException", name: "InvalidWebhookAuthenticationParametersException", traits: {"smithy.api#error" => "client"})
    InvalidWebhookFilterPatternException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#InvalidWebhookFilterPatternException", name: "InvalidWebhookFilterPatternException", traits: {"smithy.api#error" => "client"})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#Job", name: "Job")
    JobData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#JobData", name: "JobData")
    JobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#JobDetails", name: "JobDetails")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#JobId", name: "JobId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    JobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#JobList", name: "JobList")
    JobNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#JobNotFoundException", name: "JobNotFoundException", traits: {"smithy.api#error" => "client"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#JobStatus", name: "JobStatus")
    JobTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#JobTimeout", name: "JobTimeout", traits: {"smithy.api#range" => {"min" => 60, "max" => 43200}})
    JobWorkerExecutorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#JobWorkerExecutorConfiguration", name: "JobWorkerExecutorConfiguration")
    JsonPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#JsonPath", name: "JsonPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    LambdaExecutorConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#LambdaExecutorConfiguration", name: "LambdaExecutorConfiguration")
    LambdaFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#LambdaFunctionArn", name: "LambdaFunctionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:lambda:.+:[0-9]{12}:function:.+$"})
    LastChangedAt = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codepipeline#LastChangedAt", name: "LastChangedAt")
    LastChangedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#LastChangedBy", name: "LastChangedBy")
    LastUpdatedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#LastUpdatedBy", name: "LastUpdatedBy")
    LatestInPipelineExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#LatestInPipelineExecutionFilter", name: "LatestInPipelineExecutionFilter")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListActionExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListActionExecutionsInput", name: "ListActionExecutionsInput")
    ListActionExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListActionExecutionsOutput", name: "ListActionExecutionsOutput")
    ListActionTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListActionTypesInput", name: "ListActionTypesInput")
    ListActionTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListActionTypesOutput", name: "ListActionTypesOutput")
    ListDeployActionExecutionTargetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListDeployActionExecutionTargetsInput", name: "ListDeployActionExecutionTargetsInput")
    ListDeployActionExecutionTargetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListDeployActionExecutionTargetsOutput", name: "ListDeployActionExecutionTargetsOutput")
    ListPipelineExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListPipelineExecutionsInput", name: "ListPipelineExecutionsInput")
    ListPipelineExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListPipelineExecutionsOutput", name: "ListPipelineExecutionsOutput")
    ListPipelinesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListPipelinesInput", name: "ListPipelinesInput")
    ListPipelinesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListPipelinesOutput", name: "ListPipelinesOutput")
    ListRuleExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListRuleExecutionsInput", name: "ListRuleExecutionsInput")
    ListRuleExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListRuleExecutionsOutput", name: "ListRuleExecutionsOutput")
    ListRuleTypesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListRuleTypesInput", name: "ListRuleTypesInput")
    ListRuleTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListRuleTypesOutput", name: "ListRuleTypesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListWebhookItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListWebhookItem", name: "ListWebhookItem")
    ListWebhooksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListWebhooksInput", name: "ListWebhooksInput")
    ListWebhooksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ListWebhooksOutput", name: "ListWebhooksOutput")
    LogStreamARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#LogStreamARN", name: "LogStreamARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    MatchEquals = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#MatchEquals", name: "MatchEquals", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    MaxBatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MaxBatchSize", name: "MaxBatchSize", traits: {"smithy.api#range" => {"min" => 1}})
    MaxPipelines = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MaxPipelines", name: "MaxPipelines", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaximumActionTypeArtifactCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MaximumActionTypeArtifactCount", name: "MaximumActionTypeArtifactCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    MaximumArtifactCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MaximumArtifactCount", name: "MaximumArtifactCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 5}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    MinimumActionTypeArtifactCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MinimumActionTypeArtifactCount", name: "MinimumActionTypeArtifactCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    MinimumArtifactCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#MinimumArtifactCount", name: "MinimumArtifactCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 5}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Nonce = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Nonce", name: "Nonce", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    NotLatestPipelineExecutionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#NotLatestPipelineExecutionException", name: "NotLatestPipelineExecutionException", traits: {"smithy.api#error" => "client"})
    OutputArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#OutputArtifact", name: "OutputArtifact")
    OutputArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#OutputArtifactList", name: "OutputArtifactList")
    OutputVariable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#OutputVariable", name: "OutputVariable", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OutputVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#OutputVariableList", name: "OutputVariableList", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    OutputVariablesKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#OutputVariablesKey", name: "OutputVariablesKey", traits: {"smithy.api#pattern" => "^[A-Za-z0-9@\\-_]+$"})
    OutputVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#OutputVariablesMap", name: "OutputVariablesMap")
    OutputVariablesSizeExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#OutputVariablesSizeExceededException", name: "OutputVariablesSizeExceededException", traits: {"smithy.api#error" => "client"})
    OutputVariablesValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#OutputVariablesValue", name: "OutputVariablesValue")
    OverrideStageConditionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#OverrideStageConditionInput", name: "OverrideStageConditionInput")
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#Percentage", name: "Percentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PipelineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineArn", name: "PipelineArn", traits: {"smithy.api#pattern" => "^arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+$"})
    PipelineContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineContext", name: "PipelineContext")
    PipelineDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineDeclaration", name: "PipelineDeclaration")
    PipelineExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineExecution", name: "PipelineExecution")
    PipelineExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionFilter", name: "PipelineExecutionFilter")
    PipelineExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionId", name: "PipelineExecutionId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    PipelineExecutionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionNotFoundException", name: "PipelineExecutionNotFoundException", traits: {"smithy.api#error" => "client"})
    PipelineExecutionNotStoppableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionNotStoppableException", name: "PipelineExecutionNotStoppableException", traits: {"smithy.api#error" => "client"})
    PipelineExecutionOutdatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionOutdatedException", name: "PipelineExecutionOutdatedException", traits: {"smithy.api#error" => "client"})
    PipelineExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionStatus", name: "PipelineExecutionStatus")
    PipelineExecutionStatusSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionStatusSummary", name: "PipelineExecutionStatusSummary")
    PipelineExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionSummary", name: "PipelineExecutionSummary")
    PipelineExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PipelineExecutionSummaryList", name: "PipelineExecutionSummaryList")
    PipelineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PipelineList", name: "PipelineList")
    PipelineMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineMetadata", name: "PipelineMetadata")
    PipelineName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineName", name: "PipelineName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    PipelineNameInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineNameInUseException", name: "PipelineNameInUseException", traits: {"smithy.api#error" => "client"})
    PipelineNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineNotFoundException", name: "PipelineNotFoundException", traits: {"smithy.api#error" => "client"})
    PipelineRollbackMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineRollbackMetadata", name: "PipelineRollbackMetadata")
    PipelineStageDeclarationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PipelineStageDeclarationList", name: "PipelineStageDeclarationList")
    PipelineSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineSummary", name: "PipelineSummary")
    PipelineTriggerDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineTriggerDeclaration", name: "PipelineTriggerDeclaration")
    PipelineTriggerDeclarationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PipelineTriggerDeclarationList", name: "PipelineTriggerDeclarationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PipelineTriggerProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#PipelineTriggerProviderType", name: "PipelineTriggerProviderType")
    PipelineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#PipelineType", name: "PipelineType")
    PipelineVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineVariable", name: "PipelineVariable")
    PipelineVariableDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineVariableDeclaration", name: "PipelineVariableDeclaration")
    PipelineVariableDeclarationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PipelineVariableDeclarationList", name: "PipelineVariableDeclarationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PipelineVariableDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineVariableDescription", name: "PipelineVariableDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => ".*"})
    PipelineVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PipelineVariableList", name: "PipelineVariableList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    PipelineVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineVariableName", name: "PipelineVariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9@\\-_]+$"})
    PipelineVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PipelineVariableValue", name: "PipelineVariableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => ".*"})
    PipelineVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#PipelineVersion", name: "PipelineVersion", traits: {"smithy.api#range" => {"min" => 1}})
    PipelineVersionNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PipelineVersionNotFoundException", name: "PipelineVersionNotFoundException", traits: {"smithy.api#error" => "client"})
    PolicyStatementsTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PolicyStatementsTemplate", name: "PolicyStatementsTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PollForJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PollForJobsInput", name: "PollForJobsInput")
    PollForJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PollForJobsOutput", name: "PollForJobsOutput")
    PollForThirdPartyJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PollForThirdPartyJobsInput", name: "PollForThirdPartyJobsInput")
    PollForThirdPartyJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PollForThirdPartyJobsOutput", name: "PollForThirdPartyJobsOutput")
    PollingAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PollingAccountList", name: "PollingAccountList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    PollingServicePrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#PollingServicePrincipalList", name: "PollingServicePrincipalList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PropertyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#PropertyDescription", name: "PropertyDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    PutActionRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutActionRevisionInput", name: "PutActionRevisionInput")
    PutActionRevisionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutActionRevisionOutput", name: "PutActionRevisionOutput")
    PutApprovalResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutApprovalResultInput", name: "PutApprovalResultInput")
    PutApprovalResultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutApprovalResultOutput", name: "PutApprovalResultOutput")
    PutJobFailureResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutJobFailureResultInput", name: "PutJobFailureResultInput")
    PutJobSuccessResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutJobSuccessResultInput", name: "PutJobSuccessResultInput")
    PutThirdPartyJobFailureResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutThirdPartyJobFailureResultInput", name: "PutThirdPartyJobFailureResultInput")
    PutThirdPartyJobSuccessResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutThirdPartyJobSuccessResultInput", name: "PutThirdPartyJobSuccessResultInput")
    PutWebhookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutWebhookInput", name: "PutWebhookInput")
    PutWebhookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#PutWebhookOutput", name: "PutWebhookOutput")
    QueryParamMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#QueryParamMap", name: "QueryParamMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RegisterWebhookWithThirdPartyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RegisterWebhookWithThirdPartyInput", name: "RegisterWebhookWithThirdPartyInput")
    RegisterWebhookWithThirdPartyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RegisterWebhookWithThirdPartyOutput", name: "RegisterWebhookWithThirdPartyOutput")
    RequestFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RequestFailedException", name: "RequestFailedException", traits: {"smithy.api#error" => "client"})
    ResolvedActionConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#ResolvedActionConfigurationMap", name: "ResolvedActionConfigurationMap")
    ResolvedPipelineVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ResolvedPipelineVariable", name: "ResolvedPipelineVariable")
    ResolvedPipelineVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ResolvedPipelineVariableList", name: "ResolvedPipelineVariableList")
    ResolvedRuleConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#ResolvedRuleConfigurationMap", name: "ResolvedRuleConfigurationMap")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    Result = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#Result", name: "Result")
    RetryAttempt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#RetryAttempt", name: "RetryAttempt", traits: {"smithy.api#range" => {"min" => 1}})
    RetryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RetryConfiguration", name: "RetryConfiguration")
    RetryStageExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RetryStageExecutionInput", name: "RetryStageExecutionInput")
    RetryStageExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RetryStageExecutionOutput", name: "RetryStageExecutionOutput")
    RetryStageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RetryStageMetadata", name: "RetryStageMetadata")
    RetryTrigger = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#RetryTrigger", name: "RetryTrigger")
    Revision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Revision", name: "Revision", traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    RevisionChangeIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RevisionChangeIdentifier", name: "RevisionChangeIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RevisionSummary = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RevisionSummary", name: "RevisionSummary", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/"})
    RollbackStageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RollbackStageInput", name: "RollbackStageInput")
    RollbackStageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RollbackStageOutput", name: "RollbackStageOutput")
    RuleCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#RuleCategory", name: "RuleCategory")
    RuleConfigurationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RuleConfigurationKey", name: "RuleConfigurationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RuleConfigurationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codepipeline#RuleConfigurationMap", name: "RuleConfigurationMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    RuleConfigurationProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleConfigurationProperty", name: "RuleConfigurationProperty")
    RuleConfigurationPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#RuleConfigurationPropertyList", name: "RuleConfigurationPropertyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RuleConfigurationPropertyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#RuleConfigurationPropertyType", name: "RuleConfigurationPropertyType")
    RuleConfigurationValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RuleConfigurationValue", name: "RuleConfigurationValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    RuleDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleDeclaration", name: "RuleDeclaration")
    RuleDeclarationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#RuleDeclarationList", name: "RuleDeclarationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RuleExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleExecution", name: "RuleExecution")
    RuleExecutionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleExecutionDetail", name: "RuleExecutionDetail")
    RuleExecutionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#RuleExecutionDetailList", name: "RuleExecutionDetailList")
    RuleExecutionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleExecutionFilter", name: "RuleExecutionFilter")
    RuleExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RuleExecutionId", name: "RuleExecutionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RuleExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleExecutionInput", name: "RuleExecutionInput")
    RuleExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleExecutionOutput", name: "RuleExecutionOutput")
    RuleExecutionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleExecutionResult", name: "RuleExecutionResult")
    RuleExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#RuleExecutionStatus", name: "RuleExecutionStatus")
    RuleExecutionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RuleExecutionToken", name: "RuleExecutionToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\.]+$"})
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    RuleOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#RuleOwner", name: "RuleOwner")
    RuleProvider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#RuleProvider", name: "RuleProvider", traits: {"smithy.api#length" => {"min" => 1, "max" => 35}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    RuleRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleRevision", name: "RuleRevision")
    RuleState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleState", name: "RuleState")
    RuleStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#RuleStateList", name: "RuleStateList")
    RuleTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codepipeline#RuleTimeout", name: "RuleTimeout", traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    RuleType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleType", name: "RuleType")
    RuleTypeId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleTypeId", name: "RuleTypeId")
    RuleTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#RuleTypeList", name: "RuleTypeList")
    RuleTypeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#RuleTypeSettings", name: "RuleTypeSettings")
    S3ArtifactLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#S3ArtifactLocation", name: "S3ArtifactLocation")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#S3BucketName", name: "S3BucketName")
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#S3Location", name: "S3Location")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#S3ObjectKey", name: "S3ObjectKey")
    SecretAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#SecretAccessKey", name: "SecretAccessKey", traits: {"smithy.api#sensitive" => {}})
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ServicePrincipal", name: "ServicePrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#SessionToken", name: "SessionToken", traits: {"smithy.api#sensitive" => {}})
    SourceRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#SourceRevision", name: "SourceRevision")
    SourceRevisionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#SourceRevisionList", name: "SourceRevisionList")
    SourceRevisionOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#SourceRevisionOverride", name: "SourceRevisionOverride")
    SourceRevisionOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#SourceRevisionOverrideList", name: "SourceRevisionOverrideList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SourceRevisionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#SourceRevisionType", name: "SourceRevisionType")
    StageActionDeclarationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#StageActionDeclarationList", name: "StageActionDeclarationList")
    StageBlockerDeclarationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#StageBlockerDeclarationList", name: "StageBlockerDeclarationList")
    StageConditionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageConditionState", name: "StageConditionState")
    StageConditionsExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageConditionsExecution", name: "StageConditionsExecution")
    StageContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageContext", name: "StageContext")
    StageDeclaration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageDeclaration", name: "StageDeclaration")
    StageExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageExecution", name: "StageExecution")
    StageExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#StageExecutionList", name: "StageExecutionList")
    StageExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#StageExecutionStatus", name: "StageExecutionStatus")
    StageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#StageName", name: "StageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    StageNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageNotFoundException", name: "StageNotFoundException", traits: {"smithy.api#error" => "client"})
    StageNotRetryableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageNotRetryableException", name: "StageNotRetryableException", traits: {"smithy.api#error" => "client"})
    StageRetryMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#StageRetryMode", name: "StageRetryMode")
    StageState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StageState", name: "StageState")
    StageStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#StageStateList", name: "StageStateList")
    StageTransitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#StageTransitionType", name: "StageTransitionType")
    StartPipelineExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StartPipelineExecutionInput", name: "StartPipelineExecutionInput")
    StartPipelineExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StartPipelineExecutionOutput", name: "StartPipelineExecutionOutput")
    StartTimeRange = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#StartTimeRange", name: "StartTimeRange")
    StopExecutionTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StopExecutionTrigger", name: "StopExecutionTrigger")
    StopPipelineExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StopPipelineExecutionInput", name: "StopPipelineExecutionInput")
    StopPipelineExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#StopPipelineExecutionOutput", name: "StopPipelineExecutionOutput")
    StopPipelineExecutionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#StopPipelineExecutionReason", name: "StopPipelineExecutionReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#String", name: "String")
    SucceededInStageFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#SucceededInStageFilter", name: "SucceededInStageFilter")
    SuccessConditions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#SuccessConditions", name: "SuccessConditions")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#TagList", name: "TagList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#TargetFilter", name: "TargetFilter")
    TargetFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#TargetFilterList", name: "TargetFilterList")
    TargetFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#TargetFilterName", name: "TargetFilterName")
    TargetFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#TargetFilterValue", name: "TargetFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    TargetFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#TargetFilterValueList", name: "TargetFilterValueList")
    ThirdPartyJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ThirdPartyJob", name: "ThirdPartyJob")
    ThirdPartyJobData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ThirdPartyJobData", name: "ThirdPartyJobData")
    ThirdPartyJobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ThirdPartyJobDetails", name: "ThirdPartyJobDetails")
    ThirdPartyJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#ThirdPartyJobId", name: "ThirdPartyJobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ThirdPartyJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#ThirdPartyJobList", name: "ThirdPartyJobList")
    Time = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codepipeline#Time", name: "Time")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codepipeline#Timestamp", name: "Timestamp")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    TransitionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#TransitionState", name: "TransitionState")
    TriggerDetail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#TriggerDetail", name: "TriggerDetail", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    TriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#TriggerType", name: "TriggerType")
    UnableToRollbackStageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#UnableToRollbackStageException", name: "UnableToRollbackStageException", traits: {"smithy.api#error" => "client"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateActionTypeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#UpdateActionTypeInput", name: "UpdateActionTypeInput")
    UpdatePipelineInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#UpdatePipelineInput", name: "UpdatePipelineInput")
    UpdatePipelineOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#UpdatePipelineOutput", name: "UpdatePipelineOutput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    UrlTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#UrlTemplate", name: "UrlTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    WebhookArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookArn", name: "WebhookArn")
    WebhookAuthConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#WebhookAuthConfiguration", name: "WebhookAuthConfiguration")
    WebhookAuthConfigurationAllowedIPRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookAuthConfigurationAllowedIPRange", name: "WebhookAuthConfigurationAllowedIPRange", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WebhookAuthConfigurationSecretToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookAuthConfigurationSecretToken", name: "WebhookAuthConfigurationSecretToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WebhookAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codepipeline#WebhookAuthenticationType", name: "WebhookAuthenticationType")
    WebhookDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#WebhookDefinition", name: "WebhookDefinition")
    WebhookErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookErrorCode", name: "WebhookErrorCode")
    WebhookErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookErrorMessage", name: "WebhookErrorMessage")
    WebhookFilterRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#WebhookFilterRule", name: "WebhookFilterRule")
    WebhookFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#WebhookFilters", name: "WebhookFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    WebhookLastTriggered = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codepipeline#WebhookLastTriggered", name: "WebhookLastTriggered")
    WebhookList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codepipeline#WebhookList", name: "WebhookList")
    WebhookName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookName", name: "WebhookName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    WebhookNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codepipeline#WebhookNotFoundException", name: "WebhookNotFoundException", traits: {"smithy.api#error" => "client"})
    WebhookUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codepipeline#WebhookUrl", name: "WebhookUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})

    AWSSessionCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyId, name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    AWSSessionCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKey, name: "secretAccessKey", traits: {"smithy.api#required" => {}}))
    AWSSessionCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionToken, name: "sessionToken", traits: {"smithy.api#required" => {}}))
    AWSSessionCredentials.type = Types::AWSSessionCredentials
    AcknowledgeJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    AcknowledgeJobInput.add_member(:nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: Nonce, name: "nonce", traits: {"smithy.api#required" => {}}))
    AcknowledgeJobInput.type = Types::AcknowledgeJobInput
    AcknowledgeJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    AcknowledgeJobOutput.type = Types::AcknowledgeJobOutput
    AcknowledgeThirdPartyJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    AcknowledgeThirdPartyJobInput.add_member(:nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: Nonce, name: "nonce", traits: {"smithy.api#required" => {}}))
    AcknowledgeThirdPartyJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    AcknowledgeThirdPartyJobInput.type = Types::AcknowledgeThirdPartyJobInput
    AcknowledgeThirdPartyJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    AcknowledgeThirdPartyJobOutput.type = Types::AcknowledgeThirdPartyJobOutput
    ActionCategory.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Source", traits: {"smithy.api#enumValue" => "Source"}))
    ActionCategory.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Build", traits: {"smithy.api#enumValue" => "Build"}))
    ActionCategory.add_member(:deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Deploy", traits: {"smithy.api#enumValue" => "Deploy"}))
    ActionCategory.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Test", traits: {"smithy.api#enumValue" => "Test"}))
    ActionCategory.add_member(:invoke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Invoke", traits: {"smithy.api#enumValue" => "Invoke"}))
    ActionCategory.add_member(:approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Approval", traits: {"smithy.api#enumValue" => "Approval"}))
    ActionCategory.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Compute", traits: {"smithy.api#enumValue" => "Compute"}))
    ActionConfiguration.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationMap, name: "configuration"))
    ActionConfiguration.type = Types::ActionConfiguration
    ActionConfigurationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationKey, name: "key"))
    ActionConfigurationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationValue, name: "value"))
    ActionConfigurationProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationKey, name: "name", traits: {"smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "required", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "key", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "secret", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:queryable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "queryable", traits: {"smithy.api#default" => false}))
    ActionConfigurationProperty.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    ActionConfigurationProperty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationPropertyType, name: "type"))
    ActionConfigurationProperty.type = Types::ActionConfigurationProperty
    ActionConfigurationPropertyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationProperty, name: "member"))
    ActionConfigurationPropertyType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "String", traits: {"smithy.api#enumValue" => "String"}))
    ActionConfigurationPropertyType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Number", traits: {"smithy.api#enumValue" => "Number"}))
    ActionConfigurationPropertyType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Boolean", traits: {"smithy.api#enumValue" => "Boolean"}))
    ActionContext.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "name"))
    ActionContext.add_member(:action_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionId, name: "actionExecutionId"))
    ActionContext.type = Types::ActionContext
    ActionDeclaration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "name", traits: {"smithy.api#required" => {}}))
    ActionDeclaration.add_member(:action_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "actionTypeId", traits: {"smithy.api#required" => {}}))
    ActionDeclaration.add_member(:run_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionRunOrder, name: "runOrder"))
    ActionDeclaration.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationMap, name: "configuration"))
    ActionDeclaration.add_member(:commands, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandList, name: "commands"))
    ActionDeclaration.add_member(:output_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputArtifactList, name: "outputArtifacts"))
    ActionDeclaration.add_member(:input_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputArtifactList, name: "inputArtifacts"))
    ActionDeclaration.add_member(:output_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputVariableList, name: "outputVariables"))
    ActionDeclaration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    ActionDeclaration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "region"))
    ActionDeclaration.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionNamespace, name: "namespace"))
    ActionDeclaration.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTimeout, name: "timeoutInMinutes"))
    ActionDeclaration.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableList, name: "environmentVariables"))
    ActionDeclaration.type = Types::ActionDeclaration
    ActionExecution.add_member(:action_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionId, name: "actionExecutionId"))
    ActionExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionStatus, name: "status"))
    ActionExecution.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary, name: "summary"))
    ActionExecution.add_member(:last_status_change, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastStatusChange"))
    ActionExecution.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionToken, name: "token"))
    ActionExecution.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedBy, name: "lastUpdatedBy"))
    ActionExecution.add_member(:external_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, name: "externalExecutionId"))
    ActionExecution.add_member(:external_execution_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "externalExecutionUrl"))
    ActionExecution.add_member(:percent_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "percentComplete"))
    ActionExecution.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "errorDetails"))
    ActionExecution.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamARN, name: "logStreamARN"))
    ActionExecution.type = Types::ActionExecution
    ActionExecutionDetail.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    ActionExecutionDetail.add_member(:action_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionId, name: "actionExecutionId"))
    ActionExecutionDetail.add_member(:pipeline_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "pipelineVersion"))
    ActionExecutionDetail.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName"))
    ActionExecutionDetail.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName"))
    ActionExecutionDetail.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    ActionExecutionDetail.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    ActionExecutionDetail.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedBy, name: "updatedBy"))
    ActionExecutionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionStatus, name: "status"))
    ActionExecutionDetail.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionInput, name: "input"))
    ActionExecutionDetail.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionOutput, name: "output"))
    ActionExecutionDetail.type = Types::ActionExecutionDetail
    ActionExecutionDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionDetail, name: "member"))
    ActionExecutionFilter.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    ActionExecutionFilter.add_member(:latest_in_pipeline_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestInPipelineExecutionFilter, name: "latestInPipelineExecution"))
    ActionExecutionFilter.type = Types::ActionExecutionFilter
    ActionExecutionInput.add_member(:action_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "actionTypeId"))
    ActionExecutionInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationMap, name: "configuration"))
    ActionExecutionInput.add_member(:resolved_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedActionConfigurationMap, name: "resolvedConfiguration"))
    ActionExecutionInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    ActionExecutionInput.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "region"))
    ActionExecutionInput.add_member(:input_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetailList, name: "inputArtifacts"))
    ActionExecutionInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionNamespace, name: "namespace"))
    ActionExecutionInput.type = Types::ActionExecutionInput
    ActionExecutionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ActionExecutionNotFoundException.type = Types::ActionExecutionNotFoundException
    ActionExecutionOutput.add_member(:output_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetailList, name: "outputArtifacts"))
    ActionExecutionOutput.add_member(:execution_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionResult, name: "executionResult"))
    ActionExecutionOutput.add_member(:output_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputVariablesMap, name: "outputVariables"))
    ActionExecutionOutput.type = Types::ActionExecutionOutput
    ActionExecutionResult.add_member(:external_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalExecutionId, name: "externalExecutionId"))
    ActionExecutionResult.add_member(:external_execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalExecutionSummary, name: "externalExecutionSummary"))
    ActionExecutionResult.add_member(:external_execution_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "externalExecutionUrl"))
    ActionExecutionResult.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "errorDetails"))
    ActionExecutionResult.add_member(:log_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamARN, name: "logStreamARN"))
    ActionExecutionResult.type = Types::ActionExecutionResult
    ActionExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ActionExecutionStatus.add_member(:abandoned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Abandoned", traits: {"smithy.api#enumValue" => "Abandoned"}))
    ActionExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    ActionExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ActionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ActionNotFoundException.type = Types::ActionNotFoundException
    ActionOwner.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    ActionOwner.add_member(:third_party, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThirdParty", traits: {"smithy.api#enumValue" => "ThirdParty"}))
    ActionOwner.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Custom", traits: {"smithy.api#enumValue" => "Custom"}))
    ActionRevision.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revisionId", traits: {"smithy.api#required" => {}}))
    ActionRevision.add_member(:revision_change_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionChangeIdentifier, name: "revisionChangeId", traits: {"smithy.api#required" => {}}))
    ActionRevision.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created", traits: {"smithy.api#required" => {}}))
    ActionRevision.type = Types::ActionRevision
    ActionState.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName"))
    ActionState.add_member(:current_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionRevision, name: "currentRevision"))
    ActionState.add_member(:latest_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecution, name: "latestExecution"))
    ActionState.add_member(:entity_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "entityUrl"))
    ActionState.add_member(:revision_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "revisionUrl"))
    ActionState.type = Types::ActionState
    ActionStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionState, name: "member"))
    ActionType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "id", traits: {"smithy.api#required" => {}}))
    ActionType.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeSettings, name: "settings"))
    ActionType.add_member(:action_configuration_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationPropertyList, name: "actionConfigurationProperties"))
    ActionType.add_member(:input_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "inputArtifactDetails", traits: {"smithy.api#required" => {}}))
    ActionType.add_member(:output_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "outputArtifactDetails", traits: {"smithy.api#required" => {}}))
    ActionType.type = Types::ActionType
    ActionTypeArtifactDetails.add_member(:minimum_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumActionTypeArtifactCount, name: "minimumCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActionTypeArtifactDetails.add_member(:maximum_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumActionTypeArtifactCount, name: "maximumCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ActionTypeArtifactDetails.type = Types::ActionTypeArtifactDetails
    ActionTypeDeclaration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeDescription, name: "description"))
    ActionTypeDeclaration.add_member(:executor, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeExecutor, name: "executor", traits: {"smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeIdentifier, name: "id", traits: {"smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:input_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeArtifactDetails, name: "inputArtifactDetails", traits: {"smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:output_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeArtifactDetails, name: "outputArtifactDetails", traits: {"smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypePermissions, name: "permissions"))
    ActionTypeDeclaration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeProperties, name: "properties"))
    ActionTypeDeclaration.add_member(:urls, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeUrls, name: "urls"))
    ActionTypeDeclaration.type = Types::ActionTypeDeclaration
    ActionTypeExecutor.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    ActionTypeExecutor.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutorType, name: "type", traits: {"smithy.api#required" => {}}))
    ActionTypeExecutor.add_member(:policy_statements_template, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatementsTemplate, name: "policyStatementsTemplate"))
    ActionTypeExecutor.add_member(:job_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimeout, name: "jobTimeout"))
    ActionTypeExecutor.type = Types::ActionTypeExecutor
    ActionTypeId.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    ActionTypeId.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionOwner, name: "owner", traits: {"smithy.api#required" => {}}))
    ActionTypeId.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    ActionTypeId.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    ActionTypeId.type = Types::ActionTypeId
    ActionTypeIdentifier.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    ActionTypeIdentifier.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeOwner, name: "owner", traits: {"smithy.api#required" => {}}))
    ActionTypeIdentifier.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    ActionTypeIdentifier.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    ActionTypeIdentifier.type = Types::ActionTypeIdentifier
    ActionTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "member"))
    ActionTypeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ActionTypeNotFoundException.type = Types::ActionTypeNotFoundException
    ActionTypePermissions.add_member(:allowed_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAccounts, name: "allowedAccounts", traits: {"smithy.api#required" => {}}))
    ActionTypePermissions.type = Types::ActionTypePermissions
    ActionTypeProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeProperty, name: "member"))
    ActionTypeProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationKey, name: "name", traits: {"smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "optional", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "key", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:no_echo, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "noEcho", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:queryable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "queryable", traits: {"smithy.api#default" => false}))
    ActionTypeProperty.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyDescription, name: "description"))
    ActionTypeProperty.type = Types::ActionTypeProperty
    ActionTypeSettings.add_member(:third_party_configuration_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "thirdPartyConfigurationUrl"))
    ActionTypeSettings.add_member(:entity_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "entityUrlTemplate"))
    ActionTypeSettings.add_member(:execution_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "executionUrlTemplate"))
    ActionTypeSettings.add_member(:revision_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "revisionUrlTemplate"))
    ActionTypeSettings.type = Types::ActionTypeSettings
    ActionTypeUrls.add_member(:configuration_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "configurationUrl"))
    ActionTypeUrls.add_member(:entity_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "entityUrlTemplate"))
    ActionTypeUrls.add_member(:execution_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "executionUrlTemplate"))
    ActionTypeUrls.add_member(:revision_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "revisionUrlTemplate"))
    ActionTypeUrls.type = Types::ActionTypeUrls
    AllowedAccounts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAccount, name: "member"))
    ApprovalAlreadyCompletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalAlreadyCompletedException.type = Types::ApprovalAlreadyCompletedException
    ApprovalResult.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalSummary, name: "summary", traits: {"smithy.api#required" => {}}))
    ApprovalResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ApprovalResult.type = Types::ApprovalResult
    ApprovalStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Approved", traits: {"smithy.api#enumValue" => "Approved"}))
    ApprovalStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rejected", traits: {"smithy.api#enumValue" => "Rejected"}))
    Artifact.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactName, name: "name"))
    Artifact.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision"))
    Artifact.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactLocation, name: "location"))
    Artifact.type = Types::Artifact
    ArtifactDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactName, name: "name"))
    ArtifactDetail.add_member(:s3location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3location"))
    ArtifactDetail.type = Types::ArtifactDetail
    ArtifactDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetail, name: "member"))
    ArtifactDetails.add_member(:minimum_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumArtifactCount, name: "minimumCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ArtifactDetails.add_member(:maximum_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumArtifactCount, name: "maximumCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ArtifactDetails.type = Types::ArtifactDetails
    ArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Artifact, name: "member"))
    ArtifactLocation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactLocationType, name: "type"))
    ArtifactLocation.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ArtifactLocation, name: "s3Location"))
    ArtifactLocation.type = Types::ArtifactLocation
    ArtifactLocationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ArtifactRevision.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactName, name: "name"))
    ArtifactRevision.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revisionId"))
    ArtifactRevision.add_member(:revision_change_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionChangeIdentifier, name: "revisionChangeIdentifier"))
    ArtifactRevision.add_member(:revision_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionSummary, name: "revisionSummary"))
    ArtifactRevision.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    ArtifactRevision.add_member(:revision_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "revisionUrl"))
    ArtifactRevision.type = Types::ArtifactRevision
    ArtifactRevisionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactRevision, name: "member"))
    ArtifactStore.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactStoreType, name: "type", traits: {"smithy.api#required" => {}}))
    ArtifactStore.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactStoreLocation, name: "location", traits: {"smithy.api#required" => {}}))
    ArtifactStore.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "encryptionKey"))
    ArtifactStore.type = Types::ArtifactStore
    ArtifactStoreMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "key"))
    ArtifactStoreMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactStore, name: "value"))
    ArtifactStoreType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    BeforeEntryConditions.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionList, name: "conditions", traits: {"smithy.api#required" => {}}))
    BeforeEntryConditions.type = Types::BeforeEntryConditions
    BlockerDeclaration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockerName, name: "name", traits: {"smithy.api#required" => {}}))
    BlockerDeclaration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockerType, name: "type", traits: {"smithy.api#required" => {}}))
    BlockerDeclaration.type = Types::BlockerDeclaration
    BlockerType.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Schedule", traits: {"smithy.api#enumValue" => "Schedule"}))
    CommandList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Command, name: "member"))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConcurrentPipelineExecutionsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ConcurrentPipelineExecutionsLimitExceededException.type = Types::ConcurrentPipelineExecutionsLimitExceededException
    Condition.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, name: "result"))
    Condition.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDeclarationList, name: "rules"))
    Condition.type = Types::Condition
    ConditionExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExecutionStatus, name: "status"))
    ConditionExecution.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary, name: "summary"))
    ConditionExecution.add_member(:last_status_change, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastStatusChange"))
    ConditionExecution.type = Types::ConditionExecution
    ConditionExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ConditionExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ConditionExecutionStatus.add_member(:errored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Errored", traits: {"smithy.api#enumValue" => "Errored"}))
    ConditionExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    ConditionExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    ConditionExecutionStatus.add_member(:abandoned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Abandoned", traits: {"smithy.api#enumValue" => "Abandoned"}))
    ConditionExecutionStatus.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Overridden", traits: {"smithy.api#enumValue" => "Overridden"}))
    ConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "member"))
    ConditionNotOverridableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConditionNotOverridableException.type = Types::ConditionNotOverridableException
    ConditionState.add_member(:latest_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExecution, name: "latestExecution"))
    ConditionState.add_member(:rule_states, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleStateList, name: "ruleStates"))
    ConditionState.type = Types::ConditionState
    ConditionStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionState, name: "member"))
    ConditionType.add_member(:before_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_ENTRY", traits: {"smithy.api#enumValue" => "BEFORE_ENTRY"}))
    ConditionType.add_member(:on_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_SUCCESS", traits: {"smithy.api#enumValue" => "ON_SUCCESS"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateCustomActionTypeInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeSettings, name: "settings"))
    CreateCustomActionTypeInput.add_member(:configuration_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationPropertyList, name: "configurationProperties"))
    CreateCustomActionTypeInput.add_member(:input_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "inputArtifactDetails", traits: {"smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:output_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "outputArtifactDetails", traits: {"smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateCustomActionTypeInput.type = Types::CreateCustomActionTypeInput
    CreateCustomActionTypeOutput.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "actionType", traits: {"smithy.api#required" => {}}))
    CreateCustomActionTypeOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateCustomActionTypeOutput.type = Types::CreateCustomActionTypeOutput
    CreatePipelineInput.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDeclaration, name: "pipeline", traits: {"smithy.api#required" => {}}))
    CreatePipelineInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreatePipelineInput.type = Types::CreatePipelineInput
    CreatePipelineOutput.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDeclaration, name: "pipeline"))
    CreatePipelineOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreatePipelineOutput.type = Types::CreatePipelineOutput
    CurrentRevision.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revision", traits: {"smithy.api#required" => {}}))
    CurrentRevision.add_member(:change_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionChangeIdentifier, name: "changeIdentifier", traits: {"smithy.api#required" => {}}))
    CurrentRevision.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Time, name: "created"))
    CurrentRevision.add_member(:revision_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionSummary, name: "revisionSummary"))
    CurrentRevision.type = Types::CurrentRevision
    DeleteCustomActionTypeInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    DeleteCustomActionTypeInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    DeleteCustomActionTypeInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    DeleteCustomActionTypeInput.type = Types::DeleteCustomActionTypeInput
    DeletePipelineInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name", traits: {"smithy.api#required" => {}}))
    DeletePipelineInput.type = Types::DeletePipelineInput
    DeleteWebhookInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteWebhookInput.type = Types::DeleteWebhookInput
    DeleteWebhookOutput.type = Types::DeleteWebhookOutput
    DeployActionExecutionTarget.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetId"))
    DeployActionExecutionTarget.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetType"))
    DeployActionExecutionTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    DeployActionExecutionTarget.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    DeployActionExecutionTarget.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    DeployActionExecutionTarget.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployTargetEventList, name: "events"))
    DeployActionExecutionTarget.type = Types::DeployActionExecutionTarget
    DeployActionExecutionTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployActionExecutionTarget, name: "member"))
    DeployTargetEvent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DeployTargetEvent.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    DeployTargetEvent.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    DeployTargetEvent.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    DeployTargetEvent.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployTargetEventContext, name: "context"))
    DeployTargetEvent.type = Types::DeployTargetEvent
    DeployTargetEventContext.add_member(:ssm_command_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ssmCommandId"))
    DeployTargetEventContext.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DeployTargetEventContext.type = Types::DeployTargetEventContext
    DeployTargetEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployTargetEvent, name: "member"))
    DeregisterWebhookWithThirdPartyInput.add_member(:webhook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookName, name: "webhookName"))
    DeregisterWebhookWithThirdPartyInput.type = Types::DeregisterWebhookWithThirdPartyInput
    DeregisterWebhookWithThirdPartyOutput.type = Types::DeregisterWebhookWithThirdPartyOutput
    DisableStageTransitionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    DisableStageTransitionInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    DisableStageTransitionInput.add_member(:transition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StageTransitionType, name: "transitionType", traits: {"smithy.api#required" => {}}))
    DisableStageTransitionInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DisabledReason, name: "reason", traits: {"smithy.api#required" => {}}))
    DisableStageTransitionInput.type = Types::DisableStageTransitionInput
    DuplicatedStopRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DuplicatedStopRequestException.type = Types::DuplicatedStopRequestException
    EnableStageTransitionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    EnableStageTransitionInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    EnableStageTransitionInput.add_member(:transition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StageTransitionType, name: "transitionType", traits: {"smithy.api#required" => {}}))
    EnableStageTransitionInput.type = Types::EnableStageTransitionInput
    EncryptionKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyId, name: "id", traits: {"smithy.api#required" => {}}))
    EncryptionKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyType, name: "type", traits: {"smithy.api#required" => {}}))
    EncryptionKey.type = Types::EncryptionKey
    EncryptionKeyType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    EnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableName, name: "name", traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableValue, name: "value", traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableType, name: "type"))
    EnvironmentVariable.type = Types::EnvironmentVariable
    EnvironmentVariableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariable, name: "member"))
    EnvironmentVariableType.add_member(:plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    EnvironmentVariableType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ErrorDetails.type = Types::ErrorDetails
    ExecutionDetails.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary, name: "summary"))
    ExecutionDetails.add_member(:external_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, name: "externalExecutionId"))
    ExecutionDetails.add_member(:percent_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "percentComplete"))
    ExecutionDetails.type = Types::ExecutionDetails
    ExecutionMode.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    ExecutionMode.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERSEDED", traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    ExecutionMode.add_member(:parallel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARALLEL", traits: {"smithy.api#enumValue" => "PARALLEL"}))
    ExecutionTrigger.add_member(:trigger_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerType, name: "triggerType"))
    ExecutionTrigger.add_member(:trigger_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerDetail, name: "triggerDetail"))
    ExecutionTrigger.type = Types::ExecutionTrigger
    ExecutionType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ExecutionType.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    ExecutorConfiguration.add_member(:lambda_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaExecutorConfiguration, name: "lambdaExecutorConfiguration"))
    ExecutorConfiguration.add_member(:job_worker_executor_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JobWorkerExecutorConfiguration, name: "jobWorkerExecutorConfiguration"))
    ExecutorConfiguration.type = Types::ExecutorConfiguration
    ExecutorType.add_member(:job_worker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JobWorker", traits: {"smithy.api#enumValue" => "JobWorker"}))
    ExecutorType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lambda", traits: {"smithy.api#enumValue" => "Lambda"}))
    FailureConditions.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, name: "result"))
    FailureConditions.add_member(:retry_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryConfiguration, name: "retryConfiguration"))
    FailureConditions.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionList, name: "conditions"))
    FailureConditions.type = Types::FailureConditions
    FailureDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureType, name: "type", traits: {"smithy.api#required" => {}}))
    FailureDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message", traits: {"smithy.api#required" => {}}))
    FailureDetails.add_member(:external_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, name: "externalExecutionId"))
    FailureDetails.type = Types::FailureDetails
    FailureType.add_member(:job_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JobFailed", traits: {"smithy.api#enumValue" => "JobFailed"}))
    FailureType.add_member(:configuration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConfigurationError", traits: {"smithy.api#enumValue" => "ConfigurationError"}))
    FailureType.add_member(:permission_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PermissionError", traits: {"smithy.api#enumValue" => "PermissionError"}))
    FailureType.add_member(:revision_out_of_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RevisionOutOfSync", traits: {"smithy.api#enumValue" => "RevisionOutOfSync"}))
    FailureType.add_member(:revision_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RevisionUnavailable", traits: {"smithy.api#enumValue" => "RevisionUnavailable"}))
    FailureType.add_member(:system_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SystemUnavailable", traits: {"smithy.api#enumValue" => "SystemUnavailable"}))
    FilePathList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, name: "member"))
    GetActionTypeInput.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    GetActionTypeInput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeOwner, name: "owner", traits: {"smithy.api#required" => {}}))
    GetActionTypeInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    GetActionTypeInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    GetActionTypeInput.type = Types::GetActionTypeInput
    GetActionTypeOutput.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeDeclaration, name: "actionType"))
    GetActionTypeOutput.type = Types::GetActionTypeOutput
    GetJobDetailsInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    GetJobDetailsInput.type = Types::GetJobDetailsInput
    GetJobDetailsOutput.add_member(:job_details, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetails, name: "jobDetails"))
    GetJobDetailsOutput.type = Types::GetJobDetailsOutput
    GetPipelineExecutionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    GetPipelineExecutionInput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    GetPipelineExecutionInput.type = Types::GetPipelineExecutionInput
    GetPipelineExecutionOutput.add_member(:pipeline_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecution, name: "pipelineExecution"))
    GetPipelineExecutionOutput.type = Types::GetPipelineExecutionOutput
    GetPipelineInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name", traits: {"smithy.api#required" => {}}))
    GetPipelineInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "version"))
    GetPipelineInput.type = Types::GetPipelineInput
    GetPipelineOutput.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDeclaration, name: "pipeline"))
    GetPipelineOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineMetadata, name: "metadata"))
    GetPipelineOutput.type = Types::GetPipelineOutput
    GetPipelineStateInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name", traits: {"smithy.api#required" => {}}))
    GetPipelineStateInput.type = Types::GetPipelineStateInput
    GetPipelineStateOutput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName"))
    GetPipelineStateOutput.add_member(:pipeline_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "pipelineVersion"))
    GetPipelineStateOutput.add_member(:stage_states, ::Smithy::Schema::Shapes::MemberShape.new(target: StageStateList, name: "stageStates"))
    GetPipelineStateOutput.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    GetPipelineStateOutput.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updated"))
    GetPipelineStateOutput.type = Types::GetPipelineStateOutput
    GetThirdPartyJobDetailsInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    GetThirdPartyJobDetailsInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    GetThirdPartyJobDetailsInput.type = Types::GetThirdPartyJobDetailsInput
    GetThirdPartyJobDetailsOutput.add_member(:job_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobDetails, name: "jobDetails"))
    GetThirdPartyJobDetailsOutput.type = Types::GetThirdPartyJobDetailsOutput
    GitBranchFilterCriteria.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: GitBranchPatternList, name: "includes"))
    GitBranchFilterCriteria.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: GitBranchPatternList, name: "excludes"))
    GitBranchFilterCriteria.type = Types::GitBranchFilterCriteria
    GitBranchPatternList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GitBranchNamePattern, name: "member"))
    GitConfiguration.add_member(:source_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "sourceActionName", traits: {"smithy.api#required" => {}}))
    GitConfiguration.add_member(:push, ::Smithy::Schema::Shapes::MemberShape.new(target: GitPushFilterList, name: "push"))
    GitConfiguration.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: GitPullRequestFilterList, name: "pullRequest"))
    GitConfiguration.type = Types::GitConfiguration
    GitFilePathFilterCriteria.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: GitFilePathPatternList, name: "includes"))
    GitFilePathFilterCriteria.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: GitFilePathPatternList, name: "excludes"))
    GitFilePathFilterCriteria.type = Types::GitFilePathFilterCriteria
    GitFilePathPatternList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GitFilePathPattern, name: "member"))
    GitPullRequestEventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    GitPullRequestEventType.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    GitPullRequestEventType.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    GitPullRequestEventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GitPullRequestEventType, name: "member"))
    GitPullRequestFilter.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: GitPullRequestEventTypeList, name: "events"))
    GitPullRequestFilter.add_member(:branches, ::Smithy::Schema::Shapes::MemberShape.new(target: GitBranchFilterCriteria, name: "branches"))
    GitPullRequestFilter.add_member(:file_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: GitFilePathFilterCriteria, name: "filePaths"))
    GitPullRequestFilter.type = Types::GitPullRequestFilter
    GitPullRequestFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GitPullRequestFilter, name: "member"))
    GitPushFilter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: GitTagFilterCriteria, name: "tags"))
    GitPushFilter.add_member(:branches, ::Smithy::Schema::Shapes::MemberShape.new(target: GitBranchFilterCriteria, name: "branches"))
    GitPushFilter.add_member(:file_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: GitFilePathFilterCriteria, name: "filePaths"))
    GitPushFilter.type = Types::GitPushFilter
    GitPushFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GitPushFilter, name: "member"))
    GitTagFilterCriteria.add_member(:includes, ::Smithy::Schema::Shapes::MemberShape.new(target: GitTagPatternList, name: "includes"))
    GitTagFilterCriteria.add_member(:excludes, ::Smithy::Schema::Shapes::MemberShape.new(target: GitTagPatternList, name: "excludes"))
    GitTagFilterCriteria.type = Types::GitTagFilterCriteria
    GitTagPatternList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GitTagNamePattern, name: "member"))
    InputArtifact.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactName, name: "name", traits: {"smithy.api#required" => {}}))
    InputArtifact.type = Types::InputArtifact
    InputArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputArtifact, name: "member"))
    InvalidActionDeclarationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidActionDeclarationException.type = Types::InvalidActionDeclarationException
    InvalidApprovalTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalTokenException.type = Types::InvalidApprovalTokenException
    InvalidArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidArnException.type = Types::InvalidArnException
    InvalidBlockerDeclarationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidBlockerDeclarationException.type = Types::InvalidBlockerDeclarationException
    InvalidClientTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidClientTokenException.type = Types::InvalidClientTokenException
    InvalidJobException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidJobException.type = Types::InvalidJobException
    InvalidJobStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidJobStateException.type = Types::InvalidJobStateException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidNonceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidNonceException.type = Types::InvalidNonceException
    InvalidStageDeclarationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidStageDeclarationException.type = Types::InvalidStageDeclarationException
    InvalidStructureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidStructureException.type = Types::InvalidStructureException
    InvalidTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTagsException.type = Types::InvalidTagsException
    InvalidWebhookAuthenticationParametersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidWebhookAuthenticationParametersException.type = Types::InvalidWebhookAuthenticationParametersException
    InvalidWebhookFilterPatternException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidWebhookFilterPatternException.type = Types::InvalidWebhookFilterPatternException
    Job.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "id"))
    Job.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobData, name: "data"))
    Job.add_member(:nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: Nonce, name: "nonce"))
    Job.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    Job.type = Types::Job
    JobData.add_member(:action_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "actionTypeId"))
    JobData.add_member(:action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfiguration, name: "actionConfiguration"))
    JobData.add_member(:pipeline_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineContext, name: "pipelineContext"))
    JobData.add_member(:input_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactList, name: "inputArtifacts"))
    JobData.add_member(:output_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactList, name: "outputArtifacts"))
    JobData.add_member(:artifact_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSSessionCredentials, name: "artifactCredentials"))
    JobData.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "continuationToken"))
    JobData.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "encryptionKey"))
    JobData.type = Types::JobData
    JobDetails.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "id"))
    JobDetails.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: JobData, name: "data"))
    JobDetails.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    JobDetails.type = Types::JobDetails
    JobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, name: "member"))
    JobNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    JobNotFoundException.type = Types::JobNotFoundException
    JobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Created", traits: {"smithy.api#enumValue" => "Created"}))
    JobStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Queued", traits: {"smithy.api#enumValue" => "Queued"}))
    JobStatus.add_member(:dispatched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Dispatched", traits: {"smithy.api#enumValue" => "Dispatched"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    JobStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TimedOut", traits: {"smithy.api#enumValue" => "TimedOut"}))
    JobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    JobWorkerExecutorConfiguration.add_member(:polling_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: PollingAccountList, name: "pollingAccounts"))
    JobWorkerExecutorConfiguration.add_member(:polling_service_principals, ::Smithy::Schema::Shapes::MemberShape.new(target: PollingServicePrincipalList, name: "pollingServicePrincipals"))
    JobWorkerExecutorConfiguration.type = Types::JobWorkerExecutorConfiguration
    LambdaExecutorConfiguration.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionArn, name: "lambdaFunctionArn", traits: {"smithy.api#required" => {}}))
    LambdaExecutorConfiguration.type = Types::LambdaExecutorConfiguration
    LatestInPipelineExecutionFilter.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    LatestInPipelineExecutionFilter.add_member(:start_time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTimeRange, name: "startTimeRange", traits: {"smithy.api#required" => {}}))
    LatestInPipelineExecutionFilter.type = Types::LatestInPipelineExecutionFilter
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListActionExecutionsInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    ListActionExecutionsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionFilter, name: "filter"))
    ListActionExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListActionExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActionExecutionsInput.type = Types::ListActionExecutionsInput
    ListActionExecutionsOutput.add_member(:action_execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionDetailList, name: "actionExecutionDetails"))
    ListActionExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActionExecutionsOutput.type = Types::ListActionExecutionsOutput
    ListActionTypesInput.add_member(:action_owner_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionOwner, name: "actionOwnerFilter"))
    ListActionTypesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActionTypesInput.add_member(:region_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "regionFilter"))
    ListActionTypesInput.type = Types::ListActionTypesInput
    ListActionTypesOutput.add_member(:action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeList, name: "actionTypes", traits: {"smithy.api#required" => {}}))
    ListActionTypesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActionTypesOutput.type = Types::ListActionTypesOutput
    ListDeployActionExecutionTargetsInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName"))
    ListDeployActionExecutionTargetsInput.add_member(:action_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionExecutionId, name: "actionExecutionId", traits: {"smithy.api#required" => {}}))
    ListDeployActionExecutionTargetsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilterList, name: "filters"))
    ListDeployActionExecutionTargetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDeployActionExecutionTargetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeployActionExecutionTargetsInput.type = Types::ListDeployActionExecutionTargetsInput
    ListDeployActionExecutionTargetsOutput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: DeployActionExecutionTargetList, name: "targets"))
    ListDeployActionExecutionTargetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDeployActionExecutionTargetsOutput.type = Types::ListDeployActionExecutionTargetsOutput
    ListPipelineExecutionsInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    ListPipelineExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPipelineExecutionsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionFilter, name: "filter"))
    ListPipelineExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPipelineExecutionsInput.type = Types::ListPipelineExecutionsInput
    ListPipelineExecutionsOutput.add_member(:pipeline_execution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionSummaryList, name: "pipelineExecutionSummaries"))
    ListPipelineExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPipelineExecutionsOutput.type = Types::ListPipelineExecutionsOutput
    ListPipelinesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPipelinesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPipelines, name: "maxResults"))
    ListPipelinesInput.type = Types::ListPipelinesInput
    ListPipelinesOutput.add_member(:pipelines, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineList, name: "pipelines"))
    ListPipelinesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPipelinesOutput.type = Types::ListPipelinesOutput
    ListRuleExecutionsInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    ListRuleExecutionsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionFilter, name: "filter"))
    ListRuleExecutionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListRuleExecutionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRuleExecutionsInput.type = Types::ListRuleExecutionsInput
    ListRuleExecutionsOutput.add_member(:rule_execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionDetailList, name: "ruleExecutionDetails"))
    ListRuleExecutionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRuleExecutionsOutput.type = Types::ListRuleExecutionsOutput
    ListRuleTypesInput.add_member(:rule_owner_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOwner, name: "ruleOwnerFilter"))
    ListRuleTypesInput.add_member(:region_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "regionFilter"))
    ListRuleTypesInput.type = Types::ListRuleTypesInput
    ListRuleTypesOutput.add_member(:rule_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeList, name: "ruleTypes", traits: {"smithy.api#required" => {}}))
    ListRuleTypesOutput.type = Types::ListRuleTypesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWebhookItem.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    ListWebhookItem.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookUrl, name: "url", traits: {"smithy.api#required" => {}}))
    ListWebhookItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookErrorMessage, name: "errorMessage"))
    ListWebhookItem.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookErrorCode, name: "errorCode"))
    ListWebhookItem.add_member(:last_triggered, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookLastTriggered, name: "lastTriggered"))
    ListWebhookItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookArn, name: "arn"))
    ListWebhookItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListWebhookItem.type = Types::ListWebhookItem
    ListWebhooksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWebhooksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListWebhooksInput.type = Types::ListWebhooksInput
    ListWebhooksOutput.add_member(:webhooks, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookList, name: "webhooks"))
    ListWebhooksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListWebhooksOutput.type = Types::ListWebhooksOutput
    NotLatestPipelineExecutionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    NotLatestPipelineExecutionException.type = Types::NotLatestPipelineExecutionException
    OutputArtifact.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactName, name: "name", traits: {"smithy.api#required" => {}}))
    OutputArtifact.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePathList, name: "files"))
    OutputArtifact.type = Types::OutputArtifact
    OutputArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputArtifact, name: "member"))
    OutputVariableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputVariable, name: "member"))
    OutputVariablesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputVariablesKey, name: "key"))
    OutputVariablesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputVariablesValue, name: "value"))
    OutputVariablesSizeExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    OutputVariablesSizeExceededException.type = Types::OutputVariablesSizeExceededException
    OverrideStageConditionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    OverrideStageConditionInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    OverrideStageConditionInput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    OverrideStageConditionInput.add_member(:condition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionType, name: "conditionType", traits: {"smithy.api#required" => {}}))
    OverrideStageConditionInput.type = Types::OverrideStageConditionInput
    PipelineContext.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName"))
    PipelineContext.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: StageContext, name: "stage"))
    PipelineContext.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionContext, name: "action"))
    PipelineContext.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "pipelineArn"))
    PipelineContext.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    PipelineContext.type = Types::PipelineContext
    PipelineDeclaration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name", traits: {"smithy.api#required" => {}}))
    PipelineDeclaration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    PipelineDeclaration.add_member(:artifact_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactStore, name: "artifactStore"))
    PipelineDeclaration.add_member(:artifact_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactStoreMap, name: "artifactStores"))
    PipelineDeclaration.add_member(:stages, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStageDeclarationList, name: "stages", traits: {"smithy.api#required" => {}}))
    PipelineDeclaration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "version"))
    PipelineDeclaration.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "executionMode"))
    PipelineDeclaration.add_member(:pipeline_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineType, name: "pipelineType"))
    PipelineDeclaration.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableDeclarationList, name: "variables"))
    PipelineDeclaration.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineTriggerDeclarationList, name: "triggers"))
    PipelineDeclaration.type = Types::PipelineDeclaration
    PipelineExecution.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName"))
    PipelineExecution.add_member(:pipeline_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "pipelineVersion"))
    PipelineExecution.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    PipelineExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionStatus, name: "status"))
    PipelineExecution.add_member(:status_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionStatusSummary, name: "statusSummary"))
    PipelineExecution.add_member(:artifact_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactRevisionList, name: "artifactRevisions"))
    PipelineExecution.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedPipelineVariableList, name: "variables"))
    PipelineExecution.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTrigger, name: "trigger"))
    PipelineExecution.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "executionMode"))
    PipelineExecution.add_member(:execution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionType, name: "executionType"))
    PipelineExecution.add_member(:rollback_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineRollbackMetadata, name: "rollbackMetadata"))
    PipelineExecution.type = Types::PipelineExecution
    PipelineExecutionFilter.add_member(:succeeded_in_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: SucceededInStageFilter, name: "succeededInStage"))
    PipelineExecutionFilter.type = Types::PipelineExecutionFilter
    PipelineExecutionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PipelineExecutionNotFoundException.type = Types::PipelineExecutionNotFoundException
    PipelineExecutionNotStoppableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PipelineExecutionNotStoppableException.type = Types::PipelineExecutionNotStoppableException
    PipelineExecutionOutdatedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PipelineExecutionOutdatedException.type = Types::PipelineExecutionOutdatedException
    PipelineExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    PipelineExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    PipelineExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    PipelineExecutionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    PipelineExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    PipelineExecutionStatus.add_member(:superseded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Superseded", traits: {"smithy.api#enumValue" => "Superseded"}))
    PipelineExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    PipelineExecutionSummary.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    PipelineExecutionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionStatus, name: "status"))
    PipelineExecutionSummary.add_member(:status_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionStatusSummary, name: "statusSummary"))
    PipelineExecutionSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    PipelineExecutionSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    PipelineExecutionSummary.add_member(:source_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRevisionList, name: "sourceRevisions"))
    PipelineExecutionSummary.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionTrigger, name: "trigger"))
    PipelineExecutionSummary.add_member(:stop_trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: StopExecutionTrigger, name: "stopTrigger"))
    PipelineExecutionSummary.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "executionMode"))
    PipelineExecutionSummary.add_member(:execution_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionType, name: "executionType"))
    PipelineExecutionSummary.add_member(:rollback_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineRollbackMetadata, name: "rollbackMetadata"))
    PipelineExecutionSummary.type = Types::PipelineExecutionSummary
    PipelineExecutionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionSummary, name: "member"))
    PipelineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineSummary, name: "member"))
    PipelineMetadata.add_member(:pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineArn, name: "pipelineArn"))
    PipelineMetadata.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    PipelineMetadata.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updated"))
    PipelineMetadata.add_member(:polling_disabled_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "pollingDisabledAt"))
    PipelineMetadata.type = Types::PipelineMetadata
    PipelineNameInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PipelineNameInUseException.type = Types::PipelineNameInUseException
    PipelineNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PipelineNotFoundException.type = Types::PipelineNotFoundException
    PipelineRollbackMetadata.add_member(:rollback_target_pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "rollbackTargetPipelineExecutionId"))
    PipelineRollbackMetadata.type = Types::PipelineRollbackMetadata
    PipelineStageDeclarationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StageDeclaration, name: "member"))
    PipelineSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name"))
    PipelineSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "version"))
    PipelineSummary.add_member(:pipeline_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineType, name: "pipelineType"))
    PipelineSummary.add_member(:execution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionMode, name: "executionMode"))
    PipelineSummary.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    PipelineSummary.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updated"))
    PipelineSummary.type = Types::PipelineSummary
    PipelineTriggerDeclaration.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineTriggerProviderType, name: "providerType", traits: {"smithy.api#required" => {}}))
    PipelineTriggerDeclaration.add_member(:git_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GitConfiguration, name: "gitConfiguration", traits: {"smithy.api#required" => {}}))
    PipelineTriggerDeclaration.type = Types::PipelineTriggerDeclaration
    PipelineTriggerDeclarationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineTriggerDeclaration, name: "member"))
    PipelineTriggerProviderType.add_member(:code_star_source_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeStarSourceConnection", traits: {"smithy.api#enumValue" => "CodeStarSourceConnection"}))
    PipelineType.add_member(:v1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V1", traits: {"smithy.api#enumValue" => "V1"}))
    PipelineType.add_member(:v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V2", traits: {"smithy.api#enumValue" => "V2"}))
    PipelineVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableName, name: "name", traits: {"smithy.api#required" => {}}))
    PipelineVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableValue, name: "value", traits: {"smithy.api#required" => {}}))
    PipelineVariable.type = Types::PipelineVariable
    PipelineVariableDeclaration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableName, name: "name", traits: {"smithy.api#required" => {}}))
    PipelineVariableDeclaration.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableValue, name: "defaultValue"))
    PipelineVariableDeclaration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableDescription, name: "description"))
    PipelineVariableDeclaration.type = Types::PipelineVariableDeclaration
    PipelineVariableDeclarationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableDeclaration, name: "member"))
    PipelineVariableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariable, name: "member"))
    PipelineVersionNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PipelineVersionNotFoundException.type = Types::PipelineVersionNotFoundException
    PollForJobsInput.add_member(:action_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "actionTypeId", traits: {"smithy.api#required" => {}}))
    PollForJobsInput.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize"))
    PollForJobsInput.add_member(:query_param, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParamMap, name: "queryParam"))
    PollForJobsInput.type = Types::PollForJobsInput
    PollForJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobList, name: "jobs"))
    PollForJobsOutput.type = Types::PollForJobsOutput
    PollForThirdPartyJobsInput.add_member(:action_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "actionTypeId", traits: {"smithy.api#required" => {}}))
    PollForThirdPartyJobsInput.add_member(:max_batch_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBatchSize, name: "maxBatchSize"))
    PollForThirdPartyJobsInput.type = Types::PollForThirdPartyJobsInput
    PollForThirdPartyJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobList, name: "jobs"))
    PollForThirdPartyJobsOutput.type = Types::PollForThirdPartyJobsOutput
    PollingAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    PollingServicePrincipalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "member"))
    PutActionRevisionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    PutActionRevisionInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    PutActionRevisionInput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName", traits: {"smithy.api#required" => {}}))
    PutActionRevisionInput.add_member(:action_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionRevision, name: "actionRevision", traits: {"smithy.api#required" => {}}))
    PutActionRevisionInput.type = Types::PutActionRevisionInput
    PutActionRevisionOutput.add_member(:new_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "newRevision", traits: {"smithy.api#default" => false}))
    PutActionRevisionOutput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    PutActionRevisionOutput.type = Types::PutActionRevisionOutput
    PutApprovalResultInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName", traits: {"smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalResult, name: "result", traits: {"smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalToken, name: "token", traits: {"smithy.api#required" => {}}))
    PutApprovalResultInput.type = Types::PutApprovalResultInput
    PutApprovalResultOutput.add_member(:approved_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "approvedAt"))
    PutApprovalResultOutput.type = Types::PutApprovalResultOutput
    PutJobFailureResultInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    PutJobFailureResultInput.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDetails, name: "failureDetails", traits: {"smithy.api#required" => {}}))
    PutJobFailureResultInput.type = Types::PutJobFailureResultInput
    PutJobSuccessResultInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    PutJobSuccessResultInput.add_member(:current_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentRevision, name: "currentRevision"))
    PutJobSuccessResultInput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "continuationToken"))
    PutJobSuccessResultInput.add_member(:execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetails, name: "executionDetails"))
    PutJobSuccessResultInput.add_member(:output_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputVariablesMap, name: "outputVariables"))
    PutJobSuccessResultInput.type = Types::PutJobSuccessResultInput
    PutThirdPartyJobFailureResultInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    PutThirdPartyJobFailureResultInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    PutThirdPartyJobFailureResultInput.add_member(:failure_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDetails, name: "failureDetails", traits: {"smithy.api#required" => {}}))
    PutThirdPartyJobFailureResultInput.type = Types::PutThirdPartyJobFailureResultInput
    PutThirdPartyJobSuccessResultInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    PutThirdPartyJobSuccessResultInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#required" => {}}))
    PutThirdPartyJobSuccessResultInput.add_member(:current_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentRevision, name: "currentRevision"))
    PutThirdPartyJobSuccessResultInput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "continuationToken"))
    PutThirdPartyJobSuccessResultInput.add_member(:execution_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionDetails, name: "executionDetails"))
    PutThirdPartyJobSuccessResultInput.type = Types::PutThirdPartyJobSuccessResultInput
    PutWebhookInput.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookDefinition, name: "webhook", traits: {"smithy.api#required" => {}}))
    PutWebhookInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    PutWebhookInput.type = Types::PutWebhookInput
    PutWebhookOutput.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWebhookItem, name: "webhook"))
    PutWebhookOutput.type = Types::PutWebhookOutput
    QueryParamMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationKey, name: "key"))
    QueryParamMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfigurationQueryableValue, name: "value"))
    RegisterWebhookWithThirdPartyInput.add_member(:webhook_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookName, name: "webhookName"))
    RegisterWebhookWithThirdPartyInput.type = Types::RegisterWebhookWithThirdPartyInput
    RegisterWebhookWithThirdPartyOutput.type = Types::RegisterWebhookWithThirdPartyOutput
    RequestFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RequestFailedException.type = Types::RequestFailedException
    ResolvedActionConfigurationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ResolvedActionConfigurationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ResolvedPipelineVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ResolvedPipelineVariable.add_member(:resolved_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resolvedValue"))
    ResolvedPipelineVariable.type = Types::ResolvedPipelineVariable
    ResolvedPipelineVariableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedPipelineVariable, name: "member"))
    ResolvedRuleConfigurationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ResolvedRuleConfigurationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Result.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    Result.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    Result.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY"}))
    Result.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    RetryConfiguration.add_member(:retry_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StageRetryMode, name: "retryMode"))
    RetryConfiguration.type = Types::RetryConfiguration
    RetryStageExecutionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    RetryStageExecutionInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    RetryStageExecutionInput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    RetryStageExecutionInput.add_member(:retry_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StageRetryMode, name: "retryMode", traits: {"smithy.api#required" => {}}))
    RetryStageExecutionInput.type = Types::RetryStageExecutionInput
    RetryStageExecutionOutput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    RetryStageExecutionOutput.type = Types::RetryStageExecutionOutput
    RetryStageMetadata.add_member(:auto_stage_retry_attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAttempt, name: "autoStageRetryAttempt"))
    RetryStageMetadata.add_member(:manual_stage_retry_attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAttempt, name: "manualStageRetryAttempt"))
    RetryStageMetadata.add_member(:latest_retry_trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryTrigger, name: "latestRetryTrigger"))
    RetryStageMetadata.type = Types::RetryStageMetadata
    RetryTrigger.add_member(:automated_stage_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutomatedStageRetry", traits: {"smithy.api#enumValue" => "AutomatedStageRetry"}))
    RetryTrigger.add_member(:manual_stage_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManualStageRetry", traits: {"smithy.api#enumValue" => "ManualStageRetry"}))
    RollbackStageInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    RollbackStageInput.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName", traits: {"smithy.api#required" => {}}))
    RollbackStageInput.add_member(:target_pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "targetPipelineExecutionId", traits: {"smithy.api#required" => {}}))
    RollbackStageInput.type = Types::RollbackStageInput
    RollbackStageOutput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    RollbackStageOutput.type = Types::RollbackStageOutput
    RuleCategory.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rule", traits: {"smithy.api#enumValue" => "Rule"}))
    RuleConfigurationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationKey, name: "key"))
    RuleConfigurationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationValue, name: "value"))
    RuleConfigurationProperty.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationKey, name: "name", traits: {"smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "required", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "key", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "secret", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:queryable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "queryable", traits: {"smithy.api#default" => false}))
    RuleConfigurationProperty.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RuleConfigurationProperty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationPropertyType, name: "type"))
    RuleConfigurationProperty.type = Types::RuleConfigurationProperty
    RuleConfigurationPropertyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationProperty, name: "member"))
    RuleConfigurationPropertyType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "String", traits: {"smithy.api#enumValue" => "String"}))
    RuleConfigurationPropertyType.add_member(:number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Number", traits: {"smithy.api#enumValue" => "Number"}))
    RuleConfigurationPropertyType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Boolean", traits: {"smithy.api#enumValue" => "Boolean"}))
    RuleDeclaration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "name", traits: {"smithy.api#required" => {}}))
    RuleDeclaration.add_member(:rule_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeId, name: "ruleTypeId", traits: {"smithy.api#required" => {}}))
    RuleDeclaration.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationMap, name: "configuration"))
    RuleDeclaration.add_member(:commands, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandList, name: "commands"))
    RuleDeclaration.add_member(:input_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: InputArtifactList, name: "inputArtifacts"))
    RuleDeclaration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    RuleDeclaration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "region"))
    RuleDeclaration.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTimeout, name: "timeoutInMinutes"))
    RuleDeclaration.type = Types::RuleDeclaration
    RuleDeclarationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleDeclaration, name: "member"))
    RuleExecution.add_member(:rule_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionId, name: "ruleExecutionId"))
    RuleExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionStatus, name: "status"))
    RuleExecution.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary, name: "summary"))
    RuleExecution.add_member(:last_status_change, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastStatusChange"))
    RuleExecution.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionToken, name: "token"))
    RuleExecution.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedBy, name: "lastUpdatedBy"))
    RuleExecution.add_member(:external_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionId, name: "externalExecutionId"))
    RuleExecution.add_member(:external_execution_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "externalExecutionUrl"))
    RuleExecution.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "errorDetails"))
    RuleExecution.type = Types::RuleExecution
    RuleExecutionDetail.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    RuleExecutionDetail.add_member(:rule_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionId, name: "ruleExecutionId"))
    RuleExecutionDetail.add_member(:pipeline_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVersion, name: "pipelineVersion"))
    RuleExecutionDetail.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName"))
    RuleExecutionDetail.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName"))
    RuleExecutionDetail.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    RuleExecutionDetail.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdateTime"))
    RuleExecutionDetail.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedBy, name: "updatedBy"))
    RuleExecutionDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionStatus, name: "status"))
    RuleExecutionDetail.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionInput, name: "input"))
    RuleExecutionDetail.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionOutput, name: "output"))
    RuleExecutionDetail.type = Types::RuleExecutionDetail
    RuleExecutionDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionDetail, name: "member"))
    RuleExecutionFilter.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    RuleExecutionFilter.add_member(:latest_in_pipeline_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestInPipelineExecutionFilter, name: "latestInPipelineExecution"))
    RuleExecutionFilter.type = Types::RuleExecutionFilter
    RuleExecutionInput.add_member(:rule_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeId, name: "ruleTypeId"))
    RuleExecutionInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationMap, name: "configuration"))
    RuleExecutionInput.add_member(:resolved_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedRuleConfigurationMap, name: "resolvedConfiguration"))
    RuleExecutionInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    RuleExecutionInput.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegionName, name: "region"))
    RuleExecutionInput.add_member(:input_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetailList, name: "inputArtifacts"))
    RuleExecutionInput.type = Types::RuleExecutionInput
    RuleExecutionOutput.add_member(:execution_result, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecutionResult, name: "executionResult"))
    RuleExecutionOutput.type = Types::RuleExecutionOutput
    RuleExecutionResult.add_member(:external_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalExecutionId, name: "externalExecutionId"))
    RuleExecutionResult.add_member(:external_execution_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalExecutionSummary, name: "externalExecutionSummary"))
    RuleExecutionResult.add_member(:external_execution_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "externalExecutionUrl"))
    RuleExecutionResult.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "errorDetails"))
    RuleExecutionResult.type = Types::RuleExecutionResult
    RuleExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    RuleExecutionStatus.add_member(:abandoned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Abandoned", traits: {"smithy.api#enumValue" => "Abandoned"}))
    RuleExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    RuleExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    RuleOwner.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    RuleRevision.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revisionId", traits: {"smithy.api#required" => {}}))
    RuleRevision.add_member(:revision_change_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionChangeIdentifier, name: "revisionChangeId", traits: {"smithy.api#required" => {}}))
    RuleRevision.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created", traits: {"smithy.api#required" => {}}))
    RuleRevision.type = Types::RuleRevision
    RuleState.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, name: "ruleName"))
    RuleState.add_member(:current_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleRevision, name: "currentRevision"))
    RuleState.add_member(:latest_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleExecution, name: "latestExecution"))
    RuleState.add_member(:entity_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "entityUrl"))
    RuleState.add_member(:revision_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "revisionUrl"))
    RuleState.type = Types::RuleState
    RuleStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleState, name: "member"))
    RuleType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeId, name: "id", traits: {"smithy.api#required" => {}}))
    RuleType.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTypeSettings, name: "settings"))
    RuleType.add_member(:rule_configuration_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleConfigurationPropertyList, name: "ruleConfigurationProperties"))
    RuleType.add_member(:input_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "inputArtifactDetails", traits: {"smithy.api#required" => {}}))
    RuleType.type = Types::RuleType
    RuleTypeId.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleCategory, name: "category", traits: {"smithy.api#required" => {}}))
    RuleTypeId.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleOwner, name: "owner"))
    RuleTypeId.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleProvider, name: "provider", traits: {"smithy.api#required" => {}}))
    RuleTypeId.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    RuleTypeId.type = Types::RuleTypeId
    RuleTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleType, name: "member"))
    RuleTypeSettings.add_member(:third_party_configuration_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "thirdPartyConfigurationUrl"))
    RuleTypeSettings.add_member(:entity_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "entityUrlTemplate"))
    RuleTypeSettings.add_member(:execution_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "executionUrlTemplate"))
    RuleTypeSettings.add_member(:revision_url_template, ::Smithy::Schema::Shapes::MemberShape.new(target: UrlTemplate, name: "revisionUrlTemplate"))
    RuleTypeSettings.type = Types::RuleTypeSettings
    S3ArtifactLocation.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3ArtifactLocation.add_member(:object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "objectKey", traits: {"smithy.api#required" => {}}))
    S3ArtifactLocation.type = Types::S3ArtifactLocation
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "bucket"))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "key"))
    S3Location.type = Types::S3Location
    SourceRevision.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName", traits: {"smithy.api#required" => {}}))
    SourceRevision.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revisionId"))
    SourceRevision.add_member(:revision_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionSummary, name: "revisionSummary"))
    SourceRevision.add_member(:revision_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "revisionUrl"))
    SourceRevision.type = Types::SourceRevision
    SourceRevisionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRevision, name: "member"))
    SourceRevisionOverride.add_member(:action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "actionName", traits: {"smithy.api#required" => {}}))
    SourceRevisionOverride.add_member(:revision_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRevisionType, name: "revisionType", traits: {"smithy.api#required" => {}}))
    SourceRevisionOverride.add_member(:revision_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "revisionValue", traits: {"smithy.api#required" => {}}))
    SourceRevisionOverride.type = Types::SourceRevisionOverride
    SourceRevisionOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRevisionOverride, name: "member"))
    SourceRevisionType.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMIT_ID", traits: {"smithy.api#enumValue" => "COMMIT_ID"}))
    SourceRevisionType.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_DIGEST", traits: {"smithy.api#enumValue" => "IMAGE_DIGEST"}))
    SourceRevisionType.add_member(:s3_object_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_OBJECT_VERSION_ID", traits: {"smithy.api#enumValue" => "S3_OBJECT_VERSION_ID"}))
    SourceRevisionType.add_member(:s3_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_OBJECT_KEY", traits: {"smithy.api#enumValue" => "S3_OBJECT_KEY"}))
    StageActionDeclarationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionDeclaration, name: "member"))
    StageBlockerDeclarationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockerDeclaration, name: "member"))
    StageConditionState.add_member(:latest_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: StageConditionsExecution, name: "latestExecution"))
    StageConditionState.add_member(:condition_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionStateList, name: "conditionStates"))
    StageConditionState.type = Types::StageConditionState
    StageConditionsExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExecutionStatus, name: "status"))
    StageConditionsExecution.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummary, name: "summary"))
    StageConditionsExecution.type = Types::StageConditionsExecution
    StageContext.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "name"))
    StageContext.type = Types::StageContext
    StageDeclaration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "name", traits: {"smithy.api#required" => {}}))
    StageDeclaration.add_member(:blockers, ::Smithy::Schema::Shapes::MemberShape.new(target: StageBlockerDeclarationList, name: "blockers"))
    StageDeclaration.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: StageActionDeclarationList, name: "actions", traits: {"smithy.api#required" => {}}))
    StageDeclaration.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureConditions, name: "onFailure"))
    StageDeclaration.add_member(:on_success, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessConditions, name: "onSuccess"))
    StageDeclaration.add_member(:before_entry, ::Smithy::Schema::Shapes::MemberShape.new(target: BeforeEntryConditions, name: "beforeEntry"))
    StageDeclaration.type = Types::StageDeclaration
    StageExecution.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    StageExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StageExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StageExecution.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionType, name: "type"))
    StageExecution.type = Types::StageExecution
    StageExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StageExecution, name: "member"))
    StageExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    StageExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    StageExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    StageExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopped", traits: {"smithy.api#enumValue" => "Stopped"}))
    StageExecutionStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stopping", traits: {"smithy.api#enumValue" => "Stopping"}))
    StageExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    StageExecutionStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Skipped", traits: {"smithy.api#enumValue" => "Skipped"}))
    StageNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    StageNotFoundException.type = Types::StageNotFoundException
    StageNotRetryableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    StageNotRetryableException.type = Types::StageNotRetryableException
    StageRetryMode.add_member(:failed_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_ACTIONS", traits: {"smithy.api#enumValue" => "FAILED_ACTIONS"}))
    StageRetryMode.add_member(:all_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_ACTIONS", traits: {"smithy.api#enumValue" => "ALL_ACTIONS"}))
    StageState.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName"))
    StageState.add_member(:inbound_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: StageExecution, name: "inboundExecution"))
    StageState.add_member(:inbound_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: StageExecutionList, name: "inboundExecutions"))
    StageState.add_member(:inbound_transition_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionState, name: "inboundTransitionState"))
    StageState.add_member(:action_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionStateList, name: "actionStates"))
    StageState.add_member(:latest_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: StageExecution, name: "latestExecution"))
    StageState.add_member(:before_entry_condition_state, ::Smithy::Schema::Shapes::MemberShape.new(target: StageConditionState, name: "beforeEntryConditionState"))
    StageState.add_member(:on_success_condition_state, ::Smithy::Schema::Shapes::MemberShape.new(target: StageConditionState, name: "onSuccessConditionState"))
    StageState.add_member(:on_failure_condition_state, ::Smithy::Schema::Shapes::MemberShape.new(target: StageConditionState, name: "onFailureConditionState"))
    StageState.add_member(:retry_stage_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryStageMetadata, name: "retryStageMetadata"))
    StageState.type = Types::StageState
    StageStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StageState, name: "member"))
    StageTransitionType.add_member(:inbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inbound", traits: {"smithy.api#enumValue" => "Inbound"}))
    StageTransitionType.add_member(:outbound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Outbound", traits: {"smithy.api#enumValue" => "Outbound"}))
    StartPipelineExecutionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "name", traits: {"smithy.api#required" => {}}))
    StartPipelineExecutionInput.add_member(:variables, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineVariableList, name: "variables"))
    StartPipelineExecutionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartPipelineExecutionInput.add_member(:source_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRevisionOverrideList, name: "sourceRevisions"))
    StartPipelineExecutionInput.type = Types::StartPipelineExecutionInput
    StartPipelineExecutionOutput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    StartPipelineExecutionOutput.type = Types::StartPipelineExecutionOutput
    StartTimeRange.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Latest", traits: {"smithy.api#enumValue" => "Latest"}))
    StartTimeRange.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "All", traits: {"smithy.api#enumValue" => "All"}))
    StopExecutionTrigger.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StopPipelineExecutionReason, name: "reason"))
    StopExecutionTrigger.type = Types::StopExecutionTrigger
    StopPipelineExecutionInput.add_member(:pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "pipelineName", traits: {"smithy.api#required" => {}}))
    StopPipelineExecutionInput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId", traits: {"smithy.api#required" => {}}))
    StopPipelineExecutionInput.add_member(:abandon, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "abandon", traits: {"smithy.api#default" => false}))
    StopPipelineExecutionInput.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StopPipelineExecutionReason, name: "reason"))
    StopPipelineExecutionInput.type = Types::StopPipelineExecutionInput
    StopPipelineExecutionOutput.add_member(:pipeline_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionId, name: "pipelineExecutionId"))
    StopPipelineExecutionOutput.type = Types::StopPipelineExecutionOutput
    SucceededInStageFilter.add_member(:stage_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StageName, name: "stageName"))
    SucceededInStageFilter.type = Types::SucceededInStageFilter
    SuccessConditions.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionList, name: "conditions", traits: {"smithy.api#required" => {}}))
    SuccessConditions.type = Types::SuccessConditions
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilterName, name: "name"))
    TargetFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilterValueList, name: "values"))
    TargetFilter.type = Types::TargetFilter
    TargetFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilter, name: "member"))
    TargetFilterName.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_STATUS", traits: {"smithy.api#enumValue" => "TARGET_STATUS"}))
    TargetFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFilterValue, name: "member"))
    ThirdPartyJob.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId"))
    ThirdPartyJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ThirdPartyJob.type = Types::ThirdPartyJob
    ThirdPartyJobData.add_member(:action_type_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeId, name: "actionTypeId"))
    ThirdPartyJobData.add_member(:action_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionConfiguration, name: "actionConfiguration"))
    ThirdPartyJobData.add_member(:pipeline_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineContext, name: "pipelineContext"))
    ThirdPartyJobData.add_member(:input_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactList, name: "inputArtifacts"))
    ThirdPartyJobData.add_member(:output_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactList, name: "outputArtifacts"))
    ThirdPartyJobData.add_member(:artifact_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSSessionCredentials, name: "artifactCredentials"))
    ThirdPartyJobData.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "continuationToken"))
    ThirdPartyJobData.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKey, name: "encryptionKey"))
    ThirdPartyJobData.type = Types::ThirdPartyJobData
    ThirdPartyJobDetails.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobId, name: "id"))
    ThirdPartyJobDetails.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJobData, name: "data"))
    ThirdPartyJobDetails.add_member(:nonce, ::Smithy::Schema::Shapes::MemberShape.new(target: Nonce, name: "nonce"))
    ThirdPartyJobDetails.type = Types::ThirdPartyJobDetails
    ThirdPartyJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartyJob, name: "member"))
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    TransitionState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "enabled", traits: {"smithy.api#default" => false}))
    TransitionState.add_member(:last_changed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: LastChangedBy, name: "lastChangedBy"))
    TransitionState.add_member(:last_changed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: LastChangedAt, name: "lastChangedAt"))
    TransitionState.add_member(:disabled_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DisabledReason, name: "disabledReason"))
    TransitionState.type = Types::TransitionState
    TriggerType.add_member(:create_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreatePipeline", traits: {"smithy.api#enumValue" => "CreatePipeline"}))
    TriggerType.add_member(:start_pipeline_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StartPipelineExecution", traits: {"smithy.api#enumValue" => "StartPipelineExecution"}))
    TriggerType.add_member(:poll_for_source_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PollForSourceChanges", traits: {"smithy.api#enumValue" => "PollForSourceChanges"}))
    TriggerType.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Webhook", traits: {"smithy.api#enumValue" => "Webhook"}))
    TriggerType.add_member(:cloud_watch_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudWatchEvent", traits: {"smithy.api#enumValue" => "CloudWatchEvent"}))
    TriggerType.add_member(:put_action_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PutActionRevision", traits: {"smithy.api#enumValue" => "PutActionRevision"}))
    TriggerType.add_member(:webhook_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WebhookV2", traits: {"smithy.api#enumValue" => "WebhookV2"}))
    TriggerType.add_member(:manual_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManualRollback", traits: {"smithy.api#enumValue" => "ManualRollback"}))
    TriggerType.add_member(:automated_rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutomatedRollback", traits: {"smithy.api#enumValue" => "AutomatedRollback"}))
    UnableToRollbackStageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnableToRollbackStageException.type = Types::UnableToRollbackStageException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateActionTypeInput.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeDeclaration, name: "actionType", traits: {"smithy.api#required" => {}}))
    UpdateActionTypeInput.type = Types::UpdateActionTypeInput
    UpdatePipelineInput.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDeclaration, name: "pipeline", traits: {"smithy.api#required" => {}}))
    UpdatePipelineInput.type = Types::UpdatePipelineInput
    UpdatePipelineOutput.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineDeclaration, name: "pipeline"))
    UpdatePipelineOutput.type = Types::UpdatePipelineOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ValidationException.type = Types::ValidationException
    WebhookAuthConfiguration.add_member(:allowed_ip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookAuthConfigurationAllowedIPRange, name: "AllowedIPRange"))
    WebhookAuthConfiguration.add_member(:secret_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookAuthConfigurationSecretToken, name: "SecretToken"))
    WebhookAuthConfiguration.type = Types::WebhookAuthConfiguration
    WebhookAuthenticationType.add_member(:github_hmac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_HMAC", traits: {"smithy.api#enumValue" => "GITHUB_HMAC"}))
    WebhookAuthenticationType.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    WebhookAuthenticationType.add_member(:unauthenticated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAUTHENTICATED", traits: {"smithy.api#enumValue" => "UNAUTHENTICATED"}))
    WebhookDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookName, name: "name", traits: {"smithy.api#required" => {}}))
    WebhookDefinition.add_member(:target_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineName, name: "targetPipeline", traits: {"smithy.api#required" => {}}))
    WebhookDefinition.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionName, name: "targetAction", traits: {"smithy.api#required" => {}}))
    WebhookDefinition.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookFilters, name: "filters", traits: {"smithy.api#required" => {}}))
    WebhookDefinition.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookAuthenticationType, name: "authentication", traits: {"smithy.api#required" => {}}))
    WebhookDefinition.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookAuthConfiguration, name: "authenticationConfiguration", traits: {"smithy.api#required" => {}}))
    WebhookDefinition.type = Types::WebhookDefinition
    WebhookFilterRule.add_member(:json_path, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonPath, name: "jsonPath", traits: {"smithy.api#required" => {}}))
    WebhookFilterRule.add_member(:match_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchEquals, name: "matchEquals"))
    WebhookFilterRule.type = Types::WebhookFilterRule
    WebhookFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookFilterRule, name: "member"))
    WebhookList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListWebhookItem, name: "member"))
    WebhookNotFoundException.type = Types::WebhookNotFoundException

    CodePipeline20150709 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codepipeline#CodePipeline_20150709"
      service.name = "CodePipeline20150709"
      service.version = "2015-07-09"
      service.traits = {"aws.api#service" => {"sdkId" => "CodePipeline", "arnNamespace" => "codepipeline", "cloudFormationName" => "CodePipeline", "cloudTrailEventSource" => "codepipeline.amazonaws.com", "endpointPrefix" => "codepipeline"}, "aws.auth#sigv4" => {"name" => "codepipeline"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodePipeline", "smithy.api#xmlNamespace" => {"uri" => "http://codepipeline.amazonaws.com/doc/2015-07-09/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://codepipeline-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codepipeline-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codepipeline.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codepipeline.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:acknowledge_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#AcknowledgeJob"
        operation.name = "AcknowledgeJob"
        operation.input = AcknowledgeJobInput
        operation.output = AcknowledgeJobOutput
        operation.errors << InvalidNonceException
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:acknowledge_third_party_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#AcknowledgeThirdPartyJob"
        operation.name = "AcknowledgeThirdPartyJob"
        operation.input = AcknowledgeThirdPartyJobInput
        operation.output = AcknowledgeThirdPartyJobOutput
        operation.errors << InvalidClientTokenException
        operation.errors << InvalidNonceException
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_custom_action_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#CreateCustomActionType"
        operation.name = "CreateCustomActionType"
        operation.input = CreateCustomActionTypeInput
        operation.output = CreateCustomActionTypeOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidTagsException
        operation.errors << LimitExceededException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = CreatePipelineInput
        operation.output = CreatePipelineOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidActionDeclarationException
        operation.errors << InvalidBlockerDeclarationException
        operation.errors << InvalidStageDeclarationException
        operation.errors << InvalidStructureException
        operation.errors << InvalidTagsException
        operation.errors << LimitExceededException
        operation.errors << PipelineNameInUseException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_action_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeleteCustomActionType"
        operation.name = "DeleteCustomActionType"
        operation.input = DeleteCustomActionTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = DeletePipelineInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentModificationException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeleteWebhook"
        operation.name = "DeleteWebhook"
        operation.input = DeleteWebhookInput
        operation.output = DeleteWebhookOutput
        operation.errors << ConcurrentModificationException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:deregister_webhook_with_third_party, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeregisterWebhookWithThirdParty"
        operation.name = "DeregisterWebhookWithThirdParty"
        operation.input = DeregisterWebhookWithThirdPartyInput
        operation.output = DeregisterWebhookWithThirdPartyOutput
        operation.errors << ValidationException
        operation.errors << WebhookNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disable_stage_transition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DisableStageTransition"
        operation.name = "DisableStageTransition"
        operation.input = DisableStageTransitionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:enable_stage_transition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#EnableStageTransition"
        operation.name = "EnableStageTransition"
        operation.input = EnableStageTransitionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_action_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetActionType"
        operation.name = "GetActionType"
        operation.input = GetActionTypeInput
        operation.output = GetActionTypeOutput
        operation.errors << ActionTypeNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_job_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetJobDetails"
        operation.name = "GetJobDetails"
        operation.input = GetJobDetailsInput
        operation.output = GetJobDetailsOutput
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetPipeline"
        operation.name = "GetPipeline"
        operation.input = GetPipelineInput
        operation.output = GetPipelineOutput
        operation.errors << PipelineNotFoundException
        operation.errors << PipelineVersionNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetPipelineFailure", "params" => {"name" => "fake-pipeline"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_pipeline_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetPipelineExecution"
        operation.name = "GetPipelineExecution"
        operation.input = GetPipelineExecutionInput
        operation.output = GetPipelineExecutionOutput
        operation.errors << PipelineExecutionNotFoundException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_pipeline_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetPipelineState"
        operation.name = "GetPipelineState"
        operation.input = GetPipelineStateInput
        operation.output = GetPipelineStateOutput
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_third_party_job_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetThirdPartyJobDetails"
        operation.name = "GetThirdPartyJobDetails"
        operation.input = GetThirdPartyJobDetailsInput
        operation.output = GetThirdPartyJobDetailsOutput
        operation.errors << InvalidClientTokenException
        operation.errors << InvalidJobException
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_action_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListActionExecutions"
        operation.name = "ListActionExecutions"
        operation.input = ListActionExecutionsInput
        operation.output = ListActionExecutionsOutput
        operation.errors << InvalidNextTokenException
        operation.errors << PipelineExecutionNotFoundException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListActionExecutions.new
      end)
      service.add_operation(:list_action_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListActionTypes"
        operation.name = "ListActionTypes"
        operation.input = ListActionTypesInput
        operation.output = ListActionTypesOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListActionTypes.new
      end)
      service.add_operation(:list_deploy_action_execution_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListDeployActionExecutionTargets"
        operation.name = "ListDeployActionExecutionTargets"
        operation.input = ListDeployActionExecutionTargetsInput
        operation.output = ListDeployActionExecutionTargetsOutput
        operation.errors << ActionExecutionNotFoundException
        operation.errors << InvalidNextTokenException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeployActionExecutionTargets.new
      end)
      service.add_operation(:list_pipeline_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListPipelineExecutions"
        operation.name = "ListPipelineExecutions"
        operation.input = ListPipelineExecutionsInput
        operation.output = ListPipelineExecutionsOutput
        operation.errors << InvalidNextTokenException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPipelineExecutions.new
      end)
      service.add_operation(:list_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = ListPipelinesInput
        operation.output = ListPipelinesOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListPipelinesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_rule_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListRuleExecutions"
        operation.name = "ListRuleExecutions"
        operation.input = ListRuleExecutionsInput
        operation.output = ListRuleExecutionsOutput
        operation.errors << InvalidNextTokenException
        operation.errors << PipelineExecutionNotFoundException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRuleExecutions.new
      end)
      service.add_operation(:list_rule_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListRuleTypes"
        operation.name = "ListRuleTypes"
        operation.input = ListRuleTypesInput
        operation.output = ListRuleTypesOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InvalidArnException
        operation.errors << InvalidNextTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_webhooks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListWebhooks"
        operation.name = "ListWebhooks"
        operation.input = ListWebhooksInput
        operation.output = ListWebhooksOutput
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListWebhooks.new
      end)
      service.add_operation(:override_stage_condition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#OverrideStageCondition"
        operation.name = "OverrideStageCondition"
        operation.input = OverrideStageConditionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConcurrentPipelineExecutionsLimitExceededException
        operation.errors << ConditionNotOverridableException
        operation.errors << ConflictException
        operation.errors << NotLatestPipelineExecutionException
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:poll_for_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PollForJobs"
        operation.name = "PollForJobs"
        operation.input = PollForJobsInput
        operation.output = PollForJobsOutput
        operation.errors << ActionTypeNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:poll_for_third_party_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PollForThirdPartyJobs"
        operation.name = "PollForThirdPartyJobs"
        operation.input = PollForThirdPartyJobsInput
        operation.output = PollForThirdPartyJobsOutput
        operation.errors << ActionTypeNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_action_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutActionRevision"
        operation.name = "PutActionRevision"
        operation.input = PutActionRevisionInput
        operation.output = PutActionRevisionOutput
        operation.errors << ActionNotFoundException
        operation.errors << ConcurrentPipelineExecutionsLimitExceededException
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_approval_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutApprovalResult"
        operation.name = "PutApprovalResult"
        operation.input = PutApprovalResultInput
        operation.output = PutApprovalResultOutput
        operation.errors << ActionNotFoundException
        operation.errors << ApprovalAlreadyCompletedException
        operation.errors << InvalidApprovalTokenException
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_job_failure_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutJobFailureResult"
        operation.name = "PutJobFailureResult"
        operation.input = PutJobFailureResultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidJobStateException
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_job_success_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutJobSuccessResult"
        operation.name = "PutJobSuccessResult"
        operation.input = PutJobSuccessResultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidJobStateException
        operation.errors << JobNotFoundException
        operation.errors << OutputVariablesSizeExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_third_party_job_failure_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutThirdPartyJobFailureResult"
        operation.name = "PutThirdPartyJobFailureResult"
        operation.input = PutThirdPartyJobFailureResultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidClientTokenException
        operation.errors << InvalidJobStateException
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_third_party_job_success_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutThirdPartyJobSuccessResult"
        operation.name = "PutThirdPartyJobSuccessResult"
        operation.input = PutThirdPartyJobSuccessResultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidClientTokenException
        operation.errors << InvalidJobStateException
        operation.errors << JobNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutWebhook"
        operation.name = "PutWebhook"
        operation.input = PutWebhookInput
        operation.output = PutWebhookOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidTagsException
        operation.errors << InvalidWebhookAuthenticationParametersException
        operation.errors << InvalidWebhookFilterPatternException
        operation.errors << LimitExceededException
        operation.errors << PipelineNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:register_webhook_with_third_party, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#RegisterWebhookWithThirdParty"
        operation.name = "RegisterWebhookWithThirdParty"
        operation.input = RegisterWebhookWithThirdPartyInput
        operation.output = RegisterWebhookWithThirdPartyOutput
        operation.errors << ValidationException
        operation.errors << WebhookNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:retry_stage_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#RetryStageExecution"
        operation.name = "RetryStageExecution"
        operation.input = RetryStageExecutionInput
        operation.output = RetryStageExecutionOutput
        operation.errors << ConcurrentPipelineExecutionsLimitExceededException
        operation.errors << ConflictException
        operation.errors << NotLatestPipelineExecutionException
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << StageNotRetryableException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:rollback_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#RollbackStage"
        operation.name = "RollbackStage"
        operation.input = RollbackStageInput
        operation.output = RollbackStageOutput
        operation.errors << ConflictException
        operation.errors << PipelineExecutionNotFoundException
        operation.errors << PipelineExecutionOutdatedException
        operation.errors << PipelineNotFoundException
        operation.errors << StageNotFoundException
        operation.errors << UnableToRollbackStageException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_pipeline_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#StartPipelineExecution"
        operation.name = "StartPipelineExecution"
        operation.input = StartPipelineExecutionInput
        operation.output = StartPipelineExecutionOutput
        operation.errors << ConcurrentPipelineExecutionsLimitExceededException
        operation.errors << ConflictException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_pipeline_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#StopPipelineExecution"
        operation.name = "StopPipelineExecution"
        operation.input = StopPipelineExecutionInput
        operation.output = StopPipelineExecutionOutput
        operation.errors << ConflictException
        operation.errors << DuplicatedStopRequestException
        operation.errors << PipelineExecutionNotStoppableException
        operation.errors << PipelineNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidTagsException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArnException
        operation.errors << InvalidTagsException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_action_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#UpdateActionType"
        operation.name = "UpdateActionType"
        operation.input = UpdateActionTypeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ActionTypeNotFoundException
        operation.errors << RequestFailedException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = UpdatePipelineInput
        operation.output = UpdatePipelineOutput
        operation.errors << InvalidActionDeclarationException
        operation.errors << InvalidBlockerDeclarationException
        operation.errors << InvalidStageDeclarationException
        operation.errors << InvalidStructureException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
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
