# frozen_string_literal: true

# This is generated code!

module Aws::CodePipeline
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSRegionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#AWSRegionName', name: 'AWSRegionName', traits: {"smithy.api#length" => {"min" => 4, "max" => 30}})
    AWSSessionCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#AWSSessionCredentials', name: 'AWSSessionCredentials', traits: {"smithy.api#sensitive" => {}})
    AccessKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#AccessKeyId', name: 'AccessKeyId', traits: {"smithy.api#sensitive" => {}})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#AccountId', name: 'AccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AcknowledgeJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#AcknowledgeJobInput', name: 'AcknowledgeJobInput')
    AcknowledgeJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#AcknowledgeJobOutput', name: 'AcknowledgeJobOutput')
    AcknowledgeThirdPartyJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#AcknowledgeThirdPartyJobInput', name: 'AcknowledgeThirdPartyJobInput')
    AcknowledgeThirdPartyJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#AcknowledgeThirdPartyJobOutput', name: 'AcknowledgeThirdPartyJobOutput')
    ActionCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ActionCategory', name: 'ActionCategory')
    ActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionConfiguration', name: 'ActionConfiguration')
    ActionConfigurationKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationKey', name: 'ActionConfigurationKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ActionConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationMap', name: 'ActionConfigurationMap')
    ActionConfigurationProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationProperty', name: 'ActionConfigurationProperty')
    ActionConfigurationPropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationPropertyList', name: 'ActionConfigurationPropertyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ActionConfigurationPropertyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationPropertyType', name: 'ActionConfigurationPropertyType')
    ActionConfigurationQueryableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationQueryableValue', name: 'ActionConfigurationQueryableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ActionConfigurationValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionConfigurationValue', name: 'ActionConfigurationValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ActionContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionContext', name: 'ActionContext')
    ActionDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionDeclaration', name: 'ActionDeclaration')
    ActionExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecution', name: 'ActionExecution')
    ActionExecutionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionDetail', name: 'ActionExecutionDetail')
    ActionExecutionDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionDetailList', name: 'ActionExecutionDetailList')
    ActionExecutionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionFilter', name: 'ActionExecutionFilter')
    ActionExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionId', name: 'ActionExecutionId')
    ActionExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionInput', name: 'ActionExecutionInput')
    ActionExecutionNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionNotFoundException', name: 'ActionExecutionNotFoundException', traits: {"smithy.api#error" => "client"})
    ActionExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionOutput', name: 'ActionExecutionOutput')
    ActionExecutionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionResult', name: 'ActionExecutionResult')
    ActionExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionStatus', name: 'ActionExecutionStatus')
    ActionExecutionToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionExecutionToken', name: 'ActionExecutionToken')
    ActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionName', name: 'ActionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    ActionNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionNamespace', name: 'ActionNamespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9@\\-_]+$"})
    ActionNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionNotFoundException', name: 'ActionNotFoundException', traits: {"smithy.api#error" => "client"})
    ActionOwner = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ActionOwner', name: 'ActionOwner')
    ActionProvider = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionProvider', name: 'ActionProvider', traits: {"smithy.api#length" => {"min" => 1, "max" => 35}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    ActionRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionRevision', name: 'ActionRevision')
    ActionRunOrder = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#ActionRunOrder', name: 'ActionRunOrder', traits: {"smithy.api#range" => {"min" => 1, "max" => 999}})
    ActionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionState', name: 'ActionState')
    ActionStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ActionStateList', name: 'ActionStateList')
    ActionTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#ActionTimeout', name: 'ActionTimeout', traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ActionType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionType', name: 'ActionType')
    ActionTypeArtifactDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeArtifactDetails', name: 'ActionTypeArtifactDetails')
    ActionTypeDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeDeclaration', name: 'ActionTypeDeclaration')
    ActionTypeDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionTypeDescription', name: 'ActionTypeDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ActionTypeExecutor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeExecutor', name: 'ActionTypeExecutor')
    ActionTypeId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeId', name: 'ActionTypeId')
    ActionTypeIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeIdentifier', name: 'ActionTypeIdentifier')
    ActionTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ActionTypeList', name: 'ActionTypeList')
    ActionTypeNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeNotFoundException', name: 'ActionTypeNotFoundException', traits: {"smithy.api#error" => "client"})
    ActionTypeOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ActionTypeOwner', name: 'ActionTypeOwner', traits: {"smithy.api#pattern" => "^AWS|ThirdParty$"})
    ActionTypePermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypePermissions', name: 'ActionTypePermissions')
    ActionTypeProperties = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ActionTypeProperties', name: 'ActionTypeProperties', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ActionTypeProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeProperty', name: 'ActionTypeProperty')
    ActionTypeSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeSettings', name: 'ActionTypeSettings')
    ActionTypeUrls = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ActionTypeUrls', name: 'ActionTypeUrls')
    AllowedAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#AllowedAccount', name: 'AllowedAccount', traits: {"smithy.api#pattern" => "^[0-9]{12}|\\*$"})
    AllowedAccounts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#AllowedAccounts', name: 'AllowedAccounts', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ApprovalAlreadyCompletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ApprovalAlreadyCompletedException', name: 'ApprovalAlreadyCompletedException', traits: {"smithy.api#error" => "client"})
    ApprovalResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ApprovalResult', name: 'ApprovalResult')
    ApprovalStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ApprovalStatus', name: 'ApprovalStatus')
    ApprovalSummary = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ApprovalSummary', name: 'ApprovalSummary', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ApprovalToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ApprovalToken', name: 'ApprovalToken', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    Artifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#Artifact', name: 'Artifact')
    ArtifactDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ArtifactDetail', name: 'ArtifactDetail')
    ArtifactDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ArtifactDetailList', name: 'ArtifactDetailList')
    ArtifactDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ArtifactDetails', name: 'ArtifactDetails')
    ArtifactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ArtifactList', name: 'ArtifactList')
    ArtifactLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ArtifactLocation', name: 'ArtifactLocation')
    ArtifactLocationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ArtifactLocationType', name: 'ArtifactLocationType')
    ArtifactName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ArtifactName', name: 'ArtifactName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]+$"})
    ArtifactRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ArtifactRevision', name: 'ArtifactRevision')
    ArtifactRevisionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ArtifactRevisionList', name: 'ArtifactRevisionList')
    ArtifactStore = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ArtifactStore', name: 'ArtifactStore')
    ArtifactStoreLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ArtifactStoreLocation', name: 'ArtifactStoreLocation', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\.]+$"})
    ArtifactStoreMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#ArtifactStoreMap', name: 'ArtifactStoreMap')
    ArtifactStoreType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ArtifactStoreType', name: 'ArtifactStoreType')
    BeforeEntryConditions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#BeforeEntryConditions', name: 'BeforeEntryConditions')
    BlockerDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#BlockerDeclaration', name: 'BlockerDeclaration')
    BlockerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#BlockerName', name: 'BlockerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BlockerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#BlockerType', name: 'BlockerType')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codepipeline#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ClientId', name: 'ClientId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Code = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Code', name: 'Code')
    Command = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Command', name: 'Command', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    CommandList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#CommandList', name: 'CommandList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    ConcurrentPipelineExecutionsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ConcurrentPipelineExecutionsLimitExceededException', name: 'ConcurrentPipelineExecutionsLimitExceededException', traits: {"smithy.api#error" => "client"})
    Condition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#Condition', name: 'Condition')
    ConditionExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ConditionExecution', name: 'ConditionExecution')
    ConditionExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ConditionExecutionStatus', name: 'ConditionExecutionStatus')
    ConditionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ConditionList', name: 'ConditionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ConditionNotOverridableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ConditionNotOverridableException', name: 'ConditionNotOverridableException', traits: {"smithy.api#error" => "client"})
    ConditionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ConditionState', name: 'ConditionState')
    ConditionStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ConditionStateList', name: 'ConditionStateList')
    ConditionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ConditionType', name: 'ConditionType')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContinuationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ContinuationToken', name: 'ContinuationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    CreateCustomActionTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#CreateCustomActionTypeInput', name: 'CreateCustomActionTypeInput')
    CreateCustomActionTypeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#CreateCustomActionTypeOutput', name: 'CreateCustomActionTypeOutput')
    CreatePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#CreatePipelineInput', name: 'CreatePipelineInput')
    CreatePipelineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#CreatePipelineOutput', name: 'CreatePipelineOutput')
    CurrentRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#CurrentRevision', name: 'CurrentRevision')
    DeleteCustomActionTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeleteCustomActionTypeInput', name: 'DeleteCustomActionTypeInput')
    DeletePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeletePipelineInput', name: 'DeletePipelineInput')
    DeleteWebhookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeleteWebhookInput', name: 'DeleteWebhookInput')
    DeleteWebhookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeleteWebhookOutput', name: 'DeleteWebhookOutput')
    DeployActionExecutionTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeployActionExecutionTarget', name: 'DeployActionExecutionTarget')
    DeployActionExecutionTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#DeployActionExecutionTargetList', name: 'DeployActionExecutionTargetList')
    DeployTargetEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeployTargetEvent', name: 'DeployTargetEvent')
    DeployTargetEventContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeployTargetEventContext', name: 'DeployTargetEventContext')
    DeployTargetEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#DeployTargetEventList', name: 'DeployTargetEventList')
    DeregisterWebhookWithThirdPartyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeregisterWebhookWithThirdPartyInput', name: 'DeregisterWebhookWithThirdPartyInput')
    DeregisterWebhookWithThirdPartyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DeregisterWebhookWithThirdPartyOutput', name: 'DeregisterWebhookWithThirdPartyOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 160}})
    DisableStageTransitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DisableStageTransitionInput', name: 'DisableStageTransitionInput')
    DisabledReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#DisabledReason', name: 'DisabledReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9!@ \\(\\)\\.\\*\\?\\-]+$"})
    DuplicatedStopRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#DuplicatedStopRequestException', name: 'DuplicatedStopRequestException', traits: {"smithy.api#error" => "client"})
    EnableStageTransitionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#EnableStageTransitionInput', name: 'EnableStageTransitionInput')
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codepipeline#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    EncryptionKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#EncryptionKey', name: 'EncryptionKey')
    EncryptionKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#EncryptionKeyId', name: 'EncryptionKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    EncryptionKeyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#EncryptionKeyType', name: 'EncryptionKeyType')
    EnvironmentVariable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#EnvironmentVariable', name: 'EnvironmentVariable')
    EnvironmentVariableList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#EnvironmentVariableList', name: 'EnvironmentVariableList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EnvironmentVariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#EnvironmentVariableName', name: 'EnvironmentVariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9_]+$"})
    EnvironmentVariableType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#EnvironmentVariableType', name: 'EnvironmentVariableType')
    EnvironmentVariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#EnvironmentVariableValue', name: 'EnvironmentVariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => ".*"})
    ErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ErrorDetails', name: 'ErrorDetails')
    ExecutionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ExecutionDetails', name: 'ExecutionDetails')
    ExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ExecutionId', name: 'ExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    ExecutionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ExecutionMode', name: 'ExecutionMode')
    ExecutionSummary = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ExecutionSummary', name: 'ExecutionSummary', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ExecutionTrigger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ExecutionTrigger', name: 'ExecutionTrigger')
    ExecutionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ExecutionType', name: 'ExecutionType')
    ExecutorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ExecutorConfiguration', name: 'ExecutorConfiguration')
    ExecutorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#ExecutorType', name: 'ExecutorType')
    ExternalExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ExternalExecutionId', name: 'ExternalExecutionId')
    ExternalExecutionSummary = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ExternalExecutionSummary', name: 'ExternalExecutionSummary')
    FailureConditions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#FailureConditions', name: 'FailureConditions')
    FailureDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#FailureDetails', name: 'FailureDetails')
    FailureType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#FailureType', name: 'FailureType')
    FilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#FilePath', name: 'FilePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    FilePathList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#FilePathList', name: 'FilePathList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GetActionTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetActionTypeInput', name: 'GetActionTypeInput')
    GetActionTypeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetActionTypeOutput', name: 'GetActionTypeOutput')
    GetJobDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetJobDetailsInput', name: 'GetJobDetailsInput')
    GetJobDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetJobDetailsOutput', name: 'GetJobDetailsOutput')
    GetPipelineExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetPipelineExecutionInput', name: 'GetPipelineExecutionInput')
    GetPipelineExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetPipelineExecutionOutput', name: 'GetPipelineExecutionOutput')
    GetPipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetPipelineInput', name: 'GetPipelineInput')
    GetPipelineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetPipelineOutput', name: 'GetPipelineOutput')
    GetPipelineStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetPipelineStateInput', name: 'GetPipelineStateInput')
    GetPipelineStateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetPipelineStateOutput', name: 'GetPipelineStateOutput')
    GetThirdPartyJobDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetThirdPartyJobDetailsInput', name: 'GetThirdPartyJobDetailsInput')
    GetThirdPartyJobDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GetThirdPartyJobDetailsOutput', name: 'GetThirdPartyJobDetailsOutput')
    GitBranchFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GitBranchFilterCriteria', name: 'GitBranchFilterCriteria')
    GitBranchNamePattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#GitBranchNamePattern', name: 'GitBranchNamePattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    GitBranchPatternList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#GitBranchPatternList', name: 'GitBranchPatternList', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    GitConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GitConfiguration', name: 'GitConfiguration')
    GitFilePathFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GitFilePathFilterCriteria', name: 'GitFilePathFilterCriteria')
    GitFilePathPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#GitFilePathPattern', name: 'GitFilePathPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => ".*"})
    GitFilePathPatternList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#GitFilePathPatternList', name: 'GitFilePathPatternList', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    GitPullRequestEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#GitPullRequestEventType', name: 'GitPullRequestEventType')
    GitPullRequestEventTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#GitPullRequestEventTypeList', name: 'GitPullRequestEventTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GitPullRequestFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GitPullRequestFilter', name: 'GitPullRequestFilter')
    GitPullRequestFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#GitPullRequestFilterList', name: 'GitPullRequestFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GitPushFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GitPushFilter', name: 'GitPushFilter')
    GitPushFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#GitPushFilterList', name: 'GitPushFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    GitTagFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#GitTagFilterCriteria', name: 'GitTagFilterCriteria')
    GitTagNamePattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#GitTagNamePattern', name: 'GitTagNamePattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GitTagPatternList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#GitTagPatternList', name: 'GitTagPatternList', traits: {"smithy.api#length" => {"min" => 1, "max" => 8}})
    InputArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InputArtifact', name: 'InputArtifact')
    InputArtifactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#InputArtifactList', name: 'InputArtifactList')
    InvalidActionDeclarationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidActionDeclarationException', name: 'InvalidActionDeclarationException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidApprovalTokenException', name: 'InvalidApprovalTokenException', traits: {"smithy.api#error" => "client"})
    InvalidArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidArnException', name: 'InvalidArnException', traits: {"smithy.api#error" => "client"})
    InvalidBlockerDeclarationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidBlockerDeclarationException', name: 'InvalidBlockerDeclarationException', traits: {"smithy.api#error" => "client"})
    InvalidClientTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidClientTokenException', name: 'InvalidClientTokenException', traits: {"smithy.api#error" => "client"})
    InvalidJobException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidJobException', name: 'InvalidJobException', traits: {"smithy.api#error" => "client"})
    InvalidJobStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidJobStateException', name: 'InvalidJobStateException', traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidNonceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidNonceException', name: 'InvalidNonceException', traits: {"smithy.api#error" => "client"})
    InvalidStageDeclarationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidStageDeclarationException', name: 'InvalidStageDeclarationException', traits: {"smithy.api#error" => "client"})
    InvalidStructureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidStructureException', name: 'InvalidStructureException', traits: {"smithy.api#error" => "client"})
    InvalidTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidTagsException', name: 'InvalidTagsException', traits: {"smithy.api#error" => "client"})
    InvalidWebhookAuthenticationParametersException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidWebhookAuthenticationParametersException', name: 'InvalidWebhookAuthenticationParametersException', traits: {"smithy.api#error" => "client"})
    InvalidWebhookFilterPatternException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#InvalidWebhookFilterPatternException', name: 'InvalidWebhookFilterPatternException', traits: {"smithy.api#error" => "client"})
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#Job', name: 'Job')
    JobData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#JobData', name: 'JobData')
    JobDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#JobDetails', name: 'JobDetails')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#JobId', name: 'JobId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    JobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#JobList', name: 'JobList')
    JobNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#JobNotFoundException', name: 'JobNotFoundException', traits: {"smithy.api#error" => "client"})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#JobStatus', name: 'JobStatus')
    JobTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#JobTimeout', name: 'JobTimeout', traits: {"smithy.api#range" => {"min" => 60, "max" => 43200}})
    JobWorkerExecutorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#JobWorkerExecutorConfiguration', name: 'JobWorkerExecutorConfiguration')
    JsonPath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#JsonPath', name: 'JsonPath', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    LambdaExecutorConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#LambdaExecutorConfiguration', name: 'LambdaExecutorConfiguration')
    LambdaFunctionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#LambdaFunctionArn', name: 'LambdaFunctionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 140}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:lambda:.+:[0-9]{12}:function:.+$"})
    LastChangedAt = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codepipeline#LastChangedAt', name: 'LastChangedAt')
    LastChangedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#LastChangedBy', name: 'LastChangedBy')
    LastUpdatedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#LastUpdatedBy', name: 'LastUpdatedBy')
    LatestInPipelineExecutionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#LatestInPipelineExecutionFilter', name: 'LatestInPipelineExecutionFilter')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListActionExecutionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListActionExecutionsInput', name: 'ListActionExecutionsInput')
    ListActionExecutionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListActionExecutionsOutput', name: 'ListActionExecutionsOutput')
    ListActionTypesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListActionTypesInput', name: 'ListActionTypesInput')
    ListActionTypesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListActionTypesOutput', name: 'ListActionTypesOutput')
    ListDeployActionExecutionTargetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListDeployActionExecutionTargetsInput', name: 'ListDeployActionExecutionTargetsInput')
    ListDeployActionExecutionTargetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListDeployActionExecutionTargetsOutput', name: 'ListDeployActionExecutionTargetsOutput')
    ListPipelineExecutionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListPipelineExecutionsInput', name: 'ListPipelineExecutionsInput')
    ListPipelineExecutionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListPipelineExecutionsOutput', name: 'ListPipelineExecutionsOutput')
    ListPipelinesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListPipelinesInput', name: 'ListPipelinesInput')
    ListPipelinesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListPipelinesOutput', name: 'ListPipelinesOutput')
    ListRuleExecutionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListRuleExecutionsInput', name: 'ListRuleExecutionsInput')
    ListRuleExecutionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListRuleExecutionsOutput', name: 'ListRuleExecutionsOutput')
    ListRuleTypesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListRuleTypesInput', name: 'ListRuleTypesInput')
    ListRuleTypesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListRuleTypesOutput', name: 'ListRuleTypesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWebhookItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListWebhookItem', name: 'ListWebhookItem')
    ListWebhooksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListWebhooksInput', name: 'ListWebhooksInput')
    ListWebhooksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ListWebhooksOutput', name: 'ListWebhooksOutput')
    LogStreamARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#LogStreamARN', name: 'LogStreamARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    MatchEquals = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#MatchEquals', name: 'MatchEquals', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    MaxBatchSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MaxBatchSize', name: 'MaxBatchSize', traits: {"smithy.api#range" => {"min" => 1}})
    MaxPipelines = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MaxPipelines', name: 'MaxPipelines', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaximumActionTypeArtifactCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MaximumActionTypeArtifactCount', name: 'MaximumActionTypeArtifactCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    MaximumArtifactCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MaximumArtifactCount', name: 'MaximumArtifactCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 5}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    MinimumActionTypeArtifactCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MinimumActionTypeArtifactCount', name: 'MinimumActionTypeArtifactCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 10}})
    MinimumArtifactCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#MinimumArtifactCount', name: 'MinimumArtifactCount', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 5}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Nonce = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Nonce', name: 'Nonce', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    NotLatestPipelineExecutionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#NotLatestPipelineExecutionException', name: 'NotLatestPipelineExecutionException', traits: {"smithy.api#error" => "client"})
    OutputArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#OutputArtifact', name: 'OutputArtifact')
    OutputArtifactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#OutputArtifactList', name: 'OutputArtifactList')
    OutputVariable = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#OutputVariable', name: 'OutputVariable', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    OutputVariableList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#OutputVariableList', name: 'OutputVariableList', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    OutputVariablesKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#OutputVariablesKey', name: 'OutputVariablesKey', traits: {"smithy.api#pattern" => "^[A-Za-z0-9@\\-_]+$"})
    OutputVariablesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#OutputVariablesMap', name: 'OutputVariablesMap')
    OutputVariablesSizeExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#OutputVariablesSizeExceededException', name: 'OutputVariablesSizeExceededException', traits: {"smithy.api#error" => "client"})
    OutputVariablesValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#OutputVariablesValue', name: 'OutputVariablesValue')
    OverrideStageConditionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#OverrideStageConditionInput', name: 'OverrideStageConditionInput')
    Percentage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#Percentage', name: 'Percentage', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PipelineArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineArn', name: 'PipelineArn', traits: {"smithy.api#pattern" => "^arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+$"})
    PipelineContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineContext', name: 'PipelineContext')
    PipelineDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineDeclaration', name: 'PipelineDeclaration')
    PipelineExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineExecution', name: 'PipelineExecution')
    PipelineExecutionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionFilter', name: 'PipelineExecutionFilter')
    PipelineExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionId', name: 'PipelineExecutionId', traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    PipelineExecutionNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionNotFoundException', name: 'PipelineExecutionNotFoundException', traits: {"smithy.api#error" => "client"})
    PipelineExecutionNotStoppableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionNotStoppableException', name: 'PipelineExecutionNotStoppableException', traits: {"smithy.api#error" => "client"})
    PipelineExecutionOutdatedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionOutdatedException', name: 'PipelineExecutionOutdatedException', traits: {"smithy.api#error" => "client"})
    PipelineExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionStatus', name: 'PipelineExecutionStatus')
    PipelineExecutionStatusSummary = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionStatusSummary', name: 'PipelineExecutionStatusSummary')
    PipelineExecutionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionSummary', name: 'PipelineExecutionSummary')
    PipelineExecutionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PipelineExecutionSummaryList', name: 'PipelineExecutionSummaryList')
    PipelineList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PipelineList', name: 'PipelineList')
    PipelineMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineMetadata', name: 'PipelineMetadata')
    PipelineName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineName', name: 'PipelineName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    PipelineNameInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineNameInUseException', name: 'PipelineNameInUseException', traits: {"smithy.api#error" => "client"})
    PipelineNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineNotFoundException', name: 'PipelineNotFoundException', traits: {"smithy.api#error" => "client"})
    PipelineRollbackMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineRollbackMetadata', name: 'PipelineRollbackMetadata')
    PipelineStageDeclarationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PipelineStageDeclarationList', name: 'PipelineStageDeclarationList')
    PipelineSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineSummary', name: 'PipelineSummary')
    PipelineTriggerDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineTriggerDeclaration', name: 'PipelineTriggerDeclaration')
    PipelineTriggerDeclarationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PipelineTriggerDeclarationList', name: 'PipelineTriggerDeclarationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PipelineTriggerProviderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#PipelineTriggerProviderType', name: 'PipelineTriggerProviderType')
    PipelineType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#PipelineType', name: 'PipelineType')
    PipelineVariable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineVariable', name: 'PipelineVariable')
    PipelineVariableDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineVariableDeclaration', name: 'PipelineVariableDeclaration')
    PipelineVariableDeclarationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PipelineVariableDeclarationList', name: 'PipelineVariableDeclarationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PipelineVariableDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineVariableDescription', name: 'PipelineVariableDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => ".*"})
    PipelineVariableList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PipelineVariableList', name: 'PipelineVariableList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    PipelineVariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineVariableName', name: 'PipelineVariableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9@\\-_]+$"})
    PipelineVariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PipelineVariableValue', name: 'PipelineVariableValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => ".*"})
    PipelineVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#PipelineVersion', name: 'PipelineVersion', traits: {"smithy.api#range" => {"min" => 1}})
    PipelineVersionNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PipelineVersionNotFoundException', name: 'PipelineVersionNotFoundException', traits: {"smithy.api#error" => "client"})
    PolicyStatementsTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PolicyStatementsTemplate', name: 'PolicyStatementsTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PollForJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PollForJobsInput', name: 'PollForJobsInput')
    PollForJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PollForJobsOutput', name: 'PollForJobsOutput')
    PollForThirdPartyJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PollForThirdPartyJobsInput', name: 'PollForThirdPartyJobsInput')
    PollForThirdPartyJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PollForThirdPartyJobsOutput', name: 'PollForThirdPartyJobsOutput')
    PollingAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PollingAccountList', name: 'PollingAccountList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    PollingServicePrincipalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#PollingServicePrincipalList', name: 'PollingServicePrincipalList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PropertyDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#PropertyDescription', name: 'PropertyDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    PutActionRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutActionRevisionInput', name: 'PutActionRevisionInput')
    PutActionRevisionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutActionRevisionOutput', name: 'PutActionRevisionOutput')
    PutApprovalResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutApprovalResultInput', name: 'PutApprovalResultInput')
    PutApprovalResultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutApprovalResultOutput', name: 'PutApprovalResultOutput')
    PutJobFailureResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutJobFailureResultInput', name: 'PutJobFailureResultInput')
    PutJobSuccessResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutJobSuccessResultInput', name: 'PutJobSuccessResultInput')
    PutThirdPartyJobFailureResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutThirdPartyJobFailureResultInput', name: 'PutThirdPartyJobFailureResultInput')
    PutThirdPartyJobSuccessResultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutThirdPartyJobSuccessResultInput', name: 'PutThirdPartyJobSuccessResultInput')
    PutWebhookInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutWebhookInput', name: 'PutWebhookInput')
    PutWebhookOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#PutWebhookOutput', name: 'PutWebhookOutput')
    QueryParamMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#QueryParamMap', name: 'QueryParamMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RegisterWebhookWithThirdPartyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RegisterWebhookWithThirdPartyInput', name: 'RegisterWebhookWithThirdPartyInput')
    RegisterWebhookWithThirdPartyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RegisterWebhookWithThirdPartyOutput', name: 'RegisterWebhookWithThirdPartyOutput')
    RequestFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RequestFailedException', name: 'RequestFailedException', traits: {"smithy.api#error" => "client"})
    ResolvedActionConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#ResolvedActionConfigurationMap', name: 'ResolvedActionConfigurationMap')
    ResolvedPipelineVariable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ResolvedPipelineVariable', name: 'ResolvedPipelineVariable')
    ResolvedPipelineVariableList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ResolvedPipelineVariableList', name: 'ResolvedPipelineVariableList')
    ResolvedRuleConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#ResolvedRuleConfigurationMap', name: 'ResolvedRuleConfigurationMap')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#pattern" => "^arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    Result = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#Result', name: 'Result')
    RetryAttempt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#RetryAttempt', name: 'RetryAttempt', traits: {"smithy.api#range" => {"min" => 1}})
    RetryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RetryConfiguration', name: 'RetryConfiguration')
    RetryStageExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RetryStageExecutionInput', name: 'RetryStageExecutionInput')
    RetryStageExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RetryStageExecutionOutput', name: 'RetryStageExecutionOutput')
    RetryStageMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RetryStageMetadata', name: 'RetryStageMetadata')
    RetryTrigger = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#RetryTrigger', name: 'RetryTrigger')
    Revision = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Revision', name: 'Revision', traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    RevisionChangeIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RevisionChangeIdentifier', name: 'RevisionChangeIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RevisionSummary = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RevisionSummary', name: 'RevisionSummary', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/"})
    RollbackStageInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RollbackStageInput', name: 'RollbackStageInput')
    RollbackStageOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RollbackStageOutput', name: 'RollbackStageOutput')
    RuleCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#RuleCategory', name: 'RuleCategory')
    RuleConfigurationKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RuleConfigurationKey', name: 'RuleConfigurationKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    RuleConfigurationMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codepipeline#RuleConfigurationMap', name: 'RuleConfigurationMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    RuleConfigurationProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleConfigurationProperty', name: 'RuleConfigurationProperty')
    RuleConfigurationPropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#RuleConfigurationPropertyList', name: 'RuleConfigurationPropertyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    RuleConfigurationPropertyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#RuleConfigurationPropertyType', name: 'RuleConfigurationPropertyType')
    RuleConfigurationValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RuleConfigurationValue', name: 'RuleConfigurationValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    RuleDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleDeclaration', name: 'RuleDeclaration')
    RuleDeclarationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#RuleDeclarationList', name: 'RuleDeclarationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RuleExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleExecution', name: 'RuleExecution')
    RuleExecutionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionDetail', name: 'RuleExecutionDetail')
    RuleExecutionDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionDetailList', name: 'RuleExecutionDetailList')
    RuleExecutionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionFilter', name: 'RuleExecutionFilter')
    RuleExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionId', name: 'RuleExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RuleExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionInput', name: 'RuleExecutionInput')
    RuleExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionOutput', name: 'RuleExecutionOutput')
    RuleExecutionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionResult', name: 'RuleExecutionResult')
    RuleExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionStatus', name: 'RuleExecutionStatus')
    RuleExecutionToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RuleExecutionToken', name: 'RuleExecutionToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\.]+$"})
    RuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RuleName', name: 'RuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    RuleOwner = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#RuleOwner', name: 'RuleOwner')
    RuleProvider = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#RuleProvider', name: 'RuleProvider', traits: {"smithy.api#length" => {"min" => 1, "max" => 35}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    RuleRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleRevision', name: 'RuleRevision')
    RuleState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleState', name: 'RuleState')
    RuleStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#RuleStateList', name: 'RuleStateList')
    RuleTimeout = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codepipeline#RuleTimeout', name: 'RuleTimeout', traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    RuleType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleType', name: 'RuleType')
    RuleTypeId = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleTypeId', name: 'RuleTypeId')
    RuleTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#RuleTypeList', name: 'RuleTypeList')
    RuleTypeSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#RuleTypeSettings', name: 'RuleTypeSettings')
    S3ArtifactLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#S3ArtifactLocation', name: 'S3ArtifactLocation')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#S3BucketName', name: 'S3BucketName')
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#S3Location', name: 'S3Location')
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#S3ObjectKey', name: 'S3ObjectKey')
    SecretAccessKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#SecretAccessKey', name: 'SecretAccessKey', traits: {"smithy.api#sensitive" => {}})
    ServicePrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ServicePrincipal', name: 'ServicePrincipal', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    SessionToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#SessionToken', name: 'SessionToken', traits: {"smithy.api#sensitive" => {}})
    SourceRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#SourceRevision', name: 'SourceRevision')
    SourceRevisionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#SourceRevisionList', name: 'SourceRevisionList')
    SourceRevisionOverride = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#SourceRevisionOverride', name: 'SourceRevisionOverride')
    SourceRevisionOverrideList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#SourceRevisionOverrideList', name: 'SourceRevisionOverrideList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SourceRevisionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#SourceRevisionType', name: 'SourceRevisionType')
    StageActionDeclarationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#StageActionDeclarationList', name: 'StageActionDeclarationList')
    StageBlockerDeclarationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#StageBlockerDeclarationList', name: 'StageBlockerDeclarationList')
    StageConditionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageConditionState', name: 'StageConditionState')
    StageConditionsExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageConditionsExecution', name: 'StageConditionsExecution')
    StageContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageContext', name: 'StageContext')
    StageDeclaration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageDeclaration', name: 'StageDeclaration')
    StageExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageExecution', name: 'StageExecution')
    StageExecutionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#StageExecutionList', name: 'StageExecutionList')
    StageExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#StageExecutionStatus', name: 'StageExecutionStatus')
    StageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#StageName', name: 'StageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    StageNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageNotFoundException', name: 'StageNotFoundException', traits: {"smithy.api#error" => "client"})
    StageNotRetryableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageNotRetryableException', name: 'StageNotRetryableException', traits: {"smithy.api#error" => "client"})
    StageRetryMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#StageRetryMode', name: 'StageRetryMode')
    StageState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StageState', name: 'StageState')
    StageStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#StageStateList', name: 'StageStateList')
    StageTransitionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#StageTransitionType', name: 'StageTransitionType')
    StartPipelineExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StartPipelineExecutionInput', name: 'StartPipelineExecutionInput')
    StartPipelineExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StartPipelineExecutionOutput', name: 'StartPipelineExecutionOutput')
    StartTimeRange = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#StartTimeRange', name: 'StartTimeRange')
    StopExecutionTrigger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StopExecutionTrigger', name: 'StopExecutionTrigger')
    StopPipelineExecutionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StopPipelineExecutionInput', name: 'StopPipelineExecutionInput')
    StopPipelineExecutionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#StopPipelineExecutionOutput', name: 'StopPipelineExecutionOutput')
    StopPipelineExecutionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#StopPipelineExecutionReason', name: 'StopPipelineExecutionReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#String', name: 'String')
    SucceededInStageFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#SucceededInStageFilter', name: 'SucceededInStageFilter')
    SuccessConditions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#SuccessConditions', name: 'SuccessConditions')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#TagList', name: 'TagList')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#TargetFilter', name: 'TargetFilter')
    TargetFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#TargetFilterList', name: 'TargetFilterList')
    TargetFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#TargetFilterName', name: 'TargetFilterName')
    TargetFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#TargetFilterValue', name: 'TargetFilterValue', traits: {"smithy.api#length" => {"min" => 1}})
    TargetFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#TargetFilterValueList', name: 'TargetFilterValueList')
    ThirdPartyJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ThirdPartyJob', name: 'ThirdPartyJob')
    ThirdPartyJobData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ThirdPartyJobData', name: 'ThirdPartyJobData')
    ThirdPartyJobDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ThirdPartyJobDetails', name: 'ThirdPartyJobDetails')
    ThirdPartyJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#ThirdPartyJobId', name: 'ThirdPartyJobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ThirdPartyJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#ThirdPartyJobList', name: 'ThirdPartyJobList')
    Time = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codepipeline#Time', name: 'Time')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codepipeline#Timestamp', name: 'Timestamp')
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    TransitionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#TransitionState', name: 'TransitionState')
    TriggerDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#TriggerDetail', name: 'TriggerDetail', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    TriggerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#TriggerType', name: 'TriggerType')
    UnableToRollbackStageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#UnableToRollbackStageException', name: 'UnableToRollbackStageException', traits: {"smithy.api#error" => "client"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateActionTypeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#UpdateActionTypeInput', name: 'UpdateActionTypeInput')
    UpdatePipelineInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#UpdatePipelineInput', name: 'UpdatePipelineInput')
    UpdatePipelineOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#UpdatePipelineOutput', name: 'UpdatePipelineOutput')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    UrlTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#UrlTemplate', name: 'UrlTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    Version = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#Version', name: 'Version', traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "^[0-9A-Za-z_-]+$"})
    WebhookArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookArn', name: 'WebhookArn')
    WebhookAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#WebhookAuthConfiguration', name: 'WebhookAuthConfiguration')
    WebhookAuthConfigurationAllowedIPRange = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookAuthConfigurationAllowedIPRange', name: 'WebhookAuthConfigurationAllowedIPRange', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WebhookAuthConfigurationSecretToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookAuthConfigurationSecretToken', name: 'WebhookAuthConfigurationSecretToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    WebhookAuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codepipeline#WebhookAuthenticationType', name: 'WebhookAuthenticationType')
    WebhookDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#WebhookDefinition', name: 'WebhookDefinition')
    WebhookErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookErrorCode', name: 'WebhookErrorCode')
    WebhookErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookErrorMessage', name: 'WebhookErrorMessage')
    WebhookFilterRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#WebhookFilterRule', name: 'WebhookFilterRule')
    WebhookFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#WebhookFilters', name: 'WebhookFilters', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    WebhookLastTriggered = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codepipeline#WebhookLastTriggered', name: 'WebhookLastTriggered')
    WebhookList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codepipeline#WebhookList', name: 'WebhookList')
    WebhookName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookName', name: 'WebhookName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9.@\\-_]+$"})
    WebhookNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codepipeline#WebhookNotFoundException', name: 'WebhookNotFoundException', traits: {"smithy.api#error" => "client"})
    WebhookUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codepipeline#WebhookUrl', name: 'WebhookUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})

    AWSSessionCredentials.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyId, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The access key for the session.</p>", "smithy.api#required" => {}}))
    AWSSessionCredentials.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKey, location_name: 'secretAccessKey', traits: {"smithy.api#documentation" => "<p>The secret access key for the session.</p>", "smithy.api#required" => {}}))
    AWSSessionCredentials.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionToken, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The token for the session.</p>", "smithy.api#required" => {}}))
    AWSSessionCredentials.type = Types::AWSSessionCredentials
    AcknowledgeJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the job for which you want to confirm\n            receipt.</p>", "smithy.api#required" => {}}))
    AcknowledgeJobInput.add_member(:nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'nonce', traits: {"smithy.api#documentation" => "<p>A system-generated random number that CodePipeline uses to ensure that the\n            job is being worked on by only one job worker. Get this number from the response of the\n                <a>PollForJobs</a> request that returned this job.</p>", "smithy.api#required" => {}}))
    AcknowledgeJobInput.type = Types::AcknowledgeJobInput
    AcknowledgeJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Whether the job worker has received the specified job.</p>"}))
    AcknowledgeJobOutput.type = Types::AcknowledgeJobOutput
    AcknowledgeThirdPartyJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the job.</p>", "smithy.api#required" => {}}))
    AcknowledgeThirdPartyJobInput.add_member(:nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'nonce', traits: {"smithy.api#documentation" => "<p>A system-generated random number that CodePipeline uses to ensure that the\n            job is being worked on by only one job worker. Get this number from the response to a\n                <a>GetThirdPartyJobDetails</a> request.</p>", "smithy.api#required" => {}}))
    AcknowledgeThirdPartyJobInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The clientToken portion of the clientId and clientToken pair used to verify that\n            the calling entity is allowed access to the job and its details.</p>", "smithy.api#required" => {}}))
    AcknowledgeThirdPartyJobInput.type = Types::AcknowledgeThirdPartyJobInput
    AcknowledgeThirdPartyJobOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status information for the third party job, if any.</p>"}))
    AcknowledgeThirdPartyJobOutput.type = Types::AcknowledgeThirdPartyJobOutput
    ActionCategory.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Source', traits: {"smithy.api#enumValue" => "Source"}))
    ActionCategory.add_member(:build, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Build', traits: {"smithy.api#enumValue" => "Build"}))
    ActionCategory.add_member(:deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Deploy', traits: {"smithy.api#enumValue" => "Deploy"}))
    ActionCategory.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Test', traits: {"smithy.api#enumValue" => "Test"}))
    ActionCategory.add_member(:invoke, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Invoke', traits: {"smithy.api#enumValue" => "Invoke"}))
    ActionCategory.add_member(:approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Approval', traits: {"smithy.api#enumValue" => "Approval"}))
    ActionCategory.add_member(:compute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Compute', traits: {"smithy.api#enumValue" => "Compute"}))
    ActionConfiguration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration data for the action.</p>"}))
    ActionConfiguration.type = Types::ActionConfiguration
    ActionConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationKey)
    ActionConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationValue)
    ActionConfigurationProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationKey, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the action configuration property.</p>", "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'required', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is a required value.</p>", "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'key', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is a key.</p>", "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'secret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is secret. Secrets are hidden from all calls\n            except for <code>GetJobDetails</code>, <code>GetThirdPartyJobDetails</code>,\n                <code>PollForJobs</code>, and <code>PollForThirdPartyJobs</code>.</p>\n         <p>When updating a pipeline, passing * * * * * without changing any other values of\n            the action preserves the previous value of the secret.</p>", "smithy.api#required" => {}}))
    ActionConfigurationProperty.add_member(:queryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'queryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates that the property is used with <code>PollForJobs</code>. When creating a\n            custom action, an action can have up to one queryable property. If it has one, that\n            property must be both required and not secret.</p>\n         <p>If you create a pipeline with a custom action type, and that custom action contains\n            a queryable property, the value for that configuration property is subject to other\n            restrictions. The value must be less than or equal to twenty (20) characters. The value\n            can contain only alphanumeric characters, underscores, and hyphens.</p>"}))
    ActionConfigurationProperty.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the action configuration property that is displayed to\n            users.</p>"}))
    ActionConfigurationProperty.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationPropertyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the configuration property.</p>"}))
    ActionConfigurationProperty.type = Types::ActionConfigurationProperty
    ActionConfigurationPropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationProperty)
    ActionConfigurationPropertyType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'String', traits: {"smithy.api#enumValue" => "String"}))
    ActionConfigurationPropertyType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Number', traits: {"smithy.api#enumValue" => "Number"}))
    ActionConfigurationPropertyType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Boolean', traits: {"smithy.api#enumValue" => "Boolean"}))
    ActionContext.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the action in the context of a job.</p>"}))
    ActionContext.add_member(:action_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: 'actionExecutionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID that corresponds to an action's execution.</p>"}))
    ActionContext.type = Types::ActionContext
    ActionDeclaration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The action declaration's name.</p>", "smithy.api#required" => {}}))
    ActionDeclaration.add_member(:action_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'actionTypeId', traits: {"smithy.api#documentation" => "<p>Specifies the action type and the provider of the action.</p>", "smithy.api#required" => {}}))
    ActionDeclaration.add_member(:run_order, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionRunOrder, location_name: 'runOrder', traits: {"smithy.api#documentation" => "<p>The order in which actions are run.</p>"}))
    ActionDeclaration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The action's configuration. These are key-value pairs that specify input values for\n            an action. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements\">Action Structure Requirements in CodePipeline</a>. For the list of\n            configuration properties for the CloudFormation action type in CodePipeline, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html\">Configuration Properties Reference</a> in the <i>CloudFormation\n                User Guide</i>. For template snippets with examples, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html\">Using Parameter Override Functions with CodePipeline Pipelines</a> in the\n                    <i>CloudFormation User Guide</i>.</p>\n         <p>The values can be represented in either JSON or YAML format. For example, the JSON\n            configuration item format is as follows: </p>\n         <p>\n            <i>JSON:</i>\n         </p>\n         <p>\n            <code>\"Configuration\" : { Key : Value },</code>\n         </p>"}))
    ActionDeclaration.add_member(:commands, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandList, location_name: 'commands', traits: {"smithy.api#documentation" => "<p>The shell commands to run with your compute action in CodePipeline. All commands\n            are supported except multi-line formats. While CodeBuild logs and permissions\n            are used, you do not need to create any resources in CodeBuild.</p>\n         <note>\n            <p>Using compute time for this action will incur separate charges in CodeBuild.</p>\n         </note>"}))
    ActionDeclaration.add_member(:output_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputArtifactList, location_name: 'outputArtifacts', traits: {"smithy.api#documentation" => "<p>The name or ID of the result of the action declaration, such as a test or build\n            artifact.</p>"}))
    ActionDeclaration.add_member(:input_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: InputArtifactList, location_name: 'inputArtifacts', traits: {"smithy.api#documentation" => "<p>The name or ID of the artifact consumed by the action, such as a test or build\n            artifact.</p>"}))
    ActionDeclaration.add_member(:output_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariableList, location_name: 'outputVariables', traits: {"smithy.api#documentation" => "<p>The list of variables that are to be exported from the compute action. This is\n            specifically CodeBuild environment variables as used for that action.</p>"}))
    ActionDeclaration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM service role that performs the declared action. This is assumed\n            through the roleArn for the pipeline.</p>"}))
    ActionDeclaration.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The action declaration's Amazon Web Services Region, such as us-east-1.</p>"}))
    ActionDeclaration.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The variable namespace associated with the action. All variables produced as output by\n            this action fall under this namespace.</p>"}))
    ActionDeclaration.add_member(:timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTimeout, location_name: 'timeoutInMinutes', traits: {"smithy.api#documentation" => "<p>A timeout duration in minutes that can be applied against the ActionType’s default\n            timeout value specified in <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/limits.html\">Quotas for CodePipeline\n            </a>. This attribute is available only to the manual approval ActionType.</p>"}))
    ActionDeclaration.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableList, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables for the action.</p>"}))
    ActionDeclaration.type = Types::ActionDeclaration
    ActionExecution.add_member(:action_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: 'actionExecutionId', traits: {"smithy.api#documentation" => "<p>ID of the workflow action execution in the current stage. Use the <a>GetPipelineState</a> action to retrieve the current action execution details\n            of the current stage.</p>\n         <note>\n            <p>For older executions, this field might be empty. The action execution ID is\n                available for executions run on or after March 2020.</p>\n         </note>"}))
    ActionExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the action, or for a completed action, the last status of the\n            action.</p>"}))
    ActionExecution.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>A summary of the run of the action.</p>"}))
    ActionExecution.add_member(:last_status_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStatusChange', traits: {"smithy.api#documentation" => "<p>The last status change of the action.</p>"}))
    ActionExecution.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionToken, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The system-generated token used to identify a unique approval request. The token\n            for each open approval request can be obtained using the <code>GetPipelineState</code>\n            command. It is used to validate that the approval request corresponding to this token is\n            still valid.</p>"}))
    ActionExecution.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'lastUpdatedBy', traits: {"smithy.api#documentation" => "<p>The ARN of the user who last changed the pipeline.</p>"}))
    ActionExecution.add_member(:external_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'externalExecutionId', traits: {"smithy.api#documentation" => "<p>The external ID of the run of the action.</p>"}))
    ActionExecution.add_member(:external_execution_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'externalExecutionUrl', traits: {"smithy.api#documentation" => "<p>The URL of a resource external to Amazon Web Services that is used when running the\n            action (for example, an external repository URL).</p>"}))
    ActionExecution.add_member(:percent_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'percentComplete', traits: {"smithy.api#documentation" => "<p>A percentage of completeness of the action as it runs.</p>"}))
    ActionExecution.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails', traits: {"smithy.api#documentation" => "<p>The details of an error returned by a URL external to Amazon Web Services.</p>"}))
    ActionExecution.add_member(:log_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'logStreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log stream for the action compute.</p>"}))
    ActionExecution.type = Types::ActionExecution
    ActionExecutionDetail.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The pipeline execution ID for the action execution.</p>"}))
    ActionExecutionDetail.add_member(:action_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: 'actionExecutionId', traits: {"smithy.api#documentation" => "<p>The action execution ID.</p>"}))
    ActionExecutionDetail.add_member(:pipeline_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'pipelineVersion', traits: {"smithy.api#documentation" => "<p>The version of the pipeline where the action was run.</p>"}))
    ActionExecutionDetail.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage that contains the action.</p>"}))
    ActionExecutionDetail.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action.</p>"}))
    ActionExecutionDetail.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time of the action execution.</p>"}))
    ActionExecutionDetail.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The last update time of the action execution.</p>"}))
    ActionExecutionDetail.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The ARN of the user who changed the pipeline execution details.</p>"}))
    ActionExecutionDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the action execution. Status categories are <code>InProgress</code>,\n                <code>Succeeded</code>, and <code>Failed</code>.</p>"}))
    ActionExecutionDetail.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionInput, location_name: 'input', traits: {"smithy.api#documentation" => "<p>Input details for the action execution, such as role ARN, Region, and input\n            artifacts.</p>"}))
    ActionExecutionDetail.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionOutput, location_name: 'output', traits: {"smithy.api#documentation" => "<p>Output details for the action execution, such as the action execution result.</p>"}))
    ActionExecutionDetail.type = Types::ActionExecutionDetail
    ActionExecutionDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionDetail)
    ActionExecutionFilter.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The pipeline execution ID used to filter action execution history.</p>"}))
    ActionExecutionFilter.add_member(:latest_in_pipeline_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestInPipelineExecutionFilter, location_name: 'latestInPipelineExecution', traits: {"smithy.api#documentation" => "<p>The latest execution in the pipeline.</p>\n         <note>\n            <p>Filtering on the latest execution is available for executions run on or after\n                February 08, 2024.</p>\n         </note>"}))
    ActionExecutionFilter.type = Types::ActionExecutionFilter
    ActionExecutionInput.add_member(:action_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'actionTypeId'))
    ActionExecutionInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationMap, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Configuration data for an action execution.</p>"}))
    ActionExecutionInput.add_member(:resolved_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedActionConfigurationMap, location_name: 'resolvedConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration data for an action execution with all variable references replaced with\n            their real values for the execution.</p>"}))
    ActionExecutionInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM service role that performs the declared action. This is assumed\n            through the roleArn for the pipeline. </p>"}))
    ActionExecutionInput.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region for the action, such as us-east-1.</p>"}))
    ActionExecutionInput.add_member(:input_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetailList, location_name: 'inputArtifacts', traits: {"smithy.api#documentation" => "<p>Details of input artifacts of the action that correspond to the action\n            execution.</p>"}))
    ActionExecutionInput.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The variable namespace associated with the action. All variables produced as output by\n            this action fall under this namespace.</p>"}))
    ActionExecutionInput.type = Types::ActionExecutionInput
    ActionExecutionNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ActionExecutionNotFoundException.type = Types::ActionExecutionNotFoundException
    ActionExecutionOutput.add_member(:output_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetailList, location_name: 'outputArtifacts', traits: {"smithy.api#documentation" => "<p>Details of output artifacts of the action that correspond to the action\n            execution.</p>"}))
    ActionExecutionOutput.add_member(:execution_result, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionResult, location_name: 'executionResult', traits: {"smithy.api#documentation" => "<p>Execution result information listed in the output details for an action\n            execution.</p>"}))
    ActionExecutionOutput.add_member(:output_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariablesMap, location_name: 'outputVariables', traits: {"smithy.api#documentation" => "<p>The outputVariables field shows the key-value pairs that were output as part of that\n            execution.</p>"}))
    ActionExecutionOutput.type = Types::ActionExecutionOutput
    ActionExecutionResult.add_member(:external_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalExecutionId, location_name: 'externalExecutionId', traits: {"smithy.api#documentation" => "<p>The action provider's external ID for the action execution.</p>"}))
    ActionExecutionResult.add_member(:external_execution_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalExecutionSummary, location_name: 'externalExecutionSummary', traits: {"smithy.api#documentation" => "<p>The action provider's summary for the action execution.</p>"}))
    ActionExecutionResult.add_member(:external_execution_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'externalExecutionUrl', traits: {"smithy.api#documentation" => "<p>The deepest external link to the external resource (for example, a repository URL or\n            deployment endpoint) that is used when running the action.</p>"}))
    ActionExecutionResult.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails'))
    ActionExecutionResult.add_member(:log_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LogStreamARN, location_name: 'logStreamARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the log stream for the action compute.</p>"}))
    ActionExecutionResult.type = Types::ActionExecutionResult
    ActionExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    ActionExecutionStatus.add_member(:abandoned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Abandoned', traits: {"smithy.api#enumValue" => "Abandoned"}))
    ActionExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    ActionExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    ActionNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    ActionNotFoundException.type = Types::ActionNotFoundException
    ActionOwner.add_member(:aws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    ActionOwner.add_member(:third_party, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ThirdParty', traits: {"smithy.api#enumValue" => "ThirdParty"}))
    ActionOwner.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Custom', traits: {"smithy.api#enumValue" => "Custom"}))
    ActionRevision.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID that identifies the revision number of the\n            action.</p>", "smithy.api#required" => {}}))
    ActionRevision.add_member(:revision_change_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, location_name: 'revisionChangeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the change that set the state to this revision (for\n            example, a deployment ID or timestamp).</p>", "smithy.api#required" => {}}))
    ActionRevision.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time when the most recent version of the action was created, in\n            timestamp format.</p>", "smithy.api#required" => {}}))
    ActionRevision.type = Types::ActionRevision
    ActionState.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action.</p>"}))
    ActionState.add_member(:current_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionRevision, location_name: 'currentRevision', traits: {"smithy.api#documentation" => "<p>Represents information about the version (or revision) of an action.</p>"}))
    ActionState.add_member(:latest_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecution, location_name: 'latestExecution', traits: {"smithy.api#documentation" => "<p>Represents information about the run of an action.</p>"}))
    ActionState.add_member(:entity_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'entityUrl', traits: {"smithy.api#documentation" => "<p>A URL link for more information about the state of the action, such as a deployment\n            group details page.</p>"}))
    ActionState.add_member(:revision_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'revisionUrl', traits: {"smithy.api#documentation" => "<p>A URL link for more information about the revision, such as a commit details\n            page.</p>"}))
    ActionState.type = Types::ActionState
    ActionStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionState)
    ActionType.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>Represents information about an action type.</p>", "smithy.api#required" => {}}))
    ActionType.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeSettings, location_name: 'settings', traits: {"smithy.api#documentation" => "<p>The settings for the action type.</p>"}))
    ActionType.add_member(:action_configuration_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationPropertyList, location_name: 'actionConfigurationProperties', traits: {"smithy.api#documentation" => "<p>The configuration properties for the action type.</p>"}))
    ActionType.add_member(:input_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: 'inputArtifactDetails', traits: {"smithy.api#documentation" => "<p>The details of the input artifact for the action, such as its commit ID.</p>", "smithy.api#required" => {}}))
    ActionType.add_member(:output_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: 'outputArtifactDetails', traits: {"smithy.api#documentation" => "<p>The details of the output artifact of the action, such as its commit ID.</p>", "smithy.api#required" => {}}))
    ActionType.type = Types::ActionType
    ActionTypeArtifactDetails.add_member(:minimum_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumActionTypeArtifactCount, location_name: 'minimumCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum number of artifacts that can be used with the action type. For example,\n            you should specify a minimum and maximum of zero input artifacts for an action type with\n            a category of <code>source</code>.</p>", "smithy.api#required" => {}}))
    ActionTypeArtifactDetails.add_member(:maximum_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumActionTypeArtifactCount, location_name: 'maximumCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of artifacts that can be used with the actiontype. For example, you\n            should specify a minimum and maximum of zero input artifacts for an action type with a\n            category of <code>source</code>.</p>", "smithy.api#required" => {}}))
    ActionTypeArtifactDetails.type = Types::ActionTypeArtifactDetails
    ActionTypeDeclaration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the action type to be updated.</p>"}))
    ActionTypeDeclaration.add_member(:executor, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeExecutor, location_name: 'executor', traits: {"smithy.api#documentation" => "<p>Information about the executor for an action type that was created with any supported\n            integration model.</p>", "smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeIdentifier, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The action category, owner, provider, and version of the action type to be\n            updated.</p>", "smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:input_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeArtifactDetails, location_name: 'inputArtifactDetails', traits: {"smithy.api#documentation" => "<p>Details for the artifacts, such as application files, to be worked on by the action.\n            For example, the minimum and maximum number of input artifacts allowed.</p>", "smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:output_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeArtifactDetails, location_name: 'outputArtifactDetails', traits: {"smithy.api#documentation" => "<p>Details for the output artifacts, such as a built application, that are the result of\n            the action. For example, the minimum and maximum number of output artifacts\n            allowed.</p>", "smithy.api#required" => {}}))
    ActionTypeDeclaration.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypePermissions, location_name: 'permissions', traits: {"smithy.api#documentation" => "<p>Details identifying the accounts with permissions to use the action type.</p>"}))
    ActionTypeDeclaration.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>The properties of the action type to be updated.</p>"}))
    ActionTypeDeclaration.add_member(:urls, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeUrls, location_name: 'urls', traits: {"smithy.api#documentation" => "<p>The links associated with the action type to be updated.</p>"}))
    ActionTypeDeclaration.type = Types::ActionTypeDeclaration
    ActionTypeExecutor.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The action configuration properties for the action type. These properties are\n            specified in the action definition when the action type is created.</p>", "smithy.api#required" => {}}))
    ActionTypeExecutor.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutorType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The integration model used to create and update the action type, <code>Lambda</code>\n            or <code>JobWorker</code>. </p>", "smithy.api#required" => {}}))
    ActionTypeExecutor.add_member(:policy_statements_template, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatementsTemplate, location_name: 'policyStatementsTemplate', traits: {"smithy.api#documentation" => "<p>The policy statement that specifies the permissions in the CodePipeline customer\n            account that are needed to successfully run an action.</p>\n         <p>To grant permission to another account, specify the account ID as the Principal, a\n            domain-style identifier defined by the service, for example\n                <code>codepipeline.amazonaws.com</code>.</p>\n         <note>\n            <p>The size of the passed JSON policy document cannot exceed 2048 characters.</p>\n         </note>"}))
    ActionTypeExecutor.add_member(:job_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeout, location_name: 'jobTimeout', traits: {"smithy.api#documentation" => "<p>The timeout in seconds for the job. An action execution can have multiple jobs. This\n            is the timeout for a single job, not the entire action execution.</p>"}))
    ActionTypeExecutor.type = Types::ActionTypeExecutor
    ActionTypeId.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>A category defines what kind of action can be taken in the stage, and constrains\n            the provider type for the action. Valid categories are limited to one of the following\n            values. </p>\n         <ul>\n            <li>\n               <p>Source</p>\n            </li>\n            <li>\n               <p>Build</p>\n            </li>\n            <li>\n               <p>Test</p>\n            </li>\n            <li>\n               <p>Deploy</p>\n            </li>\n            <li>\n               <p>Invoke</p>\n            </li>\n            <li>\n               <p>Approval</p>\n            </li>\n            <li>\n               <p>Compute</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ActionTypeId.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionOwner, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The creator of the action being called. There are three valid values for the\n                <code>Owner</code> field in the action category section within your pipeline\n            structure: <code>AWS</code>, <code>ThirdParty</code>, and <code>Custom</code>. For more\n            information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers\">Valid Action Types and Providers in CodePipeline</a>.</p>", "smithy.api#required" => {}}))
    ActionTypeId.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The provider of the service being called by the action. Valid providers are\n            determined by the action category. For example, an action in the Deploy category type\n            might have a provider of CodeDeploy, which would be specified as\n            <code>CodeDeploy</code>. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers\">Valid Action Types and Providers in CodePipeline</a>.</p>", "smithy.api#required" => {}}))
    ActionTypeId.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A string that describes the action version.</p>", "smithy.api#required" => {}}))
    ActionTypeId.type = Types::ActionTypeId
    ActionTypeIdentifier.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Defines what kind of action can be taken in the stage, one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Source</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Build</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Test</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Deploy</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Approval</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Invoke</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ActionTypeIdentifier.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeOwner, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The creator of the action type being called: <code>AWS</code> or\n                <code>ThirdParty</code>.</p>", "smithy.api#required" => {}}))
    ActionTypeIdentifier.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The provider of the action type being called. The provider name is supplied when the\n            action type is created.</p>", "smithy.api#required" => {}}))
    ActionTypeIdentifier.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A string that describes the action type version.</p>", "smithy.api#required" => {}}))
    ActionTypeIdentifier.type = Types::ActionTypeIdentifier
    ActionTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType)
    ActionTypeNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    ActionTypeNotFoundException.type = Types::ActionTypeNotFoundException
    ActionTypePermissions.add_member(:allowed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAccounts, location_name: 'allowedAccounts', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs with access to use the action type in their\n            pipelines.</p>", "smithy.api#required" => {}}))
    ActionTypePermissions.type = Types::ActionTypePermissions
    ActionTypeProperties.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeProperty)
    ActionTypeProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationKey, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The property name that is displayed to users.</p>", "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'optional', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is an optional value.</p>", "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'key', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is a key.</p>", "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:no_echo, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'noEcho', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to omit the field value entered by the customer in the log. If\n                <code>true</code>, the value is not saved in CloudTrail logs for the action\n            execution.</p>", "smithy.api#required" => {}}))
    ActionTypeProperty.add_member(:queryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'queryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates that the property is used with polling. An action type can have up to one\n            queryable property. If it has one, that property must be both required and not\n            secret.</p>"}))
    ActionTypeProperty.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PropertyDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the property that is displayed to users.</p>"}))
    ActionTypeProperty.type = Types::ActionTypeProperty
    ActionTypeSettings.add_member(:third_party_configuration_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'thirdPartyConfigurationUrl', traits: {"smithy.api#documentation" => "<p>The URL of a sign-up page where users can sign up for an external service and\n            perform initial configuration of the action provided by that service.</p>"}))
    ActionTypeSettings.add_member(:entity_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'entityUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that provides a deep link to the\n            resources of the external system, such as the configuration page for a CodeDeploy\n            deployment group. This link is provided as part of the action display in the\n            pipeline.</p>"}))
    ActionTypeSettings.add_member(:execution_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'executionUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that contains a link to the\n            top-level landing page for the external system, such as the console page for CodeDeploy.\n            This link is shown on the pipeline view page in the CodePipeline console and\n            provides a link to the execution entity of the external action.</p>"}))
    ActionTypeSettings.add_member(:revision_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'revisionUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that contains a link to the page\n            where customers can update or change the configuration of the external action.</p>"}))
    ActionTypeSettings.type = Types::ActionTypeSettings
    ActionTypeUrls.add_member(:configuration_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'configurationUrl', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that contains a link to the page\n            where customers can configure the external action.</p>"}))
    ActionTypeUrls.add_member(:entity_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'entityUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that provides a deep link to the\n            resources of the external system, such as a status page. This link is provided as part\n            of the action display in the pipeline.</p>"}))
    ActionTypeUrls.add_member(:execution_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'executionUrlTemplate', traits: {"smithy.api#documentation" => "<p>The link to an execution page for the action type in progress. For example, for a\n            CodeDeploy action, this link is shown on the pipeline view page in the CodePipeline console, and it links to a CodeDeploy status page.</p>"}))
    ActionTypeUrls.add_member(:revision_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'revisionUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that contains a link to the page\n            where customers can update or change the configuration of the external action.</p>"}))
    ActionTypeUrls.type = Types::ActionTypeUrls
    AllowedAccounts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAccount)
    ApprovalAlreadyCompletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    ApprovalAlreadyCompletedException.type = Types::ApprovalAlreadyCompletedException
    ApprovalResult.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>The summary of the current status of the approval request.</p>", "smithy.api#required" => {}}))
    ApprovalResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The response submitted by a reviewer assigned to an approval action\n            request.</p>", "smithy.api#required" => {}}))
    ApprovalResult.type = Types::ApprovalResult
    ApprovalStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Approved', traits: {"smithy.api#enumValue" => "Approved"}))
    ApprovalStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Rejected', traits: {"smithy.api#enumValue" => "Rejected"}))
    Artifact.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The artifact's name.</p>"}))
    Artifact.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>The artifact's revision ID. Depending on the type of object, this could be a commit\n            ID (GitHub) or a revision ID (Amazon S3).</p>"}))
    Artifact.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of an artifact.</p>"}))
    Artifact.type = Types::Artifact
    ArtifactDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The artifact object name for the action execution.</p>"}))
    ArtifactDetail.add_member(:s3location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3location', traits: {"smithy.api#documentation" => "<p>The Amazon S3 artifact location for the action execution.</p>"}))
    ArtifactDetail.type = Types::ArtifactDetail
    ArtifactDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetail)
    ArtifactDetails.add_member(:minimum_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MinimumArtifactCount, location_name: 'minimumCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The minimum number of artifacts allowed for the action type.</p>", "smithy.api#required" => {}}))
    ArtifactDetails.add_member(:maximum_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumArtifactCount, location_name: 'maximumCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of artifacts allowed for the action type.</p>", "smithy.api#required" => {}}))
    ArtifactDetails.type = Types::ArtifactDetails
    ArtifactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Artifact)
    ArtifactLocation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactLocationType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of artifact in the location.</p>"}))
    ArtifactLocation.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ArtifactLocation, location_name: 's3Location', traits: {"smithy.api#documentation" => "<p>The S3 bucket that contains the artifact.</p>"}))
    ArtifactLocation.type = Types::ArtifactLocation
    ArtifactLocationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    ArtifactRevision.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of an artifact. This name might be system-generated, such as \"MyApp\", or\n            defined by the user when an action is created.</p>"}))
    ArtifactRevision.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the artifact.</p>"}))
    ArtifactRevision.add_member(:revision_change_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, location_name: 'revisionChangeIdentifier', traits: {"smithy.api#documentation" => "<p>An additional identifier for a revision, such as a commit date or, for artifacts\n            stored in Amazon S3 buckets, the ETag value.</p>"}))
    ArtifactRevision.add_member(:revision_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionSummary, location_name: 'revisionSummary', traits: {"smithy.api#documentation" => "<p>Summary information about the most recent revision of the artifact. For GitHub and\n            CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the\n            user-provided content of a <code>codepipeline-artifact-revision-summary</code> key\n            specified in the object metadata.</p>"}))
    ArtifactRevision.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time when the most recent revision of the artifact was created, in\n            timestamp format.</p>"}))
    ArtifactRevision.add_member(:revision_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'revisionUrl', traits: {"smithy.api#documentation" => "<p>The commit ID for the artifact revision. For artifacts stored in GitHub or\n            CodeCommit repositories, the commit ID is linked to a commit details page.</p>"}))
    ArtifactRevision.type = Types::ArtifactRevision
    ArtifactRevisionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactRevision)
    ArtifactStore.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStoreType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the artifact store, such as S3.</p>", "smithy.api#required" => {}}))
    ArtifactStore.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStoreLocation, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The S3 bucket used for storing the artifacts for a pipeline. You can specify the\n            name of an S3 bucket but not a folder in the bucket. A folder to contain the pipeline\n            artifacts is created for you based on the name of the pipeline. You can use any S3\n            bucket in the same Amazon Web Services Region as the pipeline to store your pipeline\n            artifacts.</p>", "smithy.api#required" => {}}))
    ArtifactStore.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>The encryption key used to encrypt the data in the artifact store, such as an\n                Amazon Web Services Key Management Service key. If this is undefined, the default key\n            for Amazon S3 is used.</p>"}))
    ArtifactStore.type = Types::ArtifactStore
    ArtifactStoreMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName)
    ArtifactStoreMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStore)
    ArtifactStoreType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    BeforeEntryConditions.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionList, location_name: 'conditions', traits: {"smithy.api#documentation" => "<p>The conditions that are configured as entry conditions.</p>", "smithy.api#required" => {}}))
    BeforeEntryConditions.type = Types::BeforeEntryConditions
    BlockerDeclaration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#required" => {}}))
    BlockerDeclaration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#required" => {}}))
    BlockerDeclaration.type = Types::BlockerDeclaration
    BlockerType.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Schedule', traits: {"smithy.api#enumValue" => "Schedule"}))
    CommandList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Command)
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConcurrentPipelineExecutionsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ConcurrentPipelineExecutionsLimitExceededException.type = Types::ConcurrentPipelineExecutionsLimitExceededException
    Condition.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Result, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The action to be done when the condition is met. For example, rolling back an\n            execution for a failure condition.</p>"}))
    Condition.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDeclarationList, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>The rules that make up the condition.</p>"}))
    Condition.type = Types::Condition
    ConditionExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the run for a condition.</p>"}))
    ConditionExecution.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>The summary of information about a run for a condition.</p>"}))
    ConditionExecution.add_member(:last_status_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStatusChange', traits: {"smithy.api#documentation" => "<p>The last status change of the condition.</p>"}))
    ConditionExecution.type = Types::ConditionExecution
    ConditionExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    ConditionExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    ConditionExecutionStatus.add_member(:errored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Errored', traits: {"smithy.api#enumValue" => "Errored"}))
    ConditionExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    ConditionExecutionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    ConditionExecutionStatus.add_member(:abandoned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Abandoned', traits: {"smithy.api#enumValue" => "Abandoned"}))
    ConditionExecutionStatus.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Overridden', traits: {"smithy.api#enumValue" => "Overridden"}))
    ConditionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Condition)
    ConditionNotOverridableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConditionNotOverridableException.type = Types::ConditionNotOverridableException
    ConditionState.add_member(:latest_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExecution, location_name: 'latestExecution', traits: {"smithy.api#documentation" => "<p>The state of the latest run of the rule.</p>"}))
    ConditionState.add_member(:rule_states, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleStateList, location_name: 'ruleStates', traits: {"smithy.api#documentation" => "<p>The state of the rules for the condition.</p>"}))
    ConditionState.type = Types::ConditionState
    ConditionStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionState)
    ConditionType.add_member(:before_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEFORE_ENTRY', traits: {"smithy.api#enumValue" => "BEFORE_ENTRY"}))
    ConditionType.add_member(:on_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_SUCCESS', traits: {"smithy.api#enumValue" => "ON_SUCCESS"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateCustomActionTypeInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the custom action, such as a build action or a test\n            action.</p>", "smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The provider of the service used in the custom action, such as\n            CodeDeploy.</p>", "smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version identifier of the custom action.</p>", "smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeSettings, location_name: 'settings', traits: {"smithy.api#documentation" => "<p>URLs that provide users information about this custom action.</p>"}))
    CreateCustomActionTypeInput.add_member(:configuration_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationPropertyList, location_name: 'configurationProperties', traits: {"smithy.api#documentation" => "<p>The configuration properties for the custom action.</p>\n         <note>\n            <p>You can refer to a name in the configuration properties of the custom action\n                within the URL templates by following the format of {Config:name}, as long as the\n                configuration property is both required and not secret. For more information, see\n                    <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html\">Create a\n                    Custom Action for a Pipeline</a>.</p>\n         </note>"}))
    CreateCustomActionTypeInput.add_member(:input_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: 'inputArtifactDetails', traits: {"smithy.api#documentation" => "<p>The details of the input artifact for the action, such as its commit ID.</p>", "smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:output_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: 'outputArtifactDetails', traits: {"smithy.api#documentation" => "<p>The details of the output artifact of the action, such as its commit ID.</p>", "smithy.api#required" => {}}))
    CreateCustomActionTypeInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the custom action.</p>"}))
    CreateCustomActionTypeInput.type = Types::CreateCustomActionTypeInput
    CreateCustomActionTypeOutput.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>Returns information about the details of an action type.</p>", "smithy.api#required" => {}}))
    CreateCustomActionTypeOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Specifies the tags applied to the custom action.</p>"}))
    CreateCustomActionTypeOutput.type = Types::CreateCustomActionTypeOutput
    CreatePipelineInput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>Represents the structure of actions and stages to be performed in the pipeline.\n        </p>", "smithy.api#required" => {}}))
    CreatePipelineInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the pipeline.</p>"}))
    CreatePipelineInput.type = Types::CreatePipelineInput
    CreatePipelineOutput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>Represents the structure of actions and stages to be performed in the pipeline.\n        </p>"}))
    CreatePipelineOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Specifies the tags applied to the pipeline.</p>"}))
    CreatePipelineOutput.type = Types::CreatePipelineOutput
    CurrentRevision.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>The revision ID of the current version of an artifact.</p>", "smithy.api#required" => {}}))
    CurrentRevision.add_member(:change_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, location_name: 'changeIdentifier', traits: {"smithy.api#documentation" => "<p>The change identifier for the current revision.</p>", "smithy.api#required" => {}}))
    CurrentRevision.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Time, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time when the most recent revision of the artifact was created, in\n            timestamp format.</p>"}))
    CurrentRevision.add_member(:revision_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionSummary, location_name: 'revisionSummary', traits: {"smithy.api#documentation" => "<p>The summary of the most recent revision of the artifact.</p>"}))
    CurrentRevision.type = Types::CurrentRevision
    DeleteCustomActionTypeInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the custom action that you want to delete, such as source or\n            deploy.</p>", "smithy.api#required" => {}}))
    DeleteCustomActionTypeInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The provider of the service used in the custom action, such as\n            CodeDeploy.</p>", "smithy.api#required" => {}}))
    DeleteCustomActionTypeInput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the custom action to delete.</p>", "smithy.api#required" => {}}))
    DeleteCustomActionTypeInput.type = Types::DeleteCustomActionTypeInput
    DeletePipelineInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to be deleted.</p>", "smithy.api#required" => {}}))
    DeletePipelineInput.type = Types::DeletePipelineInput
    DeleteWebhookInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the webhook you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteWebhookInput.type = Types::DeleteWebhookInput
    DeleteWebhookOutput.type = Types::DeleteWebhookOutput
    DeployActionExecutionTarget.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetId', traits: {"smithy.api#documentation" => "<p>The ID of the target for the deploy action.</p>"}))
    DeployActionExecutionTarget.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'targetType', traits: {"smithy.api#documentation" => "<p>The type of target for the deploy action.</p>"}))
    DeployActionExecutionTarget.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the deploy action.</p>"}))
    DeployActionExecutionTarget.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time for the deploy action.</p>"}))
    DeployActionExecutionTarget.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time for the deploy action.</p>"}))
    DeployActionExecutionTarget.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployTargetEventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The lifecycle events for the deploy action.</p>"}))
    DeployActionExecutionTarget.type = Types::DeployActionExecutionTarget
    DeployActionExecutionTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeployActionExecutionTarget)
    DeployTargetEvent.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the event for the deploy action.</p>"}))
    DeployTargetEvent.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the event for the deploy action.</p>"}))
    DeployTargetEvent.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time for the event for the deploy action.</p>"}))
    DeployTargetEvent.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end time for the event for the deploy action.</p>"}))
    DeployTargetEvent.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployTargetEventContext, location_name: 'context', traits: {"smithy.api#documentation" => "<p>The context for the event for the deploy action.</p>"}))
    DeployTargetEvent.type = Types::DeployTargetEvent
    DeployTargetEventContext.add_member(:ssm_command_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ssmCommandId', traits: {"smithy.api#documentation" => "<p>The command ID for the event for the deploy action.</p>"}))
    DeployTargetEventContext.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The context message for the event for the deploy action.</p>"}))
    DeployTargetEventContext.type = Types::DeployTargetEventContext
    DeployTargetEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeployTargetEvent)
    DeregisterWebhookWithThirdPartyInput.add_member(:webhook_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookName, location_name: 'webhookName', traits: {"smithy.api#documentation" => "<p>The name of the webhook you want to deregister.</p>"}))
    DeregisterWebhookWithThirdPartyInput.type = Types::DeregisterWebhookWithThirdPartyInput
    DeregisterWebhookWithThirdPartyOutput.type = Types::DeregisterWebhookWithThirdPartyOutput
    DisableStageTransitionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline in which you want to disable the flow of artifacts from\n            one stage to another.</p>", "smithy.api#required" => {}}))
    DisableStageTransitionInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage where you want to disable the inbound or outbound transition\n            of artifacts.</p>", "smithy.api#required" => {}}))
    DisableStageTransitionInput.add_member(:transition_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StageTransitionType, location_name: 'transitionType', traits: {"smithy.api#documentation" => "<p>Specifies whether artifacts are prevented from transitioning into the stage and\n            being processed by the actions in that stage (inbound), or prevented from transitioning\n            from the stage after they have been processed by the actions in that stage\n            (outbound).</p>", "smithy.api#required" => {}}))
    DisableStageTransitionInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason given to the user that a stage is disabled, such as waiting for manual\n            approval or manual tests. This message is displayed in the pipeline console\n            UI.</p>", "smithy.api#required" => {}}))
    DisableStageTransitionInput.type = Types::DisableStageTransitionInput
    DuplicatedStopRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    DuplicatedStopRequestException.type = Types::DuplicatedStopRequestException
    EnableStageTransitionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline in which you want to enable the flow of artifacts from one\n            stage to another.</p>", "smithy.api#required" => {}}))
    EnableStageTransitionInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage where you want to enable the transition of artifacts, either\n            into the stage (inbound) or from that stage to the next stage (outbound).</p>", "smithy.api#required" => {}}))
    EnableStageTransitionInput.add_member(:transition_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StageTransitionType, location_name: 'transitionType', traits: {"smithy.api#documentation" => "<p>Specifies whether artifacts are allowed to enter the stage and be processed by the\n            actions in that stage (inbound) or whether already processed artifacts are allowed to\n            transition to the next stage (outbound).</p>", "smithy.api#required" => {}}))
    EnableStageTransitionInput.type = Types::EnableStageTransitionInput
    EncryptionKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID used to identify the key. For an Amazon Web Services KMS key, you can use the\n            key ID, the key ARN, or the alias ARN.</p>\n         <note>\n            <p>Aliases are recognized only in the account that created the KMS\n                key. For cross-account actions, you can only use the key ID or key ARN to identify\n                the key. Cross-account actions involve using the role from the other account\n                (AccountB), so specifying the key ID will use the key from the other account\n                (AccountB).</p>\n         </note>", "smithy.api#required" => {}}))
    EncryptionKey.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of encryption key, such as an Amazon Web Services KMS key. When creating or\n            updating a pipeline, the value must be set to 'KMS'.</p>", "smithy.api#required" => {}}))
    EncryptionKey.type = Types::EncryptionKey
    EncryptionKeyType.add_member(:kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS', traits: {"smithy.api#enumValue" => "KMS"}))
    EnvironmentVariable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The environment variable name in the key-value pair.</p>", "smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The environment variable value in the key-value pair.</p>", "smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies the type of use for the environment variable value. The value can be either\n            <code>PLAINTEXT</code> or <code>SECRETS_MANAGER</code>. If the value is <code>SECRETS_MANAGER</code>, provide the Secrets\n            reference in the EnvironmentVariable value.</p>"}))
    EnvironmentVariable.type = Types::EnvironmentVariable
    EnvironmentVariableList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariable)
    EnvironmentVariableType.add_member(:plaintext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAINTEXT', traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    EnvironmentVariableType.add_member(:secrets_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECRETS_MANAGER', traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    ErrorDetails.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The system ID or number code of the error.</p>"}))
    ErrorDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The text of the error message.</p>"}))
    ErrorDetails.type = Types::ErrorDetails
    ExecutionDetails.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>The summary of the current status of the actions.</p>"}))
    ExecutionDetails.add_member(:external_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'externalExecutionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of this action used to identify this job worker in\n            any external systems, such as CodeDeploy.</p>"}))
    ExecutionDetails.add_member(:percent_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'percentComplete', traits: {"smithy.api#documentation" => "<p>The percentage of work completed on the action, represented on a scale of 0 to 100\n            percent.</p>"}))
    ExecutionDetails.type = Types::ExecutionDetails
    ExecutionMode.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    ExecutionMode.add_member(:superseded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERSEDED', traits: {"smithy.api#enumValue" => "SUPERSEDED"}))
    ExecutionMode.add_member(:parallel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARALLEL', traits: {"smithy.api#enumValue" => "PARALLEL"}))
    ExecutionTrigger.add_member(:trigger_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerType, location_name: 'triggerType', traits: {"smithy.api#documentation" => "<p>The type of change-detection method, command, or user interaction that started a\n            pipeline execution.</p>"}))
    ExecutionTrigger.add_member(:trigger_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerDetail, location_name: 'triggerDetail', traits: {"smithy.api#documentation" => "<p>Detail related to the event that started a pipeline execution, such as the webhook ARN\n            of the webhook that triggered the pipeline execution or the user ARN for a\n            user-initiated <code>start-pipeline-execution</code> CLI command.</p>"}))
    ExecutionTrigger.type = Types::ExecutionTrigger
    ExecutionType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    ExecutionType.add_member(:rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK', traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    ExecutorConfiguration.add_member(:lambda_executor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaExecutorConfiguration, location_name: 'lambdaExecutorConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the <code>Lambda</code> executor of the action type.</p>"}))
    ExecutorConfiguration.add_member(:job_worker_executor_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: JobWorkerExecutorConfiguration, location_name: 'jobWorkerExecutorConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the <code>JobWorker</code> executor of the action type.</p>"}))
    ExecutorConfiguration.type = Types::ExecutorConfiguration
    ExecutorType.add_member(:job_worker, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JobWorker', traits: {"smithy.api#enumValue" => "JobWorker"}))
    ExecutorType.add_member(:lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Lambda', traits: {"smithy.api#enumValue" => "Lambda"}))
    FailureConditions.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: Result, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The specified result for when the failure conditions are met, such as rolling back the\n            stage.</p>"}))
    FailureConditions.add_member(:retry_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryConfiguration, location_name: 'retryConfiguration', traits: {"smithy.api#documentation" => "<p>The retry configuration specifies automatic retry for a failed stage, along with the\n            configured retry mode.</p>"}))
    FailureConditions.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionList, location_name: 'conditions', traits: {"smithy.api#documentation" => "<p>The conditions that are configured as failure conditions. For more information about\n            conditions, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html\">Stage conditions</a>\n            and <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html\">How do\n                stage conditions work?</a>.</p>"}))
    FailureConditions.type = Types::FailureConditions
    FailureDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the failure.</p>", "smithy.api#required" => {}}))
    FailureDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message about the failure.</p>", "smithy.api#required" => {}}))
    FailureDetails.add_member(:external_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'externalExecutionId', traits: {"smithy.api#documentation" => "<p>The external ID of the run of the action that failed.</p>"}))
    FailureDetails.type = Types::FailureDetails
    FailureType.add_member(:job_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JobFailed', traits: {"smithy.api#enumValue" => "JobFailed"}))
    FailureType.add_member(:configuration_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationError', traits: {"smithy.api#enumValue" => "ConfigurationError"}))
    FailureType.add_member(:permission_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PermissionError', traits: {"smithy.api#enumValue" => "PermissionError"}))
    FailureType.add_member(:revision_out_of_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RevisionOutOfSync', traits: {"smithy.api#enumValue" => "RevisionOutOfSync"}))
    FailureType.add_member(:revision_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RevisionUnavailable', traits: {"smithy.api#enumValue" => "RevisionUnavailable"}))
    FailureType.add_member(:system_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SystemUnavailable', traits: {"smithy.api#enumValue" => "SystemUnavailable"}))
    FilePathList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FilePath)
    GetActionTypeInput.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>Defines what kind of action can be taken in the stage. The following are the valid\n            values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Source</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Build</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Test</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Deploy</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Approval</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Invoke</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Compute</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetActionTypeInput.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeOwner, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The creator of an action type that was created with any supported integration model.\n            There are two valid values: <code>AWS</code> and <code>ThirdParty</code>.</p>", "smithy.api#required" => {}}))
    GetActionTypeInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The provider of the action type being called. The provider name is specified when the\n            action type is created.</p>", "smithy.api#required" => {}}))
    GetActionTypeInput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A string that describes the action type version.</p>", "smithy.api#required" => {}}))
    GetActionTypeInput.type = Types::GetActionTypeInput
    GetActionTypeOutput.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeDeclaration, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The action type information for the requested action type, such as the action type\n            ID.</p>"}))
    GetActionTypeOutput.type = Types::GetActionTypeOutput
    GetJobDetailsInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID for the job.</p>", "smithy.api#required" => {}}))
    GetJobDetailsInput.type = Types::GetJobDetailsInput
    GetJobDetailsOutput.add_member(:job_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>The details of the job.</p>\n         <note>\n            <p>If AWSSessionCredentials is used, a long-running job can call\n                    <code>GetJobDetails</code> again to obtain new credentials.</p>\n         </note>"}))
    GetJobDetailsOutput.type = Types::GetJobDetailsOutput
    GetPipelineExecutionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline about which you want to get execution details.</p>", "smithy.api#required" => {}}))
    GetPipelineExecutionInput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution about which you want to get execution\n            details.</p>", "smithy.api#required" => {}}))
    GetPipelineExecutionInput.type = Types::GetPipelineExecutionInput
    GetPipelineExecutionOutput.add_member(:pipeline_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecution, location_name: 'pipelineExecution', traits: {"smithy.api#documentation" => "<p>Represents information about the execution of a pipeline.</p>"}))
    GetPipelineExecutionOutput.type = Types::GetPipelineExecutionOutput
    GetPipelineInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline for which you want to get information. Pipeline names must\n            be unique in an Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    GetPipelineInput.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version number of the pipeline. If you do not specify a version, defaults to\n            the current version.</p>"}))
    GetPipelineInput.type = Types::GetPipelineInput
    GetPipelineOutput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>Represents the structure of actions and stages to be performed in the pipeline.\n        </p>"}))
    GetPipelineOutput.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Represents the pipeline metadata information returned as part of the output of a\n                <code>GetPipeline</code> action.</p>"}))
    GetPipelineOutput.type = Types::GetPipelineOutput
    GetPipelineStateInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline about which you want to get information.</p>", "smithy.api#required" => {}}))
    GetPipelineStateInput.type = Types::GetPipelineStateInput
    GetPipelineStateOutput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline for which you want to get the state.</p>"}))
    GetPipelineStateOutput.add_member(:pipeline_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'pipelineVersion', traits: {"smithy.api#documentation" => "<p>The version number of the pipeline.</p>\n         <note>\n            <p>A newly created pipeline is always assigned a version number of\n                <code>1</code>.</p>\n         </note>"}))
    GetPipelineStateOutput.add_member(:stage_states, Smithy::Schema::Shapes::ShapeRef.new(shape: StageStateList, location_name: 'stageStates', traits: {"smithy.api#documentation" => "<p>A list of the pipeline stage output information, including stage name, state, most\n            recent run details, whether the stage is disabled, and other data.</p>"}))
    GetPipelineStateOutput.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time the pipeline was created, in timestamp format.</p>"}))
    GetPipelineStateOutput.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updated', traits: {"smithy.api#documentation" => "<p>The date and time the pipeline was last updated, in timestamp format.</p>"}))
    GetPipelineStateOutput.type = Types::GetPipelineStateOutput
    GetThirdPartyJobDetailsInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID used for identifying the job.</p>", "smithy.api#required" => {}}))
    GetThirdPartyJobDetailsInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The clientToken portion of the clientId and clientToken pair used to verify that\n            the calling entity is allowed access to the job and its details.</p>", "smithy.api#required" => {}}))
    GetThirdPartyJobDetailsInput.type = Types::GetThirdPartyJobDetailsInput
    GetThirdPartyJobDetailsOutput.add_member(:job_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobDetails, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>The details of the job, including any protected values defined for the\n            job.</p>"}))
    GetThirdPartyJobDetailsOutput.type = Types::GetThirdPartyJobDetailsOutput
    GitBranchFilterCriteria.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchPatternList, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The list of patterns of Git branches that, when a commit is pushed, are to be\n            included as criteria that starts the pipeline.</p>"}))
    GitBranchFilterCriteria.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchPatternList, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The list of patterns of Git branches that, when a commit is pushed, are to be\n            excluded from starting the pipeline.</p>"}))
    GitBranchFilterCriteria.type = Types::GitBranchFilterCriteria
    GitBranchPatternList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchNamePattern)
    GitConfiguration.add_member(:source_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'sourceActionName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline source action where the trigger configuration, such as Git\n            tags, is specified. The trigger configuration will start the pipeline upon the specified\n            change only.</p>\n         <note>\n            <p>You can only specify one trigger configuration per source action.</p>\n         </note>", "smithy.api#required" => {}}))
    GitConfiguration.add_member(:push, Smithy::Schema::Shapes::ShapeRef.new(shape: GitPushFilterList, location_name: 'push', traits: {"smithy.api#documentation" => "<p>The field where the repository event that will start the pipeline, such as pushing\n            Git tags, is specified with details.</p>"}))
    GitConfiguration.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: GitPullRequestFilterList, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>The field where the repository event that will start the pipeline is specified as\n            pull requests.</p>"}))
    GitConfiguration.type = Types::GitConfiguration
    GitFilePathFilterCriteria.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: GitFilePathPatternList, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The list of patterns of Git repository file paths that, when a commit is pushed,\n            are to be included as criteria that starts the pipeline.</p>"}))
    GitFilePathFilterCriteria.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: GitFilePathPatternList, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The list of patterns of Git repository file paths that, when a commit is pushed,\n            are to be excluded from starting the pipeline.</p>"}))
    GitFilePathFilterCriteria.type = Types::GitFilePathFilterCriteria
    GitFilePathPatternList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitFilePathPattern)
    GitPullRequestEventType.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    GitPullRequestEventType.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "UPDATED"}))
    GitPullRequestEventType.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    GitPullRequestEventTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitPullRequestEventType)
    GitPullRequestFilter.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: GitPullRequestEventTypeList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The field that specifies which pull request events to filter on (OPEN, UPDATED,\n            CLOSED) for the trigger configuration.</p>"}))
    GitPullRequestFilter.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchFilterCriteria, location_name: 'branches', traits: {"smithy.api#documentation" => "<p>The field that specifies to filter on branches for the pull request trigger\n            configuration.</p>"}))
    GitPullRequestFilter.add_member(:file_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: GitFilePathFilterCriteria, location_name: 'filePaths', traits: {"smithy.api#documentation" => "<p>The field that specifies to filter on file paths for the pull request trigger\n            configuration.</p>"}))
    GitPullRequestFilter.type = Types::GitPullRequestFilter
    GitPullRequestFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitPullRequestFilter)
    GitPushFilter.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: GitTagFilterCriteria, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The field that contains the details for the Git tags trigger\n            configuration.</p>"}))
    GitPushFilter.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: GitBranchFilterCriteria, location_name: 'branches', traits: {"smithy.api#documentation" => "<p>The field that specifies to filter on branches for the push trigger\n            configuration.</p>"}))
    GitPushFilter.add_member(:file_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: GitFilePathFilterCriteria, location_name: 'filePaths', traits: {"smithy.api#documentation" => "<p>The field that specifies to filter on file paths for the push trigger\n            configuration.</p>"}))
    GitPushFilter.type = Types::GitPushFilter
    GitPushFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitPushFilter)
    GitTagFilterCriteria.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: GitTagPatternList, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The list of patterns of Git tags that, when pushed, are to be included as criteria\n            that starts the pipeline.</p>"}))
    GitTagFilterCriteria.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: GitTagPatternList, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The list of patterns of Git tags that, when pushed, are to be excluded from\n            starting the pipeline.</p>"}))
    GitTagFilterCriteria.type = Types::GitTagFilterCriteria
    GitTagPatternList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GitTagNamePattern)
    InputArtifact.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the artifact to be worked on (for example, \"My App\").</p>\n         <p>Artifacts are the files that are worked on by actions in the pipeline. See the\n            action configuration for each action for details about artifact parameters. For example,\n            the S3 source action input artifact is a file name (or file path), and the files are\n            generally provided as a ZIP file. Example artifact name: SampleApp_Windows.zip</p>\n         <p>The input artifact of an action must exactly match the output artifact declared in\n            a preceding action, but the input artifact does not have to be the next action in strict\n            sequence from the action that provided the output artifact. Actions in parallel can\n            declare different output artifacts, which are in turn consumed by different following\n            actions.</p>", "smithy.api#required" => {}}))
    InputArtifact.type = Types::InputArtifact
    InputArtifactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InputArtifact)
    InvalidActionDeclarationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidActionDeclarationException.type = Types::InvalidActionDeclarationException
    InvalidApprovalTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidApprovalTokenException.type = Types::InvalidApprovalTokenException
    InvalidArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidArnException.type = Types::InvalidArnException
    InvalidBlockerDeclarationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidBlockerDeclarationException.type = Types::InvalidBlockerDeclarationException
    InvalidClientTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidClientTokenException.type = Types::InvalidClientTokenException
    InvalidJobException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidJobException.type = Types::InvalidJobException
    InvalidJobStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidJobStateException.type = Types::InvalidJobStateException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidNonceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidNonceException.type = Types::InvalidNonceException
    InvalidStageDeclarationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidStageDeclarationException.type = Types::InvalidStageDeclarationException
    InvalidStructureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidStructureException.type = Types::InvalidStructureException
    InvalidTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    InvalidTagsException.type = Types::InvalidTagsException
    InvalidWebhookAuthenticationParametersException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidWebhookAuthenticationParametersException.type = Types::InvalidWebhookAuthenticationParametersException
    InvalidWebhookFilterPatternException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    InvalidWebhookFilterPatternException.type = Types::InvalidWebhookFilterPatternException
    Job.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the job.</p>"}))
    Job.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: JobData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>Other data about a job.</p>"}))
    Job.add_member(:nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'nonce', traits: {"smithy.api#documentation" => "<p>A system-generated random number that CodePipeline uses to ensure that the\n            job is being worked on by only one job worker. Use this number in an <a>AcknowledgeJob</a> request.</p>"}))
    Job.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account to use when performing the job.</p>"}))
    Job.type = Types::Job
    JobData.add_member(:action_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'actionTypeId', traits: {"smithy.api#documentation" => "<p>Represents information about an action type.</p>"}))
    JobData.add_member(:action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfiguration, location_name: 'actionConfiguration', traits: {"smithy.api#documentation" => "<p>Represents information about an action configuration.</p>"}))
    JobData.add_member(:pipeline_context, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineContext, location_name: 'pipelineContext', traits: {"smithy.api#documentation" => "<p>Represents information about a pipeline to a job worker.</p>\n         <note>\n            <p>Includes <code>pipelineArn</code> and <code>pipelineExecutionId</code> for\n                custom jobs.</p>\n         </note>"}))
    JobData.add_member(:input_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactList, location_name: 'inputArtifacts', traits: {"smithy.api#documentation" => "<p>The artifact supplied to the job.</p>"}))
    JobData.add_member(:output_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactList, location_name: 'outputArtifacts', traits: {"smithy.api#documentation" => "<p>The output of the job.</p>"}))
    JobData.add_member(:artifact_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSSessionCredentials, location_name: 'artifactCredentials', traits: {"smithy.api#documentation" => "<p>Represents an Amazon Web Services session credentials object. These credentials are\n            temporary credentials that are issued by Amazon Web Services Secure Token Service (STS).\n            They can be used to access input and output artifacts in the S3 bucket used to store\n            artifacts for the pipeline in CodePipeline.</p>"}))
    JobData.add_member(:continuation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: 'continuationToken', traits: {"smithy.api#documentation" => "<p>A system-generated token, such as a deployment ID, required by a job to continue\n            the job asynchronously.</p>"}))
    JobData.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>Represents information about the key used to encrypt data in the artifact store,\n            such as an KMS key. </p>"}))
    JobData.type = Types::JobData
    JobDetails.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the job.</p>"}))
    JobDetails.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: JobData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>Represents other information about a job required for a job worker to complete the\n            job. </p>"}))
    JobDetails.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID associated with the job.</p>"}))
    JobDetails.type = Types::JobDetails
    JobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Job)
    JobNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    JobNotFoundException.type = Types::JobNotFoundException
    JobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Created', traits: {"smithy.api#enumValue" => "Created"}))
    JobStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Queued', traits: {"smithy.api#enumValue" => "Queued"}))
    JobStatus.add_member(:dispatched, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Dispatched', traits: {"smithy.api#enumValue" => "Dispatched"}))
    JobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    JobStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TimedOut', traits: {"smithy.api#enumValue" => "TimedOut"}))
    JobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    JobWorkerExecutorConfiguration.add_member(:polling_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: PollingAccountList, location_name: 'pollingAccounts', traits: {"smithy.api#documentation" => "<p>The accounts in which the job worker is configured and might poll for jobs as part of\n            the action execution.</p>"}))
    JobWorkerExecutorConfiguration.add_member(:polling_service_principals, Smithy::Schema::Shapes::ShapeRef.new(shape: PollingServicePrincipalList, location_name: 'pollingServicePrincipals', traits: {"smithy.api#documentation" => "<p>The service Principals in which the job worker is configured and might poll for jobs\n            as part of the action execution.</p>"}))
    JobWorkerExecutorConfiguration.type = Types::JobWorkerExecutorConfiguration
    LambdaExecutorConfiguration.add_member(:lambda_function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionArn, location_name: 'lambdaFunctionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda function used by the action engine.</p>", "smithy.api#required" => {}}))
    LambdaExecutorConfiguration.type = Types::LambdaExecutorConfiguration
    LatestInPipelineExecutionFilter.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The execution ID for the latest execution in the pipeline.</p>", "smithy.api#required" => {}}))
    LatestInPipelineExecutionFilter.add_member(:start_time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTimeRange, location_name: 'startTimeRange', traits: {"smithy.api#documentation" => "<p>The start time to filter on for the latest execution in the pipeline. Valid\n            options:</p>\n         <ul>\n            <li>\n               <p>All</p>\n            </li>\n            <li>\n               <p>Latest</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    LatestInPipelineExecutionFilter.type = Types::LatestInPipelineExecutionFilter
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListActionExecutionsInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p> The name of the pipeline for which you want to list action execution history.</p>", "smithy.api#required" => {}}))
    ListActionExecutionsInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Input information used to filter action execution history.</p>"}))
    ListActionExecutionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n            results, make another call with the returned nextToken value. Action execution history\n            is retained for up to 12 months, based on action execution start times. Default value is\n            100. </p>"}))
    ListActionExecutionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous <code>ListActionExecutions</code> call,\n            which can be used to return the next set of action executions in the list.</p>"}))
    ListActionExecutionsInput.type = Types::ListActionExecutionsInput
    ListActionExecutionsOutput.add_member(:action_execution_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionDetailList, location_name: 'actionExecutionDetails', traits: {"smithy.api#documentation" => "<p>The details for a list of recent executions, such as action execution ID.</p>"}))
    ListActionExecutionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the amount of returned information is significantly large, an identifier is also\n            returned and can be used in a subsequent <code>ListActionExecutions</code> call to\n            return the next set of action executions in the list.</p>"}))
    ListActionExecutionsOutput.type = Types::ListActionExecutionsOutput
    ListActionTypesInput.add_member(:action_owner_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionOwner, location_name: 'actionOwnerFilter', traits: {"smithy.api#documentation" => "<p>Filters the list of action types to those created by a specified entity.</p>"}))
    ListActionTypesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous list action types call, which can\n            be used to return the next set of action types in the list.</p>"}))
    ListActionTypesInput.add_member(:region_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName, location_name: 'regionFilter', traits: {"smithy.api#documentation" => "<p>The Region to filter on for the list of action types.</p>"}))
    ListActionTypesInput.type = Types::ListActionTypesInput
    ListActionTypesOutput.add_member(:action_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeList, location_name: 'actionTypes', traits: {"smithy.api#documentation" => "<p>Provides details of the action types.</p>", "smithy.api#required" => {}}))
    ListActionTypesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the amount of returned information is significantly large, an identifier is also\n            returned. It can be used in a subsequent list action types call to return the next set\n            of action types in the list.</p>"}))
    ListActionTypesOutput.type = Types::ListActionTypesOutput
    ListDeployActionExecutionTargetsInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline with the deploy action.</p>"}))
    ListDeployActionExecutionTargetsInput.add_member(:action_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionId, location_name: 'actionExecutionId', traits: {"smithy.api#documentation" => "<p>The execution ID for the deploy action.</p>", "smithy.api#required" => {}}))
    ListDeployActionExecutionTargetsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilterList, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Filters the targets for a specified deploy action.</p>"}))
    ListDeployActionExecutionTargetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n            results, make another call with the returned nextToken value.</p>"}))
    ListDeployActionExecutionTargetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous list action types call, which can be\n            used to return the next set of action types in the list.</p>"}))
    ListDeployActionExecutionTargetsInput.type = Types::ListDeployActionExecutionTargetsInput
    ListDeployActionExecutionTargetsOutput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: DeployActionExecutionTargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the deploy action.</p>"}))
    ListDeployActionExecutionTargetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous list action types call, which can be\n            used to return the next set of action types in the list.</p>"}))
    ListDeployActionExecutionTargetsOutput.type = Types::ListDeployActionExecutionTargetsOutput
    ListPipelineExecutionsInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline for which you want to get execution summary\n            information.</p>", "smithy.api#required" => {}}))
    ListPipelineExecutionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n            results, make another call with the returned nextToken value. Pipeline history is\n            limited to the most recent 12 months, based on pipeline execution start times. Default\n            value is 100.</p>"}))
    ListPipelineExecutionsInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The pipeline execution to filter on.</p>"}))
    ListPipelineExecutionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous <code>ListPipelineExecutions</code>\n            call, which can be used to return the next set of pipeline executions in the\n            list.</p>"}))
    ListPipelineExecutionsInput.type = Types::ListPipelineExecutionsInput
    ListPipelineExecutionsOutput.add_member(:pipeline_execution_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionSummaryList, location_name: 'pipelineExecutionSummaries', traits: {"smithy.api#documentation" => "<p>A list of executions in the history of a pipeline.</p>"}))
    ListPipelineExecutionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that can be used in the next <code>ListPipelineExecutions</code> call. To\n            view all items in the list, continue to call this operation with each subsequent token\n            until no more nextToken values are returned.</p>"}))
    ListPipelineExecutionsOutput.type = Types::ListPipelineExecutionsOutput
    ListPipelinesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An identifier that was returned from the previous list pipelines call. It can be\n            used to return the next set of pipelines in the list.</p>"}))
    ListPipelinesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxPipelines, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of pipelines to return in a single call. To retrieve the remaining\n            pipelines, make another call with the returned nextToken value. The minimum value you\n            can specify is 1. The maximum accepted value is 1000.</p>"}))
    ListPipelinesInput.type = Types::ListPipelinesInput
    ListPipelinesOutput.add_member(:pipelines, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineList, location_name: 'pipelines', traits: {"smithy.api#documentation" => "<p>The list of pipelines.</p>"}))
    ListPipelinesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the amount of returned information is significantly large, an identifier is also\n            returned. It can be used in a subsequent list pipelines call to return the next set of\n            pipelines in the list.</p>"}))
    ListPipelinesOutput.type = Types::ListPipelinesOutput
    ListRuleExecutionsInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline for which you want to get execution summary\n            information.</p>", "smithy.api#required" => {}}))
    ListRuleExecutionsInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Input information used to filter rule execution history.</p>"}))
    ListRuleExecutionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n            results, make another call with the returned nextToken value. Pipeline history is\n            limited to the most recent 12 months, based on pipeline execution start times. Default\n            value is 100.</p>"}))
    ListRuleExecutionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous <code>ListRuleExecutions</code> call,\n            which can be used to return the next set of rule executions in the list.</p>"}))
    ListRuleExecutionsInput.type = Types::ListRuleExecutionsInput
    ListRuleExecutionsOutput.add_member(:rule_execution_details, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionDetailList, location_name: 'ruleExecutionDetails', traits: {"smithy.api#documentation" => "<p>Details about the output for listing rule executions.</p>"}))
    ListRuleExecutionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token that can be used in the next <code>ListRuleExecutions</code> call. To view all\n            items in the list, continue to call this operation with each subsequent token until no\n            more nextToken values are returned.</p>"}))
    ListRuleExecutionsOutput.type = Types::ListRuleExecutionsOutput
    ListRuleTypesInput.add_member(:rule_owner_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOwner, location_name: 'ruleOwnerFilter', traits: {"smithy.api#documentation" => "<p>The rule owner to filter on.</p>"}))
    ListRuleTypesInput.add_member(:region_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName, location_name: 'regionFilter', traits: {"smithy.api#documentation" => "<p>The rule Region to filter on.</p>"}))
    ListRuleTypesInput.type = Types::ListRuleTypesInput
    ListRuleTypesOutput.add_member(:rule_types, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeList, location_name: 'ruleTypes', traits: {"smithy.api#documentation" => "<p>Lists the rules that are configured for the condition.</p>", "smithy.api#required" => {}}))
    ListRuleTypesOutput.type = Types::ListRuleTypesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous API call, which would be used to return\n            the next page of the list. The ListTagsforResource call lists all available tags in one\n            call and does not use pagination.</p>"}))
    ListTagsForResourceInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>"}))
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the amount of returned information is significantly large, an identifier is also\n            returned and can be used in a subsequent API call to return the next page of the list.\n            The ListTagsforResource call lists all available tags in one call and does not use\n            pagination.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWebhookItem.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The detail returned for each webhook, such as the webhook authentication type and\n            filter rules.</p>", "smithy.api#required" => {}}))
    ListWebhookItem.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookUrl, location_name: 'url', traits: {"smithy.api#documentation" => "<p>A unique URL generated by CodePipeline. When a POST request is made to this\n            URL, the defined pipeline is started as long as the body of the post request satisfies\n            the defined authentication and filtering conditions. Deleting and re-creating a webhook\n            makes the old URL invalid and generates a new one.</p>", "smithy.api#required" => {}}))
    ListWebhookItem.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message about the webhook.</p>"}))
    ListWebhookItem.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The number code of the error.</p>"}))
    ListWebhookItem.add_member(:last_triggered, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookLastTriggered, location_name: 'lastTriggered', traits: {"smithy.api#documentation" => "<p>The date and time a webhook was last successfully triggered, in timestamp\n            format.</p>"}))
    ListWebhookItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the webhook.</p>"}))
    ListWebhookItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Specifies the tags applied to the webhook.</p>"}))
    ListWebhookItem.type = Types::ListWebhookItem
    ListWebhooksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous ListWebhooks call, which can be used\n            to return the next set of webhooks in the list.</p>"}))
    ListWebhooksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n            results, make another call with the returned nextToken value.</p>"}))
    ListWebhooksInput.type = Types::ListWebhooksInput
    ListWebhooksOutput.add_member(:webhooks, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookList, location_name: 'webhooks', traits: {"smithy.api#documentation" => "<p>The JSON detail returned for each webhook in the list output for the ListWebhooks\n            call.</p>"}))
    ListWebhooksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the amount of returned information is significantly large, an identifier is also\n            returned and can be used in a subsequent ListWebhooks call to return the next set of\n            webhooks in the list. </p>"}))
    ListWebhooksOutput.type = Types::ListWebhooksOutput
    NotLatestPipelineExecutionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    NotLatestPipelineExecutionException.type = Types::NotLatestPipelineExecutionException
    OutputArtifact.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the output of an artifact, such as \"My App\".</p>\n         <p>The input artifact of an action must exactly match the output artifact declared in\n            a preceding action, but the input artifact does not have to be the next action in strict\n            sequence from the action that provided the output artifact. Actions in parallel can\n            declare different output artifacts, which are in turn consumed by different following\n            actions.</p>\n         <p>Output artifact names must be unique within a pipeline.</p>", "smithy.api#required" => {}}))
    OutputArtifact.add_member(:files, Smithy::Schema::Shapes::ShapeRef.new(shape: FilePathList, location_name: 'files', traits: {"smithy.api#documentation" => "<p>The files that you want to associate with the output artifact that will be exported\n            from the compute action.</p>"}))
    OutputArtifact.type = Types::OutputArtifact
    OutputArtifactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputArtifact)
    OutputVariableList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariable)
    OutputVariablesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariablesKey)
    OutputVariablesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariablesValue)
    OutputVariablesSizeExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    OutputVariablesSizeExceededException.type = Types::OutputVariablesSizeExceededException
    OverrideStageConditionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline with the stage that will override the condition.</p>", "smithy.api#required" => {}}))
    OverrideStageConditionInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage for the override.</p>", "smithy.api#required" => {}}))
    OverrideStageConditionInput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution for the override.</p>", "smithy.api#required" => {}}))
    OverrideStageConditionInput.add_member(:condition_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionType, location_name: 'conditionType', traits: {"smithy.api#documentation" => "<p>The type of condition to override for the stage, such as entry conditions, failure\n            conditions, or success conditions.</p>", "smithy.api#required" => {}}))
    OverrideStageConditionInput.type = Types::OverrideStageConditionInput
    PipelineContext.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline. This is a user-specified value. Pipeline names must be\n            unique across all pipeline names under an Amazon Web Services account.</p>"}))
    PipelineContext.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: StageContext, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>The stage of the pipeline.</p>"}))
    PipelineContext.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionContext, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The context of an action to a job worker in the stage of a pipeline.</p>"}))
    PipelineContext.add_member(:pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'pipelineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline.</p>"}))
    PipelineContext.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The execution ID of the pipeline.</p>"}))
    PipelineContext.type = Types::PipelineContext
    PipelineDeclaration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>", "smithy.api#required" => {}}))
    PipelineDeclaration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for CodePipeline to use to either perform\n            actions with no <code>actionRoleArn</code>, or to use to assume roles for actions with\n            an <code>actionRoleArn</code>.</p>", "smithy.api#required" => {}}))
    PipelineDeclaration.add_member(:artifact_store, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStore, location_name: 'artifactStore', traits: {"smithy.api#documentation" => "<p>Represents information about the S3 bucket where artifacts are stored for the\n            pipeline.</p>\n         <note>\n            <p>You must include either <code>artifactStore</code> or\n                    <code>artifactStores</code> in your pipeline, but you cannot use both. If you\n                create a cross-region action in your pipeline, you must use\n                    <code>artifactStores</code>.</p>\n         </note>"}))
    PipelineDeclaration.add_member(:artifact_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStoreMap, location_name: 'artifactStores', traits: {"smithy.api#documentation" => "<p>A mapping of <code>artifactStore</code> objects and their corresponding Amazon Web Services Regions. There must be an artifact store for the pipeline Region and for\n            each cross-region action in the pipeline.</p>\n         <note>\n            <p>You must include either <code>artifactStore</code> or\n                    <code>artifactStores</code> in your pipeline, but you cannot use both. If you\n                create a cross-region action in your pipeline, you must use\n                    <code>artifactStores</code>.</p>\n         </note>"}))
    PipelineDeclaration.add_member(:stages, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineStageDeclarationList, location_name: 'stages', traits: {"smithy.api#documentation" => "<p>The stage in which to perform the action.</p>", "smithy.api#required" => {}}))
    PipelineDeclaration.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version number of the pipeline. A new pipeline always has a version number of\n            1. This number is incremented when a pipeline is updated.</p>"}))
    PipelineDeclaration.add_member(:execution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'executionMode', traits: {"smithy.api#documentation" => "<p>The method that the pipeline will use to handle multiple executions. The default\n            mode is SUPERSEDED.</p>"}))
    PipelineDeclaration.add_member(:pipeline_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineType, location_name: 'pipelineType', traits: {"smithy.api#documentation" => "<p>CodePipeline provides the following pipeline types, which differ in\n            characteristics and price, so that you can tailor your pipeline features and cost to the\n            needs of your applications.</p>\n         <ul>\n            <li>\n               <p>V1 type pipelines have a JSON structure that contains standard pipeline,\n                    stage, and action-level parameters.</p>\n            </li>\n            <li>\n               <p>V2 type pipelines have the same structure as a V1 type, along with additional\n                    parameters for release safety and trigger configuration.</p>\n            </li>\n         </ul>\n         <important>\n            <p>Including V2 parameters, such as triggers on Git tags, in the pipeline JSON when\n                creating or updating a pipeline will result in the pipeline having the V2 type of\n                pipeline and the associated costs.</p>\n         </important>\n         <p>For information about pricing for CodePipeline, see <a href=\"http://aws.amazon.com/codepipeline/pricing/\">Pricing</a>.</p>\n         <p> For information about which type of pipeline to choose, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-types-planning.html\">What type of\n                pipeline is right for me?</a>.</p>"}))
    PipelineDeclaration.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableDeclarationList, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A list that defines the pipeline variables for a pipeline resource. Variable names can\n            have alphanumeric and underscore characters, and the values must match\n                <code>[A-Za-z0-9@\\-_]+</code>.</p>"}))
    PipelineDeclaration.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineTriggerDeclarationList, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The trigger configuration specifying a type of event, such as Git tags, that starts\n            the pipeline.</p>\n         <note>\n            <p>When a trigger configuration is specified, default change detection for\n                repository and branch commits is disabled.</p>\n         </note>"}))
    PipelineDeclaration.type = Types::PipelineDeclaration
    PipelineExecution.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline with the specified pipeline execution.</p>"}))
    PipelineExecution.add_member(:pipeline_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'pipelineVersion', traits: {"smithy.api#documentation" => "<p>The version number of the pipeline with the specified pipeline execution.</p>"}))
    PipelineExecution.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution.</p>"}))
    PipelineExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the pipeline execution.</p>\n         <ul>\n            <li>\n               <p>Cancelled: The pipeline’s definition was updated before the pipeline\n                    execution could be completed.</p>\n            </li>\n            <li>\n               <p>InProgress: The pipeline execution is currently running.</p>\n            </li>\n            <li>\n               <p>Stopped: The pipeline execution was manually stopped. For more information,\n                    see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>\n            </li>\n            <li>\n               <p>Stopping: The pipeline execution received a request to be manually stopped.\n                    Depending on the selected stop mode, the execution is either completing or\n                    abandoning in-progress actions. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>\n            </li>\n            <li>\n               <p>Succeeded: The pipeline execution was completed successfully. </p>\n            </li>\n            <li>\n               <p>Superseded: While this pipeline execution was waiting for the next stage to\n                    be completed, a newer pipeline execution advanced and continued through the\n                    pipeline instead. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded\">Superseded Executions</a>.</p>\n            </li>\n            <li>\n               <p>Failed: The pipeline execution was not completed successfully.</p>\n            </li>\n         </ul>"}))
    PipelineExecution.add_member(:status_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionStatusSummary, location_name: 'statusSummary', traits: {"smithy.api#documentation" => "<p>A summary that contains a description of the pipeline execution status.</p>"}))
    PipelineExecution.add_member(:artifact_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactRevisionList, location_name: 'artifactRevisions', traits: {"smithy.api#documentation" => "<p>A list of <code>ArtifactRevision</code> objects included in a pipeline\n            execution.</p>"}))
    PipelineExecution.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedPipelineVariableList, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A list of pipeline variables used for the pipeline execution.</p>"}))
    PipelineExecution.add_member(:trigger, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTrigger, location_name: 'trigger'))
    PipelineExecution.add_member(:execution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'executionMode', traits: {"smithy.api#documentation" => "<p>The method that the pipeline will use to handle multiple executions. The default\n            mode is SUPERSEDED.</p>"}))
    PipelineExecution.add_member(:execution_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionType, location_name: 'executionType', traits: {"smithy.api#documentation" => "<p>The type of the pipeline execution.</p>"}))
    PipelineExecution.add_member(:rollback_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineRollbackMetadata, location_name: 'rollbackMetadata', traits: {"smithy.api#documentation" => "<p>The metadata about the execution pertaining to stage rollback.</p>"}))
    PipelineExecution.type = Types::PipelineExecution
    PipelineExecutionFilter.add_member(:succeeded_in_stage, Smithy::Schema::Shapes::ShapeRef.new(shape: SucceededInStageFilter, location_name: 'succeededInStage', traits: {"smithy.api#documentation" => "<p>Filter for pipeline executions where the stage was successful in the current pipeline\n            version.</p>"}))
    PipelineExecutionFilter.type = Types::PipelineExecutionFilter
    PipelineExecutionNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    PipelineExecutionNotFoundException.type = Types::PipelineExecutionNotFoundException
    PipelineExecutionNotStoppableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    PipelineExecutionNotStoppableException.type = Types::PipelineExecutionNotStoppableException
    PipelineExecutionOutdatedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    PipelineExecutionOutdatedException.type = Types::PipelineExecutionOutdatedException
    PipelineExecutionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    PipelineExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    PipelineExecutionStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    PipelineExecutionStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    PipelineExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    PipelineExecutionStatus.add_member(:superseded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Superseded', traits: {"smithy.api#enumValue" => "Superseded"}))
    PipelineExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    PipelineExecutionSummary.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution.</p>"}))
    PipelineExecutionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the pipeline execution.</p>\n         <ul>\n            <li>\n               <p>InProgress: The pipeline execution is currently running.</p>\n            </li>\n            <li>\n               <p>Stopped: The pipeline execution was manually stopped. For more information,\n                    see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>\n            </li>\n            <li>\n               <p>Stopping: The pipeline execution received a request to be manually stopped.\n                    Depending on the selected stop mode, the execution is either completing or\n                    abandoning in-progress actions. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-executions-stopped\">Stopped Executions</a>.</p>\n            </li>\n            <li>\n               <p>Succeeded: The pipeline execution was completed successfully. </p>\n            </li>\n            <li>\n               <p>Superseded: While this pipeline execution was waiting for the next stage to\n                    be completed, a newer pipeline execution advanced and continued through the\n                    pipeline instead. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#concepts-superseded\">Superseded Executions</a>.</p>\n            </li>\n            <li>\n               <p>Failed: The pipeline execution was not completed successfully.</p>\n            </li>\n         </ul>"}))
    PipelineExecutionSummary.add_member(:status_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionStatusSummary, location_name: 'statusSummary', traits: {"smithy.api#documentation" => "<p>Status summary for the pipeline.</p>"}))
    PipelineExecutionSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time when the pipeline execution began, in timestamp format.</p>"}))
    PipelineExecutionSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the last change to the pipeline execution, in timestamp\n            format.</p>"}))
    PipelineExecutionSummary.add_member(:source_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRevisionList, location_name: 'sourceRevisions', traits: {"smithy.api#documentation" => "<p>A list of the source artifact revisions that initiated a pipeline\n            execution.</p>"}))
    PipelineExecutionSummary.add_member(:trigger, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionTrigger, location_name: 'trigger', traits: {"smithy.api#documentation" => "<p>The interaction or event that started a pipeline execution, such as automated change\n            detection or a <code>StartPipelineExecution</code> API call.</p>"}))
    PipelineExecutionSummary.add_member(:stop_trigger, Smithy::Schema::Shapes::ShapeRef.new(shape: StopExecutionTrigger, location_name: 'stopTrigger', traits: {"smithy.api#documentation" => "<p>The interaction that stopped a pipeline execution.</p>"}))
    PipelineExecutionSummary.add_member(:execution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'executionMode', traits: {"smithy.api#documentation" => "<p>The method that the pipeline will use to handle multiple executions. The default\n            mode is SUPERSEDED.</p>"}))
    PipelineExecutionSummary.add_member(:execution_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionType, location_name: 'executionType', traits: {"smithy.api#documentation" => "<p>Type of the pipeline execution.</p>"}))
    PipelineExecutionSummary.add_member(:rollback_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineRollbackMetadata, location_name: 'rollbackMetadata', traits: {"smithy.api#documentation" => "<p>The metadata for the stage execution to be rolled back.</p>"}))
    PipelineExecutionSummary.type = Types::PipelineExecutionSummary
    PipelineExecutionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionSummary)
    PipelineList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineSummary)
    PipelineMetadata.add_member(:pipeline_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineArn, location_name: 'pipelineArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the pipeline.</p>"}))
    PipelineMetadata.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time the pipeline was created, in timestamp format.</p>"}))
    PipelineMetadata.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updated', traits: {"smithy.api#documentation" => "<p>The date and time the pipeline was last updated, in timestamp format.</p>"}))
    PipelineMetadata.add_member(:polling_disabled_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'pollingDisabledAt', traits: {"smithy.api#documentation" => "<p>The date and time that polling for source changes (periodic checks) was stopped for\n            the pipeline, in timestamp format. </p>\n         <important>\n            <p>Pipelines that are inactive for longer than 30 days will have polling disabled for\n                the pipeline. For more information, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#metadata.pollingDisabledAt\">pollingDisabledAt</a> in the pipeline structure reference. For the steps to\n                migrate your pipeline from polling to event-based change detection, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/update-change-detection.html\">Migrate polling\n                    pipelines to use event-based change detection</a>.</p>\n         </important>\n         <p>You can migrate (update) a polling pipeline to use event-based change detection. For\n            example, for a pipeline with a CodeCommit source, we recommend you migrate\n            (update) your pipeline to use CloudWatch Events. To learn more, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/update-change-detection.html\">Migrate polling\n                pipelines to use event-based change detection</a> in the <i>CodePipeline User Guide</i>.</p>"}))
    PipelineMetadata.type = Types::PipelineMetadata
    PipelineNameInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    PipelineNameInUseException.type = Types::PipelineNameInUseException
    PipelineNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    PipelineNotFoundException.type = Types::PipelineNotFoundException
    PipelineRollbackMetadata.add_member(:rollback_target_pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'rollbackTargetPipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The pipeline execution ID to which the stage will be rolled back.</p>"}))
    PipelineRollbackMetadata.type = Types::PipelineRollbackMetadata
    PipelineStageDeclarationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StageDeclaration)
    PipelineSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline.</p>"}))
    PipelineSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version number of the pipeline.</p>"}))
    PipelineSummary.add_member(:pipeline_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineType, location_name: 'pipelineType', traits: {"smithy.api#documentation" => "<p>CodePipeline provides the following pipeline types, which differ in\n            characteristics and price, so that you can tailor your pipeline features and cost to the\n            needs of your applications.</p>\n         <ul>\n            <li>\n               <p>V1 type pipelines have a JSON structure that contains standard pipeline,\n                    stage, and action-level parameters.</p>\n            </li>\n            <li>\n               <p>V2 type pipelines have the same structure as a V1 type, along with additional\n                    parameters for release safety and trigger configuration.</p>\n            </li>\n         </ul>\n         <important>\n            <p>Including V2 parameters, such as triggers on Git tags, in the pipeline JSON when\n                creating or updating a pipeline will result in the pipeline having the V2 type of\n                pipeline and the associated costs.</p>\n         </important>\n         <p>For information about pricing for CodePipeline, see <a href=\"http://aws.amazon.com/codepipeline/pricing/\">Pricing</a>.</p>\n         <p> For information about which type of pipeline to choose, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-types-planning.html\">What type of\n                pipeline is right for me?</a>.</p>"}))
    PipelineSummary.add_member(:execution_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionMode, location_name: 'executionMode', traits: {"smithy.api#documentation" => "<p>The method that the pipeline will use to handle multiple executions. The default\n            mode is SUPERSEDED.</p>"}))
    PipelineSummary.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time the pipeline was created, in timestamp format.</p>"}))
    PipelineSummary.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updated', traits: {"smithy.api#documentation" => "<p>The date and time of the last update to the pipeline, in timestamp\n            format.</p>"}))
    PipelineSummary.type = Types::PipelineSummary
    PipelineTriggerDeclaration.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineTriggerProviderType, location_name: 'providerType', traits: {"smithy.api#documentation" => "<p>The source provider for the event, such as connections configured for a repository\n            with Git tags, for the specified trigger configuration.</p>", "smithy.api#required" => {}}))
    PipelineTriggerDeclaration.add_member(:git_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GitConfiguration, location_name: 'gitConfiguration', traits: {"smithy.api#documentation" => "<p>Provides the filter criteria and the source stage for the repository event that\n            starts the pipeline, such as Git tags.</p>", "smithy.api#required" => {}}))
    PipelineTriggerDeclaration.type = Types::PipelineTriggerDeclaration
    PipelineTriggerDeclarationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineTriggerDeclaration)
    PipelineTriggerProviderType.add_member(:code_star_source_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CodeStarSourceConnection', traits: {"smithy.api#enumValue" => "CodeStarSourceConnection"}))
    PipelineType.add_member(:v1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V1', traits: {"smithy.api#enumValue" => "V1"}))
    PipelineType.add_member(:v2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'V2', traits: {"smithy.api#enumValue" => "V2"}))
    PipelineVariable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a pipeline-level variable.</p>", "smithy.api#required" => {}}))
    PipelineVariable.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a pipeline-level variable.</p>", "smithy.api#required" => {}}))
    PipelineVariable.type = Types::PipelineVariable
    PipelineVariableDeclaration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a pipeline-level variable.</p>", "smithy.api#required" => {}}))
    PipelineVariableDeclaration.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableValue, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The value of a pipeline-level variable.</p>"}))
    PipelineVariableDeclaration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of a pipeline-level variable. It's used to add additional context\n            about the variable, and not being used at time when pipeline executes.</p>"}))
    PipelineVariableDeclaration.type = Types::PipelineVariableDeclaration
    PipelineVariableDeclarationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableDeclaration)
    PipelineVariableList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariable)
    PipelineVersionNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    PipelineVersionNotFoundException.type = Types::PipelineVersionNotFoundException
    PollForJobsInput.add_member(:action_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'actionTypeId', traits: {"smithy.api#documentation" => "<p>Represents information about an action type.</p>", "smithy.api#required" => {}}))
    PollForJobsInput.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to return in a poll for jobs call.</p>"}))
    PollForJobsInput.add_member(:query_param, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryParamMap, location_name: 'queryParam', traits: {"smithy.api#documentation" => "<p>A map of property names and values. For an action type with no queryable\n            properties, this value must be null or an empty map. For an action type with a queryable\n            property, you must supply that property as a key in the map. Only jobs whose action\n            configuration matches the mapped value are returned.</p>"}))
    PollForJobsInput.type = Types::PollForJobsInput
    PollForJobsOutput.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobList, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>Information about the jobs to take action on.</p>"}))
    PollForJobsOutput.type = Types::PollForJobsOutput
    PollForThirdPartyJobsInput.add_member(:action_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'actionTypeId', traits: {"smithy.api#documentation" => "<p>Represents information about an action type.</p>", "smithy.api#required" => {}}))
    PollForThirdPartyJobsInput.add_member(:max_batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxBatchSize, location_name: 'maxBatchSize', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to return in a poll for jobs call.</p>"}))
    PollForThirdPartyJobsInput.type = Types::PollForThirdPartyJobsInput
    PollForThirdPartyJobsOutput.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobList, location_name: 'jobs', traits: {"smithy.api#documentation" => "<p>Information about the jobs to take action on.</p>"}))
    PollForThirdPartyJobsOutput.type = Types::PollForThirdPartyJobsOutput
    PollingAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId)
    PollingServicePrincipalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal)
    PutActionRevisionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline that starts processing the revision to the\n            source.</p>", "smithy.api#required" => {}}))
    PutActionRevisionInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage that contains the action that acts on the revision.</p>", "smithy.api#required" => {}}))
    PutActionRevisionInput.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action that processes the revision.</p>", "smithy.api#required" => {}}))
    PutActionRevisionInput.add_member(:action_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionRevision, location_name: 'actionRevision', traits: {"smithy.api#documentation" => "<p>Represents information about the version (or revision) of an action.</p>", "smithy.api#required" => {}}))
    PutActionRevisionInput.type = Types::PutActionRevisionInput
    PutActionRevisionOutput.add_member(:new_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'newRevision', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the artifact revision was previously used in an execution of the\n            specified pipeline.</p>"}))
    PutActionRevisionOutput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the current workflow state of the pipeline.</p>"}))
    PutActionRevisionOutput.type = Types::PutActionRevisionOutput
    PutApprovalResultInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline that contains the action. </p>", "smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage that contains the action.</p>", "smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action for which approval is requested.</p>", "smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>Represents information about the result of the approval request.</p>", "smithy.api#required" => {}}))
    PutApprovalResultInput.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalToken, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The system-generated token used to identify a unique approval request. The token\n            for each open approval request can be obtained using the <a>GetPipelineState</a> action. It is used to validate that the approval\n            request corresponding to this token is still valid.</p>\n         <important>\n            <p>For a pipeline where the execution mode is set to PARALLEL, the token required to\n                approve/reject an approval request as detailed above is not available. Instead, use\n                the <code>externalExecutionId</code> in the response output from the <a>ListActionExecutions</a> action as the token in the approval\n                request.</p>\n         </important>", "smithy.api#required" => {}}))
    PutApprovalResultInput.type = Types::PutApprovalResultInput
    PutApprovalResultOutput.add_member(:approved_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'approvedAt', traits: {"smithy.api#documentation" => "<p>The timestamp showing when the approval or rejection was submitted.</p>"}))
    PutApprovalResultOutput.type = Types::PutApprovalResultOutput
    PutJobFailureResultInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the job that failed. This is the same ID returned\n            from <code>PollForJobs</code>.</p>", "smithy.api#required" => {}}))
    PutJobFailureResultInput.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'failureDetails', traits: {"smithy.api#documentation" => "<p>The details about the failure of a job.</p>", "smithy.api#required" => {}}))
    PutJobFailureResultInput.type = Types::PutJobFailureResultInput
    PutJobSuccessResultInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the job that succeeded. This is the same ID\n            returned from <code>PollForJobs</code>.</p>", "smithy.api#required" => {}}))
    PutJobSuccessResultInput.add_member(:current_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentRevision, location_name: 'currentRevision', traits: {"smithy.api#documentation" => "<p>The ID of the current revision of the artifact successfully worked on by the\n            job.</p>"}))
    PutJobSuccessResultInput.add_member(:continuation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: 'continuationToken', traits: {"smithy.api#documentation" => "<p>A token generated by a job worker, such as a CodeDeploy deployment ID, that a\n            successful job provides to identify a custom action in progress. Future jobs use this\n            token to identify the running instance of the action. It can be reused to return more\n            information about the progress of the custom action. When the action is complete, no\n            continuation token should be supplied.</p>"}))
    PutJobSuccessResultInput.add_member(:execution_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: 'executionDetails', traits: {"smithy.api#documentation" => "<p>The execution details of the successful job, such as the actions taken by the job\n            worker.</p>"}))
    PutJobSuccessResultInput.add_member(:output_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariablesMap, location_name: 'outputVariables', traits: {"smithy.api#documentation" => "<p>Key-value pairs produced as output by a job worker that can be made available to a\n            downstream action configuration. <code>outputVariables</code> can be included only when\n            there is no continuation token on the request.</p>"}))
    PutJobSuccessResultInput.type = Types::PutJobSuccessResultInput
    PutThirdPartyJobFailureResultInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job that failed. This is the same ID returned from\n                <code>PollForThirdPartyJobs</code>.</p>", "smithy.api#required" => {}}))
    PutThirdPartyJobFailureResultInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The clientToken portion of the clientId and clientToken pair used to verify that\n            the calling entity is allowed access to the job and its details.</p>", "smithy.api#required" => {}}))
    PutThirdPartyJobFailureResultInput.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'failureDetails', traits: {"smithy.api#documentation" => "<p>Represents information about failure details.</p>", "smithy.api#required" => {}}))
    PutThirdPartyJobFailureResultInput.type = Types::PutThirdPartyJobFailureResultInput
    PutThirdPartyJobSuccessResultInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job that successfully completed. This is the same ID returned from\n                <code>PollForThirdPartyJobs</code>.</p>", "smithy.api#required" => {}}))
    PutThirdPartyJobSuccessResultInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The clientToken portion of the clientId and clientToken pair used to verify that\n            the calling entity is allowed access to the job and its details.</p>", "smithy.api#required" => {}}))
    PutThirdPartyJobSuccessResultInput.add_member(:current_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentRevision, location_name: 'currentRevision', traits: {"smithy.api#documentation" => "<p>Represents information about a current revision.</p>"}))
    PutThirdPartyJobSuccessResultInput.add_member(:continuation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: 'continuationToken', traits: {"smithy.api#documentation" => "<p>A token generated by a job worker, such as a CodeDeploy deployment ID, that a\n            successful job provides to identify a partner action in progress. Future jobs use this\n            token to identify the running instance of the action. It can be reused to return more\n            information about the progress of the partner action. When the action is complete, no\n            continuation token should be supplied.</p>"}))
    PutThirdPartyJobSuccessResultInput.add_member(:execution_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: 'executionDetails', traits: {"smithy.api#documentation" => "<p>The details of the actions taken and results produced on an artifact as it passes\n            through stages in the pipeline. </p>"}))
    PutThirdPartyJobSuccessResultInput.type = Types::PutThirdPartyJobSuccessResultInput
    PutWebhookInput.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookDefinition, location_name: 'webhook', traits: {"smithy.api#documentation" => "<p>The detail provided in an input file to create the webhook, such as the webhook\n            name, the pipeline name, and the action name. Give the webhook a unique name that helps\n            you identify it. You might name the webhook after the pipeline and action it targets so\n            that you can easily recognize what it's used for later.</p>", "smithy.api#required" => {}}))
    PutWebhookInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the webhook.</p>"}))
    PutWebhookInput.type = Types::PutWebhookInput
    PutWebhookOutput.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebhookItem, location_name: 'webhook', traits: {"smithy.api#documentation" => "<p>The detail returned from creating the webhook, such as the webhook name, webhook\n            URL, and webhook ARN.</p>"}))
    PutWebhookOutput.type = Types::PutWebhookOutput
    QueryParamMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationKey)
    QueryParamMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationQueryableValue)
    RegisterWebhookWithThirdPartyInput.add_member(:webhook_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookName, location_name: 'webhookName', traits: {"smithy.api#documentation" => "<p>The name of an existing webhook created with PutWebhook to register with a\n            supported third party. </p>"}))
    RegisterWebhookWithThirdPartyInput.type = Types::RegisterWebhookWithThirdPartyInput
    RegisterWebhookWithThirdPartyOutput.type = Types::RegisterWebhookWithThirdPartyOutput
    RequestFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    RequestFailedException.type = Types::RequestFailedException
    ResolvedActionConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ResolvedActionConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ResolvedPipelineVariable.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a pipeline-level variable.</p>"}))
    ResolvedPipelineVariable.add_member(:resolved_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resolvedValue', traits: {"smithy.api#documentation" => "<p>The resolved value of a pipeline-level variable.</p>"}))
    ResolvedPipelineVariable.type = Types::ResolvedPipelineVariable
    ResolvedPipelineVariableList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedPipelineVariable)
    ResolvedRuleConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ResolvedRuleConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Result.add_member(:rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK', traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    Result.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    Result.add_member(:retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRY', traits: {"smithy.api#enumValue" => "RETRY"}))
    Result.add_member(:skip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIP', traits: {"smithy.api#enumValue" => "SKIP"}))
    RetryConfiguration.add_member(:retry_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StageRetryMode, location_name: 'retryMode', traits: {"smithy.api#documentation" => "<p>The method that you want to configure for automatic stage retry on stage failure. You\n            can specify to retry only failed action in the stage or all actions in the stage.</p>"}))
    RetryConfiguration.type = Types::RetryConfiguration
    RetryStageExecutionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline that contains the failed stage.</p>", "smithy.api#required" => {}}))
    RetryStageExecutionInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the failed stage to be retried.</p>", "smithy.api#required" => {}}))
    RetryStageExecutionInput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of\n            the failed stage</p>", "smithy.api#required" => {}}))
    RetryStageExecutionInput.add_member(:retry_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: StageRetryMode, location_name: 'retryMode', traits: {"smithy.api#documentation" => "<p>The scope of the retry attempt.</p>", "smithy.api#required" => {}}))
    RetryStageExecutionInput.type = Types::RetryStageExecutionInput
    RetryStageExecutionOutput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the current workflow execution in the failed stage.</p>"}))
    RetryStageExecutionOutput.type = Types::RetryStageExecutionOutput
    RetryStageMetadata.add_member(:auto_stage_retry_attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAttempt, location_name: 'autoStageRetryAttempt', traits: {"smithy.api#documentation" => "<p>The number of attempts for a specific stage with automatic retry on stage failure. One\n            attempt is allowed for automatic stage retry on failure.</p>"}))
    RetryStageMetadata.add_member(:manual_stage_retry_attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAttempt, location_name: 'manualStageRetryAttempt', traits: {"smithy.api#documentation" => "<p>The number of attempts for a specific stage where manual retries have been made upon\n            stage failure.</p>"}))
    RetryStageMetadata.add_member(:latest_retry_trigger, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryTrigger, location_name: 'latestRetryTrigger', traits: {"smithy.api#documentation" => "<p>The latest trigger for a specific stage where manual or automatic retries have been\n            made upon stage failure.</p>"}))
    RetryStageMetadata.type = Types::RetryStageMetadata
    RetryTrigger.add_member(:automated_stage_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutomatedStageRetry', traits: {"smithy.api#enumValue" => "AutomatedStageRetry"}))
    RetryTrigger.add_member(:manual_stage_retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManualStageRetry', traits: {"smithy.api#enumValue" => "ManualStageRetry"}))
    RollbackStageInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline for which the stage will be rolled back. </p>", "smithy.api#required" => {}}))
    RollbackStageInput.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage in the pipeline to be rolled back. </p>", "smithy.api#required" => {}}))
    RollbackStageInput.add_member(:target_pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'targetPipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The pipeline execution ID for the stage to be rolled back to. </p>", "smithy.api#required" => {}}))
    RollbackStageInput.type = Types::RollbackStageInput
    RollbackStageOutput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The execution ID of the pipeline execution for the stage that has been rolled\n            back.</p>", "smithy.api#required" => {}}))
    RollbackStageOutput.type = Types::RollbackStageOutput
    RuleCategory.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Rule', traits: {"smithy.api#enumValue" => "Rule"}))
    RuleConfigurationMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationKey)
    RuleConfigurationMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationValue)
    RuleConfigurationProperty.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationKey, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule configuration property.</p>", "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'required', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is a required value.</p>", "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'key', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is a key.</p>", "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:secret, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'secret', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the configuration property is secret.</p>\n         <p>When updating a pipeline, passing * * * * * without changing any other values of\n            the action preserves the previous value of the secret.</p>", "smithy.api#required" => {}}))
    RuleConfigurationProperty.add_member(:queryable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'queryable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether the property can be queried.</p>\n         <p>If you create a pipeline with a condition and rule, and that rule contains a\n            queryable property, the value for that configuration property is subject to other\n            restrictions. The value must be less than or equal to twenty (20) characters. The value\n            can contain only alphanumeric characters, underscores, and hyphens.</p>"}))
    RuleConfigurationProperty.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the action configuration property that is displayed to\n            users.</p>"}))
    RuleConfigurationProperty.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationPropertyType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the configuration property.</p>"}))
    RuleConfigurationProperty.type = Types::RuleConfigurationProperty
    RuleConfigurationPropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationProperty)
    RuleConfigurationPropertyType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'String', traits: {"smithy.api#enumValue" => "String"}))
    RuleConfigurationPropertyType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Number', traits: {"smithy.api#enumValue" => "Number"}))
    RuleConfigurationPropertyType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Boolean', traits: {"smithy.api#enumValue" => "Boolean"}))
    RuleDeclaration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the rule that is created for the condition, such as\n                <code>VariableCheck</code>.</p>", "smithy.api#required" => {}}))
    RuleDeclaration.add_member(:rule_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeId, location_name: 'ruleTypeId', traits: {"smithy.api#documentation" => "<p>The ID for the rule type, which is made up of the combined values for category, owner,\n            provider, and version.</p>", "smithy.api#required" => {}}))
    RuleDeclaration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationMap, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The action configuration fields for the rule.</p>"}))
    RuleDeclaration.add_member(:commands, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandList, location_name: 'commands', traits: {"smithy.api#documentation" => "<p>The shell commands to run with your commands rule in CodePipeline. All commands\n            are supported except multi-line formats. While CodeBuild logs and permissions\n            are used, you do not need to create any resources in CodeBuild.</p>\n         <note>\n            <p>Using compute time for this action will incur separate charges in CodeBuild.</p>\n         </note>"}))
    RuleDeclaration.add_member(:input_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: InputArtifactList, location_name: 'inputArtifacts', traits: {"smithy.api#documentation" => "<p>The input artifacts fields for the rule, such as specifying an input file for the\n            rule.</p>"}))
    RuleDeclaration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The pipeline role ARN associated with the rule.</p>"}))
    RuleDeclaration.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Region for the condition associated with the rule.</p>"}))
    RuleDeclaration.add_member(:timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTimeout, location_name: 'timeoutInMinutes', traits: {"smithy.api#documentation" => "<p>The action timeout for the rule.</p>"}))
    RuleDeclaration.type = Types::RuleDeclaration
    RuleDeclarationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleDeclaration)
    RuleExecution.add_member(:rule_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionId, location_name: 'ruleExecutionId', traits: {"smithy.api#documentation" => "<p>The execution ID for the run of the rule.</p>"}))
    RuleExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the run of the rule, such as FAILED.</p>"}))
    RuleExecution.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>A summary of the run of the rule.</p>"}))
    RuleExecution.add_member(:last_status_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastStatusChange', traits: {"smithy.api#documentation" => "<p>The last status change of the rule.</p>"}))
    RuleExecution.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionToken, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The system-generated token used to identify a unique request.</p>"}))
    RuleExecution.add_member(:last_updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'lastUpdatedBy', traits: {"smithy.api#documentation" => "<p>The ARN of the user who last changed the rule.</p>"}))
    RuleExecution.add_member(:external_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'externalExecutionId', traits: {"smithy.api#documentation" => "<p>The external ID of the run of the rule.</p>"}))
    RuleExecution.add_member(:external_execution_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'externalExecutionUrl', traits: {"smithy.api#documentation" => "<p>The URL of a resource external to Amazon Web Services that is used when running the\n            rule (for example, an external repository URL).</p>"}))
    RuleExecution.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails'))
    RuleExecution.type = Types::RuleExecution
    RuleExecutionDetail.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution in the stage where the rule was run. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of\n            the stage.</p>"}))
    RuleExecutionDetail.add_member(:rule_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionId, location_name: 'ruleExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the run for the rule.</p>"}))
    RuleExecutionDetail.add_member(:pipeline_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersion, location_name: 'pipelineVersion', traits: {"smithy.api#documentation" => "<p>The version number of the pipeline with the stage where the rule was run.</p>"}))
    RuleExecutionDetail.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage where the rule was run.</p>"}))
    RuleExecutionDetail.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule that was run in the stage.</p>"}))
    RuleExecutionDetail.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time of the rule execution.</p>"}))
    RuleExecutionDetail.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdateTime', traits: {"smithy.api#documentation" => "<p>The date and time of the last change to the rule execution, in timestamp\n            format.</p>"}))
    RuleExecutionDetail.add_member(:updated_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedBy, location_name: 'updatedBy', traits: {"smithy.api#documentation" => "<p>The ARN of the user who changed the rule execution details.</p>"}))
    RuleExecutionDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the rule execution. Status categories are <code>InProgress</code>,\n                <code>Succeeded</code>, and <code>Failed</code>. </p>"}))
    RuleExecutionDetail.add_member(:input, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionInput, location_name: 'input', traits: {"smithy.api#documentation" => "<p>Input details for the rule execution, such as role ARN, Region, and input\n            artifacts.</p>"}))
    RuleExecutionDetail.add_member(:output, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionOutput, location_name: 'output', traits: {"smithy.api#documentation" => "<p>Output details for the rule execution, such as the rule execution result.</p>"}))
    RuleExecutionDetail.type = Types::RuleExecutionDetail
    RuleExecutionDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionDetail)
    RuleExecutionFilter.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The pipeline execution ID used to filter rule execution history.</p>"}))
    RuleExecutionFilter.add_member(:latest_in_pipeline_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestInPipelineExecutionFilter, location_name: 'latestInPipelineExecution'))
    RuleExecutionFilter.type = Types::RuleExecutionFilter
    RuleExecutionInput.add_member(:rule_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeId, location_name: 'ruleTypeId', traits: {"smithy.api#documentation" => "<p>The ID for the rule type, which is made up of the combined values for category, owner,\n            provider, and version. For more information about conditions, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html\">Stage\n                conditions</a>. For more information about rules, see the <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html\">CodePipeline rule reference</a>.</p>"}))
    RuleExecutionInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationMap, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Configuration data for a rule execution, such as the resolved values for that\n            run.</p>"}))
    RuleExecutionInput.add_member(:resolved_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedRuleConfigurationMap, location_name: 'resolvedConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration data for a rule execution with all variable references replaced with\n            their real values for the execution.</p>"}))
    RuleExecutionInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM service role that performs the declared rule. This is assumed\n            through the roleArn for the pipeline.</p>"}))
    RuleExecutionInput.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSRegionName, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region for the rule, such as us-east-1.</p>"}))
    RuleExecutionInput.add_member(:input_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetailList, location_name: 'inputArtifacts', traits: {"smithy.api#documentation" => "<p>Details of input artifacts of the rule that correspond to the rule execution.</p>"}))
    RuleExecutionInput.type = Types::RuleExecutionInput
    RuleExecutionOutput.add_member(:execution_result, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecutionResult, location_name: 'executionResult', traits: {"smithy.api#documentation" => "<p>Execution result information listed in the output details for a rule execution.</p>"}))
    RuleExecutionOutput.type = Types::RuleExecutionOutput
    RuleExecutionResult.add_member(:external_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalExecutionId, location_name: 'externalExecutionId', traits: {"smithy.api#documentation" => "<p>The external ID for the rule execution.</p>"}))
    RuleExecutionResult.add_member(:external_execution_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalExecutionSummary, location_name: 'externalExecutionSummary', traits: {"smithy.api#documentation" => "<p>The external provider summary for the rule execution.</p>"}))
    RuleExecutionResult.add_member(:external_execution_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'externalExecutionUrl', traits: {"smithy.api#documentation" => "<p>The deepest external link to the external resource (for example, a repository URL or\n            deployment endpoint) that is used when running the rule.</p>"}))
    RuleExecutionResult.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: 'errorDetails'))
    RuleExecutionResult.type = Types::RuleExecutionResult
    RuleExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    RuleExecutionStatus.add_member(:abandoned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Abandoned', traits: {"smithy.api#enumValue" => "Abandoned"}))
    RuleExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    RuleExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    RuleOwner.add_member(:aws, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS', traits: {"smithy.api#enumValue" => "AWS"}))
    RuleRevision.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID that identifies the revision number of the rule.</p>", "smithy.api#required" => {}}))
    RuleRevision.add_member(:revision_change_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionChangeIdentifier, location_name: 'revisionChangeId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the change that set the state to this revision (for example,\n            a deployment ID or timestamp).</p>", "smithy.api#required" => {}}))
    RuleRevision.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date and time when the most recent version of the rule was created, in timestamp\n            format.</p>", "smithy.api#required" => {}}))
    RuleRevision.type = Types::RuleRevision
    RuleState.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleName, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>"}))
    RuleState.add_member(:current_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleRevision, location_name: 'currentRevision', traits: {"smithy.api#documentation" => "<p>The ID of the current revision of the artifact successfully worked on by the\n            job.</p>"}))
    RuleState.add_member(:latest_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleExecution, location_name: 'latestExecution', traits: {"smithy.api#documentation" => "<p>Represents information about the latest run of an rule.</p>"}))
    RuleState.add_member(:entity_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'entityUrl', traits: {"smithy.api#documentation" => "<p>A URL link for more information about the state of the action, such as a details\n            page.</p>"}))
    RuleState.add_member(:revision_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'revisionUrl', traits: {"smithy.api#documentation" => "<p>A URL link for more information about the revision, such as a commit details\n            page.</p>"}))
    RuleState.type = Types::RuleState
    RuleStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleState)
    RuleType.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>Represents information about a rule type.</p>", "smithy.api#required" => {}}))
    RuleType.add_member(:settings, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleTypeSettings, location_name: 'settings', traits: {"smithy.api#documentation" => "<p>Returns information about the settings for a rule type.</p>"}))
    RuleType.add_member(:rule_configuration_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfigurationPropertyList, location_name: 'ruleConfigurationProperties', traits: {"smithy.api#documentation" => "<p>The configuration properties for the rule type.</p>"}))
    RuleType.add_member(:input_artifact_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: 'inputArtifactDetails', traits: {"smithy.api#required" => {}}))
    RuleType.type = Types::RuleType
    RuleTypeId.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>A category defines what kind of rule can be run in the stage, and constrains the\n            provider type for the rule. The valid category is <code>Rule</code>. </p>", "smithy.api#required" => {}}))
    RuleTypeId.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleOwner, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The creator of the rule being called. The valid value for the <code>Owner</code> field\n            in the rule category is <code>AWS</code>. </p>"}))
    RuleTypeId.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleProvider, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The rule provider, such as the <code>DeploymentWindow</code> rule. For a list of rule\n            provider names, see the rules listed in the <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html\">CodePipeline rule\n                reference</a>.</p>", "smithy.api#required" => {}}))
    RuleTypeId.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A string that describes the rule version.</p>"}))
    RuleTypeId.type = Types::RuleTypeId
    RuleTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType)
    RuleTypeSettings.add_member(:third_party_configuration_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'thirdPartyConfigurationUrl', traits: {"smithy.api#documentation" => "<p>The URL of a sign-up page where users can sign up for an external service and perform\n            initial configuration of the action provided by that service.</p>"}))
    RuleTypeSettings.add_member(:entity_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'entityUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that provides a deep link to the\n            resources of the external system, such as the configuration page for a CodeDeploy\n            deployment group. This link is provided as part of the action display in the\n            pipeline.</p>"}))
    RuleTypeSettings.add_member(:execution_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'executionUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that contains a link to the\n            top-level landing page for the external system, such as the console page for CodeDeploy.\n            This link is shown on the pipeline view page in the CodePipeline console and\n            provides a link to the execution entity of the external action.</p>"}))
    RuleTypeSettings.add_member(:revision_url_template, Smithy::Schema::Shapes::ShapeRef.new(shape: UrlTemplate, location_name: 'revisionUrlTemplate', traits: {"smithy.api#documentation" => "<p>The URL returned to the CodePipeline console that contains a link to the page\n            where customers can update or change the configuration of the external action.</p>"}))
    RuleTypeSettings.type = Types::RuleTypeSettings
    S3ArtifactLocation.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket.</p>", "smithy.api#required" => {}}))
    S3ArtifactLocation.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'objectKey', traits: {"smithy.api#documentation" => "<p>The key of the object in the S3 bucket, which uniquely identifies the object in the\n            bucket.</p>", "smithy.api#required" => {}}))
    S3ArtifactLocation.type = Types::S3ArtifactLocation
    S3Location.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 artifact bucket for an action's artifacts.</p>"}))
    S3Location.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The artifact name.</p>"}))
    S3Location.type = Types::S3Location
    SourceRevision.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action that processed the revision to the source\n            artifact.</p>", "smithy.api#required" => {}}))
    SourceRevision.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID that identifies the revision number of the\n            artifact.</p>"}))
    SourceRevision.add_member(:revision_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionSummary, location_name: 'revisionSummary', traits: {"smithy.api#documentation" => "<p>Summary information about the most recent revision of the artifact. For GitHub and\n            CodeCommit repositories, the commit message. For Amazon S3 buckets or actions,\n            the user-provided content of a <code>codepipeline-artifact-revision-summary</code> key\n            specified in the object metadata.</p>"}))
    SourceRevision.add_member(:revision_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'revisionUrl', traits: {"smithy.api#documentation" => "<p>The commit ID for the artifact revision. For artifacts stored in GitHub or\n            CodeCommit repositories, the commit ID is linked to a commit details page.</p>"}))
    SourceRevision.type = Types::SourceRevision
    SourceRevisionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRevision)
    SourceRevisionOverride.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'actionName', traits: {"smithy.api#documentation" => "<p>The name of the action where the override will be applied.</p>", "smithy.api#required" => {}}))
    SourceRevisionOverride.add_member(:revision_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRevisionType, location_name: 'revisionType', traits: {"smithy.api#documentation" => "<p>The type of source revision, based on the source provider. For example, the revision\n            type for the CodeCommit action provider is the commit ID.</p>", "smithy.api#required" => {}}))
    SourceRevisionOverride.add_member(:revision_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'revisionValue', traits: {"smithy.api#documentation" => "<p>The source revision, or version of your source artifact, with the changes that you\n            want to run in the pipeline execution.</p>", "smithy.api#required" => {}}))
    SourceRevisionOverride.type = Types::SourceRevisionOverride
    SourceRevisionOverrideList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRevisionOverride)
    SourceRevisionType.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMIT_ID', traits: {"smithy.api#enumValue" => "COMMIT_ID"}))
    SourceRevisionType.add_member(:image_digest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_DIGEST', traits: {"smithy.api#enumValue" => "IMAGE_DIGEST"}))
    SourceRevisionType.add_member(:s3_object_version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_VERSION_ID', traits: {"smithy.api#enumValue" => "S3_OBJECT_VERSION_ID"}))
    SourceRevisionType.add_member(:s3_object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_KEY', traits: {"smithy.api#enumValue" => "S3_OBJECT_KEY"}))
    StageActionDeclarationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionDeclaration)
    StageBlockerDeclarationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerDeclaration)
    StageConditionState.add_member(:latest_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: StageConditionsExecution, location_name: 'latestExecution', traits: {"smithy.api#documentation" => "<p>Represents information about the latest run of a condition for a stage.</p>"}))
    StageConditionState.add_member(:condition_states, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionStateList, location_name: 'conditionStates', traits: {"smithy.api#documentation" => "<p>The states of the conditions for a run of a condition for a stage.</p>"}))
    StageConditionState.type = Types::StageConditionState
    StageConditionsExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a run of a condition for a stage.</p>"}))
    StageConditionsExecution.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>A summary of the run of the condition for a stage.</p>"}))
    StageConditionsExecution.type = Types::StageConditionsExecution
    StageContext.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the stage.</p>"}))
    StageContext.type = Types::StageContext
    StageDeclaration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the stage.</p>", "smithy.api#required" => {}}))
    StageDeclaration.add_member(:blockers, Smithy::Schema::Shapes::ShapeRef.new(shape: StageBlockerDeclarationList, location_name: 'blockers', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    StageDeclaration.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: StageActionDeclarationList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions included in a stage.</p>", "smithy.api#required" => {}}))
    StageDeclaration.add_member(:on_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureConditions, location_name: 'onFailure', traits: {"smithy.api#documentation" => "<p>The method to use when a stage has not completed successfully. For example,\n            configuring this field for rollback will roll back a failed stage automatically to the\n            last successful pipeline execution in the stage.</p>"}))
    StageDeclaration.add_member(:on_success, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessConditions, location_name: 'onSuccess', traits: {"smithy.api#documentation" => "<p>The method to use when a stage has succeeded. For example, configuring this field for\n            conditions will allow the stage to succeed when the conditions are met.</p>"}))
    StageDeclaration.add_member(:before_entry, Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeEntryConditions, location_name: 'beforeEntry', traits: {"smithy.api#documentation" => "<p>The method to use when a stage allows entry. For example, configuring this field for\n            conditions will allow entry to the stage when the conditions are met.</p>"}))
    StageDeclaration.type = Types::StageDeclaration
    StageExecution.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution associated with the stage.</p>", "smithy.api#required" => {}}))
    StageExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StageExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the stage, or for a completed stage, the last status of the\n            stage.</p>\n         <note>\n            <p>A status of cancelled means that the pipeline’s definition was updated before the\n                stage execution could be completed.</p>\n         </note>", "smithy.api#required" => {}}))
    StageExecution.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of pipeline execution for the stage, such as a rollback pipeline\n            execution.</p>"}))
    StageExecution.type = Types::StageExecution
    StageExecutionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StageExecution)
    StageExecutionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    StageExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    StageExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    StageExecutionStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopped', traits: {"smithy.api#enumValue" => "Stopped"}))
    StageExecutionStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Stopping', traits: {"smithy.api#enumValue" => "Stopping"}))
    StageExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    StageExecutionStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Skipped', traits: {"smithy.api#enumValue" => "Skipped"}))
    StageNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    StageNotFoundException.type = Types::StageNotFoundException
    StageNotRetryableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    StageNotRetryableException.type = Types::StageNotRetryableException
    StageRetryMode.add_member(:failed_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_ACTIONS', traits: {"smithy.api#enumValue" => "FAILED_ACTIONS"}))
    StageRetryMode.add_member(:all_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_ACTIONS', traits: {"smithy.api#enumValue" => "ALL_ACTIONS"}))
    StageState.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage.</p>"}))
    StageState.add_member(:inbound_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: StageExecution, location_name: 'inboundExecution'))
    StageState.add_member(:inbound_executions, Smithy::Schema::Shapes::ShapeRef.new(shape: StageExecutionList, location_name: 'inboundExecutions', traits: {"smithy.api#documentation" => "<p>The inbound executions for a stage.</p>"}))
    StageState.add_member(:inbound_transition_state, Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionState, location_name: 'inboundTransitionState', traits: {"smithy.api#documentation" => "<p>The state of the inbound transition, which is either enabled or disabled.</p>"}))
    StageState.add_member(:action_states, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionStateList, location_name: 'actionStates', traits: {"smithy.api#documentation" => "<p>The state of the stage.</p>"}))
    StageState.add_member(:latest_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: StageExecution, location_name: 'latestExecution', traits: {"smithy.api#documentation" => "<p>Information about the latest execution in the stage, including its ID and\n            status.</p>"}))
    StageState.add_member(:before_entry_condition_state, Smithy::Schema::Shapes::ShapeRef.new(shape: StageConditionState, location_name: 'beforeEntryConditionState', traits: {"smithy.api#documentation" => "<p>The state of the entry conditions for a stage.</p>"}))
    StageState.add_member(:on_success_condition_state, Smithy::Schema::Shapes::ShapeRef.new(shape: StageConditionState, location_name: 'onSuccessConditionState', traits: {"smithy.api#documentation" => "<p>The state of the success conditions for a stage.</p>"}))
    StageState.add_member(:on_failure_condition_state, Smithy::Schema::Shapes::ShapeRef.new(shape: StageConditionState, location_name: 'onFailureConditionState', traits: {"smithy.api#documentation" => "<p>The state of the failure conditions for a stage.</p>"}))
    StageState.add_member(:retry_stage_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStageMetadata, location_name: 'retryStageMetadata', traits: {"smithy.api#documentation" => "<p>he details of a specific automatic retry on stage failure, including the attempt\n            number and trigger.</p>"}))
    StageState.type = Types::StageState
    StageStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StageState)
    StageTransitionType.add_member(:inbound, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inbound', traits: {"smithy.api#enumValue" => "Inbound"}))
    StageTransitionType.add_member(:outbound, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Outbound', traits: {"smithy.api#enumValue" => "Outbound"}))
    StartPipelineExecutionInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to start.</p>", "smithy.api#required" => {}}))
    StartPipelineExecutionInput.add_member(:variables, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVariableList, location_name: 'variables', traits: {"smithy.api#documentation" => "<p>A list that overrides pipeline variables for a pipeline execution that's being\n            started. Variable names must match <code>[A-Za-z0-9@\\-_]+</code>, and the values can be\n            anything except an empty string.</p>"}))
    StartPipelineExecutionInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID used to identify a unique execution\n            request.</p>", "smithy.api#idempotencyToken" => {}}))
    StartPipelineExecutionInput.add_member(:source_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRevisionOverrideList, location_name: 'sourceRevisions', traits: {"smithy.api#documentation" => "<p>A list that allows you to specify, or override, the source revision for a pipeline\n            execution that's being started. A source revision is the version with all the changes to\n            your application code, or source artifact, for the pipeline execution.</p>"}))
    StartPipelineExecutionInput.type = Types::StartPipelineExecutionInput
    StartPipelineExecutionOutput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the pipeline execution that was\n            started.</p>"}))
    StartPipelineExecutionOutput.type = Types::StartPipelineExecutionOutput
    StartTimeRange.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Latest', traits: {"smithy.api#enumValue" => "Latest"}))
    StartTimeRange.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'All', traits: {"smithy.api#enumValue" => "All"}))
    StopExecutionTrigger.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StopPipelineExecutionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The user-specified reason the pipeline was stopped.</p>"}))
    StopExecutionTrigger.type = Types::StopExecutionTrigger
    StopPipelineExecutionInput.add_member(:pipeline_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'pipelineName', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to stop.</p>", "smithy.api#required" => {}}))
    StopPipelineExecutionInput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The ID of the pipeline execution to be stopped in the current stage. Use the\n                <code>GetPipelineState</code> action to retrieve the current\n            pipelineExecutionId.</p>", "smithy.api#required" => {}}))
    StopPipelineExecutionInput.add_member(:abandon, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'abandon', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Use this option to stop the pipeline execution by abandoning, rather than finishing,\n            in-progress actions.</p>\n         <note>\n            <p>This option can lead to failed or out-of-sequence tasks.</p>\n         </note>"}))
    StopPipelineExecutionInput.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StopPipelineExecutionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Use this option to enter comments, such as the reason the pipeline was stopped.</p>"}))
    StopPipelineExecutionInput.type = Types::StopPipelineExecutionInput
    StopPipelineExecutionOutput.add_member(:pipeline_execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionId, location_name: 'pipelineExecutionId', traits: {"smithy.api#documentation" => "<p>The unique system-generated ID of the pipeline execution that was stopped.</p>"}))
    StopPipelineExecutionOutput.type = Types::StopPipelineExecutionOutput
    SucceededInStageFilter.add_member(:stage_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StageName, location_name: 'stageName', traits: {"smithy.api#documentation" => "<p>The name of the stage for filtering for pipeline executions where the stage was\n            successful in the current pipeline version.</p>"}))
    SucceededInStageFilter.type = Types::SucceededInStageFilter
    SuccessConditions.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionList, location_name: 'conditions', traits: {"smithy.api#documentation" => "<p>The conditions that are success conditions.</p>", "smithy.api#required" => {}}))
    SuccessConditions.type = Types::SuccessConditions
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags you want to modify or add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilterName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name on which to filter.</p>"}))
    TargetFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilterValueList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values on which to filter.</p>"}))
    TargetFilter.type = Types::TargetFilter
    TargetFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilter)
    TargetFilterName.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_STATUS', traits: {"smithy.api#enumValue" => "TARGET_STATUS"}))
    TargetFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetFilterValue)
    ThirdPartyJob.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientId, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The <code>clientToken</code> portion of the <code>clientId</code> and\n                <code>clientToken</code> pair used to verify that the calling entity is allowed\n            access to the job and its details.</p>"}))
    ThirdPartyJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The identifier used to identify the job in CodePipeline.</p>"}))
    ThirdPartyJob.type = Types::ThirdPartyJob
    ThirdPartyJobData.add_member(:action_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeId, location_name: 'actionTypeId', traits: {"smithy.api#documentation" => "<p>Represents information about an action type.</p>"}))
    ThirdPartyJobData.add_member(:action_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfiguration, location_name: 'actionConfiguration', traits: {"smithy.api#documentation" => "<p>Represents information about an action configuration.</p>"}))
    ThirdPartyJobData.add_member(:pipeline_context, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineContext, location_name: 'pipelineContext', traits: {"smithy.api#documentation" => "<p>Represents information about a pipeline to a job worker.</p>\n         <note>\n            <p>Does not include <code>pipelineArn</code> and <code>pipelineExecutionId</code>\n                for ThirdParty jobs.</p>\n         </note>"}))
    ThirdPartyJobData.add_member(:input_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactList, location_name: 'inputArtifacts', traits: {"smithy.api#documentation" => "<p>The name of the artifact that is worked on by the action, if any. This name might\n            be system-generated, such as \"MyApp\", or it might be defined by the user when the action\n            is created. The input artifact name must match the name of an output artifact generated\n            by an action in an earlier action or stage of the pipeline.</p>"}))
    ThirdPartyJobData.add_member(:output_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactList, location_name: 'outputArtifacts', traits: {"smithy.api#documentation" => "<p>The name of the artifact that is the result of the action, if any. This name might\n            be system-generated, such as \"MyBuiltApp\", or it might be defined by the user when the\n            action is created.</p>"}))
    ThirdPartyJobData.add_member(:artifact_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSSessionCredentials, location_name: 'artifactCredentials', traits: {"smithy.api#documentation" => "<p>Represents an Amazon Web Services session credentials object. These credentials are\n            temporary credentials that are issued by Amazon Web Services Secure Token Service (STS).\n            They can be used to access input and output artifacts in the S3 bucket used to store\n            artifact for the pipeline in CodePipeline. </p>"}))
    ThirdPartyJobData.add_member(:continuation_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: 'continuationToken', traits: {"smithy.api#documentation" => "<p>A system-generated token, such as a CodeDeploy deployment ID, that a job requires\n            to continue the job asynchronously.</p>"}))
    ThirdPartyJobData.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKey, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>The encryption key used to encrypt and decrypt data in the artifact store for the\n            pipeline, such as an Amazon Web Services Key Management Service (Amazon Web Services KMS)\n            key. This is optional and might not be present.</p>"}))
    ThirdPartyJobData.type = Types::ThirdPartyJobData
    ThirdPartyJobDetails.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier used to identify the job details in CodePipeline.</p>"}))
    ThirdPartyJobDetails.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJobData, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The data to be returned by the third party job worker.</p>"}))
    ThirdPartyJobDetails.add_member(:nonce, Smithy::Schema::Shapes::ShapeRef.new(shape: Nonce, location_name: 'nonce', traits: {"smithy.api#documentation" => "<p>A system-generated random number that CodePipeline uses to ensure that the\n            job is being worked on by only one job worker. Use this number in an <a>AcknowledgeThirdPartyJob</a> request.</p>"}))
    ThirdPartyJobDetails.type = Types::ThirdPartyJobDetails
    ThirdPartyJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThirdPartyJob)
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message'))
    TooManyTagsException.type = Types::TooManyTagsException
    TransitionState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the transition between stages is enabled (true) or disabled\n            (false).</p>"}))
    TransitionState.add_member(:last_changed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: LastChangedBy, location_name: 'lastChangedBy', traits: {"smithy.api#documentation" => "<p>The ID of the user who last changed the transition state.</p>"}))
    TransitionState.add_member(:last_changed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastChangedAt, location_name: 'lastChangedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the transition state was last changed.</p>"}))
    TransitionState.add_member(:disabled_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledReason, location_name: 'disabledReason', traits: {"smithy.api#documentation" => "<p>The user-specified reason why the transition between two stages of a pipeline was\n            disabled.</p>"}))
    TransitionState.type = Types::TransitionState
    TriggerType.add_member(:create_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreatePipeline', traits: {"smithy.api#enumValue" => "CreatePipeline"}))
    TriggerType.add_member(:start_pipeline_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StartPipelineExecution', traits: {"smithy.api#enumValue" => "StartPipelineExecution"}))
    TriggerType.add_member(:poll_for_source_changes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PollForSourceChanges', traits: {"smithy.api#enumValue" => "PollForSourceChanges"}))
    TriggerType.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Webhook', traits: {"smithy.api#enumValue" => "Webhook"}))
    TriggerType.add_member(:cloud_watch_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CloudWatchEvent', traits: {"smithy.api#enumValue" => "CloudWatchEvent"}))
    TriggerType.add_member(:put_action_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PutActionRevision', traits: {"smithy.api#enumValue" => "PutActionRevision"}))
    TriggerType.add_member(:webhook_v2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WebhookV2', traits: {"smithy.api#enumValue" => "WebhookV2"}))
    TriggerType.add_member(:manual_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManualRollback', traits: {"smithy.api#enumValue" => "ManualRollback"}))
    TriggerType.add_member(:automated_rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutomatedRollback', traits: {"smithy.api#enumValue" => "AutomatedRollback"}))
    UnableToRollbackStageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnableToRollbackStageException.type = Types::UnableToRollbackStageException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the resource to remove tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The list of keys for the tags to be removed from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateActionTypeInput.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeDeclaration, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The action type definition for the action type to be updated.</p>", "smithy.api#required" => {}}))
    UpdateActionTypeInput.type = Types::UpdateActionTypeInput
    UpdatePipelineInput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>The name of the pipeline to be updated.</p>", "smithy.api#required" => {}}))
    UpdatePipelineInput.type = Types::UpdatePipelineInput
    UpdatePipelineOutput.add_member(:pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineDeclaration, location_name: 'pipeline', traits: {"smithy.api#documentation" => "<p>The structure of the updated pipeline.</p>"}))
    UpdatePipelineOutput.type = Types::UpdatePipelineOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided to the user in the event of an exception.</p>"}))
    ValidationException.type = Types::ValidationException
    WebhookAuthConfiguration.add_member(:allowed_ip_range, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookAuthConfigurationAllowedIPRange, location_name: 'AllowedIPRange', traits: {"smithy.api#documentation" => "<p>The property used to configure acceptance of webhooks in an IP address range. For\n            IP, only the <code>AllowedIPRange</code> property must be set. This property must be set\n            to a valid CIDR range.</p>"}))
    WebhookAuthConfiguration.add_member(:secret_token, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookAuthConfigurationSecretToken, location_name: 'SecretToken', traits: {"smithy.api#documentation" => "<p>The property used to configure GitHub authentication. For GITHUB_HMAC, only the\n                <code>SecretToken</code> property must be set.</p>\n         <important>\n            <p>When creating CodePipeline webhooks, do not use your own credentials or\n                reuse the same secret token across multiple webhooks. For optimal security, generate\n                a unique secret token for each webhook you create. The secret token is an arbitrary\n                string that you provide, which GitHub uses to compute and sign the webhook payloads\n                sent to CodePipeline, for protecting the integrity and authenticity of the\n                webhook payloads. Using your own credentials or reusing the same token across\n                multiple webhooks can lead to security vulnerabilities.</p>\n         </important>\n         <note>\n            <p>If a secret token was provided, it will be redacted in the response.</p>\n         </note>"}))
    WebhookAuthConfiguration.type = Types::WebhookAuthConfiguration
    WebhookAuthenticationType.add_member(:github_hmac, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITHUB_HMAC', traits: {"smithy.api#enumValue" => "GITHUB_HMAC"}))
    WebhookAuthenticationType.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP', traits: {"smithy.api#enumValue" => "IP"}))
    WebhookAuthenticationType.add_member(:unauthenticated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAUTHENTICATED', traits: {"smithy.api#enumValue" => "UNAUTHENTICATED"}))
    WebhookDefinition.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the webhook.</p>", "smithy.api#required" => {}}))
    WebhookDefinition.add_member(:target_pipeline, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineName, location_name: 'targetPipeline', traits: {"smithy.api#documentation" => "<p>The name of the pipeline you want to connect to the webhook.</p>", "smithy.api#required" => {}}))
    WebhookDefinition.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'targetAction', traits: {"smithy.api#documentation" => "<p>The name of the action in a pipeline you want to connect to the webhook. The action\n            must be from the source (first) stage of the pipeline.</p>", "smithy.api#required" => {}}))
    WebhookDefinition.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>A list of rules applied to the body/payload sent in the POST request to a webhook\n            URL. All defined rules must pass for the request to be accepted and the pipeline\n            started.</p>", "smithy.api#required" => {}}))
    WebhookDefinition.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookAuthenticationType, location_name: 'authentication', traits: {"smithy.api#documentation" => "<p>Supported options are GITHUB_HMAC, IP, and UNAUTHENTICATED.</p>\n         <important>\n            <p>When creating CodePipeline webhooks, do not use your own credentials or\n                reuse the same secret token across multiple webhooks. For optimal security, generate\n                a unique secret token for each webhook you create. The secret token is an arbitrary\n                string that you provide, which GitHub uses to compute and sign the webhook payloads\n                sent to CodePipeline, for protecting the integrity and authenticity of the\n                webhook payloads. Using your own credentials or reusing the same token across\n                multiple webhooks can lead to security vulnerabilities.</p>\n         </important>\n         <note>\n            <p>If a secret token was provided, it will be redacted in the response.</p>\n         </note>\n         <ul>\n            <li>\n               <p>For information about the authentication scheme implemented by GITHUB_HMAC,\n                    see <a href=\"https://developer.github.com/webhooks/securing/\">Securing your\n                        webhooks</a> on the GitHub Developer website.</p>\n            </li>\n            <li>\n               <p> IP rejects webhooks trigger requests unless they originate from an IP\n                    address in the IP range whitelisted in the authentication\n                    configuration.</p>\n            </li>\n            <li>\n               <p> UNAUTHENTICATED accepts all webhook trigger requests regardless of\n                    origin.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    WebhookDefinition.add_member(:authentication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookAuthConfiguration, location_name: 'authenticationConfiguration', traits: {"smithy.api#documentation" => "<p>Properties that configure the authentication applied to incoming webhook trigger\n            requests. The required properties depend on the authentication type. For GITHUB_HMAC,\n            only the <code>SecretToken </code>property must be set. For IP, only the\n                <code>AllowedIPRange </code>property must be set to a valid CIDR range. For\n            UNAUTHENTICATED, no properties can be set.</p>", "smithy.api#required" => {}}))
    WebhookDefinition.type = Types::WebhookDefinition
    WebhookFilterRule.add_member(:json_path, Smithy::Schema::Shapes::ShapeRef.new(shape: JsonPath, location_name: 'jsonPath', traits: {"smithy.api#documentation" => "<p>A JsonPath expression that is applied to the body/payload of the webhook. The value\n            selected by the JsonPath expression must match the value specified in the\n                <code>MatchEquals</code> field. Otherwise, the request is ignored. For more\n            information, see <a href=\"https://github.com/json-path/JsonPath\">Java JsonPath\n                implementation</a> in GitHub.</p>", "smithy.api#required" => {}}))
    WebhookFilterRule.add_member(:match_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchEquals, location_name: 'matchEquals', traits: {"smithy.api#documentation" => "<p>The value selected by the <code>JsonPath</code> expression must match what is\n            supplied in the <code>MatchEquals</code> field. Otherwise, the request is ignored.\n            Properties from the target action configuration can be included as placeholders in this\n            value by surrounding the action configuration key with curly brackets. For example, if\n            the value supplied here is \"refs/heads/{Branch}\" and the target action has an action\n            configuration property called \"Branch\" with a value of \"main\", the\n                <code>MatchEquals</code> value is evaluated as \"refs/heads/main\". For a list of\n            action configuration properties for built-in action types, see <a href=\"https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements\">Pipeline Structure Reference Action Requirements</a>.</p>"}))
    WebhookFilterRule.type = Types::WebhookFilterRule
    WebhookFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookFilterRule)
    WebhookList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebhookItem)
    WebhookNotFoundException.type = Types::WebhookNotFoundException

    CodePipeline20150709 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codepipeline#CodePipeline_20150709"
      service.name = "CodePipeline20150709"
      service.version = "2015-07-09"
      service.traits = {"aws.api#service" => {"sdkId" => "CodePipeline", "arnNamespace" => "codepipeline", "cloudFormationName" => "CodePipeline", "cloudTrailEventSource" => "codepipeline.amazonaws.com", "endpointPrefix" => "codepipeline"}, "aws.auth#sigv4" => {"name" => "codepipeline"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodePipeline", "smithy.api#xmlNamespace" => {"uri" => "http://codepipeline.amazonaws.com/doc/2015-07-09/"}}
      service.add_operation(:acknowledge_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#AcknowledgeJob"
        operation.name = "AcknowledgeJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNonceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:acknowledge_third_party_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#AcknowledgeThirdPartyJob"
        operation.name = "AcknowledgeThirdPartyJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeThirdPartyJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgeThirdPartyJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNonceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_action_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#CreateCustomActionType"
        operation.name = "CreateCustomActionType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomActionTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomActionTypeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#CreatePipeline"
        operation.name = "CreatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePipelineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidActionDeclarationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlockerDeclarationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStageDeclarationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStructureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNameInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_action_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeleteCustomActionType"
        operation.name = "DeleteCustomActionType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomActionTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeletePipeline"
        operation.name = "DeletePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_webhook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeleteWebhook"
        operation.name = "DeleteWebhook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebhookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebhookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_webhook_with_third_party, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DeregisterWebhookWithThirdParty"
        operation.name = "DeregisterWebhookWithThirdParty"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterWebhookWithThirdPartyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterWebhookWithThirdPartyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_stage_transition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#DisableStageTransition"
        operation.name = "DisableStageTransition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableStageTransitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:enable_stage_transition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#EnableStageTransition"
        operation.name = "EnableStageTransition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableStageTransitionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_action_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetActionType"
        operation.name = "GetActionType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetActionTypeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_job_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetJobDetails"
        operation.name = "GetJobDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetPipeline"
        operation.name = "GetPipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineVersionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "GetPipelineFailure", "params" => {"name" => "fake-pipeline"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:get_pipeline_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetPipelineExecution"
        operation.name = "GetPipelineExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_pipeline_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetPipelineState"
        operation.name = "GetPipelineState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineStateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPipelineStateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_third_party_job_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#GetThirdPartyJobDetails"
        operation.name = "GetThirdPartyJobDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThirdPartyJobDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThirdPartyJobDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_action_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListActionExecutions"
        operation.name = "ListActionExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionExecutionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionExecutionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListActionExecutions.new
      end)
      service.add_operation(:list_action_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListActionTypes"
        operation.name = "ListActionTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionTypesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListActionTypesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListActionTypes.new
      end)
      service.add_operation(:list_deploy_action_execution_targets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListDeployActionExecutionTargets"
        operation.name = "ListDeployActionExecutionTargets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeployActionExecutionTargetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeployActionExecutionTargetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDeployActionExecutionTargets.new
      end)
      service.add_operation(:list_pipeline_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListPipelineExecutions"
        operation.name = "ListPipelineExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelineExecutionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelineExecutionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPipelineExecutions.new
      end)
      service.add_operation(:list_pipelines, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListPipelines"
        operation.name = "ListPipelines"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPipelinesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListPipelinesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListPipelines.new
      end)
      service.add_operation(:list_rule_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListRuleExecutions"
        operation.name = "ListRuleExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleExecutionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleExecutionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRuleExecutions.new
      end)
      service.add_operation(:list_rule_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListRuleTypes"
        operation.name = "ListRuleTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleTypesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRuleTypesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_webhooks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#ListWebhooks"
        operation.name = "ListWebhooks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebhooksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebhooksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWebhooks.new
      end)
      service.add_operation(:override_stage_condition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#OverrideStageCondition"
        operation.name = "OverrideStageCondition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideStageConditionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionNotOverridableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotLatestPipelineExecutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:poll_for_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PollForJobs"
        operation.name = "PollForJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PollForJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PollForJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:poll_for_third_party_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PollForThirdPartyJobs"
        operation.name = "PollForThirdPartyJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PollForThirdPartyJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PollForThirdPartyJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_action_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutActionRevision"
        operation.name = "PutActionRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutActionRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutActionRevisionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_approval_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutApprovalResult"
        operation.name = "PutApprovalResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApprovalResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutApprovalResultOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalAlreadyCompletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_job_failure_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutJobFailureResult"
        operation.name = "PutJobFailureResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutJobFailureResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_job_success_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutJobSuccessResult"
        operation.name = "PutJobSuccessResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutJobSuccessResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OutputVariablesSizeExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_third_party_job_failure_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutThirdPartyJobFailureResult"
        operation.name = "PutThirdPartyJobFailureResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutThirdPartyJobFailureResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_third_party_job_success_result, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutThirdPartyJobSuccessResult"
        operation.name = "PutThirdPartyJobSuccessResult"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutThirdPartyJobSuccessResultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: JobNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:put_webhook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#PutWebhook"
        operation.name = "PutWebhook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutWebhookInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutWebhookOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebhookAuthenticationParametersException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidWebhookFilterPatternException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_webhook_with_third_party, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#RegisterWebhookWithThirdParty"
        operation.name = "RegisterWebhookWithThirdParty"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterWebhookWithThirdPartyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterWebhookWithThirdPartyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:retry_stage_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#RetryStageExecution"
        operation.name = "RetryStageExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStageExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RetryStageExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotLatestPipelineExecutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotRetryableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:rollback_stage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#RollbackStage"
        operation.name = "RollbackStage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackStageInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RollbackStageOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionOutdatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: StageNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnableToRollbackStageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_pipeline_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#StartPipelineExecution"
        operation.name = "StartPipelineExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPipelineExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPipelineExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentPipelineExecutionsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_pipeline_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#StopPipelineExecution"
        operation.name = "StopPipelineExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPipelineExecutionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopPipelineExecutionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicatedStopRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineExecutionNotStoppableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_action_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#UpdateActionType"
        operation.name = "UpdateActionType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateActionTypeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActionTypeNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_pipeline, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codepipeline#UpdatePipeline"
        operation.name = "UpdatePipeline"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePipelineOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidActionDeclarationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlockerDeclarationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStageDeclarationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStructureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
