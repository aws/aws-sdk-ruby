# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSM
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    Activation = Shapes::StructureShape.new(name: 'Activation')
    ActivationCode = Shapes::StringShape.new(name: 'ActivationCode')
    ActivationDescription = Shapes::StringShape.new(name: 'ActivationDescription')
    ActivationId = Shapes::StringShape.new(name: 'ActivationId')
    ActivationList = Shapes::ListShape.new(name: 'ActivationList')
    AddTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddTagsToResourceRequest')
    AddTagsToResourceResult = Shapes::StructureShape.new(name: 'AddTagsToResourceResult')
    AgentErrorCode = Shapes::StringShape.new(name: 'AgentErrorCode')
    AssociatedInstances = Shapes::StructureShape.new(name: 'AssociatedInstances')
    Association = Shapes::StructureShape.new(name: 'Association')
    AssociationAlreadyExists = Shapes::StructureShape.new(name: 'AssociationAlreadyExists')
    AssociationDescription = Shapes::StructureShape.new(name: 'AssociationDescription')
    AssociationDescriptionList = Shapes::ListShape.new(name: 'AssociationDescriptionList')
    AssociationDoesNotExist = Shapes::StructureShape.new(name: 'AssociationDoesNotExist')
    AssociationFilter = Shapes::StructureShape.new(name: 'AssociationFilter')
    AssociationFilterKey = Shapes::StringShape.new(name: 'AssociationFilterKey')
    AssociationFilterList = Shapes::ListShape.new(name: 'AssociationFilterList')
    AssociationFilterValue = Shapes::StringShape.new(name: 'AssociationFilterValue')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    AssociationLimitExceeded = Shapes::StructureShape.new(name: 'AssociationLimitExceeded')
    AssociationList = Shapes::ListShape.new(name: 'AssociationList')
    AssociationOverview = Shapes::StructureShape.new(name: 'AssociationOverview')
    AssociationStatus = Shapes::StructureShape.new(name: 'AssociationStatus')
    AssociationStatusAggregatedCount = Shapes::MapShape.new(name: 'AssociationStatusAggregatedCount')
    AssociationStatusName = Shapes::StringShape.new(name: 'AssociationStatusName')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AutomationActionName = Shapes::StringShape.new(name: 'AutomationActionName')
    AutomationDefinitionNotFoundException = Shapes::StructureShape.new(name: 'AutomationDefinitionNotFoundException')
    AutomationDefinitionVersionNotFoundException = Shapes::StructureShape.new(name: 'AutomationDefinitionVersionNotFoundException')
    AutomationExecution = Shapes::StructureShape.new(name: 'AutomationExecution')
    AutomationExecutionFilter = Shapes::StructureShape.new(name: 'AutomationExecutionFilter')
    AutomationExecutionFilterKey = Shapes::StringShape.new(name: 'AutomationExecutionFilterKey')
    AutomationExecutionFilterList = Shapes::ListShape.new(name: 'AutomationExecutionFilterList')
    AutomationExecutionFilterValue = Shapes::StringShape.new(name: 'AutomationExecutionFilterValue')
    AutomationExecutionFilterValueList = Shapes::ListShape.new(name: 'AutomationExecutionFilterValueList')
    AutomationExecutionId = Shapes::StringShape.new(name: 'AutomationExecutionId')
    AutomationExecutionLimitExceededException = Shapes::StructureShape.new(name: 'AutomationExecutionLimitExceededException')
    AutomationExecutionMetadata = Shapes::StructureShape.new(name: 'AutomationExecutionMetadata')
    AutomationExecutionMetadataList = Shapes::ListShape.new(name: 'AutomationExecutionMetadataList')
    AutomationExecutionNotFoundException = Shapes::StructureShape.new(name: 'AutomationExecutionNotFoundException')
    AutomationExecutionStatus = Shapes::StringShape.new(name: 'AutomationExecutionStatus')
    AutomationParameterKey = Shapes::StringShape.new(name: 'AutomationParameterKey')
    AutomationParameterMap = Shapes::MapShape.new(name: 'AutomationParameterMap')
    AutomationParameterValue = Shapes::StringShape.new(name: 'AutomationParameterValue')
    AutomationParameterValueList = Shapes::ListShape.new(name: 'AutomationParameterValueList')
    BatchErrorMessage = Shapes::StringShape.new(name: 'BatchErrorMessage')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelCommandRequest = Shapes::StructureShape.new(name: 'CancelCommandRequest')
    CancelCommandResult = Shapes::StructureShape.new(name: 'CancelCommandResult')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Command = Shapes::StructureShape.new(name: 'Command')
    CommandFilter = Shapes::StructureShape.new(name: 'CommandFilter')
    CommandFilterKey = Shapes::StringShape.new(name: 'CommandFilterKey')
    CommandFilterList = Shapes::ListShape.new(name: 'CommandFilterList')
    CommandFilterValue = Shapes::StringShape.new(name: 'CommandFilterValue')
    CommandId = Shapes::StringShape.new(name: 'CommandId')
    CommandInvocation = Shapes::StructureShape.new(name: 'CommandInvocation')
    CommandInvocationList = Shapes::ListShape.new(name: 'CommandInvocationList')
    CommandInvocationStatus = Shapes::StringShape.new(name: 'CommandInvocationStatus')
    CommandList = Shapes::ListShape.new(name: 'CommandList')
    CommandMaxResults = Shapes::IntegerShape.new(name: 'CommandMaxResults')
    CommandPlugin = Shapes::StructureShape.new(name: 'CommandPlugin')
    CommandPluginList = Shapes::ListShape.new(name: 'CommandPluginList')
    CommandPluginName = Shapes::StringShape.new(name: 'CommandPluginName')
    CommandPluginOutput = Shapes::StringShape.new(name: 'CommandPluginOutput')
    CommandPluginStatus = Shapes::StringShape.new(name: 'CommandPluginStatus')
    CommandStatus = Shapes::StringShape.new(name: 'CommandStatus')
    Comment = Shapes::StringShape.new(name: 'Comment')
    CompletedCount = Shapes::IntegerShape.new(name: 'CompletedCount')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    CreateActivationRequest = Shapes::StructureShape.new(name: 'CreateActivationRequest')
    CreateActivationResult = Shapes::StructureShape.new(name: 'CreateActivationResult')
    CreateAssociationBatchRequest = Shapes::StructureShape.new(name: 'CreateAssociationBatchRequest')
    CreateAssociationBatchRequestEntries = Shapes::ListShape.new(name: 'CreateAssociationBatchRequestEntries')
    CreateAssociationBatchRequestEntry = Shapes::StructureShape.new(name: 'CreateAssociationBatchRequestEntry')
    CreateAssociationBatchResult = Shapes::StructureShape.new(name: 'CreateAssociationBatchResult')
    CreateAssociationRequest = Shapes::StructureShape.new(name: 'CreateAssociationRequest')
    CreateAssociationResult = Shapes::StructureShape.new(name: 'CreateAssociationResult')
    CreateDocumentRequest = Shapes::StructureShape.new(name: 'CreateDocumentRequest')
    CreateDocumentResult = Shapes::StructureShape.new(name: 'CreateDocumentResult')
    CreateMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'CreateMaintenanceWindowRequest')
    CreateMaintenanceWindowResult = Shapes::StructureShape.new(name: 'CreateMaintenanceWindowResult')
    CreatedDate = Shapes::TimestampShape.new(name: 'CreatedDate')
    CustomSchemaCountLimitExceededException = Shapes::StructureShape.new(name: 'CustomSchemaCountLimitExceededException')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DefaultInstanceName = Shapes::StringShape.new(name: 'DefaultInstanceName')
    DeleteActivationRequest = Shapes::StructureShape.new(name: 'DeleteActivationRequest')
    DeleteActivationResult = Shapes::StructureShape.new(name: 'DeleteActivationResult')
    DeleteAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAssociationRequest')
    DeleteAssociationResult = Shapes::StructureShape.new(name: 'DeleteAssociationResult')
    DeleteDocumentRequest = Shapes::StructureShape.new(name: 'DeleteDocumentRequest')
    DeleteDocumentResult = Shapes::StructureShape.new(name: 'DeleteDocumentResult')
    DeleteMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeleteMaintenanceWindowRequest')
    DeleteMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeleteMaintenanceWindowResult')
    DeleteParameterRequest = Shapes::StructureShape.new(name: 'DeleteParameterRequest')
    DeleteParameterResult = Shapes::StructureShape.new(name: 'DeleteParameterResult')
    DeregisterManagedInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceRequest')
    DeregisterManagedInstanceResult = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceResult')
    DeregisterTargetFromMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeregisterTargetFromMaintenanceWindowRequest')
    DeregisterTargetFromMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeregisterTargetFromMaintenanceWindowResult')
    DeregisterTaskFromMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeregisterTaskFromMaintenanceWindowRequest')
    DeregisterTaskFromMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeregisterTaskFromMaintenanceWindowResult')
    DescribeActivationsFilter = Shapes::StructureShape.new(name: 'DescribeActivationsFilter')
    DescribeActivationsFilterKeys = Shapes::StringShape.new(name: 'DescribeActivationsFilterKeys')
    DescribeActivationsFilterList = Shapes::ListShape.new(name: 'DescribeActivationsFilterList')
    DescribeActivationsRequest = Shapes::StructureShape.new(name: 'DescribeActivationsRequest')
    DescribeActivationsResult = Shapes::StructureShape.new(name: 'DescribeActivationsResult')
    DescribeAssociationRequest = Shapes::StructureShape.new(name: 'DescribeAssociationRequest')
    DescribeAssociationResult = Shapes::StructureShape.new(name: 'DescribeAssociationResult')
    DescribeAutomationExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAutomationExecutionsRequest')
    DescribeAutomationExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAutomationExecutionsResult')
    DescribeDocumentPermissionRequest = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionRequest')
    DescribeDocumentPermissionResponse = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionResponse')
    DescribeDocumentRequest = Shapes::StructureShape.new(name: 'DescribeDocumentRequest')
    DescribeDocumentResult = Shapes::StructureShape.new(name: 'DescribeDocumentResult')
    DescribeEffectiveInstanceAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeEffectiveInstanceAssociationsRequest')
    DescribeEffectiveInstanceAssociationsResult = Shapes::StructureShape.new(name: 'DescribeEffectiveInstanceAssociationsResult')
    DescribeInstanceAssociationsStatusRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAssociationsStatusRequest')
    DescribeInstanceAssociationsStatusResult = Shapes::StructureShape.new(name: 'DescribeInstanceAssociationsStatusResult')
    DescribeInstanceInformationRequest = Shapes::StructureShape.new(name: 'DescribeInstanceInformationRequest')
    DescribeInstanceInformationResult = Shapes::StructureShape.new(name: 'DescribeInstanceInformationResult')
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTaskInvocationsRequest')
    DescribeMaintenanceWindowExecutionTaskInvocationsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTaskInvocationsResult')
    DescribeMaintenanceWindowExecutionTasksRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTasksRequest')
    DescribeMaintenanceWindowExecutionTasksResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTasksResult')
    DescribeMaintenanceWindowExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionsRequest')
    DescribeMaintenanceWindowExecutionsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionsResult')
    DescribeMaintenanceWindowTargetsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTargetsRequest')
    DescribeMaintenanceWindowTargetsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTargetsResult')
    DescribeMaintenanceWindowTasksRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTasksRequest')
    DescribeMaintenanceWindowTasksResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTasksResult')
    DescribeMaintenanceWindowsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowsRequest')
    DescribeMaintenanceWindowsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowsResult')
    DescribeParametersRequest = Shapes::StructureShape.new(name: 'DescribeParametersRequest')
    DescribeParametersResult = Shapes::StructureShape.new(name: 'DescribeParametersResult')
    DescriptionInDocument = Shapes::StringShape.new(name: 'DescriptionInDocument')
    DocumentARN = Shapes::StringShape.new(name: 'DocumentARN')
    DocumentAlreadyExists = Shapes::StructureShape.new(name: 'DocumentAlreadyExists')
    DocumentContent = Shapes::StringShape.new(name: 'DocumentContent')
    DocumentDefaultVersionDescription = Shapes::StructureShape.new(name: 'DocumentDefaultVersionDescription')
    DocumentDescription = Shapes::StructureShape.new(name: 'DocumentDescription')
    DocumentFilter = Shapes::StructureShape.new(name: 'DocumentFilter')
    DocumentFilterKey = Shapes::StringShape.new(name: 'DocumentFilterKey')
    DocumentFilterList = Shapes::ListShape.new(name: 'DocumentFilterList')
    DocumentFilterValue = Shapes::StringShape.new(name: 'DocumentFilterValue')
    DocumentHash = Shapes::StringShape.new(name: 'DocumentHash')
    DocumentHashType = Shapes::StringShape.new(name: 'DocumentHashType')
    DocumentIdentifier = Shapes::StructureShape.new(name: 'DocumentIdentifier')
    DocumentIdentifierList = Shapes::ListShape.new(name: 'DocumentIdentifierList')
    DocumentLimitExceeded = Shapes::StructureShape.new(name: 'DocumentLimitExceeded')
    DocumentName = Shapes::StringShape.new(name: 'DocumentName')
    DocumentOwner = Shapes::StringShape.new(name: 'DocumentOwner')
    DocumentParameter = Shapes::StructureShape.new(name: 'DocumentParameter')
    DocumentParameterDefaultValue = Shapes::StringShape.new(name: 'DocumentParameterDefaultValue')
    DocumentParameterDescrption = Shapes::StringShape.new(name: 'DocumentParameterDescrption')
    DocumentParameterList = Shapes::ListShape.new(name: 'DocumentParameterList')
    DocumentParameterName = Shapes::StringShape.new(name: 'DocumentParameterName')
    DocumentParameterType = Shapes::StringShape.new(name: 'DocumentParameterType')
    DocumentPermissionLimit = Shapes::StructureShape.new(name: 'DocumentPermissionLimit')
    DocumentPermissionType = Shapes::StringShape.new(name: 'DocumentPermissionType')
    DocumentSchemaVersion = Shapes::StringShape.new(name: 'DocumentSchemaVersion')
    DocumentSha1 = Shapes::StringShape.new(name: 'DocumentSha1')
    DocumentStatus = Shapes::StringShape.new(name: 'DocumentStatus')
    DocumentType = Shapes::StringShape.new(name: 'DocumentType')
    DocumentVersion = Shapes::StringShape.new(name: 'DocumentVersion')
    DocumentVersionInfo = Shapes::StructureShape.new(name: 'DocumentVersionInfo')
    DocumentVersionLimitExceeded = Shapes::StructureShape.new(name: 'DocumentVersionLimitExceeded')
    DocumentVersionList = Shapes::ListShape.new(name: 'DocumentVersionList')
    DocumentVersionNumber = Shapes::StringShape.new(name: 'DocumentVersionNumber')
    DoesNotExistException = Shapes::StructureShape.new(name: 'DoesNotExistException')
    DuplicateDocumentContent = Shapes::StructureShape.new(name: 'DuplicateDocumentContent')
    DuplicateInstanceId = Shapes::StructureShape.new(name: 'DuplicateInstanceId')
    EffectiveInstanceAssociationMaxResults = Shapes::IntegerShape.new(name: 'EffectiveInstanceAssociationMaxResults')
    ErrorCount = Shapes::IntegerShape.new(name: 'ErrorCount')
    ExpirationDate = Shapes::TimestampShape.new(name: 'ExpirationDate')
    FailedCreateAssociation = Shapes::StructureShape.new(name: 'FailedCreateAssociation')
    FailedCreateAssociationList = Shapes::ListShape.new(name: 'FailedCreateAssociationList')
    Fault = Shapes::StringShape.new(name: 'Fault')
    GetAutomationExecutionRequest = Shapes::StructureShape.new(name: 'GetAutomationExecutionRequest')
    GetAutomationExecutionResult = Shapes::StructureShape.new(name: 'GetAutomationExecutionResult')
    GetCommandInvocationRequest = Shapes::StructureShape.new(name: 'GetCommandInvocationRequest')
    GetCommandInvocationResult = Shapes::StructureShape.new(name: 'GetCommandInvocationResult')
    GetDocumentRequest = Shapes::StructureShape.new(name: 'GetDocumentRequest')
    GetDocumentResult = Shapes::StructureShape.new(name: 'GetDocumentResult')
    GetInventoryRequest = Shapes::StructureShape.new(name: 'GetInventoryRequest')
    GetInventoryResult = Shapes::StructureShape.new(name: 'GetInventoryResult')
    GetInventorySchemaMaxResults = Shapes::IntegerShape.new(name: 'GetInventorySchemaMaxResults')
    GetInventorySchemaRequest = Shapes::StructureShape.new(name: 'GetInventorySchemaRequest')
    GetInventorySchemaResult = Shapes::StructureShape.new(name: 'GetInventorySchemaResult')
    GetMaintenanceWindowExecutionRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionRequest')
    GetMaintenanceWindowExecutionResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionResult')
    GetMaintenanceWindowExecutionTaskRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskRequest')
    GetMaintenanceWindowExecutionTaskResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskResult')
    GetMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowRequest')
    GetMaintenanceWindowResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowResult')
    GetParameterHistoryRequest = Shapes::StructureShape.new(name: 'GetParameterHistoryRequest')
    GetParameterHistoryResult = Shapes::StructureShape.new(name: 'GetParameterHistoryResult')
    GetParametersRequest = Shapes::StructureShape.new(name: 'GetParametersRequest')
    GetParametersResult = Shapes::StructureShape.new(name: 'GetParametersResult')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    IamRole = Shapes::StringShape.new(name: 'IamRole')
    IdempotentParameterMismatch = Shapes::StructureShape.new(name: 'IdempotentParameterMismatch')
    InstanceAggregatedAssociationOverview = Shapes::StructureShape.new(name: 'InstanceAggregatedAssociationOverview')
    InstanceAssociation = Shapes::StructureShape.new(name: 'InstanceAssociation')
    InstanceAssociationExecutionSummary = Shapes::StringShape.new(name: 'InstanceAssociationExecutionSummary')
    InstanceAssociationList = Shapes::ListShape.new(name: 'InstanceAssociationList')
    InstanceAssociationOutputLocation = Shapes::StructureShape.new(name: 'InstanceAssociationOutputLocation')
    InstanceAssociationOutputUrl = Shapes::StructureShape.new(name: 'InstanceAssociationOutputUrl')
    InstanceAssociationStatusAggregatedCount = Shapes::MapShape.new(name: 'InstanceAssociationStatusAggregatedCount')
    InstanceAssociationStatusInfo = Shapes::StructureShape.new(name: 'InstanceAssociationStatusInfo')
    InstanceAssociationStatusInfos = Shapes::ListShape.new(name: 'InstanceAssociationStatusInfos')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdList = Shapes::ListShape.new(name: 'InstanceIdList')
    InstanceInformation = Shapes::StructureShape.new(name: 'InstanceInformation')
    InstanceInformationFilter = Shapes::StructureShape.new(name: 'InstanceInformationFilter')
    InstanceInformationFilterKey = Shapes::StringShape.new(name: 'InstanceInformationFilterKey')
    InstanceInformationFilterList = Shapes::ListShape.new(name: 'InstanceInformationFilterList')
    InstanceInformationFilterValue = Shapes::StringShape.new(name: 'InstanceInformationFilterValue')
    InstanceInformationFilterValueSet = Shapes::ListShape.new(name: 'InstanceInformationFilterValueSet')
    InstanceInformationList = Shapes::ListShape.new(name: 'InstanceInformationList')
    InstanceInformationStringFilter = Shapes::StructureShape.new(name: 'InstanceInformationStringFilter')
    InstanceInformationStringFilterKey = Shapes::StringShape.new(name: 'InstanceInformationStringFilterKey')
    InstanceInformationStringFilterList = Shapes::ListShape.new(name: 'InstanceInformationStringFilterList')
    InstanceTagName = Shapes::StringShape.new(name: 'InstanceTagName')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidActivation = Shapes::StructureShape.new(name: 'InvalidActivation')
    InvalidActivationId = Shapes::StructureShape.new(name: 'InvalidActivationId')
    InvalidAutomationExecutionParametersException = Shapes::StructureShape.new(name: 'InvalidAutomationExecutionParametersException')
    InvalidCommandId = Shapes::StructureShape.new(name: 'InvalidCommandId')
    InvalidDocument = Shapes::StructureShape.new(name: 'InvalidDocument')
    InvalidDocumentContent = Shapes::StructureShape.new(name: 'InvalidDocumentContent')
    InvalidDocumentOperation = Shapes::StructureShape.new(name: 'InvalidDocumentOperation')
    InvalidDocumentSchemaVersion = Shapes::StructureShape.new(name: 'InvalidDocumentSchemaVersion')
    InvalidDocumentVersion = Shapes::StructureShape.new(name: 'InvalidDocumentVersion')
    InvalidFilter = Shapes::StructureShape.new(name: 'InvalidFilter')
    InvalidFilterKey = Shapes::StructureShape.new(name: 'InvalidFilterKey')
    InvalidFilterValue = Shapes::StructureShape.new(name: 'InvalidFilterValue')
    InvalidInstanceId = Shapes::StructureShape.new(name: 'InvalidInstanceId')
    InvalidInstanceInformationFilterValue = Shapes::StructureShape.new(name: 'InvalidInstanceInformationFilterValue')
    InvalidItemContentException = Shapes::StructureShape.new(name: 'InvalidItemContentException')
    InvalidKeyId = Shapes::StructureShape.new(name: 'InvalidKeyId')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
    InvalidNotificationConfig = Shapes::StructureShape.new(name: 'InvalidNotificationConfig')
    InvalidOutputFolder = Shapes::StructureShape.new(name: 'InvalidOutputFolder')
    InvalidOutputLocation = Shapes::StructureShape.new(name: 'InvalidOutputLocation')
    InvalidParameters = Shapes::StructureShape.new(name: 'InvalidParameters')
    InvalidPermissionType = Shapes::StructureShape.new(name: 'InvalidPermissionType')
    InvalidPluginName = Shapes::StructureShape.new(name: 'InvalidPluginName')
    InvalidResourceId = Shapes::StructureShape.new(name: 'InvalidResourceId')
    InvalidResourceType = Shapes::StructureShape.new(name: 'InvalidResourceType')
    InvalidResultAttributeException = Shapes::StructureShape.new(name: 'InvalidResultAttributeException')
    InvalidRole = Shapes::StructureShape.new(name: 'InvalidRole')
    InvalidSchedule = Shapes::StructureShape.new(name: 'InvalidSchedule')
    InvalidTarget = Shapes::StructureShape.new(name: 'InvalidTarget')
    InvalidTypeNameException = Shapes::StructureShape.new(name: 'InvalidTypeNameException')
    InvalidUpdate = Shapes::StructureShape.new(name: 'InvalidUpdate')
    InventoryAttributeDataType = Shapes::StringShape.new(name: 'InventoryAttributeDataType')
    InventoryFilter = Shapes::StructureShape.new(name: 'InventoryFilter')
    InventoryFilterKey = Shapes::StringShape.new(name: 'InventoryFilterKey')
    InventoryFilterList = Shapes::ListShape.new(name: 'InventoryFilterList')
    InventoryFilterValue = Shapes::StringShape.new(name: 'InventoryFilterValue')
    InventoryFilterValueList = Shapes::ListShape.new(name: 'InventoryFilterValueList')
    InventoryItem = Shapes::StructureShape.new(name: 'InventoryItem')
    InventoryItemAttribute = Shapes::StructureShape.new(name: 'InventoryItemAttribute')
    InventoryItemAttributeList = Shapes::ListShape.new(name: 'InventoryItemAttributeList')
    InventoryItemAttributeName = Shapes::StringShape.new(name: 'InventoryItemAttributeName')
    InventoryItemCaptureTime = Shapes::StringShape.new(name: 'InventoryItemCaptureTime')
    InventoryItemContentHash = Shapes::StringShape.new(name: 'InventoryItemContentHash')
    InventoryItemEntry = Shapes::MapShape.new(name: 'InventoryItemEntry')
    InventoryItemEntryList = Shapes::ListShape.new(name: 'InventoryItemEntryList')
    InventoryItemList = Shapes::ListShape.new(name: 'InventoryItemList')
    InventoryItemSchema = Shapes::StructureShape.new(name: 'InventoryItemSchema')
    InventoryItemSchemaResultList = Shapes::ListShape.new(name: 'InventoryItemSchemaResultList')
    InventoryItemSchemaVersion = Shapes::StringShape.new(name: 'InventoryItemSchemaVersion')
    InventoryItemTypeName = Shapes::StringShape.new(name: 'InventoryItemTypeName')
    InventoryItemTypeNameFilter = Shapes::StringShape.new(name: 'InventoryItemTypeNameFilter')
    InventoryQueryOperatorType = Shapes::StringShape.new(name: 'InventoryQueryOperatorType')
    InventoryResultEntity = Shapes::StructureShape.new(name: 'InventoryResultEntity')
    InventoryResultEntityId = Shapes::StringShape.new(name: 'InventoryResultEntityId')
    InventoryResultEntityList = Shapes::ListShape.new(name: 'InventoryResultEntityList')
    InventoryResultItem = Shapes::StructureShape.new(name: 'InventoryResultItem')
    InventoryResultItemKey = Shapes::StringShape.new(name: 'InventoryResultItemKey')
    InventoryResultItemMap = Shapes::MapShape.new(name: 'InventoryResultItemMap')
    InvocationDoesNotExist = Shapes::StructureShape.new(name: 'InvocationDoesNotExist')
    InvocationTraceOutput = Shapes::StringShape.new(name: 'InvocationTraceOutput')
    ItemContentMismatchException = Shapes::StructureShape.new(name: 'ItemContentMismatchException')
    ItemSizeLimitExceededException = Shapes::StructureShape.new(name: 'ItemSizeLimitExceededException')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListAssociationsRequest = Shapes::StructureShape.new(name: 'ListAssociationsRequest')
    ListAssociationsResult = Shapes::StructureShape.new(name: 'ListAssociationsResult')
    ListCommandInvocationsRequest = Shapes::StructureShape.new(name: 'ListCommandInvocationsRequest')
    ListCommandInvocationsResult = Shapes::StructureShape.new(name: 'ListCommandInvocationsResult')
    ListCommandsRequest = Shapes::StructureShape.new(name: 'ListCommandsRequest')
    ListCommandsResult = Shapes::StructureShape.new(name: 'ListCommandsResult')
    ListDocumentVersionsRequest = Shapes::StructureShape.new(name: 'ListDocumentVersionsRequest')
    ListDocumentVersionsResult = Shapes::StructureShape.new(name: 'ListDocumentVersionsResult')
    ListDocumentsRequest = Shapes::StructureShape.new(name: 'ListDocumentsRequest')
    ListDocumentsResult = Shapes::StructureShape.new(name: 'ListDocumentsResult')
    ListInventoryEntriesRequest = Shapes::StructureShape.new(name: 'ListInventoryEntriesRequest')
    ListInventoryEntriesResult = Shapes::StructureShape.new(name: 'ListInventoryEntriesResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LoggingInfo = Shapes::StructureShape.new(name: 'LoggingInfo')
    MaintenanceWindowAllowUnassociatedTargets = Shapes::BooleanShape.new(name: 'MaintenanceWindowAllowUnassociatedTargets')
    MaintenanceWindowCutoff = Shapes::IntegerShape.new(name: 'MaintenanceWindowCutoff')
    MaintenanceWindowDurationHours = Shapes::IntegerShape.new(name: 'MaintenanceWindowDurationHours')
    MaintenanceWindowEnabled = Shapes::BooleanShape.new(name: 'MaintenanceWindowEnabled')
    MaintenanceWindowExecution = Shapes::StructureShape.new(name: 'MaintenanceWindowExecution')
    MaintenanceWindowExecutionId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionId')
    MaintenanceWindowExecutionList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionList')
    MaintenanceWindowExecutionStatus = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionStatus')
    MaintenanceWindowExecutionStatusDetails = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionStatusDetails')
    MaintenanceWindowExecutionTaskExecutionId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskExecutionId')
    MaintenanceWindowExecutionTaskId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskId')
    MaintenanceWindowExecutionTaskIdList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionTaskIdList')
    MaintenanceWindowExecutionTaskIdentity = Shapes::StructureShape.new(name: 'MaintenanceWindowExecutionTaskIdentity')
    MaintenanceWindowExecutionTaskIdentityList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionTaskIdentityList')
    MaintenanceWindowExecutionTaskInvocationId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskInvocationId')
    MaintenanceWindowExecutionTaskInvocationIdentity = Shapes::StructureShape.new(name: 'MaintenanceWindowExecutionTaskInvocationIdentity')
    MaintenanceWindowExecutionTaskInvocationIdentityList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionTaskInvocationIdentityList')
    MaintenanceWindowExecutionTaskInvocationParameters = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskInvocationParameters')
    MaintenanceWindowFilter = Shapes::StructureShape.new(name: 'MaintenanceWindowFilter')
    MaintenanceWindowFilterKey = Shapes::StringShape.new(name: 'MaintenanceWindowFilterKey')
    MaintenanceWindowFilterList = Shapes::ListShape.new(name: 'MaintenanceWindowFilterList')
    MaintenanceWindowFilterValue = Shapes::StringShape.new(name: 'MaintenanceWindowFilterValue')
    MaintenanceWindowFilterValues = Shapes::ListShape.new(name: 'MaintenanceWindowFilterValues')
    MaintenanceWindowId = Shapes::StringShape.new(name: 'MaintenanceWindowId')
    MaintenanceWindowIdentity = Shapes::StructureShape.new(name: 'MaintenanceWindowIdentity')
    MaintenanceWindowIdentityList = Shapes::ListShape.new(name: 'MaintenanceWindowIdentityList')
    MaintenanceWindowMaxResults = Shapes::IntegerShape.new(name: 'MaintenanceWindowMaxResults')
    MaintenanceWindowName = Shapes::StringShape.new(name: 'MaintenanceWindowName')
    MaintenanceWindowResourceType = Shapes::StringShape.new(name: 'MaintenanceWindowResourceType')
    MaintenanceWindowSchedule = Shapes::StringShape.new(name: 'MaintenanceWindowSchedule')
    MaintenanceWindowTarget = Shapes::StructureShape.new(name: 'MaintenanceWindowTarget')
    MaintenanceWindowTargetId = Shapes::StringShape.new(name: 'MaintenanceWindowTargetId')
    MaintenanceWindowTargetList = Shapes::ListShape.new(name: 'MaintenanceWindowTargetList')
    MaintenanceWindowTask = Shapes::StructureShape.new(name: 'MaintenanceWindowTask')
    MaintenanceWindowTaskArn = Shapes::StringShape.new(name: 'MaintenanceWindowTaskArn')
    MaintenanceWindowTaskId = Shapes::StringShape.new(name: 'MaintenanceWindowTaskId')
    MaintenanceWindowTaskList = Shapes::ListShape.new(name: 'MaintenanceWindowTaskList')
    MaintenanceWindowTaskParameterName = Shapes::StringShape.new(name: 'MaintenanceWindowTaskParameterName')
    MaintenanceWindowTaskParameterValue = Shapes::StringShape.new(name: 'MaintenanceWindowTaskParameterValue')
    MaintenanceWindowTaskParameterValueExpression = Shapes::StructureShape.new(name: 'MaintenanceWindowTaskParameterValueExpression')
    MaintenanceWindowTaskParameterValueList = Shapes::ListShape.new(name: 'MaintenanceWindowTaskParameterValueList')
    MaintenanceWindowTaskParameters = Shapes::MapShape.new(name: 'MaintenanceWindowTaskParameters')
    MaintenanceWindowTaskParametersList = Shapes::ListShape.new(name: 'MaintenanceWindowTaskParametersList')
    MaintenanceWindowTaskPriority = Shapes::IntegerShape.new(name: 'MaintenanceWindowTaskPriority')
    MaintenanceWindowTaskTargetId = Shapes::StringShape.new(name: 'MaintenanceWindowTaskTargetId')
    MaintenanceWindowTaskType = Shapes::StringShape.new(name: 'MaintenanceWindowTaskType')
    ManagedInstanceId = Shapes::StringShape.new(name: 'ManagedInstanceId')
    MaxDocumentSizeExceeded = Shapes::StructureShape.new(name: 'MaxDocumentSizeExceeded')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsEC2Compatible = Shapes::IntegerShape.new(name: 'MaxResultsEC2Compatible')
    ModifyDocumentPermissionRequest = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionRequest')
    ModifyDocumentPermissionResponse = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionResponse')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NormalStringMap = Shapes::MapShape.new(name: 'NormalStringMap')
    NotificationArn = Shapes::StringShape.new(name: 'NotificationArn')
    NotificationConfig = Shapes::StructureShape.new(name: 'NotificationConfig')
    NotificationEvent = Shapes::StringShape.new(name: 'NotificationEvent')
    NotificationEventList = Shapes::ListShape.new(name: 'NotificationEventList')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    OwnerInformation = Shapes::StringShape.new(name: 'OwnerInformation')
    PSParameterName = Shapes::StringShape.new(name: 'PSParameterName')
    PSParameterValue = Shapes::StringShape.new(name: 'PSParameterValue')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterAlreadyExists = Shapes::StructureShape.new(name: 'ParameterAlreadyExists')
    ParameterDescription = Shapes::StringShape.new(name: 'ParameterDescription')
    ParameterHistory = Shapes::StructureShape.new(name: 'ParameterHistory')
    ParameterHistoryList = Shapes::ListShape.new(name: 'ParameterHistoryList')
    ParameterKeyId = Shapes::StringShape.new(name: 'ParameterKeyId')
    ParameterLimitExceeded = Shapes::StructureShape.new(name: 'ParameterLimitExceeded')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    ParameterMetadata = Shapes::StructureShape.new(name: 'ParameterMetadata')
    ParameterMetadataList = Shapes::ListShape.new(name: 'ParameterMetadataList')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterNameList = Shapes::ListShape.new(name: 'ParameterNameList')
    ParameterNotFound = Shapes::StructureShape.new(name: 'ParameterNotFound')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParameterValueList = Shapes::ListShape.new(name: 'ParameterValueList')
    Parameters = Shapes::MapShape.new(name: 'Parameters')
    ParametersFilter = Shapes::StructureShape.new(name: 'ParametersFilter')
    ParametersFilterKey = Shapes::StringShape.new(name: 'ParametersFilterKey')
    ParametersFilterList = Shapes::ListShape.new(name: 'ParametersFilterList')
    ParametersFilterValue = Shapes::StringShape.new(name: 'ParametersFilterValue')
    ParametersFilterValueList = Shapes::ListShape.new(name: 'ParametersFilterValueList')
    PingStatus = Shapes::StringShape.new(name: 'PingStatus')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    PlatformTypeList = Shapes::ListShape.new(name: 'PlatformTypeList')
    PutInventoryRequest = Shapes::StructureShape.new(name: 'PutInventoryRequest')
    PutInventoryResult = Shapes::StructureShape.new(name: 'PutInventoryResult')
    PutParameterRequest = Shapes::StructureShape.new(name: 'PutParameterRequest')
    PutParameterResult = Shapes::StructureShape.new(name: 'PutParameterResult')
    RegisterTargetWithMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'RegisterTargetWithMaintenanceWindowRequest')
    RegisterTargetWithMaintenanceWindowResult = Shapes::StructureShape.new(name: 'RegisterTargetWithMaintenanceWindowResult')
    RegisterTaskWithMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'RegisterTaskWithMaintenanceWindowRequest')
    RegisterTaskWithMaintenanceWindowResult = Shapes::StructureShape.new(name: 'RegisterTaskWithMaintenanceWindowResult')
    RegistrationLimit = Shapes::IntegerShape.new(name: 'RegistrationLimit')
    RegistrationsCount = Shapes::IntegerShape.new(name: 'RegistrationsCount')
    RemoveTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResult = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResult')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeForTagging = Shapes::StringShape.new(name: 'ResourceTypeForTagging')
    ResponseCode = Shapes::IntegerShape.new(name: 'ResponseCode')
    ResultAttribute = Shapes::StructureShape.new(name: 'ResultAttribute')
    ResultAttributeList = Shapes::ListShape.new(name: 'ResultAttributeList')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3OutputLocation = Shapes::StructureShape.new(name: 'S3OutputLocation')
    S3OutputUrl = Shapes::StructureShape.new(name: 'S3OutputUrl')
    S3Region = Shapes::StringShape.new(name: 'S3Region')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    SendCommandRequest = Shapes::StructureShape.new(name: 'SendCommandRequest')
    SendCommandResult = Shapes::StructureShape.new(name: 'SendCommandResult')
    ServiceRole = Shapes::StringShape.new(name: 'ServiceRole')
    StandardErrorContent = Shapes::StringShape.new(name: 'StandardErrorContent')
    StandardOutputContent = Shapes::StringShape.new(name: 'StandardOutputContent')
    StartAutomationExecutionRequest = Shapes::StructureShape.new(name: 'StartAutomationExecutionRequest')
    StartAutomationExecutionResult = Shapes::StructureShape.new(name: 'StartAutomationExecutionResult')
    StatusAdditionalInfo = Shapes::StringShape.new(name: 'StatusAdditionalInfo')
    StatusDetails = Shapes::StringShape.new(name: 'StatusDetails')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StatusName = Shapes::StringShape.new(name: 'StatusName')
    StatusUnchanged = Shapes::StructureShape.new(name: 'StatusUnchanged')
    StepExecution = Shapes::StructureShape.new(name: 'StepExecution')
    StepExecutionList = Shapes::ListShape.new(name: 'StepExecutionList')
    StopAutomationExecutionRequest = Shapes::StructureShape.new(name: 'StopAutomationExecutionRequest')
    StopAutomationExecutionResult = Shapes::StructureShape.new(name: 'StopAutomationExecutionResult')
    String = Shapes::StringShape.new(name: 'String')
    StringDateTime = Shapes::StringShape.new(name: 'StringDateTime')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetCount = Shapes::IntegerShape.new(name: 'TargetCount')
    TargetKey = Shapes::StringShape.new(name: 'TargetKey')
    TargetValue = Shapes::StringShape.new(name: 'TargetValue')
    TargetValues = Shapes::ListShape.new(name: 'TargetValues')
    Targets = Shapes::ListShape.new(name: 'Targets')
    TimeoutSeconds = Shapes::IntegerShape.new(name: 'TimeoutSeconds')
    TooManyTagsError = Shapes::StructureShape.new(name: 'TooManyTagsError')
    TooManyUpdates = Shapes::StructureShape.new(name: 'TooManyUpdates')
    TotalSizeLimitExceededException = Shapes::StructureShape.new(name: 'TotalSizeLimitExceededException')
    UnsupportedInventorySchemaVersionException = Shapes::StructureShape.new(name: 'UnsupportedInventorySchemaVersionException')
    UnsupportedParameterType = Shapes::StructureShape.new(name: 'UnsupportedParameterType')
    UnsupportedPlatformType = Shapes::StructureShape.new(name: 'UnsupportedPlatformType')
    UpdateAssociationRequest = Shapes::StructureShape.new(name: 'UpdateAssociationRequest')
    UpdateAssociationResult = Shapes::StructureShape.new(name: 'UpdateAssociationResult')
    UpdateAssociationStatusRequest = Shapes::StructureShape.new(name: 'UpdateAssociationStatusRequest')
    UpdateAssociationStatusResult = Shapes::StructureShape.new(name: 'UpdateAssociationStatusResult')
    UpdateDocumentDefaultVersionRequest = Shapes::StructureShape.new(name: 'UpdateDocumentDefaultVersionRequest')
    UpdateDocumentDefaultVersionResult = Shapes::StructureShape.new(name: 'UpdateDocumentDefaultVersionResult')
    UpdateDocumentRequest = Shapes::StructureShape.new(name: 'UpdateDocumentRequest')
    UpdateDocumentResult = Shapes::StructureShape.new(name: 'UpdateDocumentResult')
    UpdateMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowRequest')
    UpdateMaintenanceWindowResult = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowResult')
    UpdateManagedInstanceRoleRequest = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleRequest')
    UpdateManagedInstanceRoleResult = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleResult')
    Url = Shapes::StringShape.new(name: 'Url')
    VelocityConstraint = Shapes::StringShape.new(name: 'VelocityConstraint')
    Version = Shapes::StringShape.new(name: 'Version')

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId")

    Activation.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    Activation.add_member(:description, Shapes::ShapeRef.new(shape: ActivationDescription, location_name: "Description"))
    Activation.add_member(:default_instance_name, Shapes::ShapeRef.new(shape: DefaultInstanceName, location_name: "DefaultInstanceName"))
    Activation.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
    Activation.add_member(:registration_limit, Shapes::ShapeRef.new(shape: RegistrationLimit, location_name: "RegistrationLimit"))
    Activation.add_member(:registrations_count, Shapes::ShapeRef.new(shape: RegistrationsCount, location_name: "RegistrationsCount"))
    Activation.add_member(:expiration_date, Shapes::ShapeRef.new(shape: ExpirationDate, location_name: "ExpirationDate"))
    Activation.add_member(:expired, Shapes::ShapeRef.new(shape: Boolean, location_name: "Expired"))
    Activation.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDate, location_name: "CreatedDate"))
    Activation.struct_class = Types::Activation

    ActivationList.member = Shapes::ShapeRef.new(shape: Activation)

    AddTagsToResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    AddTagsToResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AddTagsToResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceRequest.struct_class = Types::AddTagsToResourceRequest

    AddTagsToResourceResult.struct_class = Types::AddTagsToResourceResult

    Association.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    Association.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    Association.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    Association.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    Association.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    Association.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    Association.add_member(:overview, Shapes::ShapeRef.new(shape: AssociationOverview, location_name: "Overview"))
    Association.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    Association.struct_class = Types::Association

    AssociationDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    AssociationDescription.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    AssociationDescription.add_member(:date, Shapes::ShapeRef.new(shape: DateTime, location_name: "Date"))
    AssociationDescription.add_member(:last_update_association_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdateAssociationDate"))
    AssociationDescription.add_member(:status, Shapes::ShapeRef.new(shape: AssociationStatus, location_name: "Status"))
    AssociationDescription.add_member(:overview, Shapes::ShapeRef.new(shape: AssociationOverview, location_name: "Overview"))
    AssociationDescription.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AssociationDescription.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    AssociationDescription.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationDescription.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AssociationDescription.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    AssociationDescription.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    AssociationDescription.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    AssociationDescription.add_member(:last_successful_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastSuccessfulExecutionDate"))
    AssociationDescription.struct_class = Types::AssociationDescription

    AssociationDescriptionList.member = Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription")

    AssociationFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationFilterKey, required: true, location_name: "key"))
    AssociationFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationFilterValue, required: true, location_name: "value"))
    AssociationFilter.struct_class = Types::AssociationFilter

    AssociationFilterList.member = Shapes::ShapeRef.new(shape: AssociationFilter, location_name: "AssociationFilter")

    AssociationList.member = Shapes::ShapeRef.new(shape: Association, location_name: "Association")

    AssociationOverview.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    AssociationOverview.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    AssociationOverview.add_member(:association_status_aggregated_count, Shapes::ShapeRef.new(shape: AssociationStatusAggregatedCount, location_name: "AssociationStatusAggregatedCount"))
    AssociationOverview.struct_class = Types::AssociationOverview

    AssociationStatus.add_member(:date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Date"))
    AssociationStatus.add_member(:name, Shapes::ShapeRef.new(shape: AssociationStatusName, required: true, location_name: "Name"))
    AssociationStatus.add_member(:message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "Message"))
    AssociationStatus.add_member(:additional_info, Shapes::ShapeRef.new(shape: StatusAdditionalInfo, location_name: "AdditionalInfo"))
    AssociationStatus.struct_class = Types::AssociationStatus

    AssociationStatusAggregatedCount.key = Shapes::ShapeRef.new(shape: StatusName)
    AssociationStatusAggregatedCount.value = Shapes::ShapeRef.new(shape: InstanceCount)

    AutomationExecution.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    AutomationExecution.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    AutomationExecution.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AutomationExecution.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    AutomationExecution.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    AutomationExecution.add_member(:automation_execution_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "AutomationExecutionStatus"))
    AutomationExecution.add_member(:step_executions, Shapes::ShapeRef.new(shape: StepExecutionList, location_name: "StepExecutions"))
    AutomationExecution.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    AutomationExecution.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    AutomationExecution.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    AutomationExecution.struct_class = Types::AutomationExecution

    AutomationExecutionFilter.add_member(:key, Shapes::ShapeRef.new(shape: AutomationExecutionFilterKey, required: true, location_name: "Key"))
    AutomationExecutionFilter.add_member(:values, Shapes::ShapeRef.new(shape: AutomationExecutionFilterValueList, required: true, location_name: "Values"))
    AutomationExecutionFilter.struct_class = Types::AutomationExecutionFilter

    AutomationExecutionFilterList.member = Shapes::ShapeRef.new(shape: AutomationExecutionFilter)

    AutomationExecutionFilterValueList.member = Shapes::ShapeRef.new(shape: AutomationExecutionFilterValue)

    AutomationExecutionMetadata.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    AutomationExecutionMetadata.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    AutomationExecutionMetadata.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AutomationExecutionMetadata.add_member(:automation_execution_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "AutomationExecutionStatus"))
    AutomationExecutionMetadata.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    AutomationExecutionMetadata.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    AutomationExecutionMetadata.add_member(:executed_by, Shapes::ShapeRef.new(shape: String, location_name: "ExecutedBy"))
    AutomationExecutionMetadata.add_member(:log_file, Shapes::ShapeRef.new(shape: String, location_name: "LogFile"))
    AutomationExecutionMetadata.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    AutomationExecutionMetadata.struct_class = Types::AutomationExecutionMetadata

    AutomationExecutionMetadataList.member = Shapes::ShapeRef.new(shape: AutomationExecutionMetadata)

    AutomationParameterMap.key = Shapes::ShapeRef.new(shape: AutomationParameterKey)
    AutomationParameterMap.value = Shapes::ShapeRef.new(shape: AutomationParameterValueList)

    AutomationParameterValueList.member = Shapes::ShapeRef.new(shape: AutomationParameterValue)

    CancelCommandRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, required: true, location_name: "CommandId"))
    CancelCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    CancelCommandRequest.struct_class = Types::CancelCommandRequest

    CancelCommandResult.struct_class = Types::CancelCommandResult

    Command.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    Command.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    Command.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    Command.add_member(:expires_after, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAfter"))
    Command.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    Command.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    Command.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    Command.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
    Command.add_member(:status, Shapes::ShapeRef.new(shape: CommandStatus, location_name: "Status"))
    Command.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    Command.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    Command.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    Command.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    Command.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxConcurrency"))
    Command.add_member(:max_errors, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxErrors"))
    Command.add_member(:target_count, Shapes::ShapeRef.new(shape: TargetCount, location_name: "TargetCount"))
    Command.add_member(:completed_count, Shapes::ShapeRef.new(shape: CompletedCount, location_name: "CompletedCount"))
    Command.add_member(:error_count, Shapes::ShapeRef.new(shape: ErrorCount, location_name: "ErrorCount"))
    Command.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    Command.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    Command.struct_class = Types::Command

    CommandFilter.add_member(:key, Shapes::ShapeRef.new(shape: CommandFilterKey, required: true, location_name: "key"))
    CommandFilter.add_member(:value, Shapes::ShapeRef.new(shape: CommandFilterValue, required: true, location_name: "value"))
    CommandFilter.struct_class = Types::CommandFilter

    CommandFilterList.member = Shapes::ShapeRef.new(shape: CommandFilter)

    CommandInvocation.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    CommandInvocation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CommandInvocation.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceTagName, location_name: "InstanceName"))
    CommandInvocation.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    CommandInvocation.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    CommandInvocation.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
    CommandInvocation.add_member(:status, Shapes::ShapeRef.new(shape: CommandInvocationStatus, location_name: "Status"))
    CommandInvocation.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    CommandInvocation.add_member(:trace_output, Shapes::ShapeRef.new(shape: InvocationTraceOutput, location_name: "TraceOutput"))
    CommandInvocation.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    CommandInvocation.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    CommandInvocation.add_member(:command_plugins, Shapes::ShapeRef.new(shape: CommandPluginList, location_name: "CommandPlugins"))
    CommandInvocation.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    CommandInvocation.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    CommandInvocation.struct_class = Types::CommandInvocation

    CommandInvocationList.member = Shapes::ShapeRef.new(shape: CommandInvocation)

    CommandList.member = Shapes::ShapeRef.new(shape: Command)

    CommandPlugin.add_member(:name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "Name"))
    CommandPlugin.add_member(:status, Shapes::ShapeRef.new(shape: CommandPluginStatus, location_name: "Status"))
    CommandPlugin.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    CommandPlugin.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
    CommandPlugin.add_member(:response_start_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ResponseStartDateTime"))
    CommandPlugin.add_member(:response_finish_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ResponseFinishDateTime"))
    CommandPlugin.add_member(:output, Shapes::ShapeRef.new(shape: CommandPluginOutput, location_name: "Output"))
    CommandPlugin.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    CommandPlugin.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    CommandPlugin.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    CommandPlugin.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    CommandPlugin.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    CommandPlugin.struct_class = Types::CommandPlugin

    CommandPluginList.member = Shapes::ShapeRef.new(shape: CommandPlugin)

    CreateActivationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActivationDescription, location_name: "Description"))
    CreateActivationRequest.add_member(:default_instance_name, Shapes::ShapeRef.new(shape: DefaultInstanceName, location_name: "DefaultInstanceName"))
    CreateActivationRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
    CreateActivationRequest.add_member(:registration_limit, Shapes::ShapeRef.new(shape: RegistrationLimit, location_name: "RegistrationLimit", metadata: {"box"=>true}))
    CreateActivationRequest.add_member(:expiration_date, Shapes::ShapeRef.new(shape: ExpirationDate, location_name: "ExpirationDate"))
    CreateActivationRequest.struct_class = Types::CreateActivationRequest

    CreateActivationResult.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    CreateActivationResult.add_member(:activation_code, Shapes::ShapeRef.new(shape: ActivationCode, location_name: "ActivationCode"))
    CreateActivationResult.struct_class = Types::CreateActivationResult

    CreateAssociationBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntries, required: true, location_name: "Entries"))
    CreateAssociationBatchRequest.struct_class = Types::CreateAssociationBatchRequest

    CreateAssociationBatchRequestEntries.member = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry, location_name: "entries")

    CreateAssociationBatchRequestEntry.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    CreateAssociationBatchRequestEntry.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CreateAssociationBatchRequestEntry.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAssociationBatchRequestEntry.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CreateAssociationBatchRequestEntry.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    CreateAssociationBatchRequestEntry.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    CreateAssociationBatchRequestEntry.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    CreateAssociationBatchRequestEntry.struct_class = Types::CreateAssociationBatchRequestEntry

    CreateAssociationBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: AssociationDescriptionList, location_name: "Successful"))
    CreateAssociationBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: FailedCreateAssociationList, location_name: "Failed"))
    CreateAssociationBatchResult.struct_class = Types::CreateAssociationBatchResult

    CreateAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    CreateAssociationRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CreateAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CreateAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAssociationRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    CreateAssociationRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    CreateAssociationRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    CreateAssociationRequest.struct_class = Types::CreateAssociationRequest

    CreateAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    CreateAssociationResult.struct_class = Types::CreateAssociationResult

    CreateDocumentRequest.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
    CreateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    CreateDocumentRequest.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    CreateDocumentRequest.struct_class = Types::CreateDocumentRequest

    CreateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
    CreateDocumentResult.struct_class = Types::CreateDocumentResult

    CreateMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, required: true, location_name: "Name"))
    CreateMaintenanceWindowRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, required: true, location_name: "Schedule"))
    CreateMaintenanceWindowRequest.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, required: true, location_name: "Duration"))
    CreateMaintenanceWindowRequest.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, required: true, location_name: "Cutoff"))
    CreateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, required: true, location_name: "AllowUnassociatedTargets"))
    CreateMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateMaintenanceWindowRequest.struct_class = Types::CreateMaintenanceWindowRequest

    CreateMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    CreateMaintenanceWindowResult.struct_class = Types::CreateMaintenanceWindowResult

    DeleteActivationRequest.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, required: true, location_name: "ActivationId"))
    DeleteActivationRequest.struct_class = Types::DeleteActivationRequest

    DeleteActivationResult.struct_class = Types::DeleteActivationResult

    DeleteAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DeleteAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DeleteAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    DeleteAssociationRequest.struct_class = Types::DeleteAssociationRequest

    DeleteAssociationResult.struct_class = Types::DeleteAssociationResult

    DeleteDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    DeleteDocumentRequest.struct_class = Types::DeleteDocumentRequest

    DeleteDocumentResult.struct_class = Types::DeleteDocumentResult

    DeleteMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeleteMaintenanceWindowRequest.struct_class = Types::DeleteMaintenanceWindowRequest

    DeleteMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeleteMaintenanceWindowResult.struct_class = Types::DeleteMaintenanceWindowResult

    DeleteParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    DeleteParameterRequest.struct_class = Types::DeleteParameterRequest

    DeleteParameterResult.struct_class = Types::DeleteParameterResult

    DeregisterManagedInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
    DeregisterManagedInstanceRequest.struct_class = Types::DeregisterManagedInstanceRequest

    DeregisterManagedInstanceResult.struct_class = Types::DeregisterManagedInstanceResult

    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, required: true, location_name: "WindowTargetId"))
    DeregisterTargetFromMaintenanceWindowRequest.struct_class = Types::DeregisterTargetFromMaintenanceWindowRequest

    DeregisterTargetFromMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeregisterTargetFromMaintenanceWindowResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    DeregisterTargetFromMaintenanceWindowResult.struct_class = Types::DeregisterTargetFromMaintenanceWindowResult

    DeregisterTaskFromMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeregisterTaskFromMaintenanceWindowRequest.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, required: true, location_name: "WindowTaskId"))
    DeregisterTaskFromMaintenanceWindowRequest.struct_class = Types::DeregisterTaskFromMaintenanceWindowRequest

    DeregisterTaskFromMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeregisterTaskFromMaintenanceWindowResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    DeregisterTaskFromMaintenanceWindowResult.struct_class = Types::DeregisterTaskFromMaintenanceWindowResult

    DescribeActivationsFilter.add_member(:filter_key, Shapes::ShapeRef.new(shape: DescribeActivationsFilterKeys, location_name: "FilterKey"))
    DescribeActivationsFilter.add_member(:filter_values, Shapes::ShapeRef.new(shape: StringList, location_name: "FilterValues"))
    DescribeActivationsFilter.struct_class = Types::DescribeActivationsFilter

    DescribeActivationsFilterList.member = Shapes::ShapeRef.new(shape: DescribeActivationsFilter)

    DescribeActivationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeActivationsFilterList, location_name: "Filters"))
    DescribeActivationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeActivationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeActivationsRequest.struct_class = Types::DescribeActivationsRequest

    DescribeActivationsResult.add_member(:activation_list, Shapes::ShapeRef.new(shape: ActivationList, location_name: "ActivationList"))
    DescribeActivationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeActivationsResult.struct_class = Types::DescribeActivationsResult

    DescribeAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DescribeAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DescribeAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    DescribeAssociationRequest.struct_class = Types::DescribeAssociationRequest

    DescribeAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    DescribeAssociationResult.struct_class = Types::DescribeAssociationResult

    DescribeAutomationExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AutomationExecutionFilterList, location_name: "Filters"))
    DescribeAutomationExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeAutomationExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationExecutionsRequest.struct_class = Types::DescribeAutomationExecutionsRequest

    DescribeAutomationExecutionsResult.add_member(:automation_execution_metadata_list, Shapes::ShapeRef.new(shape: AutomationExecutionMetadataList, location_name: "AutomationExecutionMetadataList"))
    DescribeAutomationExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationExecutionsResult.struct_class = Types::DescribeAutomationExecutionsResult

    DescribeDocumentPermissionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    DescribeDocumentPermissionRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: DocumentPermissionType, required: true, location_name: "PermissionType"))
    DescribeDocumentPermissionRequest.struct_class = Types::DescribeDocumentPermissionRequest

    DescribeDocumentPermissionResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DescribeDocumentPermissionResponse.struct_class = Types::DescribeDocumentPermissionResponse

    DescribeDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    DescribeDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DescribeDocumentRequest.struct_class = Types::DescribeDocumentRequest

    DescribeDocumentResult.add_member(:document, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "Document"))
    DescribeDocumentResult.struct_class = Types::DescribeDocumentResult

    DescribeEffectiveInstanceAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DescribeEffectiveInstanceAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: EffectiveInstanceAssociationMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeEffectiveInstanceAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectiveInstanceAssociationsRequest.struct_class = Types::DescribeEffectiveInstanceAssociationsRequest

    DescribeEffectiveInstanceAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: InstanceAssociationList, location_name: "Associations"))
    DescribeEffectiveInstanceAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectiveInstanceAssociationsResult.struct_class = Types::DescribeEffectiveInstanceAssociationsResult

    DescribeInstanceAssociationsStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DescribeInstanceAssociationsStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeInstanceAssociationsStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceAssociationsStatusRequest.struct_class = Types::DescribeInstanceAssociationsStatusRequest

    DescribeInstanceAssociationsStatusResult.add_member(:instance_association_status_infos, Shapes::ShapeRef.new(shape: InstanceAssociationStatusInfos, location_name: "InstanceAssociationStatusInfos"))
    DescribeInstanceAssociationsStatusResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceAssociationsStatusResult.struct_class = Types::DescribeInstanceAssociationsStatusResult

    DescribeInstanceInformationRequest.add_member(:instance_information_filter_list, Shapes::ShapeRef.new(shape: InstanceInformationFilterList, location_name: "InstanceInformationFilterList"))
    DescribeInstanceInformationRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InstanceInformationStringFilterList, location_name: "Filters"))
    DescribeInstanceInformationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsEC2Compatible, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeInstanceInformationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceInformationRequest.struct_class = Types::DescribeInstanceInformationRequest

    DescribeInstanceInformationResult.add_member(:instance_information_list, Shapes::ShapeRef.new(shape: InstanceInformationList, location_name: "InstanceInformationList"))
    DescribeInstanceInformationResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceInformationResult.struct_class = Types::DescribeInstanceInformationResult

    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, required: true, location_name: "TaskId"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.struct_class = Types::DescribeMaintenanceWindowExecutionTaskInvocationsRequest

    DescribeMaintenanceWindowExecutionTaskInvocationsResult.add_member(:window_execution_task_invocation_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationIdentityList, location_name: "WindowExecutionTaskInvocationIdentities"))
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.struct_class = Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult

    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTasksRequest.struct_class = Types::DescribeMaintenanceWindowExecutionTasksRequest

    DescribeMaintenanceWindowExecutionTasksResult.add_member(:window_execution_task_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskIdentityList, location_name: "WindowExecutionTaskIdentities"))
    DescribeMaintenanceWindowExecutionTasksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTasksResult.struct_class = Types::DescribeMaintenanceWindowExecutionTasksResult

    DescribeMaintenanceWindowExecutionsRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionsRequest.struct_class = Types::DescribeMaintenanceWindowExecutionsRequest

    DescribeMaintenanceWindowExecutionsResult.add_member(:window_executions, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionList, location_name: "WindowExecutions"))
    DescribeMaintenanceWindowExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionsResult.struct_class = Types::DescribeMaintenanceWindowExecutionsResult

    DescribeMaintenanceWindowTargetsRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DescribeMaintenanceWindowTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeMaintenanceWindowTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTargetsRequest.struct_class = Types::DescribeMaintenanceWindowTargetsRequest

    DescribeMaintenanceWindowTargetsResult.add_member(:targets, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetList, location_name: "Targets"))
    DescribeMaintenanceWindowTargetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTargetsResult.struct_class = Types::DescribeMaintenanceWindowTargetsResult

    DescribeMaintenanceWindowTasksRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DescribeMaintenanceWindowTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeMaintenanceWindowTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTasksRequest.struct_class = Types::DescribeMaintenanceWindowTasksRequest

    DescribeMaintenanceWindowTasksResult.add_member(:tasks, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskList, location_name: "Tasks"))
    DescribeMaintenanceWindowTasksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTasksResult.struct_class = Types::DescribeMaintenanceWindowTasksResult

    DescribeMaintenanceWindowsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeMaintenanceWindowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowsRequest.struct_class = Types::DescribeMaintenanceWindowsRequest

    DescribeMaintenanceWindowsResult.add_member(:window_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowIdentityList, location_name: "WindowIdentities"))
    DescribeMaintenanceWindowsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowsResult.struct_class = Types::DescribeMaintenanceWindowsResult

    DescribeParametersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ParametersFilterList, location_name: "Filters"))
    DescribeParametersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeParametersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeParametersRequest.struct_class = Types::DescribeParametersRequest

    DescribeParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMetadataList, location_name: "Parameters"))
    DescribeParametersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeParametersResult.struct_class = Types::DescribeParametersResult

    DocumentDefaultVersionDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DocumentDefaultVersionDescription.add_member(:default_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DefaultVersion"))
    DocumentDefaultVersionDescription.struct_class = Types::DocumentDefaultVersionDescription

    DocumentDescription.add_member(:sha_1, Shapes::ShapeRef.new(shape: DocumentSha1, location_name: "Sha1"))
    DocumentDescription.add_member(:hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "Hash"))
    DocumentDescription.add_member(:hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "HashType"))
    DocumentDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DocumentDescription.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
    DocumentDescription.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    DocumentDescription.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "Status"))
    DocumentDescription.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentDescription.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionInDocument, location_name: "Description"))
    DocumentDescription.add_member(:parameters, Shapes::ShapeRef.new(shape: DocumentParameterList, location_name: "Parameters"))
    DocumentDescription.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
    DocumentDescription.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    DocumentDescription.add_member(:schema_version, Shapes::ShapeRef.new(shape: DocumentSchemaVersion, location_name: "SchemaVersion"))
    DocumentDescription.add_member(:latest_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "LatestVersion"))
    DocumentDescription.add_member(:default_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DefaultVersion"))
    DocumentDescription.struct_class = Types::DocumentDescription

    DocumentFilter.add_member(:key, Shapes::ShapeRef.new(shape: DocumentFilterKey, required: true, location_name: "key"))
    DocumentFilter.add_member(:value, Shapes::ShapeRef.new(shape: DocumentFilterValue, required: true, location_name: "value"))
    DocumentFilter.struct_class = Types::DocumentFilter

    DocumentFilterList.member = Shapes::ShapeRef.new(shape: DocumentFilter, location_name: "DocumentFilter")

    DocumentIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DocumentIdentifier.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
    DocumentIdentifier.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
    DocumentIdentifier.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentIdentifier.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    DocumentIdentifier.add_member(:schema_version, Shapes::ShapeRef.new(shape: DocumentSchemaVersion, location_name: "SchemaVersion"))
    DocumentIdentifier.struct_class = Types::DocumentIdentifier

    DocumentIdentifierList.member = Shapes::ShapeRef.new(shape: DocumentIdentifier, location_name: "DocumentIdentifier")

    DocumentParameter.add_member(:name, Shapes::ShapeRef.new(shape: DocumentParameterName, location_name: "Name"))
    DocumentParameter.add_member(:type, Shapes::ShapeRef.new(shape: DocumentParameterType, location_name: "Type"))
    DocumentParameter.add_member(:description, Shapes::ShapeRef.new(shape: DocumentParameterDescrption, location_name: "Description"))
    DocumentParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: DocumentParameterDefaultValue, location_name: "DefaultValue"))
    DocumentParameter.struct_class = Types::DocumentParameter

    DocumentParameterList.member = Shapes::ShapeRef.new(shape: DocumentParameter, location_name: "DocumentParameter")

    DocumentVersionInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DocumentVersionInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentVersionInfo.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    DocumentVersionInfo.add_member(:is_default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultVersion"))
    DocumentVersionInfo.struct_class = Types::DocumentVersionInfo

    DocumentVersionList.member = Shapes::ShapeRef.new(shape: DocumentVersionInfo)

    FailedCreateAssociation.add_member(:entry, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry, location_name: "Entry"))
    FailedCreateAssociation.add_member(:message, Shapes::ShapeRef.new(shape: BatchErrorMessage, location_name: "Message"))
    FailedCreateAssociation.add_member(:fault, Shapes::ShapeRef.new(shape: Fault, location_name: "Fault"))
    FailedCreateAssociation.struct_class = Types::FailedCreateAssociation

    FailedCreateAssociationList.member = Shapes::ShapeRef.new(shape: FailedCreateAssociation, location_name: "FailedCreateAssociationEntry")

    GetAutomationExecutionRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    GetAutomationExecutionRequest.struct_class = Types::GetAutomationExecutionRequest

    GetAutomationExecutionResult.add_member(:automation_execution, Shapes::ShapeRef.new(shape: AutomationExecution, location_name: "AutomationExecution"))
    GetAutomationExecutionResult.struct_class = Types::GetAutomationExecutionResult

    GetCommandInvocationRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, required: true, location_name: "CommandId"))
    GetCommandInvocationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    GetCommandInvocationRequest.add_member(:plugin_name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "PluginName"))
    GetCommandInvocationRequest.struct_class = Types::GetCommandInvocationRequest

    GetCommandInvocationResult.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    GetCommandInvocationResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    GetCommandInvocationResult.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    GetCommandInvocationResult.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    GetCommandInvocationResult.add_member(:plugin_name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "PluginName"))
    GetCommandInvocationResult.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
    GetCommandInvocationResult.add_member(:execution_start_date_time, Shapes::ShapeRef.new(shape: StringDateTime, location_name: "ExecutionStartDateTime"))
    GetCommandInvocationResult.add_member(:execution_elapsed_time, Shapes::ShapeRef.new(shape: StringDateTime, location_name: "ExecutionElapsedTime"))
    GetCommandInvocationResult.add_member(:execution_end_date_time, Shapes::ShapeRef.new(shape: StringDateTime, location_name: "ExecutionEndDateTime"))
    GetCommandInvocationResult.add_member(:status, Shapes::ShapeRef.new(shape: CommandInvocationStatus, location_name: "Status"))
    GetCommandInvocationResult.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    GetCommandInvocationResult.add_member(:standard_output_content, Shapes::ShapeRef.new(shape: StandardOutputContent, location_name: "StandardOutputContent"))
    GetCommandInvocationResult.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    GetCommandInvocationResult.add_member(:standard_error_content, Shapes::ShapeRef.new(shape: StandardErrorContent, location_name: "StandardErrorContent"))
    GetCommandInvocationResult.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    GetCommandInvocationResult.struct_class = Types::GetCommandInvocationResult

    GetDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    GetDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetDocumentRequest.struct_class = Types::GetDocumentRequest

    GetDocumentResult.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    GetDocumentResult.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetDocumentResult.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
    GetDocumentResult.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    GetDocumentResult.struct_class = Types::GetDocumentResult

    GetInventoryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: "Filters"))
    GetInventoryRequest.add_member(:result_attributes, Shapes::ShapeRef.new(shape: ResultAttributeList, location_name: "ResultAttributes"))
    GetInventoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetInventoryRequest.struct_class = Types::GetInventoryRequest

    GetInventoryResult.add_member(:entities, Shapes::ShapeRef.new(shape: InventoryResultEntityList, location_name: "Entities"))
    GetInventoryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventoryResult.struct_class = Types::GetInventoryResult

    GetInventorySchemaRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeNameFilter, location_name: "TypeName"))
    GetInventorySchemaRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventorySchemaRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetInventorySchemaMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetInventorySchemaRequest.struct_class = Types::GetInventorySchemaRequest

    GetInventorySchemaResult.add_member(:schemas, Shapes::ShapeRef.new(shape: InventoryItemSchemaResultList, location_name: "Schemas"))
    GetInventorySchemaResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventorySchemaResult.struct_class = Types::GetInventorySchemaResult

    GetMaintenanceWindowExecutionRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionRequest.struct_class = Types::GetMaintenanceWindowExecutionRequest

    GetMaintenanceWindowExecutionResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionResult.add_member(:task_ids, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskIdList, location_name: "TaskIds"))
    GetMaintenanceWindowExecutionResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionResult.struct_class = Types::GetMaintenanceWindowExecutionResult

    GetMaintenanceWindowExecutionTaskRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, required: true, location_name: "TaskId"))
    GetMaintenanceWindowExecutionTaskRequest.struct_class = Types::GetMaintenanceWindowExecutionTaskRequest

    GetMaintenanceWindowExecutionTaskResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "Type"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParametersList, location_name: "TaskParameters"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxConcurrency"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxErrors"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionTaskResult.struct_class = Types::GetMaintenanceWindowExecutionTaskResult

    GetMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    GetMaintenanceWindowRequest.struct_class = Types::GetMaintenanceWindowRequest

    GetMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    GetMaintenanceWindowResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    GetMaintenanceWindowResult.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    GetMaintenanceWindowResult.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    GetMaintenanceWindowResult.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    GetMaintenanceWindowResult.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets"))
    GetMaintenanceWindowResult.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    GetMaintenanceWindowResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    GetMaintenanceWindowResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    GetMaintenanceWindowResult.struct_class = Types::GetMaintenanceWindowResult

    GetParameterHistoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    GetParameterHistoryRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box"=>true}))
    GetParameterHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetParameterHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParameterHistoryRequest.struct_class = Types::GetParameterHistoryRequest

    GetParameterHistoryResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterHistoryList, location_name: "Parameters"))
    GetParameterHistoryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParameterHistoryResult.struct_class = Types::GetParameterHistoryResult

    GetParametersRequest.add_member(:names, Shapes::ShapeRef.new(shape: ParameterNameList, required: true, location_name: "Names"))
    GetParametersRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box"=>true}))
    GetParametersRequest.struct_class = Types::GetParametersRequest

    GetParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    GetParametersResult.add_member(:invalid_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "InvalidParameters"))
    GetParametersResult.struct_class = Types::GetParametersResult

    InstanceAggregatedAssociationOverview.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    InstanceAggregatedAssociationOverview.add_member(:instance_association_status_aggregated_count, Shapes::ShapeRef.new(shape: InstanceAssociationStatusAggregatedCount, location_name: "InstanceAssociationStatusAggregatedCount"))
    InstanceAggregatedAssociationOverview.struct_class = Types::InstanceAggregatedAssociationOverview

    InstanceAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    InstanceAssociation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAssociation.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
    InstanceAssociation.struct_class = Types::InstanceAssociation

    InstanceAssociationList.member = Shapes::ShapeRef.new(shape: InstanceAssociation)

    InstanceAssociationOutputLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3OutputLocation, location_name: "S3Location"))
    InstanceAssociationOutputLocation.struct_class = Types::InstanceAssociationOutputLocation

    InstanceAssociationOutputUrl.add_member(:s3_output_url, Shapes::ShapeRef.new(shape: S3OutputUrl, location_name: "S3OutputUrl"))
    InstanceAssociationOutputUrl.struct_class = Types::InstanceAssociationOutputUrl

    InstanceAssociationStatusAggregatedCount.key = Shapes::ShapeRef.new(shape: StatusName)
    InstanceAssociationStatusAggregatedCount.value = Shapes::ShapeRef.new(shape: InstanceCount)

    InstanceAssociationStatusInfo.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    InstanceAssociationStatusInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    InstanceAssociationStatusInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    InstanceAssociationStatusInfo.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAssociationStatusInfo.add_member(:execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionDate"))
    InstanceAssociationStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    InstanceAssociationStatusInfo.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    InstanceAssociationStatusInfo.add_member(:execution_summary, Shapes::ShapeRef.new(shape: InstanceAssociationExecutionSummary, location_name: "ExecutionSummary"))
    InstanceAssociationStatusInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: AgentErrorCode, location_name: "ErrorCode"))
    InstanceAssociationStatusInfo.add_member(:output_url, Shapes::ShapeRef.new(shape: InstanceAssociationOutputUrl, location_name: "OutputUrl"))
    InstanceAssociationStatusInfo.struct_class = Types::InstanceAssociationStatusInfo

    InstanceAssociationStatusInfos.member = Shapes::ShapeRef.new(shape: InstanceAssociationStatusInfo)

    InstanceIdList.member = Shapes::ShapeRef.new(shape: InstanceId)

    InstanceInformation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceInformation.add_member(:ping_status, Shapes::ShapeRef.new(shape: PingStatus, location_name: "PingStatus"))
    InstanceInformation.add_member(:last_ping_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastPingDateTime", metadata: {"box"=>true}))
    InstanceInformation.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "AgentVersion"))
    InstanceInformation.add_member(:is_latest_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLatestVersion", metadata: {"box"=>true}))
    InstanceInformation.add_member(:platform_type, Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType"))
    InstanceInformation.add_member(:platform_name, Shapes::ShapeRef.new(shape: String, location_name: "PlatformName"))
    InstanceInformation.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    InstanceInformation.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    InstanceInformation.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
    InstanceInformation.add_member(:registration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "RegistrationDate", metadata: {"box"=>true}))
    InstanceInformation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    InstanceInformation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    InstanceInformation.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
    InstanceInformation.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    InstanceInformation.add_member(:association_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "AssociationStatus"))
    InstanceInformation.add_member(:last_association_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastAssociationExecutionDate"))
    InstanceInformation.add_member(:last_successful_association_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastSuccessfulAssociationExecutionDate"))
    InstanceInformation.add_member(:association_overview, Shapes::ShapeRef.new(shape: InstanceAggregatedAssociationOverview, location_name: "AssociationOverview"))
    InstanceInformation.struct_class = Types::InstanceInformation

    InstanceInformationFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstanceInformationFilterKey, required: true, location_name: "key"))
    InstanceInformationFilter.add_member(:value_set, Shapes::ShapeRef.new(shape: InstanceInformationFilterValueSet, required: true, location_name: "valueSet"))
    InstanceInformationFilter.struct_class = Types::InstanceInformationFilter

    InstanceInformationFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationFilter, location_name: "InstanceInformationFilter")

    InstanceInformationFilterValueSet.member = Shapes::ShapeRef.new(shape: InstanceInformationFilterValue, location_name: "InstanceInformationFilterValue")

    InstanceInformationList.member = Shapes::ShapeRef.new(shape: InstanceInformation, location_name: "InstanceInformation")

    InstanceInformationStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstanceInformationStringFilterKey, required: true, location_name: "Key"))
    InstanceInformationStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: InstanceInformationFilterValueSet, required: true, location_name: "Values"))
    InstanceInformationStringFilter.struct_class = Types::InstanceInformationStringFilter

    InstanceInformationStringFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationStringFilter, location_name: "InstanceInformationStringFilter")

    InventoryFilter.add_member(:key, Shapes::ShapeRef.new(shape: InventoryFilterKey, required: true, location_name: "Key"))
    InventoryFilter.add_member(:values, Shapes::ShapeRef.new(shape: InventoryFilterValueList, required: true, location_name: "Values"))
    InventoryFilter.add_member(:type, Shapes::ShapeRef.new(shape: InventoryQueryOperatorType, location_name: "Type"))
    InventoryFilter.struct_class = Types::InventoryFilter

    InventoryFilterList.member = Shapes::ShapeRef.new(shape: InventoryFilter, location_name: "InventoryFilter")

    InventoryFilterValueList.member = Shapes::ShapeRef.new(shape: InventoryFilterValue, location_name: "FilterValue")

    InventoryItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryItem.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, required: true, location_name: "SchemaVersion"))
    InventoryItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, required: true, location_name: "CaptureTime"))
    InventoryItem.add_member(:content_hash, Shapes::ShapeRef.new(shape: InventoryItemContentHash, location_name: "ContentHash"))
    InventoryItem.add_member(:content, Shapes::ShapeRef.new(shape: InventoryItemEntryList, location_name: "Content"))
    InventoryItem.struct_class = Types::InventoryItem

    InventoryItemAttribute.add_member(:name, Shapes::ShapeRef.new(shape: InventoryItemAttributeName, required: true, location_name: "Name"))
    InventoryItemAttribute.add_member(:data_type, Shapes::ShapeRef.new(shape: InventoryAttributeDataType, required: true, location_name: "DataType"))
    InventoryItemAttribute.struct_class = Types::InventoryItemAttribute

    InventoryItemAttributeList.member = Shapes::ShapeRef.new(shape: InventoryItemAttribute, location_name: "Attribute")

    InventoryItemEntry.key = Shapes::ShapeRef.new(shape: AttributeName)
    InventoryItemEntry.value = Shapes::ShapeRef.new(shape: AttributeValue)

    InventoryItemEntryList.member = Shapes::ShapeRef.new(shape: InventoryItemEntry)

    InventoryItemList.member = Shapes::ShapeRef.new(shape: InventoryItem, location_name: "Item")

    InventoryItemSchema.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryItemSchema.add_member(:version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "Version"))
    InventoryItemSchema.add_member(:attributes, Shapes::ShapeRef.new(shape: InventoryItemAttributeList, required: true, location_name: "Attributes"))
    InventoryItemSchema.struct_class = Types::InventoryItemSchema

    InventoryItemSchemaResultList.member = Shapes::ShapeRef.new(shape: InventoryItemSchema)

    InventoryResultEntity.add_member(:id, Shapes::ShapeRef.new(shape: InventoryResultEntityId, location_name: "Id"))
    InventoryResultEntity.add_member(:data, Shapes::ShapeRef.new(shape: InventoryResultItemMap, location_name: "Data"))
    InventoryResultEntity.struct_class = Types::InventoryResultEntity

    InventoryResultEntityList.member = Shapes::ShapeRef.new(shape: InventoryResultEntity, location_name: "Entity")

    InventoryResultItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryResultItem.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, required: true, location_name: "SchemaVersion"))
    InventoryResultItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, location_name: "CaptureTime"))
    InventoryResultItem.add_member(:content_hash, Shapes::ShapeRef.new(shape: InventoryItemContentHash, location_name: "ContentHash"))
    InventoryResultItem.add_member(:content, Shapes::ShapeRef.new(shape: InventoryItemEntryList, required: true, location_name: "Content"))
    InventoryResultItem.struct_class = Types::InventoryResultItem

    InventoryResultItemMap.key = Shapes::ShapeRef.new(shape: InventoryResultItemKey)
    InventoryResultItemMap.value = Shapes::ShapeRef.new(shape: InventoryResultItem)

    KeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    ListAssociationsRequest.add_member(:association_filter_list, Shapes::ShapeRef.new(shape: AssociationFilterList, location_name: "AssociationFilterList"))
    ListAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationsRequest.struct_class = Types::ListAssociationsRequest

    ListAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: AssociationList, location_name: "Associations"))
    ListAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationsResult.struct_class = Types::ListAssociationsResult

    ListCommandInvocationsRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    ListCommandInvocationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListCommandInvocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CommandMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListCommandInvocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandInvocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CommandFilterList, location_name: "Filters"))
    ListCommandInvocationsRequest.add_member(:details, Shapes::ShapeRef.new(shape: Boolean, location_name: "Details"))
    ListCommandInvocationsRequest.struct_class = Types::ListCommandInvocationsRequest

    ListCommandInvocationsResult.add_member(:command_invocations, Shapes::ShapeRef.new(shape: CommandInvocationList, location_name: "CommandInvocations"))
    ListCommandInvocationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandInvocationsResult.struct_class = Types::ListCommandInvocationsResult

    ListCommandsRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    ListCommandsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListCommandsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CommandMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListCommandsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CommandFilterList, location_name: "Filters"))
    ListCommandsRequest.struct_class = Types::ListCommandsRequest

    ListCommandsResult.add_member(:commands, Shapes::ShapeRef.new(shape: CommandList, location_name: "Commands"))
    ListCommandsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandsResult.struct_class = Types::ListCommandsResult

    ListDocumentVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    ListDocumentVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListDocumentVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentVersionsRequest.struct_class = Types::ListDocumentVersionsRequest

    ListDocumentVersionsResult.add_member(:document_versions, Shapes::ShapeRef.new(shape: DocumentVersionList, location_name: "DocumentVersions"))
    ListDocumentVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentVersionsResult.struct_class = Types::ListDocumentVersionsResult

    ListDocumentsRequest.add_member(:document_filter_list, Shapes::ShapeRef.new(shape: DocumentFilterList, location_name: "DocumentFilterList"))
    ListDocumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListDocumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentsRequest.struct_class = Types::ListDocumentsRequest

    ListDocumentsResult.add_member(:document_identifiers, Shapes::ShapeRef.new(shape: DocumentIdentifierList, location_name: "DocumentIdentifiers"))
    ListDocumentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentsResult.struct_class = Types::ListDocumentsResult

    ListInventoryEntriesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    ListInventoryEntriesRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    ListInventoryEntriesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: "Filters"))
    ListInventoryEntriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInventoryEntriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListInventoryEntriesRequest.struct_class = Types::ListInventoryEntriesRequest

    ListInventoryEntriesResult.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    ListInventoryEntriesResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListInventoryEntriesResult.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "SchemaVersion"))
    ListInventoryEntriesResult.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, location_name: "CaptureTime"))
    ListInventoryEntriesResult.add_member(:entries, Shapes::ShapeRef.new(shape: InventoryItemEntryList, location_name: "Entries"))
    ListInventoryEntriesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInventoryEntriesResult.struct_class = Types::ListInventoryEntriesResult

    ListTagsForResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    LoggingInfo.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "S3BucketName"))
    LoggingInfo.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    LoggingInfo.add_member(:s3_region, Shapes::ShapeRef.new(shape: S3Region, required: true, location_name: "S3Region"))
    LoggingInfo.struct_class = Types::LoggingInfo

    MaintenanceWindowExecution.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowExecution.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    MaintenanceWindowExecution.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    MaintenanceWindowExecution.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    MaintenanceWindowExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MaintenanceWindowExecution.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    MaintenanceWindowExecution.struct_class = Types::MaintenanceWindowExecution

    MaintenanceWindowExecutionList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecution)

    MaintenanceWindowExecutionTaskIdList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId)

    MaintenanceWindowExecutionTaskIdentity.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    MaintenanceWindowExecutionTaskIdentity.struct_class = Types::MaintenanceWindowExecutionTaskIdentity

    MaintenanceWindowExecutionTaskIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskIdentity)

    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:invocation_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationId, location_name: "InvocationId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskExecutionId, location_name: "ExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationParameters, location_name: "Parameters"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskTargetId, location_name: "WindowTargetId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.struct_class = Types::MaintenanceWindowExecutionTaskInvocationIdentity

    MaintenanceWindowExecutionTaskInvocationIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationIdentity)

    MaintenanceWindowFilter.add_member(:key, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterKey, location_name: "Key"))
    MaintenanceWindowFilter.add_member(:values, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterValues, location_name: "Values"))
    MaintenanceWindowFilter.struct_class = Types::MaintenanceWindowFilter

    MaintenanceWindowFilterList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowFilter)

    MaintenanceWindowFilterValues.member = Shapes::ShapeRef.new(shape: MaintenanceWindowFilterValue)

    MaintenanceWindowIdentity.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowIdentity.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowIdentity.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    MaintenanceWindowIdentity.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    MaintenanceWindowIdentity.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    MaintenanceWindowIdentity.struct_class = Types::MaintenanceWindowIdentity

    MaintenanceWindowIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowIdentity)

    MaintenanceWindowTarget.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowTarget.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    MaintenanceWindowTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, location_name: "ResourceType"))
    MaintenanceWindowTarget.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    MaintenanceWindowTarget.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    MaintenanceWindowTarget.struct_class = Types::MaintenanceWindowTarget

    MaintenanceWindowTargetList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTarget)

    MaintenanceWindowTask.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowTask.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    MaintenanceWindowTask.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    MaintenanceWindowTask.add_member(:type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "Type"))
    MaintenanceWindowTask.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    MaintenanceWindowTask.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    MaintenanceWindowTask.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    MaintenanceWindowTask.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    MaintenanceWindowTask.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    MaintenanceWindowTask.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxConcurrency"))
    MaintenanceWindowTask.add_member(:max_errors, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxErrors"))
    MaintenanceWindowTask.struct_class = Types::MaintenanceWindowTask

    MaintenanceWindowTaskList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTask)

    MaintenanceWindowTaskParameterValueExpression.add_member(:values, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterValueList, location_name: "Values"))
    MaintenanceWindowTaskParameterValueExpression.struct_class = Types::MaintenanceWindowTaskParameterValueExpression

    MaintenanceWindowTaskParameterValueList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterValue)

    MaintenanceWindowTaskParameters.key = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterName)
    MaintenanceWindowTaskParameters.value = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterValueExpression)

    MaintenanceWindowTaskParametersList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters)

    ModifyDocumentPermissionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    ModifyDocumentPermissionRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: DocumentPermissionType, required: true, location_name: "PermissionType"))
    ModifyDocumentPermissionRequest.add_member(:account_ids_to_add, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIdsToAdd"))
    ModifyDocumentPermissionRequest.add_member(:account_ids_to_remove, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIdsToRemove"))
    ModifyDocumentPermissionRequest.struct_class = Types::ModifyDocumentPermissionRequest

    ModifyDocumentPermissionResponse.struct_class = Types::ModifyDocumentPermissionResponse

    NormalStringMap.key = Shapes::ShapeRef.new(shape: String)
    NormalStringMap.value = Shapes::ShapeRef.new(shape: String)

    NotificationConfig.add_member(:notification_arn, Shapes::ShapeRef.new(shape: NotificationArn, location_name: "NotificationArn"))
    NotificationConfig.add_member(:notification_events, Shapes::ShapeRef.new(shape: NotificationEventList, location_name: "NotificationEvents"))
    NotificationConfig.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, location_name: "NotificationType"))
    NotificationConfig.struct_class = Types::NotificationConfig

    NotificationEventList.member = Shapes::ShapeRef.new(shape: NotificationEvent)

    Parameter.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    Parameter.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    Parameter.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, location_name: "Value"))
    Parameter.struct_class = Types::Parameter

    ParameterHistory.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    ParameterHistory.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    ParameterHistory.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    ParameterHistory.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ParameterHistory.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ParameterHistory.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    ParameterHistory.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, location_name: "Value"))
    ParameterHistory.struct_class = Types::ParameterHistory

    ParameterHistoryList.member = Shapes::ShapeRef.new(shape: ParameterHistory)

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    ParameterMetadata.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    ParameterMetadata.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    ParameterMetadata.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    ParameterMetadata.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ParameterMetadata.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ParameterMetadata.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    ParameterMetadata.struct_class = Types::ParameterMetadata

    ParameterMetadataList.member = Shapes::ShapeRef.new(shape: ParameterMetadata)

    ParameterNameList.member = Shapes::ShapeRef.new(shape: PSParameterName)

    ParameterValueList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    Parameters.key = Shapes::ShapeRef.new(shape: ParameterName)
    Parameters.value = Shapes::ShapeRef.new(shape: ParameterValueList)

    ParametersFilter.add_member(:key, Shapes::ShapeRef.new(shape: ParametersFilterKey, location_name: "Key"))
    ParametersFilter.add_member(:values, Shapes::ShapeRef.new(shape: ParametersFilterValueList, required: true, location_name: "Values"))
    ParametersFilter.struct_class = Types::ParametersFilter

    ParametersFilterList.member = Shapes::ShapeRef.new(shape: ParametersFilter)

    ParametersFilterValueList.member = Shapes::ShapeRef.new(shape: ParametersFilterValue)

    PlatformTypeList.member = Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType")

    PutInventoryRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    PutInventoryRequest.add_member(:items, Shapes::ShapeRef.new(shape: InventoryItemList, required: true, location_name: "Items"))
    PutInventoryRequest.struct_class = Types::PutInventoryRequest

    PutInventoryResult.struct_class = Types::PutInventoryResult

    PutParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    PutParameterRequest.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    PutParameterRequest.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, required: true, location_name: "Value"))
    PutParameterRequest.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "Type"))
    PutParameterRequest.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    PutParameterRequest.add_member(:overwrite, Shapes::ShapeRef.new(shape: Boolean, location_name: "Overwrite", metadata: {"box"=>true}))
    PutParameterRequest.struct_class = Types::PutParameterRequest

    PutParameterResult.struct_class = Types::PutParameterResult

    RegisterTargetWithMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, required: true, location_name: "ResourceType"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RegisterTargetWithMaintenanceWindowRequest.struct_class = Types::RegisterTargetWithMaintenanceWindowRequest

    RegisterTargetWithMaintenanceWindowResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    RegisterTargetWithMaintenanceWindowResult.struct_class = Types::RegisterTargetWithMaintenanceWindowResult

    RegisterTaskWithMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, required: true, location_name: "TaskArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, required: true, location_name: "ServiceRoleArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, required: true, location_name: "TaskType"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority", metadata: {"box"=>true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: VelocityConstraint, required: true, location_name: "MaxConcurrency"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: VelocityConstraint, required: true, location_name: "MaxErrors"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RegisterTaskWithMaintenanceWindowRequest.struct_class = Types::RegisterTaskWithMaintenanceWindowRequest

    RegisterTaskWithMaintenanceWindowResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    RegisterTaskWithMaintenanceWindowResult.struct_class = Types::RegisterTaskWithMaintenanceWindowResult

    RemoveTagsFromResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    RemoveTagsFromResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceRequest.struct_class = Types::RemoveTagsFromResourceRequest

    RemoveTagsFromResourceResult.struct_class = Types::RemoveTagsFromResourceResult

    ResultAttribute.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    ResultAttribute.struct_class = Types::ResultAttribute

    ResultAttributeList.member = Shapes::ShapeRef.new(shape: ResultAttribute, location_name: "ResultAttribute")

    S3OutputLocation.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    S3OutputLocation.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    S3OutputLocation.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    S3OutputLocation.struct_class = Types::S3OutputLocation

    S3OutputUrl.add_member(:output_url, Shapes::ShapeRef.new(shape: Url, location_name: "OutputUrl"))
    S3OutputUrl.struct_class = Types::S3OutputUrl

    SendCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    SendCommandRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    SendCommandRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    SendCommandRequest.add_member(:document_hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "DocumentHash"))
    SendCommandRequest.add_member(:document_hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "DocumentHashType"))
    SendCommandRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds", metadata: {"box"=>true}))
    SendCommandRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    SendCommandRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    SendCommandRequest.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    SendCommandRequest.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    SendCommandRequest.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    SendCommandRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxConcurrency"))
    SendCommandRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: VelocityConstraint, location_name: "MaxErrors"))
    SendCommandRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    SendCommandRequest.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    SendCommandRequest.struct_class = Types::SendCommandRequest

    SendCommandResult.add_member(:command, Shapes::ShapeRef.new(shape: Command, location_name: "Command"))
    SendCommandResult.struct_class = Types::SendCommandResult

    StartAutomationExecutionRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "DocumentName"))
    StartAutomationExecutionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion", metadata: {"box"=>true}))
    StartAutomationExecutionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    StartAutomationExecutionRequest.struct_class = Types::StartAutomationExecutionRequest

    StartAutomationExecutionResult.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    StartAutomationExecutionResult.struct_class = Types::StartAutomationExecutionResult

    StepExecution.add_member(:step_name, Shapes::ShapeRef.new(shape: String, location_name: "StepName"))
    StepExecution.add_member(:action, Shapes::ShapeRef.new(shape: AutomationActionName, location_name: "Action"))
    StepExecution.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    StepExecution.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    StepExecution.add_member(:step_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "StepStatus"))
    StepExecution.add_member(:response_code, Shapes::ShapeRef.new(shape: String, location_name: "ResponseCode"))
    StepExecution.add_member(:inputs, Shapes::ShapeRef.new(shape: NormalStringMap, location_name: "Inputs"))
    StepExecution.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    StepExecution.add_member(:response, Shapes::ShapeRef.new(shape: String, location_name: "Response"))
    StepExecution.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    StepExecution.struct_class = Types::StepExecution

    StepExecutionList.member = Shapes::ShapeRef.new(shape: StepExecution)

    StopAutomationExecutionRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    StopAutomationExecutionRequest.struct_class = Types::StopAutomationExecutionRequest

    StopAutomationExecutionResult.struct_class = Types::StopAutomationExecutionResult

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    Target.add_member(:key, Shapes::ShapeRef.new(shape: TargetKey, location_name: "Key"))
    Target.add_member(:values, Shapes::ShapeRef.new(shape: TargetValues, location_name: "Values"))
    Target.struct_class = Types::Target

    TargetValues.member = Shapes::ShapeRef.new(shape: TargetValue)

    Targets.member = Shapes::ShapeRef.new(shape: Target)

    UpdateAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    UpdateAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateAssociationRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    UpdateAssociationRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    UpdateAssociationRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    UpdateAssociationRequest.struct_class = Types::UpdateAssociationRequest

    UpdateAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    UpdateAssociationResult.struct_class = Types::UpdateAssociationResult

    UpdateAssociationStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    UpdateAssociationStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateAssociationStatusRequest.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "AssociationStatus"))
    UpdateAssociationStatusRequest.struct_class = Types::UpdateAssociationStatusRequest

    UpdateAssociationStatusResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    UpdateAssociationStatusResult.struct_class = Types::UpdateAssociationStatusResult

    UpdateDocumentDefaultVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    UpdateDocumentDefaultVersionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersionNumber, required: true, location_name: "DocumentVersion"))
    UpdateDocumentDefaultVersionRequest.struct_class = Types::UpdateDocumentDefaultVersionRequest

    UpdateDocumentDefaultVersionResult.add_member(:description, Shapes::ShapeRef.new(shape: DocumentDefaultVersionDescription, location_name: "Description"))
    UpdateDocumentDefaultVersionResult.struct_class = Types::UpdateDocumentDefaultVersionResult

    UpdateDocumentRequest.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
    UpdateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    UpdateDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    UpdateDocumentRequest.struct_class = Types::UpdateDocumentRequest

    UpdateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
    UpdateDocumentResult.struct_class = Types::UpdateDocumentResult

    UpdateMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    UpdateMaintenanceWindowRequest.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.struct_class = Types::UpdateMaintenanceWindowRequest

    UpdateMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowResult.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    UpdateMaintenanceWindowResult.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    UpdateMaintenanceWindowResult.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    UpdateMaintenanceWindowResult.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets"))
    UpdateMaintenanceWindowResult.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    UpdateMaintenanceWindowResult.struct_class = Types::UpdateMaintenanceWindowResult

    UpdateManagedInstanceRoleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
    UpdateManagedInstanceRoleRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
    UpdateManagedInstanceRoleRequest.struct_class = Types::UpdateManagedInstanceRoleRequest

    UpdateManagedInstanceRoleResult.struct_class = Types::UpdateManagedInstanceRoleResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-06"

      api.metadata = {
        "endpointPrefix" => "ssm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Simple Systems Manager (SSM)",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonSSM",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsError)
      end)

      api.add_operation(:cancel_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelCommand"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelCommandResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
      end)

      api.add_operation(:create_activation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateActivation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateActivationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateActivationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: AssociationAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: AssociationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchedule)
      end)

      api.add_operation(:create_association_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssociationBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssociationBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: AssociationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchedule)
      end)

      api.add_operation(:create_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: DocumentAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentContent)
        o.errors << Shapes::ShapeRef.new(shape: DocumentLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentSchemaVersion)
      end)

      api.add_operation(:create_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_activation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteActivation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteActivationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteActivationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActivationId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActivation)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:delete_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentOperation)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedInstances)
      end)

      api.add_operation(:delete_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteParameterResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
      end)

      api.add_operation(:deregister_managed_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterManagedInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterManagedInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterManagedInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:deregister_target_from_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTargetFromMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTargetFromMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTargetFromMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:deregister_task_from_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTaskFromMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTaskFromMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTaskFromMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_activations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeActivations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeActivationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeActivationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
      end)

      api.add_operation(:describe_automation_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutomationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutomationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutomationExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
      end)

      api.add_operation(:describe_document_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocumentPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPermissionType)
      end)

      api.add_operation(:describe_effective_instance_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEffectiveInstanceAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEffectiveInstanceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEffectiveInstanceAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_instance_associations_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceAssociationsStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceAssociationsStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceAssociationsStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_instance_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceInformation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceInformationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceInformationFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_execution_task_invocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowExecutionTaskInvocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTaskInvocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTaskInvocationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_maintenance_window_execution_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowExecutionTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTasksResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_maintenance_window_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_maintenance_window_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTargetsResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_maintenance_window_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTasksResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_maintenance_windows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:get_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_command_invocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCommandInvocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommandInvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCommandInvocationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPluginName)
        o.errors << Shapes::ShapeRef.new(shape: InvocationDoesNotExist)
      end)

      api.add_operation(:get_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
      end)

      api.add_operation(:get_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInventoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResultAttributeException)
      end)

      api.add_operation(:get_inventory_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInventorySchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInventorySchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInventorySchemaResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:get_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_execution_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowExecutionTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_parameter_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameterHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParameterHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParameterHistoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:get_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_command_invocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommandInvocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCommandInvocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommandInvocationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_commands, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommands"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCommandsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommandsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_document_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocumentVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
      end)

      api.add_operation(:list_documents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocuments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inventory_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInventoryEntries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInventoryEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInventoryEntriesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:modify_document_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDocumentPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDocumentPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyDocumentPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPermissionType)
        o.errors << Shapes::ShapeRef.new(shape: DocumentPermissionLimit)
        o.errors << Shapes::ShapeRef.new(shape: DocumentLimitExceeded)
      end)

      api.add_operation(:put_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInventoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidItemContentException)
        o.errors << Shapes::ShapeRef.new(shape: TotalSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ItemSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ItemContentMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: CustomSchemaCountLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedInventorySchemaVersionException)
      end)

      api.add_operation(:put_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: PutParameterResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: ParameterLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        o.errors << Shapes::ShapeRef.new(shape: ParameterAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedParameterType)
      end)

      api.add_operation(:register_target_with_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTargetWithMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTargetWithMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTargetWithMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:register_task_with_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTaskWithMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTaskWithMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTaskWithMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:send_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendCommand"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: SendCommandResult)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputFolder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRole)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNotificationConfig)
      end)

      api.add_operation(:start_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationExecutionParametersException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionVersionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:stop_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchedule)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUpdate)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:update_association_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssociationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssociationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssociationStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: StatusUnchanged)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:update_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: DocumentVersionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateDocumentContent)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentContent)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentSchemaVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
      end)

      api.add_operation(:update_document_default_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocumentDefaultVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentDefaultVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDocumentDefaultVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentSchemaVersion)
      end)

      api.add_operation(:update_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_managed_instance_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateManagedInstanceRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateManagedInstanceRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateManagedInstanceRoleResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
