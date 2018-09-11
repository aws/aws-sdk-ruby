# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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
    AggregatorSchemaOnly = Shapes::BooleanShape.new(name: 'AggregatorSchemaOnly')
    AllowedPattern = Shapes::StringShape.new(name: 'AllowedPattern')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    ApproveAfterDays = Shapes::IntegerShape.new(name: 'ApproveAfterDays')
    AssociatedInstances = Shapes::StructureShape.new(name: 'AssociatedInstances')
    Association = Shapes::StructureShape.new(name: 'Association')
    AssociationAlreadyExists = Shapes::StructureShape.new(name: 'AssociationAlreadyExists')
    AssociationDescription = Shapes::StructureShape.new(name: 'AssociationDescription')
    AssociationDescriptionList = Shapes::ListShape.new(name: 'AssociationDescriptionList')
    AssociationDoesNotExist = Shapes::StructureShape.new(name: 'AssociationDoesNotExist')
    AssociationExecution = Shapes::StructureShape.new(name: 'AssociationExecution')
    AssociationExecutionDoesNotExist = Shapes::StructureShape.new(name: 'AssociationExecutionDoesNotExist')
    AssociationExecutionFilter = Shapes::StructureShape.new(name: 'AssociationExecutionFilter')
    AssociationExecutionFilterKey = Shapes::StringShape.new(name: 'AssociationExecutionFilterKey')
    AssociationExecutionFilterList = Shapes::ListShape.new(name: 'AssociationExecutionFilterList')
    AssociationExecutionFilterValue = Shapes::StringShape.new(name: 'AssociationExecutionFilterValue')
    AssociationExecutionId = Shapes::StringShape.new(name: 'AssociationExecutionId')
    AssociationExecutionTarget = Shapes::StructureShape.new(name: 'AssociationExecutionTarget')
    AssociationExecutionTargetsFilter = Shapes::StructureShape.new(name: 'AssociationExecutionTargetsFilter')
    AssociationExecutionTargetsFilterKey = Shapes::StringShape.new(name: 'AssociationExecutionTargetsFilterKey')
    AssociationExecutionTargetsFilterList = Shapes::ListShape.new(name: 'AssociationExecutionTargetsFilterList')
    AssociationExecutionTargetsFilterValue = Shapes::StringShape.new(name: 'AssociationExecutionTargetsFilterValue')
    AssociationExecutionTargetsList = Shapes::ListShape.new(name: 'AssociationExecutionTargetsList')
    AssociationExecutionsList = Shapes::ListShape.new(name: 'AssociationExecutionsList')
    AssociationFilter = Shapes::StructureShape.new(name: 'AssociationFilter')
    AssociationFilterKey = Shapes::StringShape.new(name: 'AssociationFilterKey')
    AssociationFilterList = Shapes::ListShape.new(name: 'AssociationFilterList')
    AssociationFilterOperatorType = Shapes::StringShape.new(name: 'AssociationFilterOperatorType')
    AssociationFilterValue = Shapes::StringShape.new(name: 'AssociationFilterValue')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    AssociationIdList = Shapes::ListShape.new(name: 'AssociationIdList')
    AssociationLimitExceeded = Shapes::StructureShape.new(name: 'AssociationLimitExceeded')
    AssociationList = Shapes::ListShape.new(name: 'AssociationList')
    AssociationName = Shapes::StringShape.new(name: 'AssociationName')
    AssociationOverview = Shapes::StructureShape.new(name: 'AssociationOverview')
    AssociationResourceId = Shapes::StringShape.new(name: 'AssociationResourceId')
    AssociationResourceType = Shapes::StringShape.new(name: 'AssociationResourceType')
    AssociationStatus = Shapes::StructureShape.new(name: 'AssociationStatus')
    AssociationStatusAggregatedCount = Shapes::MapShape.new(name: 'AssociationStatusAggregatedCount')
    AssociationStatusName = Shapes::StringShape.new(name: 'AssociationStatusName')
    AssociationVersion = Shapes::StringShape.new(name: 'AssociationVersion')
    AssociationVersionInfo = Shapes::StructureShape.new(name: 'AssociationVersionInfo')
    AssociationVersionLimitExceeded = Shapes::StructureShape.new(name: 'AssociationVersionLimitExceeded')
    AssociationVersionList = Shapes::ListShape.new(name: 'AssociationVersionList')
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
    AutomationStepNotFoundException = Shapes::StructureShape.new(name: 'AutomationStepNotFoundException')
    BaselineDescription = Shapes::StringShape.new(name: 'BaselineDescription')
    BaselineId = Shapes::StringShape.new(name: 'BaselineId')
    BaselineName = Shapes::StringShape.new(name: 'BaselineName')
    BatchErrorMessage = Shapes::StringShape.new(name: 'BatchErrorMessage')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelCommandRequest = Shapes::StructureShape.new(name: 'CancelCommandRequest')
    CancelCommandResult = Shapes::StructureShape.new(name: 'CancelCommandResult')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    CloudWatchOutputConfig = Shapes::StructureShape.new(name: 'CloudWatchOutputConfig')
    CloudWatchOutputEnabled = Shapes::BooleanShape.new(name: 'CloudWatchOutputEnabled')
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
    ComplianceExecutionId = Shapes::StringShape.new(name: 'ComplianceExecutionId')
    ComplianceExecutionSummary = Shapes::StructureShape.new(name: 'ComplianceExecutionSummary')
    ComplianceExecutionType = Shapes::StringShape.new(name: 'ComplianceExecutionType')
    ComplianceFilterValue = Shapes::StringShape.new(name: 'ComplianceFilterValue')
    ComplianceItem = Shapes::StructureShape.new(name: 'ComplianceItem')
    ComplianceItemContentHash = Shapes::StringShape.new(name: 'ComplianceItemContentHash')
    ComplianceItemDetails = Shapes::MapShape.new(name: 'ComplianceItemDetails')
    ComplianceItemEntry = Shapes::StructureShape.new(name: 'ComplianceItemEntry')
    ComplianceItemEntryList = Shapes::ListShape.new(name: 'ComplianceItemEntryList')
    ComplianceItemId = Shapes::StringShape.new(name: 'ComplianceItemId')
    ComplianceItemList = Shapes::ListShape.new(name: 'ComplianceItemList')
    ComplianceItemTitle = Shapes::StringShape.new(name: 'ComplianceItemTitle')
    ComplianceQueryOperatorType = Shapes::StringShape.new(name: 'ComplianceQueryOperatorType')
    ComplianceResourceId = Shapes::StringShape.new(name: 'ComplianceResourceId')
    ComplianceResourceIdList = Shapes::ListShape.new(name: 'ComplianceResourceIdList')
    ComplianceResourceType = Shapes::StringShape.new(name: 'ComplianceResourceType')
    ComplianceResourceTypeList = Shapes::ListShape.new(name: 'ComplianceResourceTypeList')
    ComplianceSeverity = Shapes::StringShape.new(name: 'ComplianceSeverity')
    ComplianceStatus = Shapes::StringShape.new(name: 'ComplianceStatus')
    ComplianceStringFilter = Shapes::StructureShape.new(name: 'ComplianceStringFilter')
    ComplianceStringFilterKey = Shapes::StringShape.new(name: 'ComplianceStringFilterKey')
    ComplianceStringFilterList = Shapes::ListShape.new(name: 'ComplianceStringFilterList')
    ComplianceStringFilterValueList = Shapes::ListShape.new(name: 'ComplianceStringFilterValueList')
    ComplianceSummaryCount = Shapes::IntegerShape.new(name: 'ComplianceSummaryCount')
    ComplianceSummaryItem = Shapes::StructureShape.new(name: 'ComplianceSummaryItem')
    ComplianceSummaryItemList = Shapes::ListShape.new(name: 'ComplianceSummaryItemList')
    ComplianceTypeCountLimitExceededException = Shapes::StructureShape.new(name: 'ComplianceTypeCountLimitExceededException')
    ComplianceTypeName = Shapes::StringShape.new(name: 'ComplianceTypeName')
    CompliantSummary = Shapes::StructureShape.new(name: 'CompliantSummary')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
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
    CreatePatchBaselineRequest = Shapes::StructureShape.new(name: 'CreatePatchBaselineRequest')
    CreatePatchBaselineResult = Shapes::StructureShape.new(name: 'CreatePatchBaselineResult')
    CreateResourceDataSyncRequest = Shapes::StructureShape.new(name: 'CreateResourceDataSyncRequest')
    CreateResourceDataSyncResult = Shapes::StructureShape.new(name: 'CreateResourceDataSyncResult')
    CreatedDate = Shapes::TimestampShape.new(name: 'CreatedDate')
    CustomSchemaCountLimitExceededException = Shapes::StructureShape.new(name: 'CustomSchemaCountLimitExceededException')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DefaultBaseline = Shapes::BooleanShape.new(name: 'DefaultBaseline')
    DefaultInstanceName = Shapes::StringShape.new(name: 'DefaultInstanceName')
    DeleteActivationRequest = Shapes::StructureShape.new(name: 'DeleteActivationRequest')
    DeleteActivationResult = Shapes::StructureShape.new(name: 'DeleteActivationResult')
    DeleteAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAssociationRequest')
    DeleteAssociationResult = Shapes::StructureShape.new(name: 'DeleteAssociationResult')
    DeleteDocumentRequest = Shapes::StructureShape.new(name: 'DeleteDocumentRequest')
    DeleteDocumentResult = Shapes::StructureShape.new(name: 'DeleteDocumentResult')
    DeleteInventoryRequest = Shapes::StructureShape.new(name: 'DeleteInventoryRequest')
    DeleteInventoryResult = Shapes::StructureShape.new(name: 'DeleteInventoryResult')
    DeleteMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeleteMaintenanceWindowRequest')
    DeleteMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeleteMaintenanceWindowResult')
    DeleteParameterRequest = Shapes::StructureShape.new(name: 'DeleteParameterRequest')
    DeleteParameterResult = Shapes::StructureShape.new(name: 'DeleteParameterResult')
    DeleteParametersRequest = Shapes::StructureShape.new(name: 'DeleteParametersRequest')
    DeleteParametersResult = Shapes::StructureShape.new(name: 'DeleteParametersResult')
    DeletePatchBaselineRequest = Shapes::StructureShape.new(name: 'DeletePatchBaselineRequest')
    DeletePatchBaselineResult = Shapes::StructureShape.new(name: 'DeletePatchBaselineResult')
    DeleteResourceDataSyncRequest = Shapes::StructureShape.new(name: 'DeleteResourceDataSyncRequest')
    DeleteResourceDataSyncResult = Shapes::StructureShape.new(name: 'DeleteResourceDataSyncResult')
    DeliveryTimedOutCount = Shapes::IntegerShape.new(name: 'DeliveryTimedOutCount')
    DeregisterManagedInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceRequest')
    DeregisterManagedInstanceResult = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceResult')
    DeregisterPatchBaselineForPatchGroupRequest = Shapes::StructureShape.new(name: 'DeregisterPatchBaselineForPatchGroupRequest')
    DeregisterPatchBaselineForPatchGroupResult = Shapes::StructureShape.new(name: 'DeregisterPatchBaselineForPatchGroupResult')
    DeregisterTargetFromMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeregisterTargetFromMaintenanceWindowRequest')
    DeregisterTargetFromMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeregisterTargetFromMaintenanceWindowResult')
    DeregisterTaskFromMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeregisterTaskFromMaintenanceWindowRequest')
    DeregisterTaskFromMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeregisterTaskFromMaintenanceWindowResult')
    DescribeActivationsFilter = Shapes::StructureShape.new(name: 'DescribeActivationsFilter')
    DescribeActivationsFilterKeys = Shapes::StringShape.new(name: 'DescribeActivationsFilterKeys')
    DescribeActivationsFilterList = Shapes::ListShape.new(name: 'DescribeActivationsFilterList')
    DescribeActivationsRequest = Shapes::StructureShape.new(name: 'DescribeActivationsRequest')
    DescribeActivationsResult = Shapes::StructureShape.new(name: 'DescribeActivationsResult')
    DescribeAssociationExecutionTargetsRequest = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionTargetsRequest')
    DescribeAssociationExecutionTargetsResult = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionTargetsResult')
    DescribeAssociationExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionsRequest')
    DescribeAssociationExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionsResult')
    DescribeAssociationRequest = Shapes::StructureShape.new(name: 'DescribeAssociationRequest')
    DescribeAssociationResult = Shapes::StructureShape.new(name: 'DescribeAssociationResult')
    DescribeAutomationExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAutomationExecutionsRequest')
    DescribeAutomationExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAutomationExecutionsResult')
    DescribeAutomationStepExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAutomationStepExecutionsRequest')
    DescribeAutomationStepExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAutomationStepExecutionsResult')
    DescribeAvailablePatchesRequest = Shapes::StructureShape.new(name: 'DescribeAvailablePatchesRequest')
    DescribeAvailablePatchesResult = Shapes::StructureShape.new(name: 'DescribeAvailablePatchesResult')
    DescribeDocumentPermissionRequest = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionRequest')
    DescribeDocumentPermissionResponse = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionResponse')
    DescribeDocumentRequest = Shapes::StructureShape.new(name: 'DescribeDocumentRequest')
    DescribeDocumentResult = Shapes::StructureShape.new(name: 'DescribeDocumentResult')
    DescribeEffectiveInstanceAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeEffectiveInstanceAssociationsRequest')
    DescribeEffectiveInstanceAssociationsResult = Shapes::StructureShape.new(name: 'DescribeEffectiveInstanceAssociationsResult')
    DescribeEffectivePatchesForPatchBaselineRequest = Shapes::StructureShape.new(name: 'DescribeEffectivePatchesForPatchBaselineRequest')
    DescribeEffectivePatchesForPatchBaselineResult = Shapes::StructureShape.new(name: 'DescribeEffectivePatchesForPatchBaselineResult')
    DescribeInstanceAssociationsStatusRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAssociationsStatusRequest')
    DescribeInstanceAssociationsStatusResult = Shapes::StructureShape.new(name: 'DescribeInstanceAssociationsStatusResult')
    DescribeInstanceInformationRequest = Shapes::StructureShape.new(name: 'DescribeInstanceInformationRequest')
    DescribeInstanceInformationResult = Shapes::StructureShape.new(name: 'DescribeInstanceInformationResult')
    DescribeInstancePatchStatesForPatchGroupRequest = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesForPatchGroupRequest')
    DescribeInstancePatchStatesForPatchGroupResult = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesForPatchGroupResult')
    DescribeInstancePatchStatesRequest = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesRequest')
    DescribeInstancePatchStatesResult = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesResult')
    DescribeInstancePatchesRequest = Shapes::StructureShape.new(name: 'DescribeInstancePatchesRequest')
    DescribeInstancePatchesResult = Shapes::StructureShape.new(name: 'DescribeInstancePatchesResult')
    DescribeInventoryDeletionsRequest = Shapes::StructureShape.new(name: 'DescribeInventoryDeletionsRequest')
    DescribeInventoryDeletionsResult = Shapes::StructureShape.new(name: 'DescribeInventoryDeletionsResult')
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
    DescribePatchBaselinesRequest = Shapes::StructureShape.new(name: 'DescribePatchBaselinesRequest')
    DescribePatchBaselinesResult = Shapes::StructureShape.new(name: 'DescribePatchBaselinesResult')
    DescribePatchGroupStateRequest = Shapes::StructureShape.new(name: 'DescribePatchGroupStateRequest')
    DescribePatchGroupStateResult = Shapes::StructureShape.new(name: 'DescribePatchGroupStateResult')
    DescribePatchGroupsRequest = Shapes::StructureShape.new(name: 'DescribePatchGroupsRequest')
    DescribePatchGroupsResult = Shapes::StructureShape.new(name: 'DescribePatchGroupsResult')
    DescribeSessionsRequest = Shapes::StructureShape.new(name: 'DescribeSessionsRequest')
    DescribeSessionsResponse = Shapes::StructureShape.new(name: 'DescribeSessionsResponse')
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
    DocumentFormat = Shapes::StringShape.new(name: 'DocumentFormat')
    DocumentHash = Shapes::StringShape.new(name: 'DocumentHash')
    DocumentHashType = Shapes::StringShape.new(name: 'DocumentHashType')
    DocumentIdentifier = Shapes::StructureShape.new(name: 'DocumentIdentifier')
    DocumentIdentifierList = Shapes::ListShape.new(name: 'DocumentIdentifierList')
    DocumentKeyValuesFilter = Shapes::StructureShape.new(name: 'DocumentKeyValuesFilter')
    DocumentKeyValuesFilterKey = Shapes::StringShape.new(name: 'DocumentKeyValuesFilterKey')
    DocumentKeyValuesFilterList = Shapes::ListShape.new(name: 'DocumentKeyValuesFilterList')
    DocumentKeyValuesFilterValue = Shapes::StringShape.new(name: 'DocumentKeyValuesFilterValue')
    DocumentKeyValuesFilterValues = Shapes::ListShape.new(name: 'DocumentKeyValuesFilterValues')
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
    DryRun = Shapes::BooleanShape.new(name: 'DryRun')
    DuplicateDocumentContent = Shapes::StructureShape.new(name: 'DuplicateDocumentContent')
    DuplicateInstanceId = Shapes::StructureShape.new(name: 'DuplicateInstanceId')
    EffectiveInstanceAssociationMaxResults = Shapes::IntegerShape.new(name: 'EffectiveInstanceAssociationMaxResults')
    EffectivePatch = Shapes::StructureShape.new(name: 'EffectivePatch')
    EffectivePatchList = Shapes::ListShape.new(name: 'EffectivePatchList')
    ErrorCount = Shapes::IntegerShape.new(name: 'ErrorCount')
    ExecutionMode = Shapes::StringShape.new(name: 'ExecutionMode')
    ExpirationDate = Shapes::TimestampShape.new(name: 'ExpirationDate')
    FailedCreateAssociation = Shapes::StructureShape.new(name: 'FailedCreateAssociation')
    FailedCreateAssociationList = Shapes::ListShape.new(name: 'FailedCreateAssociationList')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    Fault = Shapes::StringShape.new(name: 'Fault')
    FeatureNotAvailableException = Shapes::StructureShape.new(name: 'FeatureNotAvailableException')
    GetAutomationExecutionRequest = Shapes::StructureShape.new(name: 'GetAutomationExecutionRequest')
    GetAutomationExecutionResult = Shapes::StructureShape.new(name: 'GetAutomationExecutionResult')
    GetCommandInvocationRequest = Shapes::StructureShape.new(name: 'GetCommandInvocationRequest')
    GetCommandInvocationResult = Shapes::StructureShape.new(name: 'GetCommandInvocationResult')
    GetConnectionStatusRequest = Shapes::StructureShape.new(name: 'GetConnectionStatusRequest')
    GetConnectionStatusResponse = Shapes::StructureShape.new(name: 'GetConnectionStatusResponse')
    GetDefaultPatchBaselineRequest = Shapes::StructureShape.new(name: 'GetDefaultPatchBaselineRequest')
    GetDefaultPatchBaselineResult = Shapes::StructureShape.new(name: 'GetDefaultPatchBaselineResult')
    GetDeployablePatchSnapshotForInstanceRequest = Shapes::StructureShape.new(name: 'GetDeployablePatchSnapshotForInstanceRequest')
    GetDeployablePatchSnapshotForInstanceResult = Shapes::StructureShape.new(name: 'GetDeployablePatchSnapshotForInstanceResult')
    GetDocumentRequest = Shapes::StructureShape.new(name: 'GetDocumentRequest')
    GetDocumentResult = Shapes::StructureShape.new(name: 'GetDocumentResult')
    GetInventoryRequest = Shapes::StructureShape.new(name: 'GetInventoryRequest')
    GetInventoryResult = Shapes::StructureShape.new(name: 'GetInventoryResult')
    GetInventorySchemaMaxResults = Shapes::IntegerShape.new(name: 'GetInventorySchemaMaxResults')
    GetInventorySchemaRequest = Shapes::StructureShape.new(name: 'GetInventorySchemaRequest')
    GetInventorySchemaResult = Shapes::StructureShape.new(name: 'GetInventorySchemaResult')
    GetMaintenanceWindowExecutionRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionRequest')
    GetMaintenanceWindowExecutionResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionResult')
    GetMaintenanceWindowExecutionTaskInvocationRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskInvocationRequest')
    GetMaintenanceWindowExecutionTaskInvocationResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskInvocationResult')
    GetMaintenanceWindowExecutionTaskRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskRequest')
    GetMaintenanceWindowExecutionTaskResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskResult')
    GetMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowRequest')
    GetMaintenanceWindowResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowResult')
    GetMaintenanceWindowTaskRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowTaskRequest')
    GetMaintenanceWindowTaskResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowTaskResult')
    GetParameterHistoryRequest = Shapes::StructureShape.new(name: 'GetParameterHistoryRequest')
    GetParameterHistoryResult = Shapes::StructureShape.new(name: 'GetParameterHistoryResult')
    GetParameterRequest = Shapes::StructureShape.new(name: 'GetParameterRequest')
    GetParameterResult = Shapes::StructureShape.new(name: 'GetParameterResult')
    GetParametersByPathMaxResults = Shapes::IntegerShape.new(name: 'GetParametersByPathMaxResults')
    GetParametersByPathRequest = Shapes::StructureShape.new(name: 'GetParametersByPathRequest')
    GetParametersByPathResult = Shapes::StructureShape.new(name: 'GetParametersByPathResult')
    GetParametersRequest = Shapes::StructureShape.new(name: 'GetParametersRequest')
    GetParametersResult = Shapes::StructureShape.new(name: 'GetParametersResult')
    GetPatchBaselineForPatchGroupRequest = Shapes::StructureShape.new(name: 'GetPatchBaselineForPatchGroupRequest')
    GetPatchBaselineForPatchGroupResult = Shapes::StructureShape.new(name: 'GetPatchBaselineForPatchGroupResult')
    GetPatchBaselineRequest = Shapes::StructureShape.new(name: 'GetPatchBaselineRequest')
    GetPatchBaselineResult = Shapes::StructureShape.new(name: 'GetPatchBaselineResult')
    HierarchyLevelLimitExceededException = Shapes::StructureShape.new(name: 'HierarchyLevelLimitExceededException')
    HierarchyTypeMismatchException = Shapes::StructureShape.new(name: 'HierarchyTypeMismatchException')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    IamRole = Shapes::StringShape.new(name: 'IamRole')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
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
    InstancePatchState = Shapes::StructureShape.new(name: 'InstancePatchState')
    InstancePatchStateFilter = Shapes::StructureShape.new(name: 'InstancePatchStateFilter')
    InstancePatchStateFilterKey = Shapes::StringShape.new(name: 'InstancePatchStateFilterKey')
    InstancePatchStateFilterList = Shapes::ListShape.new(name: 'InstancePatchStateFilterList')
    InstancePatchStateFilterValue = Shapes::StringShape.new(name: 'InstancePatchStateFilterValue')
    InstancePatchStateFilterValues = Shapes::ListShape.new(name: 'InstancePatchStateFilterValues')
    InstancePatchStateList = Shapes::ListShape.new(name: 'InstancePatchStateList')
    InstancePatchStateOperatorType = Shapes::StringShape.new(name: 'InstancePatchStateOperatorType')
    InstancePatchStatesList = Shapes::ListShape.new(name: 'InstancePatchStatesList')
    InstanceTagName = Shapes::StringShape.new(name: 'InstanceTagName')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidActivation = Shapes::StructureShape.new(name: 'InvalidActivation')
    InvalidActivationId = Shapes::StructureShape.new(name: 'InvalidActivationId')
    InvalidAggregatorException = Shapes::StructureShape.new(name: 'InvalidAggregatorException')
    InvalidAllowedPatternException = Shapes::StructureShape.new(name: 'InvalidAllowedPatternException')
    InvalidAssociation = Shapes::StructureShape.new(name: 'InvalidAssociation')
    InvalidAssociationVersion = Shapes::StructureShape.new(name: 'InvalidAssociationVersion')
    InvalidAutomationExecutionParametersException = Shapes::StructureShape.new(name: 'InvalidAutomationExecutionParametersException')
    InvalidAutomationSignalException = Shapes::StructureShape.new(name: 'InvalidAutomationSignalException')
    InvalidAutomationStatusUpdateException = Shapes::StructureShape.new(name: 'InvalidAutomationStatusUpdateException')
    InvalidCommandId = Shapes::StructureShape.new(name: 'InvalidCommandId')
    InvalidDeleteInventoryParametersException = Shapes::StructureShape.new(name: 'InvalidDeleteInventoryParametersException')
    InvalidDeletionIdException = Shapes::StructureShape.new(name: 'InvalidDeletionIdException')
    InvalidDocument = Shapes::StructureShape.new(name: 'InvalidDocument')
    InvalidDocumentContent = Shapes::StructureShape.new(name: 'InvalidDocumentContent')
    InvalidDocumentOperation = Shapes::StructureShape.new(name: 'InvalidDocumentOperation')
    InvalidDocumentSchemaVersion = Shapes::StructureShape.new(name: 'InvalidDocumentSchemaVersion')
    InvalidDocumentVersion = Shapes::StructureShape.new(name: 'InvalidDocumentVersion')
    InvalidFilter = Shapes::StructureShape.new(name: 'InvalidFilter')
    InvalidFilterKey = Shapes::StructureShape.new(name: 'InvalidFilterKey')
    InvalidFilterOption = Shapes::StructureShape.new(name: 'InvalidFilterOption')
    InvalidFilterValue = Shapes::StructureShape.new(name: 'InvalidFilterValue')
    InvalidInstanceId = Shapes::StructureShape.new(name: 'InvalidInstanceId')
    InvalidInstanceInformationFilterValue = Shapes::StructureShape.new(name: 'InvalidInstanceInformationFilterValue')
    InvalidInventoryGroupException = Shapes::StructureShape.new(name: 'InvalidInventoryGroupException')
    InvalidInventoryItemContextException = Shapes::StructureShape.new(name: 'InvalidInventoryItemContextException')
    InvalidInventoryRequestException = Shapes::StructureShape.new(name: 'InvalidInventoryRequestException')
    InvalidItemContentException = Shapes::StructureShape.new(name: 'InvalidItemContentException')
    InvalidKeyId = Shapes::StructureShape.new(name: 'InvalidKeyId')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
    InvalidNotificationConfig = Shapes::StructureShape.new(name: 'InvalidNotificationConfig')
    InvalidOptionException = Shapes::StructureShape.new(name: 'InvalidOptionException')
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
    InventoryAggregator = Shapes::StructureShape.new(name: 'InventoryAggregator')
    InventoryAggregatorExpression = Shapes::StringShape.new(name: 'InventoryAggregatorExpression')
    InventoryAggregatorList = Shapes::ListShape.new(name: 'InventoryAggregatorList')
    InventoryAttributeDataType = Shapes::StringShape.new(name: 'InventoryAttributeDataType')
    InventoryDeletionId = Shapes::StringShape.new(name: 'InventoryDeletionId')
    InventoryDeletionLastStatusMessage = Shapes::StringShape.new(name: 'InventoryDeletionLastStatusMessage')
    InventoryDeletionLastStatusUpdateTime = Shapes::TimestampShape.new(name: 'InventoryDeletionLastStatusUpdateTime')
    InventoryDeletionStartTime = Shapes::TimestampShape.new(name: 'InventoryDeletionStartTime')
    InventoryDeletionStatus = Shapes::StringShape.new(name: 'InventoryDeletionStatus')
    InventoryDeletionStatusItem = Shapes::StructureShape.new(name: 'InventoryDeletionStatusItem')
    InventoryDeletionSummary = Shapes::StructureShape.new(name: 'InventoryDeletionSummary')
    InventoryDeletionSummaryItem = Shapes::StructureShape.new(name: 'InventoryDeletionSummaryItem')
    InventoryDeletionSummaryItems = Shapes::ListShape.new(name: 'InventoryDeletionSummaryItems')
    InventoryDeletionsList = Shapes::ListShape.new(name: 'InventoryDeletionsList')
    InventoryFilter = Shapes::StructureShape.new(name: 'InventoryFilter')
    InventoryFilterKey = Shapes::StringShape.new(name: 'InventoryFilterKey')
    InventoryFilterList = Shapes::ListShape.new(name: 'InventoryFilterList')
    InventoryFilterValue = Shapes::StringShape.new(name: 'InventoryFilterValue')
    InventoryFilterValueList = Shapes::ListShape.new(name: 'InventoryFilterValueList')
    InventoryGroup = Shapes::StructureShape.new(name: 'InventoryGroup')
    InventoryGroupList = Shapes::ListShape.new(name: 'InventoryGroupList')
    InventoryGroupName = Shapes::StringShape.new(name: 'InventoryGroupName')
    InventoryItem = Shapes::StructureShape.new(name: 'InventoryItem')
    InventoryItemAttribute = Shapes::StructureShape.new(name: 'InventoryItemAttribute')
    InventoryItemAttributeList = Shapes::ListShape.new(name: 'InventoryItemAttributeList')
    InventoryItemAttributeName = Shapes::StringShape.new(name: 'InventoryItemAttributeName')
    InventoryItemCaptureTime = Shapes::StringShape.new(name: 'InventoryItemCaptureTime')
    InventoryItemContentContext = Shapes::MapShape.new(name: 'InventoryItemContentContext')
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
    InventorySchemaDeleteOption = Shapes::StringShape.new(name: 'InventorySchemaDeleteOption')
    InventoryTypeDisplayName = Shapes::StringShape.new(name: 'InventoryTypeDisplayName')
    InvocationDoesNotExist = Shapes::StructureShape.new(name: 'InvocationDoesNotExist')
    InvocationTraceOutput = Shapes::StringShape.new(name: 'InvocationTraceOutput')
    IsSubTypeSchema = Shapes::BooleanShape.new(name: 'IsSubTypeSchema')
    ItemContentMismatchException = Shapes::StructureShape.new(name: 'ItemContentMismatchException')
    ItemSizeLimitExceededException = Shapes::StructureShape.new(name: 'ItemSizeLimitExceededException')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    LabelParameterVersionRequest = Shapes::StructureShape.new(name: 'LabelParameterVersionRequest')
    LabelParameterVersionResult = Shapes::StructureShape.new(name: 'LabelParameterVersionResult')
    LastResourceDataSyncMessage = Shapes::StringShape.new(name: 'LastResourceDataSyncMessage')
    LastResourceDataSyncStatus = Shapes::StringShape.new(name: 'LastResourceDataSyncStatus')
    LastResourceDataSyncTime = Shapes::TimestampShape.new(name: 'LastResourceDataSyncTime')
    LastSuccessfulResourceDataSyncTime = Shapes::TimestampShape.new(name: 'LastSuccessfulResourceDataSyncTime')
    ListAssociationVersionsRequest = Shapes::StructureShape.new(name: 'ListAssociationVersionsRequest')
    ListAssociationVersionsResult = Shapes::StructureShape.new(name: 'ListAssociationVersionsResult')
    ListAssociationsRequest = Shapes::StructureShape.new(name: 'ListAssociationsRequest')
    ListAssociationsResult = Shapes::StructureShape.new(name: 'ListAssociationsResult')
    ListCommandInvocationsRequest = Shapes::StructureShape.new(name: 'ListCommandInvocationsRequest')
    ListCommandInvocationsResult = Shapes::StructureShape.new(name: 'ListCommandInvocationsResult')
    ListCommandsRequest = Shapes::StructureShape.new(name: 'ListCommandsRequest')
    ListCommandsResult = Shapes::StructureShape.new(name: 'ListCommandsResult')
    ListComplianceItemsRequest = Shapes::StructureShape.new(name: 'ListComplianceItemsRequest')
    ListComplianceItemsResult = Shapes::StructureShape.new(name: 'ListComplianceItemsResult')
    ListComplianceSummariesRequest = Shapes::StructureShape.new(name: 'ListComplianceSummariesRequest')
    ListComplianceSummariesResult = Shapes::StructureShape.new(name: 'ListComplianceSummariesResult')
    ListDocumentVersionsRequest = Shapes::StructureShape.new(name: 'ListDocumentVersionsRequest')
    ListDocumentVersionsResult = Shapes::StructureShape.new(name: 'ListDocumentVersionsResult')
    ListDocumentsRequest = Shapes::StructureShape.new(name: 'ListDocumentsRequest')
    ListDocumentsResult = Shapes::StructureShape.new(name: 'ListDocumentsResult')
    ListInventoryEntriesRequest = Shapes::StructureShape.new(name: 'ListInventoryEntriesRequest')
    ListInventoryEntriesResult = Shapes::StructureShape.new(name: 'ListInventoryEntriesResult')
    ListResourceComplianceSummariesRequest = Shapes::StructureShape.new(name: 'ListResourceComplianceSummariesRequest')
    ListResourceComplianceSummariesResult = Shapes::StructureShape.new(name: 'ListResourceComplianceSummariesResult')
    ListResourceDataSyncRequest = Shapes::StructureShape.new(name: 'ListResourceDataSyncRequest')
    ListResourceDataSyncResult = Shapes::StructureShape.new(name: 'ListResourceDataSyncResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LoggingInfo = Shapes::StructureShape.new(name: 'LoggingInfo')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaintenanceWindowAllowUnassociatedTargets = Shapes::BooleanShape.new(name: 'MaintenanceWindowAllowUnassociatedTargets')
    MaintenanceWindowAutomationParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowAutomationParameters')
    MaintenanceWindowCutoff = Shapes::IntegerShape.new(name: 'MaintenanceWindowCutoff')
    MaintenanceWindowDescription = Shapes::StringShape.new(name: 'MaintenanceWindowDescription')
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
    MaintenanceWindowLambdaClientContext = Shapes::StringShape.new(name: 'MaintenanceWindowLambdaClientContext')
    MaintenanceWindowLambdaParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowLambdaParameters')
    MaintenanceWindowLambdaPayload = Shapes::BlobShape.new(name: 'MaintenanceWindowLambdaPayload')
    MaintenanceWindowLambdaQualifier = Shapes::StringShape.new(name: 'MaintenanceWindowLambdaQualifier')
    MaintenanceWindowMaxResults = Shapes::IntegerShape.new(name: 'MaintenanceWindowMaxResults')
    MaintenanceWindowName = Shapes::StringShape.new(name: 'MaintenanceWindowName')
    MaintenanceWindowResourceType = Shapes::StringShape.new(name: 'MaintenanceWindowResourceType')
    MaintenanceWindowRunCommandParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowRunCommandParameters')
    MaintenanceWindowSchedule = Shapes::StringShape.new(name: 'MaintenanceWindowSchedule')
    MaintenanceWindowStepFunctionsInput = Shapes::StringShape.new(name: 'MaintenanceWindowStepFunctionsInput')
    MaintenanceWindowStepFunctionsName = Shapes::StringShape.new(name: 'MaintenanceWindowStepFunctionsName')
    MaintenanceWindowStepFunctionsParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowStepFunctionsParameters')
    MaintenanceWindowTarget = Shapes::StructureShape.new(name: 'MaintenanceWindowTarget')
    MaintenanceWindowTargetId = Shapes::StringShape.new(name: 'MaintenanceWindowTargetId')
    MaintenanceWindowTargetList = Shapes::ListShape.new(name: 'MaintenanceWindowTargetList')
    MaintenanceWindowTask = Shapes::StructureShape.new(name: 'MaintenanceWindowTask')
    MaintenanceWindowTaskArn = Shapes::StringShape.new(name: 'MaintenanceWindowTaskArn')
    MaintenanceWindowTaskId = Shapes::StringShape.new(name: 'MaintenanceWindowTaskId')
    MaintenanceWindowTaskInvocationParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowTaskInvocationParameters')
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
    MaxConcurrency = Shapes::StringShape.new(name: 'MaxConcurrency')
    MaxDocumentSizeExceeded = Shapes::StructureShape.new(name: 'MaxDocumentSizeExceeded')
    MaxErrors = Shapes::StringShape.new(name: 'MaxErrors')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsEC2Compatible = Shapes::IntegerShape.new(name: 'MaxResultsEC2Compatible')
    ModifyDocumentPermissionRequest = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionRequest')
    ModifyDocumentPermissionResponse = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionResponse')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonCompliantSummary = Shapes::StructureShape.new(name: 'NonCompliantSummary')
    NormalStringMap = Shapes::MapShape.new(name: 'NormalStringMap')
    NotificationArn = Shapes::StringShape.new(name: 'NotificationArn')
    NotificationConfig = Shapes::StructureShape.new(name: 'NotificationConfig')
    NotificationEvent = Shapes::StringShape.new(name: 'NotificationEvent')
    NotificationEventList = Shapes::ListShape.new(name: 'NotificationEventList')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    OutputSource = Shapes::StructureShape.new(name: 'OutputSource')
    OutputSourceId = Shapes::StringShape.new(name: 'OutputSourceId')
    OutputSourceType = Shapes::StringShape.new(name: 'OutputSourceType')
    OwnerInformation = Shapes::StringShape.new(name: 'OwnerInformation')
    PSParameterName = Shapes::StringShape.new(name: 'PSParameterName')
    PSParameterSelector = Shapes::StringShape.new(name: 'PSParameterSelector')
    PSParameterValue = Shapes::StringShape.new(name: 'PSParameterValue')
    PSParameterVersion = Shapes::IntegerShape.new(name: 'PSParameterVersion')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterAlreadyExists = Shapes::StructureShape.new(name: 'ParameterAlreadyExists')
    ParameterDescription = Shapes::StringShape.new(name: 'ParameterDescription')
    ParameterHistory = Shapes::StructureShape.new(name: 'ParameterHistory')
    ParameterHistoryList = Shapes::ListShape.new(name: 'ParameterHistoryList')
    ParameterKeyId = Shapes::StringShape.new(name: 'ParameterKeyId')
    ParameterLabel = Shapes::StringShape.new(name: 'ParameterLabel')
    ParameterLabelList = Shapes::ListShape.new(name: 'ParameterLabelList')
    ParameterLimitExceeded = Shapes::StructureShape.new(name: 'ParameterLimitExceeded')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    ParameterMaxVersionLimitExceeded = Shapes::StructureShape.new(name: 'ParameterMaxVersionLimitExceeded')
    ParameterMetadata = Shapes::StructureShape.new(name: 'ParameterMetadata')
    ParameterMetadataList = Shapes::ListShape.new(name: 'ParameterMetadataList')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterNameList = Shapes::ListShape.new(name: 'ParameterNameList')
    ParameterNotFound = Shapes::StructureShape.new(name: 'ParameterNotFound')
    ParameterPatternMismatchException = Shapes::StructureShape.new(name: 'ParameterPatternMismatchException')
    ParameterStringFilter = Shapes::StructureShape.new(name: 'ParameterStringFilter')
    ParameterStringFilterKey = Shapes::StringShape.new(name: 'ParameterStringFilterKey')
    ParameterStringFilterList = Shapes::ListShape.new(name: 'ParameterStringFilterList')
    ParameterStringFilterValue = Shapes::StringShape.new(name: 'ParameterStringFilterValue')
    ParameterStringFilterValueList = Shapes::ListShape.new(name: 'ParameterStringFilterValueList')
    ParameterStringQueryOption = Shapes::StringShape.new(name: 'ParameterStringQueryOption')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParameterValueList = Shapes::ListShape.new(name: 'ParameterValueList')
    ParameterVersionLabelLimitExceeded = Shapes::StructureShape.new(name: 'ParameterVersionLabelLimitExceeded')
    ParameterVersionNotFound = Shapes::StructureShape.new(name: 'ParameterVersionNotFound')
    Parameters = Shapes::MapShape.new(name: 'Parameters')
    ParametersFilter = Shapes::StructureShape.new(name: 'ParametersFilter')
    ParametersFilterKey = Shapes::StringShape.new(name: 'ParametersFilterKey')
    ParametersFilterList = Shapes::ListShape.new(name: 'ParametersFilterList')
    ParametersFilterValue = Shapes::StringShape.new(name: 'ParametersFilterValue')
    ParametersFilterValueList = Shapes::ListShape.new(name: 'ParametersFilterValueList')
    Patch = Shapes::StructureShape.new(name: 'Patch')
    PatchBaselineIdentity = Shapes::StructureShape.new(name: 'PatchBaselineIdentity')
    PatchBaselineIdentityList = Shapes::ListShape.new(name: 'PatchBaselineIdentityList')
    PatchBaselineMaxResults = Shapes::IntegerShape.new(name: 'PatchBaselineMaxResults')
    PatchClassification = Shapes::StringShape.new(name: 'PatchClassification')
    PatchComplianceData = Shapes::StructureShape.new(name: 'PatchComplianceData')
    PatchComplianceDataList = Shapes::ListShape.new(name: 'PatchComplianceDataList')
    PatchComplianceDataState = Shapes::StringShape.new(name: 'PatchComplianceDataState')
    PatchComplianceLevel = Shapes::StringShape.new(name: 'PatchComplianceLevel')
    PatchComplianceMaxResults = Shapes::IntegerShape.new(name: 'PatchComplianceMaxResults')
    PatchContentUrl = Shapes::StringShape.new(name: 'PatchContentUrl')
    PatchDeploymentStatus = Shapes::StringShape.new(name: 'PatchDeploymentStatus')
    PatchDescription = Shapes::StringShape.new(name: 'PatchDescription')
    PatchFailedCount = Shapes::IntegerShape.new(name: 'PatchFailedCount')
    PatchFilter = Shapes::StructureShape.new(name: 'PatchFilter')
    PatchFilterGroup = Shapes::StructureShape.new(name: 'PatchFilterGroup')
    PatchFilterKey = Shapes::StringShape.new(name: 'PatchFilterKey')
    PatchFilterList = Shapes::ListShape.new(name: 'PatchFilterList')
    PatchFilterValue = Shapes::StringShape.new(name: 'PatchFilterValue')
    PatchFilterValueList = Shapes::ListShape.new(name: 'PatchFilterValueList')
    PatchGroup = Shapes::StringShape.new(name: 'PatchGroup')
    PatchGroupList = Shapes::ListShape.new(name: 'PatchGroupList')
    PatchGroupPatchBaselineMapping = Shapes::StructureShape.new(name: 'PatchGroupPatchBaselineMapping')
    PatchGroupPatchBaselineMappingList = Shapes::ListShape.new(name: 'PatchGroupPatchBaselineMappingList')
    PatchId = Shapes::StringShape.new(name: 'PatchId')
    PatchIdList = Shapes::ListShape.new(name: 'PatchIdList')
    PatchInstalledCount = Shapes::IntegerShape.new(name: 'PatchInstalledCount')
    PatchInstalledOtherCount = Shapes::IntegerShape.new(name: 'PatchInstalledOtherCount')
    PatchKbNumber = Shapes::StringShape.new(name: 'PatchKbNumber')
    PatchLanguage = Shapes::StringShape.new(name: 'PatchLanguage')
    PatchList = Shapes::ListShape.new(name: 'PatchList')
    PatchMissingCount = Shapes::IntegerShape.new(name: 'PatchMissingCount')
    PatchMsrcNumber = Shapes::StringShape.new(name: 'PatchMsrcNumber')
    PatchMsrcSeverity = Shapes::StringShape.new(name: 'PatchMsrcSeverity')
    PatchNotApplicableCount = Shapes::IntegerShape.new(name: 'PatchNotApplicableCount')
    PatchOperationType = Shapes::StringShape.new(name: 'PatchOperationType')
    PatchOrchestratorFilter = Shapes::StructureShape.new(name: 'PatchOrchestratorFilter')
    PatchOrchestratorFilterKey = Shapes::StringShape.new(name: 'PatchOrchestratorFilterKey')
    PatchOrchestratorFilterList = Shapes::ListShape.new(name: 'PatchOrchestratorFilterList')
    PatchOrchestratorFilterValue = Shapes::StringShape.new(name: 'PatchOrchestratorFilterValue')
    PatchOrchestratorFilterValues = Shapes::ListShape.new(name: 'PatchOrchestratorFilterValues')
    PatchProduct = Shapes::StringShape.new(name: 'PatchProduct')
    PatchProductFamily = Shapes::StringShape.new(name: 'PatchProductFamily')
    PatchRule = Shapes::StructureShape.new(name: 'PatchRule')
    PatchRuleGroup = Shapes::StructureShape.new(name: 'PatchRuleGroup')
    PatchRuleList = Shapes::ListShape.new(name: 'PatchRuleList')
    PatchSeverity = Shapes::StringShape.new(name: 'PatchSeverity')
    PatchSource = Shapes::StructureShape.new(name: 'PatchSource')
    PatchSourceConfiguration = Shapes::StringShape.new(name: 'PatchSourceConfiguration')
    PatchSourceList = Shapes::ListShape.new(name: 'PatchSourceList')
    PatchSourceName = Shapes::StringShape.new(name: 'PatchSourceName')
    PatchSourceProduct = Shapes::StringShape.new(name: 'PatchSourceProduct')
    PatchSourceProductList = Shapes::ListShape.new(name: 'PatchSourceProductList')
    PatchStatus = Shapes::StructureShape.new(name: 'PatchStatus')
    PatchTitle = Shapes::StringShape.new(name: 'PatchTitle')
    PatchVendor = Shapes::StringShape.new(name: 'PatchVendor')
    PingStatus = Shapes::StringShape.new(name: 'PingStatus')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    PlatformTypeList = Shapes::ListShape.new(name: 'PlatformTypeList')
    Product = Shapes::StringShape.new(name: 'Product')
    PutComplianceItemsRequest = Shapes::StructureShape.new(name: 'PutComplianceItemsRequest')
    PutComplianceItemsResult = Shapes::StructureShape.new(name: 'PutComplianceItemsResult')
    PutInventoryMessage = Shapes::StringShape.new(name: 'PutInventoryMessage')
    PutInventoryRequest = Shapes::StructureShape.new(name: 'PutInventoryRequest')
    PutInventoryResult = Shapes::StructureShape.new(name: 'PutInventoryResult')
    PutParameterRequest = Shapes::StructureShape.new(name: 'PutParameterRequest')
    PutParameterResult = Shapes::StructureShape.new(name: 'PutParameterResult')
    RegisterDefaultPatchBaselineRequest = Shapes::StructureShape.new(name: 'RegisterDefaultPatchBaselineRequest')
    RegisterDefaultPatchBaselineResult = Shapes::StructureShape.new(name: 'RegisterDefaultPatchBaselineResult')
    RegisterPatchBaselineForPatchGroupRequest = Shapes::StructureShape.new(name: 'RegisterPatchBaselineForPatchGroupRequest')
    RegisterPatchBaselineForPatchGroupResult = Shapes::StructureShape.new(name: 'RegisterPatchBaselineForPatchGroupResult')
    RegisterTargetWithMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'RegisterTargetWithMaintenanceWindowRequest')
    RegisterTargetWithMaintenanceWindowResult = Shapes::StructureShape.new(name: 'RegisterTargetWithMaintenanceWindowResult')
    RegisterTaskWithMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'RegisterTaskWithMaintenanceWindowRequest')
    RegisterTaskWithMaintenanceWindowResult = Shapes::StructureShape.new(name: 'RegisterTaskWithMaintenanceWindowResult')
    RegistrationLimit = Shapes::IntegerShape.new(name: 'RegistrationLimit')
    RegistrationsCount = Shapes::IntegerShape.new(name: 'RegistrationsCount')
    RemainingCount = Shapes::IntegerShape.new(name: 'RemainingCount')
    RemoveTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResult = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResult')
    ResolvedTargets = Shapes::StructureShape.new(name: 'ResolvedTargets')
    ResourceComplianceSummaryItem = Shapes::StructureShape.new(name: 'ResourceComplianceSummaryItem')
    ResourceComplianceSummaryItemList = Shapes::ListShape.new(name: 'ResourceComplianceSummaryItemList')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceCountByStatus = Shapes::StringShape.new(name: 'ResourceCountByStatus')
    ResourceDataSyncAWSKMSKeyARN = Shapes::StringShape.new(name: 'ResourceDataSyncAWSKMSKeyARN')
    ResourceDataSyncAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceDataSyncAlreadyExistsException')
    ResourceDataSyncCountExceededException = Shapes::StructureShape.new(name: 'ResourceDataSyncCountExceededException')
    ResourceDataSyncCreatedTime = Shapes::TimestampShape.new(name: 'ResourceDataSyncCreatedTime')
    ResourceDataSyncInvalidConfigurationException = Shapes::StructureShape.new(name: 'ResourceDataSyncInvalidConfigurationException')
    ResourceDataSyncItem = Shapes::StructureShape.new(name: 'ResourceDataSyncItem')
    ResourceDataSyncItemList = Shapes::ListShape.new(name: 'ResourceDataSyncItemList')
    ResourceDataSyncName = Shapes::StringShape.new(name: 'ResourceDataSyncName')
    ResourceDataSyncNotFoundException = Shapes::StructureShape.new(name: 'ResourceDataSyncNotFoundException')
    ResourceDataSyncS3BucketName = Shapes::StringShape.new(name: 'ResourceDataSyncS3BucketName')
    ResourceDataSyncS3Destination = Shapes::StructureShape.new(name: 'ResourceDataSyncS3Destination')
    ResourceDataSyncS3Format = Shapes::StringShape.new(name: 'ResourceDataSyncS3Format')
    ResourceDataSyncS3Prefix = Shapes::StringShape.new(name: 'ResourceDataSyncS3Prefix')
    ResourceDataSyncS3Region = Shapes::StringShape.new(name: 'ResourceDataSyncS3Region')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeForTagging = Shapes::StringShape.new(name: 'ResourceTypeForTagging')
    ResponseCode = Shapes::IntegerShape.new(name: 'ResponseCode')
    ResultAttribute = Shapes::StructureShape.new(name: 'ResultAttribute')
    ResultAttributeList = Shapes::ListShape.new(name: 'ResultAttributeList')
    ResumeSessionRequest = Shapes::StructureShape.new(name: 'ResumeSessionRequest')
    ResumeSessionResponse = Shapes::StructureShape.new(name: 'ResumeSessionResponse')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3OutputLocation = Shapes::StructureShape.new(name: 'S3OutputLocation')
    S3OutputUrl = Shapes::StructureShape.new(name: 'S3OutputUrl')
    S3Region = Shapes::StringShape.new(name: 'S3Region')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    SendAutomationSignalRequest = Shapes::StructureShape.new(name: 'SendAutomationSignalRequest')
    SendAutomationSignalResult = Shapes::StructureShape.new(name: 'SendAutomationSignalResult')
    SendCommandRequest = Shapes::StructureShape.new(name: 'SendCommandRequest')
    SendCommandResult = Shapes::StructureShape.new(name: 'SendCommandResult')
    ServiceRole = Shapes::StringShape.new(name: 'ServiceRole')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionDetails = Shapes::StringShape.new(name: 'SessionDetails')
    SessionFilter = Shapes::StructureShape.new(name: 'SessionFilter')
    SessionFilterKey = Shapes::StringShape.new(name: 'SessionFilterKey')
    SessionFilterList = Shapes::ListShape.new(name: 'SessionFilterList')
    SessionFilterValue = Shapes::StringShape.new(name: 'SessionFilterValue')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionManagerCloudWatchOutputUrl = Shapes::StringShape.new(name: 'SessionManagerCloudWatchOutputUrl')
    SessionManagerOutputUrl = Shapes::StructureShape.new(name: 'SessionManagerOutputUrl')
    SessionManagerParameterName = Shapes::StringShape.new(name: 'SessionManagerParameterName')
    SessionManagerParameterValue = Shapes::StringShape.new(name: 'SessionManagerParameterValue')
    SessionManagerParameterValueList = Shapes::ListShape.new(name: 'SessionManagerParameterValueList')
    SessionManagerParameters = Shapes::MapShape.new(name: 'SessionManagerParameters')
    SessionManagerS3OutputUrl = Shapes::StringShape.new(name: 'SessionManagerS3OutputUrl')
    SessionMaxResults = Shapes::IntegerShape.new(name: 'SessionMaxResults')
    SessionOwner = Shapes::StringShape.new(name: 'SessionOwner')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SessionTarget = Shapes::StringShape.new(name: 'SessionTarget')
    SeveritySummary = Shapes::StructureShape.new(name: 'SeveritySummary')
    SignalType = Shapes::StringShape.new(name: 'SignalType')
    SnapshotDownloadUrl = Shapes::StringShape.new(name: 'SnapshotDownloadUrl')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    StandardErrorContent = Shapes::StringShape.new(name: 'StandardErrorContent')
    StandardOutputContent = Shapes::StringShape.new(name: 'StandardOutputContent')
    StartAssociationsOnceRequest = Shapes::StructureShape.new(name: 'StartAssociationsOnceRequest')
    StartAssociationsOnceResult = Shapes::StructureShape.new(name: 'StartAssociationsOnceResult')
    StartAutomationExecutionRequest = Shapes::StructureShape.new(name: 'StartAutomationExecutionRequest')
    StartAutomationExecutionResult = Shapes::StructureShape.new(name: 'StartAutomationExecutionResult')
    StartSessionRequest = Shapes::StructureShape.new(name: 'StartSessionRequest')
    StartSessionResponse = Shapes::StructureShape.new(name: 'StartSessionResponse')
    StatusAdditionalInfo = Shapes::StringShape.new(name: 'StatusAdditionalInfo')
    StatusDetails = Shapes::StringShape.new(name: 'StatusDetails')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StatusName = Shapes::StringShape.new(name: 'StatusName')
    StatusUnchanged = Shapes::StructureShape.new(name: 'StatusUnchanged')
    StepExecution = Shapes::StructureShape.new(name: 'StepExecution')
    StepExecutionFilter = Shapes::StructureShape.new(name: 'StepExecutionFilter')
    StepExecutionFilterKey = Shapes::StringShape.new(name: 'StepExecutionFilterKey')
    StepExecutionFilterList = Shapes::ListShape.new(name: 'StepExecutionFilterList')
    StepExecutionFilterValue = Shapes::StringShape.new(name: 'StepExecutionFilterValue')
    StepExecutionFilterValueList = Shapes::ListShape.new(name: 'StepExecutionFilterValueList')
    StepExecutionList = Shapes::ListShape.new(name: 'StepExecutionList')
    StopAutomationExecutionRequest = Shapes::StructureShape.new(name: 'StopAutomationExecutionRequest')
    StopAutomationExecutionResult = Shapes::StructureShape.new(name: 'StopAutomationExecutionResult')
    StopType = Shapes::StringShape.new(name: 'StopType')
    StreamUrl = Shapes::StringShape.new(name: 'StreamUrl')
    String = Shapes::StringShape.new(name: 'String')
    StringDateTime = Shapes::StringShape.new(name: 'StringDateTime')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubTypeCountLimitExceededException = Shapes::StructureShape.new(name: 'SubTypeCountLimitExceededException')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetCount = Shapes::IntegerShape.new(name: 'TargetCount')
    TargetInUseException = Shapes::StructureShape.new(name: 'TargetInUseException')
    TargetKey = Shapes::StringShape.new(name: 'TargetKey')
    TargetMap = Shapes::MapShape.new(name: 'TargetMap')
    TargetMapKey = Shapes::StringShape.new(name: 'TargetMapKey')
    TargetMapValue = Shapes::StringShape.new(name: 'TargetMapValue')
    TargetMapValueList = Shapes::ListShape.new(name: 'TargetMapValueList')
    TargetMaps = Shapes::ListShape.new(name: 'TargetMaps')
    TargetNotConnected = Shapes::StructureShape.new(name: 'TargetNotConnected')
    TargetParameterList = Shapes::ListShape.new(name: 'TargetParameterList')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    TargetValue = Shapes::StringShape.new(name: 'TargetValue')
    TargetValues = Shapes::ListShape.new(name: 'TargetValues')
    Targets = Shapes::ListShape.new(name: 'Targets')
    TerminateSessionRequest = Shapes::StructureShape.new(name: 'TerminateSessionRequest')
    TerminateSessionResponse = Shapes::StructureShape.new(name: 'TerminateSessionResponse')
    TimeoutSeconds = Shapes::IntegerShape.new(name: 'TimeoutSeconds')
    TokenValue = Shapes::StringShape.new(name: 'TokenValue')
    TooManyTagsError = Shapes::StructureShape.new(name: 'TooManyTagsError')
    TooManyUpdates = Shapes::StructureShape.new(name: 'TooManyUpdates')
    TotalCount = Shapes::IntegerShape.new(name: 'TotalCount')
    TotalSizeLimitExceededException = Shapes::StructureShape.new(name: 'TotalSizeLimitExceededException')
    UnsupportedInventoryItemContextException = Shapes::StructureShape.new(name: 'UnsupportedInventoryItemContextException')
    UnsupportedInventorySchemaVersionException = Shapes::StructureShape.new(name: 'UnsupportedInventorySchemaVersionException')
    UnsupportedOperatingSystem = Shapes::StructureShape.new(name: 'UnsupportedOperatingSystem')
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
    UpdateMaintenanceWindowTargetRequest = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTargetRequest')
    UpdateMaintenanceWindowTargetResult = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTargetResult')
    UpdateMaintenanceWindowTaskRequest = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTaskRequest')
    UpdateMaintenanceWindowTaskResult = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTaskResult')
    UpdateManagedInstanceRoleRequest = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleRequest')
    UpdateManagedInstanceRoleResult = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleResult')
    UpdatePatchBaselineRequest = Shapes::StructureShape.new(name: 'UpdatePatchBaselineRequest')
    UpdatePatchBaselineResult = Shapes::StructureShape.new(name: 'UpdatePatchBaselineResult')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidNextStep = Shapes::StringShape.new(name: 'ValidNextStep')
    ValidNextStepList = Shapes::ListShape.new(name: 'ValidNextStepList')
    Version = Shapes::StringShape.new(name: 'Version')

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

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
    Association.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    Association.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    Association.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    Association.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    Association.add_member(:overview, Shapes::ShapeRef.new(shape: AssociationOverview, location_name: "Overview"))
    Association.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    Association.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    Association.struct_class = Types::Association

    AssociationDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    AssociationDescription.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    AssociationDescription.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
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
    AssociationDescription.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    AssociationDescription.struct_class = Types::AssociationDescription

    AssociationDescriptionList.member = Shapes::ShapeRef.new(shape: AssociationDescription)

    AssociationExecution.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationExecution.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: AssociationExecutionId, location_name: "ExecutionId"))
    AssociationExecution.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    AssociationExecution.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    AssociationExecution.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    AssociationExecution.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    AssociationExecution.add_member(:resource_count_by_status, Shapes::ShapeRef.new(shape: ResourceCountByStatus, location_name: "ResourceCountByStatus"))
    AssociationExecution.struct_class = Types::AssociationExecution

    AssociationExecutionFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationExecutionFilterKey, required: true, location_name: "Key"))
    AssociationExecutionFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationExecutionFilterValue, required: true, location_name: "Value"))
    AssociationExecutionFilter.add_member(:type, Shapes::ShapeRef.new(shape: AssociationFilterOperatorType, required: true, location_name: "Type"))
    AssociationExecutionFilter.struct_class = Types::AssociationExecutionFilter

    AssociationExecutionFilterList.member = Shapes::ShapeRef.new(shape: AssociationExecutionFilter)

    AssociationExecutionTarget.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationExecutionTarget.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationExecutionTarget.add_member(:execution_id, Shapes::ShapeRef.new(shape: AssociationExecutionId, location_name: "ExecutionId"))
    AssociationExecutionTarget.add_member(:resource_id, Shapes::ShapeRef.new(shape: AssociationResourceId, location_name: "ResourceId"))
    AssociationExecutionTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: AssociationResourceType, location_name: "ResourceType"))
    AssociationExecutionTarget.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    AssociationExecutionTarget.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    AssociationExecutionTarget.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    AssociationExecutionTarget.add_member(:output_source, Shapes::ShapeRef.new(shape: OutputSource, location_name: "OutputSource"))
    AssociationExecutionTarget.struct_class = Types::AssociationExecutionTarget

    AssociationExecutionTargetsFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilterKey, required: true, location_name: "Key"))
    AssociationExecutionTargetsFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilterValue, required: true, location_name: "Value"))
    AssociationExecutionTargetsFilter.struct_class = Types::AssociationExecutionTargetsFilter

    AssociationExecutionTargetsFilterList.member = Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilter)

    AssociationExecutionTargetsList.member = Shapes::ShapeRef.new(shape: AssociationExecutionTarget)

    AssociationExecutionsList.member = Shapes::ShapeRef.new(shape: AssociationExecution)

    AssociationFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationFilterKey, required: true, location_name: "key"))
    AssociationFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationFilterValue, required: true, location_name: "value"))
    AssociationFilter.struct_class = Types::AssociationFilter

    AssociationFilterList.member = Shapes::ShapeRef.new(shape: AssociationFilter)

    AssociationIdList.member = Shapes::ShapeRef.new(shape: AssociationId)

    AssociationList.member = Shapes::ShapeRef.new(shape: Association)

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

    AssociationVersionInfo.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationVersionInfo.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationVersionInfo.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    AssociationVersionInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    AssociationVersionInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AssociationVersionInfo.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    AssociationVersionInfo.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AssociationVersionInfo.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    AssociationVersionInfo.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    AssociationVersionInfo.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    AssociationVersionInfo.struct_class = Types::AssociationVersionInfo

    AssociationVersionList.member = Shapes::ShapeRef.new(shape: AssociationVersionInfo)

    AutomationExecution.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    AutomationExecution.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    AutomationExecution.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AutomationExecution.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    AutomationExecution.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    AutomationExecution.add_member(:automation_execution_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "AutomationExecutionStatus"))
    AutomationExecution.add_member(:step_executions, Shapes::ShapeRef.new(shape: StepExecutionList, location_name: "StepExecutions"))
    AutomationExecution.add_member(:step_executions_truncated, Shapes::ShapeRef.new(shape: Boolean, location_name: "StepExecutionsTruncated"))
    AutomationExecution.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    AutomationExecution.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    AutomationExecution.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    AutomationExecution.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "Mode"))
    AutomationExecution.add_member(:parent_automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "ParentAutomationExecutionId"))
    AutomationExecution.add_member(:executed_by, Shapes::ShapeRef.new(shape: String, location_name: "ExecutedBy"))
    AutomationExecution.add_member(:current_step_name, Shapes::ShapeRef.new(shape: String, location_name: "CurrentStepName"))
    AutomationExecution.add_member(:current_action, Shapes::ShapeRef.new(shape: String, location_name: "CurrentAction"))
    AutomationExecution.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    AutomationExecution.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AutomationExecution.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    AutomationExecution.add_member(:resolved_targets, Shapes::ShapeRef.new(shape: ResolvedTargets, location_name: "ResolvedTargets"))
    AutomationExecution.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    AutomationExecution.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    AutomationExecution.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "Target"))
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
    AutomationExecutionMetadata.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "Mode"))
    AutomationExecutionMetadata.add_member(:parent_automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "ParentAutomationExecutionId"))
    AutomationExecutionMetadata.add_member(:current_step_name, Shapes::ShapeRef.new(shape: String, location_name: "CurrentStepName"))
    AutomationExecutionMetadata.add_member(:current_action, Shapes::ShapeRef.new(shape: String, location_name: "CurrentAction"))
    AutomationExecutionMetadata.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    AutomationExecutionMetadata.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    AutomationExecutionMetadata.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AutomationExecutionMetadata.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    AutomationExecutionMetadata.add_member(:resolved_targets, Shapes::ShapeRef.new(shape: ResolvedTargets, location_name: "ResolvedTargets"))
    AutomationExecutionMetadata.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    AutomationExecutionMetadata.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    AutomationExecutionMetadata.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "Target"))
    AutomationExecutionMetadata.struct_class = Types::AutomationExecutionMetadata

    AutomationExecutionMetadataList.member = Shapes::ShapeRef.new(shape: AutomationExecutionMetadata)

    AutomationParameterMap.key = Shapes::ShapeRef.new(shape: AutomationParameterKey)
    AutomationParameterMap.value = Shapes::ShapeRef.new(shape: AutomationParameterValueList)

    AutomationParameterValueList.member = Shapes::ShapeRef.new(shape: AutomationParameterValue)

    CancelCommandRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, required: true, location_name: "CommandId"))
    CancelCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    CancelCommandRequest.struct_class = Types::CancelCommandRequest

    CancelCommandResult.struct_class = Types::CancelCommandResult

    CloudWatchOutputConfig.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "CloudWatchLogGroupName"))
    CloudWatchOutputConfig.add_member(:cloud_watch_output_enabled, Shapes::ShapeRef.new(shape: CloudWatchOutputEnabled, location_name: "CloudWatchOutputEnabled"))
    CloudWatchOutputConfig.struct_class = Types::CloudWatchOutputConfig

    Command.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    Command.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    Command.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
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
    Command.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    Command.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    Command.add_member(:target_count, Shapes::ShapeRef.new(shape: TargetCount, location_name: "TargetCount"))
    Command.add_member(:completed_count, Shapes::ShapeRef.new(shape: CompletedCount, location_name: "CompletedCount"))
    Command.add_member(:error_count, Shapes::ShapeRef.new(shape: ErrorCount, location_name: "ErrorCount"))
    Command.add_member(:delivery_timed_out_count, Shapes::ShapeRef.new(shape: DeliveryTimedOutCount, location_name: "DeliveryTimedOutCount"))
    Command.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    Command.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    Command.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
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
    CommandInvocation.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CommandInvocation.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
    CommandInvocation.add_member(:status, Shapes::ShapeRef.new(shape: CommandInvocationStatus, location_name: "Status"))
    CommandInvocation.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    CommandInvocation.add_member(:trace_output, Shapes::ShapeRef.new(shape: InvocationTraceOutput, location_name: "TraceOutput"))
    CommandInvocation.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    CommandInvocation.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    CommandInvocation.add_member(:command_plugins, Shapes::ShapeRef.new(shape: CommandPluginList, location_name: "CommandPlugins"))
    CommandInvocation.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    CommandInvocation.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    CommandInvocation.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
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

    ComplianceExecutionSummary.add_member(:execution_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "ExecutionTime"))
    ComplianceExecutionSummary.add_member(:execution_id, Shapes::ShapeRef.new(shape: ComplianceExecutionId, location_name: "ExecutionId"))
    ComplianceExecutionSummary.add_member(:execution_type, Shapes::ShapeRef.new(shape: ComplianceExecutionType, location_name: "ExecutionType"))
    ComplianceExecutionSummary.struct_class = Types::ComplianceExecutionSummary

    ComplianceItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, location_name: "ComplianceType"))
    ComplianceItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: ComplianceResourceType, location_name: "ResourceType"))
    ComplianceItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: ComplianceResourceId, location_name: "ResourceId"))
    ComplianceItem.add_member(:id, Shapes::ShapeRef.new(shape: ComplianceItemId, location_name: "Id"))
    ComplianceItem.add_member(:title, Shapes::ShapeRef.new(shape: ComplianceItemTitle, location_name: "Title"))
    ComplianceItem.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    ComplianceItem.add_member(:severity, Shapes::ShapeRef.new(shape: ComplianceSeverity, location_name: "Severity"))
    ComplianceItem.add_member(:execution_summary, Shapes::ShapeRef.new(shape: ComplianceExecutionSummary, location_name: "ExecutionSummary"))
    ComplianceItem.add_member(:details, Shapes::ShapeRef.new(shape: ComplianceItemDetails, location_name: "Details"))
    ComplianceItem.struct_class = Types::ComplianceItem

    ComplianceItemDetails.key = Shapes::ShapeRef.new(shape: AttributeName)
    ComplianceItemDetails.value = Shapes::ShapeRef.new(shape: AttributeValue)

    ComplianceItemEntry.add_member(:id, Shapes::ShapeRef.new(shape: ComplianceItemId, location_name: "Id"))
    ComplianceItemEntry.add_member(:title, Shapes::ShapeRef.new(shape: ComplianceItemTitle, location_name: "Title"))
    ComplianceItemEntry.add_member(:severity, Shapes::ShapeRef.new(shape: ComplianceSeverity, required: true, location_name: "Severity"))
    ComplianceItemEntry.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, required: true, location_name: "Status"))
    ComplianceItemEntry.add_member(:details, Shapes::ShapeRef.new(shape: ComplianceItemDetails, location_name: "Details"))
    ComplianceItemEntry.struct_class = Types::ComplianceItemEntry

    ComplianceItemEntryList.member = Shapes::ShapeRef.new(shape: ComplianceItemEntry)

    ComplianceItemList.member = Shapes::ShapeRef.new(shape: ComplianceItem)

    ComplianceResourceIdList.member = Shapes::ShapeRef.new(shape: ComplianceResourceId)

    ComplianceResourceTypeList.member = Shapes::ShapeRef.new(shape: ComplianceResourceType)

    ComplianceStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: ComplianceStringFilterKey, location_name: "Key"))
    ComplianceStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: ComplianceStringFilterValueList, location_name: "Values"))
    ComplianceStringFilter.add_member(:type, Shapes::ShapeRef.new(shape: ComplianceQueryOperatorType, location_name: "Type"))
    ComplianceStringFilter.struct_class = Types::ComplianceStringFilter

    ComplianceStringFilterList.member = Shapes::ShapeRef.new(shape: ComplianceStringFilter)

    ComplianceStringFilterValueList.member = Shapes::ShapeRef.new(shape: ComplianceFilterValue)

    ComplianceSummaryItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, location_name: "ComplianceType"))
    ComplianceSummaryItem.add_member(:compliant_summary, Shapes::ShapeRef.new(shape: CompliantSummary, location_name: "CompliantSummary"))
    ComplianceSummaryItem.add_member(:non_compliant_summary, Shapes::ShapeRef.new(shape: NonCompliantSummary, location_name: "NonCompliantSummary"))
    ComplianceSummaryItem.struct_class = Types::ComplianceSummaryItem

    ComplianceSummaryItemList.member = Shapes::ShapeRef.new(shape: ComplianceSummaryItem)

    CompliantSummary.add_member(:compliant_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "CompliantCount"))
    CompliantSummary.add_member(:severity_summary, Shapes::ShapeRef.new(shape: SeveritySummary, location_name: "SeveritySummary"))
    CompliantSummary.struct_class = Types::CompliantSummary

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

    CreateAssociationBatchRequestEntries.member = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry)

    CreateAssociationBatchRequestEntry.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    CreateAssociationBatchRequestEntry.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CreateAssociationBatchRequestEntry.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAssociationBatchRequestEntry.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CreateAssociationBatchRequestEntry.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    CreateAssociationBatchRequestEntry.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    CreateAssociationBatchRequestEntry.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    CreateAssociationBatchRequestEntry.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
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
    CreateAssociationRequest.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    CreateAssociationRequest.struct_class = Types::CreateAssociationRequest

    CreateAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    CreateAssociationResult.struct_class = Types::CreateAssociationResult

    CreateDocumentRequest.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
    CreateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    CreateDocumentRequest.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    CreateDocumentRequest.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    CreateDocumentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    CreateDocumentRequest.struct_class = Types::CreateDocumentRequest

    CreateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
    CreateDocumentResult.struct_class = Types::CreateDocumentResult

    CreateMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, required: true, location_name: "Name"))
    CreateMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    CreateMaintenanceWindowRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, required: true, location_name: "Schedule"))
    CreateMaintenanceWindowRequest.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, required: true, location_name: "Duration"))
    CreateMaintenanceWindowRequest.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, required: true, location_name: "Cutoff"))
    CreateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, required: true, location_name: "AllowUnassociatedTargets"))
    CreateMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateMaintenanceWindowRequest.struct_class = Types::CreateMaintenanceWindowRequest

    CreateMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    CreateMaintenanceWindowResult.struct_class = Types::CreateMaintenanceWindowResult

    CreatePatchBaselineRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    CreatePatchBaselineRequest.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, required: true, location_name: "Name"))
    CreatePatchBaselineRequest.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    CreatePatchBaselineRequest.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    CreatePatchBaselineRequest.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    CreatePatchBaselineRequest.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    CreatePatchBaselineRequest.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box"=>true}))
    CreatePatchBaselineRequest.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    CreatePatchBaselineRequest.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    CreatePatchBaselineRequest.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    CreatePatchBaselineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreatePatchBaselineRequest.struct_class = Types::CreatePatchBaselineRequest

    CreatePatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    CreatePatchBaselineResult.struct_class = Types::CreatePatchBaselineResult

    CreateResourceDataSyncRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, required: true, location_name: "SyncName"))
    CreateResourceDataSyncRequest.add_member(:s3_destination, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Destination, required: true, location_name: "S3Destination"))
    CreateResourceDataSyncRequest.struct_class = Types::CreateResourceDataSyncRequest

    CreateResourceDataSyncResult.struct_class = Types::CreateResourceDataSyncResult

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

    DeleteInventoryRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    DeleteInventoryRequest.add_member(:schema_delete_option, Shapes::ShapeRef.new(shape: InventorySchemaDeleteOption, location_name: "SchemaDeleteOption"))
    DeleteInventoryRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    DeleteInventoryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DeleteInventoryRequest.struct_class = Types::DeleteInventoryRequest

    DeleteInventoryResult.add_member(:deletion_id, Shapes::ShapeRef.new(shape: InventoryDeletionId, location_name: "DeletionId"))
    DeleteInventoryResult.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    DeleteInventoryResult.add_member(:deletion_summary, Shapes::ShapeRef.new(shape: InventoryDeletionSummary, location_name: "DeletionSummary"))
    DeleteInventoryResult.struct_class = Types::DeleteInventoryResult

    DeleteMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeleteMaintenanceWindowRequest.struct_class = Types::DeleteMaintenanceWindowRequest

    DeleteMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeleteMaintenanceWindowResult.struct_class = Types::DeleteMaintenanceWindowResult

    DeleteParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    DeleteParameterRequest.struct_class = Types::DeleteParameterRequest

    DeleteParameterResult.struct_class = Types::DeleteParameterResult

    DeleteParametersRequest.add_member(:names, Shapes::ShapeRef.new(shape: ParameterNameList, required: true, location_name: "Names"))
    DeleteParametersRequest.struct_class = Types::DeleteParametersRequest

    DeleteParametersResult.add_member(:deleted_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "DeletedParameters"))
    DeleteParametersResult.add_member(:invalid_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "InvalidParameters"))
    DeleteParametersResult.struct_class = Types::DeleteParametersResult

    DeletePatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    DeletePatchBaselineRequest.struct_class = Types::DeletePatchBaselineRequest

    DeletePatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    DeletePatchBaselineResult.struct_class = Types::DeletePatchBaselineResult

    DeleteResourceDataSyncRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, required: true, location_name: "SyncName"))
    DeleteResourceDataSyncRequest.struct_class = Types::DeleteResourceDataSyncRequest

    DeleteResourceDataSyncResult.struct_class = Types::DeleteResourceDataSyncResult

    DeregisterManagedInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
    DeregisterManagedInstanceRequest.struct_class = Types::DeregisterManagedInstanceRequest

    DeregisterManagedInstanceResult.struct_class = Types::DeregisterManagedInstanceResult

    DeregisterPatchBaselineForPatchGroupRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    DeregisterPatchBaselineForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    DeregisterPatchBaselineForPatchGroupRequest.struct_class = Types::DeregisterPatchBaselineForPatchGroupRequest

    DeregisterPatchBaselineForPatchGroupResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    DeregisterPatchBaselineForPatchGroupResult.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    DeregisterPatchBaselineForPatchGroupResult.struct_class = Types::DeregisterPatchBaselineForPatchGroupResult

    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, required: true, location_name: "WindowTargetId"))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:safe, Shapes::ShapeRef.new(shape: Boolean, location_name: "Safe", metadata: {"box"=>true}))
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

    DescribeAssociationExecutionTargetsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    DescribeAssociationExecutionTargetsRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: AssociationExecutionId, required: true, location_name: "ExecutionId"))
    DescribeAssociationExecutionTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilterList, location_name: "Filters"))
    DescribeAssociationExecutionTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeAssociationExecutionTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionTargetsRequest.struct_class = Types::DescribeAssociationExecutionTargetsRequest

    DescribeAssociationExecutionTargetsResult.add_member(:association_execution_targets, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsList, location_name: "AssociationExecutionTargets"))
    DescribeAssociationExecutionTargetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionTargetsResult.struct_class = Types::DescribeAssociationExecutionTargetsResult

    DescribeAssociationExecutionsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    DescribeAssociationExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AssociationExecutionFilterList, location_name: "Filters"))
    DescribeAssociationExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeAssociationExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionsRequest.struct_class = Types::DescribeAssociationExecutionsRequest

    DescribeAssociationExecutionsResult.add_member(:association_executions, Shapes::ShapeRef.new(shape: AssociationExecutionsList, location_name: "AssociationExecutions"))
    DescribeAssociationExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionsResult.struct_class = Types::DescribeAssociationExecutionsResult

    DescribeAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DescribeAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DescribeAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    DescribeAssociationRequest.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
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

    DescribeAutomationStepExecutionsRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    DescribeAutomationStepExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: StepExecutionFilterList, location_name: "Filters"))
    DescribeAutomationStepExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationStepExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeAutomationStepExecutionsRequest.add_member(:reverse_order, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReverseOrder", metadata: {"box"=>true}))
    DescribeAutomationStepExecutionsRequest.struct_class = Types::DescribeAutomationStepExecutionsRequest

    DescribeAutomationStepExecutionsResult.add_member(:step_executions, Shapes::ShapeRef.new(shape: StepExecutionList, location_name: "StepExecutions"))
    DescribeAutomationStepExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationStepExecutionsResult.struct_class = Types::DescribeAutomationStepExecutionsResult

    DescribeAvailablePatchesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribeAvailablePatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeAvailablePatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAvailablePatchesRequest.struct_class = Types::DescribeAvailablePatchesRequest

    DescribeAvailablePatchesResult.add_member(:patches, Shapes::ShapeRef.new(shape: PatchList, location_name: "Patches"))
    DescribeAvailablePatchesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAvailablePatchesResult.struct_class = Types::DescribeAvailablePatchesResult

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

    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectivePatchesForPatchBaselineRequest.struct_class = Types::DescribeEffectivePatchesForPatchBaselineRequest

    DescribeEffectivePatchesForPatchBaselineResult.add_member(:effective_patches, Shapes::ShapeRef.new(shape: EffectivePatchList, location_name: "EffectivePatches"))
    DescribeEffectivePatchesForPatchBaselineResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectivePatchesForPatchBaselineResult.struct_class = Types::DescribeEffectivePatchesForPatchBaselineResult

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

    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InstancePatchStateFilterList, location_name: "Filters"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchComplianceMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeInstancePatchStatesForPatchGroupRequest.struct_class = Types::DescribeInstancePatchStatesForPatchGroupRequest

    DescribeInstancePatchStatesForPatchGroupResult.add_member(:instance_patch_states, Shapes::ShapeRef.new(shape: InstancePatchStatesList, location_name: "InstancePatchStates"))
    DescribeInstancePatchStatesForPatchGroupResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesForPatchGroupResult.struct_class = Types::DescribeInstancePatchStatesForPatchGroupResult

    DescribeInstancePatchStatesRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, required: true, location_name: "InstanceIds"))
    DescribeInstancePatchStatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchComplianceMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeInstancePatchStatesRequest.struct_class = Types::DescribeInstancePatchStatesRequest

    DescribeInstancePatchStatesResult.add_member(:instance_patch_states, Shapes::ShapeRef.new(shape: InstancePatchStateList, location_name: "InstancePatchStates"))
    DescribeInstancePatchStatesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesResult.struct_class = Types::DescribeInstancePatchStatesResult

    DescribeInstancePatchesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DescribeInstancePatchesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribeInstancePatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchComplianceMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeInstancePatchesRequest.struct_class = Types::DescribeInstancePatchesRequest

    DescribeInstancePatchesResult.add_member(:patches, Shapes::ShapeRef.new(shape: PatchComplianceDataList, location_name: "Patches"))
    DescribeInstancePatchesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchesResult.struct_class = Types::DescribeInstancePatchesResult

    DescribeInventoryDeletionsRequest.add_member(:deletion_id, Shapes::ShapeRef.new(shape: InventoryDeletionId, location_name: "DeletionId"))
    DescribeInventoryDeletionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInventoryDeletionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeInventoryDeletionsRequest.struct_class = Types::DescribeInventoryDeletionsRequest

    DescribeInventoryDeletionsResult.add_member(:inventory_deletions, Shapes::ShapeRef.new(shape: InventoryDeletionsList, location_name: "InventoryDeletions"))
    DescribeInventoryDeletionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInventoryDeletionsResult.struct_class = Types::DescribeInventoryDeletionsResult

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
    DescribeParametersRequest.add_member(:parameter_filters, Shapes::ShapeRef.new(shape: ParameterStringFilterList, location_name: "ParameterFilters"))
    DescribeParametersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeParametersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeParametersRequest.struct_class = Types::DescribeParametersRequest

    DescribeParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMetadataList, location_name: "Parameters"))
    DescribeParametersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeParametersResult.struct_class = Types::DescribeParametersResult

    DescribePatchBaselinesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribePatchBaselinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribePatchBaselinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchBaselinesRequest.struct_class = Types::DescribePatchBaselinesRequest

    DescribePatchBaselinesResult.add_member(:baseline_identities, Shapes::ShapeRef.new(shape: PatchBaselineIdentityList, location_name: "BaselineIdentities"))
    DescribePatchBaselinesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchBaselinesResult.struct_class = Types::DescribePatchBaselinesResult

    DescribePatchGroupStateRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    DescribePatchGroupStateRequest.struct_class = Types::DescribePatchGroupStateRequest

    DescribePatchGroupStateResult.add_member(:instances, Shapes::ShapeRef.new(shape: Integer, location_name: "Instances"))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithInstalledPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_other_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithInstalledOtherPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_missing_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithMissingPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_failed_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithFailedPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_not_applicable_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithNotApplicablePatches"))
    DescribePatchGroupStateResult.struct_class = Types::DescribePatchGroupStateResult

    DescribePatchGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribePatchGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribePatchGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchGroupsRequest.struct_class = Types::DescribePatchGroupsRequest

    DescribePatchGroupsResult.add_member(:mappings, Shapes::ShapeRef.new(shape: PatchGroupPatchBaselineMappingList, location_name: "Mappings"))
    DescribePatchGroupsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchGroupsResult.struct_class = Types::DescribePatchGroupsResult

    DescribeSessionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, required: true, location_name: "State"))
    DescribeSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SessionMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSessionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SessionFilterList, location_name: "Filters"))
    DescribeSessionsRequest.struct_class = Types::DescribeSessionsRequest

    DescribeSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionList, location_name: "Sessions"))
    DescribeSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSessionsResponse.struct_class = Types::DescribeSessionsResponse

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
    DocumentDescription.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    DocumentDescription.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    DocumentDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DocumentDescription.struct_class = Types::DocumentDescription

    DocumentFilter.add_member(:key, Shapes::ShapeRef.new(shape: DocumentFilterKey, required: true, location_name: "key"))
    DocumentFilter.add_member(:value, Shapes::ShapeRef.new(shape: DocumentFilterValue, required: true, location_name: "value"))
    DocumentFilter.struct_class = Types::DocumentFilter

    DocumentFilterList.member = Shapes::ShapeRef.new(shape: DocumentFilter)

    DocumentIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DocumentIdentifier.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
    DocumentIdentifier.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
    DocumentIdentifier.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentIdentifier.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    DocumentIdentifier.add_member(:schema_version, Shapes::ShapeRef.new(shape: DocumentSchemaVersion, location_name: "SchemaVersion"))
    DocumentIdentifier.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    DocumentIdentifier.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    DocumentIdentifier.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DocumentIdentifier.struct_class = Types::DocumentIdentifier

    DocumentIdentifierList.member = Shapes::ShapeRef.new(shape: DocumentIdentifier)

    DocumentKeyValuesFilter.add_member(:key, Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterKey, location_name: "Key"))
    DocumentKeyValuesFilter.add_member(:values, Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterValues, location_name: "Values"))
    DocumentKeyValuesFilter.struct_class = Types::DocumentKeyValuesFilter

    DocumentKeyValuesFilterList.member = Shapes::ShapeRef.new(shape: DocumentKeyValuesFilter)

    DocumentKeyValuesFilterValues.member = Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterValue)

    DocumentParameter.add_member(:name, Shapes::ShapeRef.new(shape: DocumentParameterName, location_name: "Name"))
    DocumentParameter.add_member(:type, Shapes::ShapeRef.new(shape: DocumentParameterType, location_name: "Type"))
    DocumentParameter.add_member(:description, Shapes::ShapeRef.new(shape: DocumentParameterDescrption, location_name: "Description"))
    DocumentParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: DocumentParameterDefaultValue, location_name: "DefaultValue"))
    DocumentParameter.struct_class = Types::DocumentParameter

    DocumentParameterList.member = Shapes::ShapeRef.new(shape: DocumentParameter)

    DocumentVersionInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DocumentVersionInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentVersionInfo.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    DocumentVersionInfo.add_member(:is_default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultVersion"))
    DocumentVersionInfo.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    DocumentVersionInfo.struct_class = Types::DocumentVersionInfo

    DocumentVersionList.member = Shapes::ShapeRef.new(shape: DocumentVersionInfo)

    EffectivePatch.add_member(:patch, Shapes::ShapeRef.new(shape: Patch, location_name: "Patch"))
    EffectivePatch.add_member(:patch_status, Shapes::ShapeRef.new(shape: PatchStatus, location_name: "PatchStatus"))
    EffectivePatch.struct_class = Types::EffectivePatch

    EffectivePatchList.member = Shapes::ShapeRef.new(shape: EffectivePatch)

    FailedCreateAssociation.add_member(:entry, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry, location_name: "Entry"))
    FailedCreateAssociation.add_member(:message, Shapes::ShapeRef.new(shape: BatchErrorMessage, location_name: "Message"))
    FailedCreateAssociation.add_member(:fault, Shapes::ShapeRef.new(shape: Fault, location_name: "Fault"))
    FailedCreateAssociation.struct_class = Types::FailedCreateAssociation

    FailedCreateAssociationList.member = Shapes::ShapeRef.new(shape: FailedCreateAssociation)

    FailureDetails.add_member(:failure_stage, Shapes::ShapeRef.new(shape: String, location_name: "FailureStage"))
    FailureDetails.add_member(:failure_type, Shapes::ShapeRef.new(shape: String, location_name: "FailureType"))
    FailureDetails.add_member(:details, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Details"))
    FailureDetails.struct_class = Types::FailureDetails

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
    GetCommandInvocationResult.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
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
    GetCommandInvocationResult.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    GetCommandInvocationResult.struct_class = Types::GetCommandInvocationResult

    GetConnectionStatusRequest.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, required: true, location_name: "Target"))
    GetConnectionStatusRequest.struct_class = Types::GetConnectionStatusRequest

    GetConnectionStatusResponse.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, location_name: "Target"))
    GetConnectionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    GetConnectionStatusResponse.struct_class = Types::GetConnectionStatusResponse

    GetDefaultPatchBaselineRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetDefaultPatchBaselineRequest.struct_class = Types::GetDefaultPatchBaselineRequest

    GetDefaultPatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    GetDefaultPatchBaselineResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetDefaultPatchBaselineResult.struct_class = Types::GetDefaultPatchBaselineResult

    GetDeployablePatchSnapshotForInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    GetDeployablePatchSnapshotForInstanceRequest.struct_class = Types::GetDeployablePatchSnapshotForInstanceRequest

    GetDeployablePatchSnapshotForInstanceResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:snapshot_download_url, Shapes::ShapeRef.new(shape: SnapshotDownloadUrl, location_name: "SnapshotDownloadUrl"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:product, Shapes::ShapeRef.new(shape: Product, location_name: "Product"))
    GetDeployablePatchSnapshotForInstanceResult.struct_class = Types::GetDeployablePatchSnapshotForInstanceResult

    GetDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    GetDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetDocumentRequest.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    GetDocumentRequest.struct_class = Types::GetDocumentRequest

    GetDocumentResult.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    GetDocumentResult.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetDocumentResult.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
    GetDocumentResult.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    GetDocumentResult.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    GetDocumentResult.struct_class = Types::GetDocumentResult

    GetInventoryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: "Filters"))
    GetInventoryRequest.add_member(:aggregators, Shapes::ShapeRef.new(shape: InventoryAggregatorList, location_name: "Aggregators"))
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
    GetInventorySchemaRequest.add_member(:aggregator, Shapes::ShapeRef.new(shape: AggregatorSchemaOnly, location_name: "Aggregator"))
    GetInventorySchemaRequest.add_member(:sub_type, Shapes::ShapeRef.new(shape: IsSubTypeSchema, location_name: "SubType", metadata: {"box"=>true}))
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

    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, required: true, location_name: "TaskId"))
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:invocation_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationId, required: true, location_name: "InvocationId"))
    GetMaintenanceWindowExecutionTaskInvocationRequest.struct_class = Types::GetMaintenanceWindowExecutionTaskInvocationRequest

    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:invocation_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationId, location_name: "InvocationId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskExecutionId, location_name: "ExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationParameters, location_name: "Parameters"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskTargetId, location_name: "WindowTargetId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.struct_class = Types::GetMaintenanceWindowExecutionTaskInvocationResult

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
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionTaskResult.struct_class = Types::GetMaintenanceWindowExecutionTaskResult

    GetMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    GetMaintenanceWindowRequest.struct_class = Types::GetMaintenanceWindowRequest

    GetMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    GetMaintenanceWindowResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    GetMaintenanceWindowResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    GetMaintenanceWindowResult.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    GetMaintenanceWindowResult.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    GetMaintenanceWindowResult.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    GetMaintenanceWindowResult.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets"))
    GetMaintenanceWindowResult.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    GetMaintenanceWindowResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    GetMaintenanceWindowResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    GetMaintenanceWindowResult.struct_class = Types::GetMaintenanceWindowResult

    GetMaintenanceWindowTaskRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    GetMaintenanceWindowTaskRequest.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, required: true, location_name: "WindowTaskId"))
    GetMaintenanceWindowTaskRequest.struct_class = Types::GetMaintenanceWindowTaskRequest

    GetMaintenanceWindowTaskResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    GetMaintenanceWindowTaskResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    GetMaintenanceWindowTaskResult.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    GetMaintenanceWindowTaskResult.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    GetMaintenanceWindowTaskResult.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    GetMaintenanceWindowTaskResult.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    GetMaintenanceWindowTaskResult.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    GetMaintenanceWindowTaskResult.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    GetMaintenanceWindowTaskResult.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    GetMaintenanceWindowTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    GetMaintenanceWindowTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    GetMaintenanceWindowTaskResult.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    GetMaintenanceWindowTaskResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    GetMaintenanceWindowTaskResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    GetMaintenanceWindowTaskResult.struct_class = Types::GetMaintenanceWindowTaskResult

    GetParameterHistoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    GetParameterHistoryRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box"=>true}))
    GetParameterHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetParameterHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParameterHistoryRequest.struct_class = Types::GetParameterHistoryRequest

    GetParameterHistoryResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterHistoryList, location_name: "Parameters"))
    GetParameterHistoryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParameterHistoryResult.struct_class = Types::GetParameterHistoryResult

    GetParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    GetParameterRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box"=>true}))
    GetParameterRequest.struct_class = Types::GetParameterRequest

    GetParameterResult.add_member(:parameter, Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter"))
    GetParameterResult.struct_class = Types::GetParameterResult

    GetParametersByPathRequest.add_member(:path, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Path"))
    GetParametersByPathRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: Boolean, location_name: "Recursive", metadata: {"box"=>true}))
    GetParametersByPathRequest.add_member(:parameter_filters, Shapes::ShapeRef.new(shape: ParameterStringFilterList, location_name: "ParameterFilters"))
    GetParametersByPathRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box"=>true}))
    GetParametersByPathRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetParametersByPathMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetParametersByPathRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParametersByPathRequest.struct_class = Types::GetParametersByPathRequest

    GetParametersByPathResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    GetParametersByPathResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParametersByPathResult.struct_class = Types::GetParametersByPathResult

    GetParametersRequest.add_member(:names, Shapes::ShapeRef.new(shape: ParameterNameList, required: true, location_name: "Names"))
    GetParametersRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box"=>true}))
    GetParametersRequest.struct_class = Types::GetParametersRequest

    GetParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    GetParametersResult.add_member(:invalid_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "InvalidParameters"))
    GetParametersResult.struct_class = Types::GetParametersResult

    GetPatchBaselineForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    GetPatchBaselineForPatchGroupRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetPatchBaselineForPatchGroupRequest.struct_class = Types::GetPatchBaselineForPatchGroupRequest

    GetPatchBaselineForPatchGroupResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    GetPatchBaselineForPatchGroupResult.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    GetPatchBaselineForPatchGroupResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetPatchBaselineForPatchGroupResult.struct_class = Types::GetPatchBaselineForPatchGroupResult

    GetPatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    GetPatchBaselineRequest.struct_class = Types::GetPatchBaselineRequest

    GetPatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    GetPatchBaselineResult.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "Name"))
    GetPatchBaselineResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetPatchBaselineResult.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    GetPatchBaselineResult.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    GetPatchBaselineResult.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    GetPatchBaselineResult.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    GetPatchBaselineResult.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box"=>true}))
    GetPatchBaselineResult.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    GetPatchBaselineResult.add_member(:patch_groups, Shapes::ShapeRef.new(shape: PatchGroupList, location_name: "PatchGroups"))
    GetPatchBaselineResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    GetPatchBaselineResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    GetPatchBaselineResult.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    GetPatchBaselineResult.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    GetPatchBaselineResult.struct_class = Types::GetPatchBaselineResult

    InstanceAggregatedAssociationOverview.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    InstanceAggregatedAssociationOverview.add_member(:instance_association_status_aggregated_count, Shapes::ShapeRef.new(shape: InstanceAssociationStatusAggregatedCount, location_name: "InstanceAssociationStatusAggregatedCount"))
    InstanceAggregatedAssociationOverview.struct_class = Types::InstanceAggregatedAssociationOverview

    InstanceAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    InstanceAssociation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAssociation.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
    InstanceAssociation.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
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
    InstanceAssociationStatusInfo.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    InstanceAssociationStatusInfo.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAssociationStatusInfo.add_member(:execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionDate"))
    InstanceAssociationStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    InstanceAssociationStatusInfo.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    InstanceAssociationStatusInfo.add_member(:execution_summary, Shapes::ShapeRef.new(shape: InstanceAssociationExecutionSummary, location_name: "ExecutionSummary"))
    InstanceAssociationStatusInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: AgentErrorCode, location_name: "ErrorCode"))
    InstanceAssociationStatusInfo.add_member(:output_url, Shapes::ShapeRef.new(shape: InstanceAssociationOutputUrl, location_name: "OutputUrl"))
    InstanceAssociationStatusInfo.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
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

    InstanceInformationFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationFilter)

    InstanceInformationFilterValueSet.member = Shapes::ShapeRef.new(shape: InstanceInformationFilterValue)

    InstanceInformationList.member = Shapes::ShapeRef.new(shape: InstanceInformation)

    InstanceInformationStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstanceInformationStringFilterKey, required: true, location_name: "Key"))
    InstanceInformationStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: InstanceInformationFilterValueSet, required: true, location_name: "Values"))
    InstanceInformationStringFilter.struct_class = Types::InstanceInformationStringFilter

    InstanceInformationStringFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationStringFilter)

    InstancePatchState.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    InstancePatchState.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    InstancePatchState.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    InstancePatchState.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    InstancePatchState.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    InstancePatchState.add_member(:installed_count, Shapes::ShapeRef.new(shape: PatchInstalledCount, location_name: "InstalledCount"))
    InstancePatchState.add_member(:installed_other_count, Shapes::ShapeRef.new(shape: PatchInstalledOtherCount, location_name: "InstalledOtherCount"))
    InstancePatchState.add_member(:missing_count, Shapes::ShapeRef.new(shape: PatchMissingCount, location_name: "MissingCount"))
    InstancePatchState.add_member(:failed_count, Shapes::ShapeRef.new(shape: PatchFailedCount, location_name: "FailedCount"))
    InstancePatchState.add_member(:not_applicable_count, Shapes::ShapeRef.new(shape: PatchNotApplicableCount, location_name: "NotApplicableCount"))
    InstancePatchState.add_member(:operation_start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "OperationStartTime"))
    InstancePatchState.add_member(:operation_end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "OperationEndTime"))
    InstancePatchState.add_member(:operation, Shapes::ShapeRef.new(shape: PatchOperationType, required: true, location_name: "Operation"))
    InstancePatchState.struct_class = Types::InstancePatchState

    InstancePatchStateFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstancePatchStateFilterKey, required: true, location_name: "Key"))
    InstancePatchStateFilter.add_member(:values, Shapes::ShapeRef.new(shape: InstancePatchStateFilterValues, required: true, location_name: "Values"))
    InstancePatchStateFilter.add_member(:type, Shapes::ShapeRef.new(shape: InstancePatchStateOperatorType, required: true, location_name: "Type"))
    InstancePatchStateFilter.struct_class = Types::InstancePatchStateFilter

    InstancePatchStateFilterList.member = Shapes::ShapeRef.new(shape: InstancePatchStateFilter)

    InstancePatchStateFilterValues.member = Shapes::ShapeRef.new(shape: InstancePatchStateFilterValue)

    InstancePatchStateList.member = Shapes::ShapeRef.new(shape: InstancePatchState)

    InstancePatchStatesList.member = Shapes::ShapeRef.new(shape: InstancePatchState)

    InventoryAggregator.add_member(:expression, Shapes::ShapeRef.new(shape: InventoryAggregatorExpression, location_name: "Expression"))
    InventoryAggregator.add_member(:aggregators, Shapes::ShapeRef.new(shape: InventoryAggregatorList, location_name: "Aggregators"))
    InventoryAggregator.add_member(:groups, Shapes::ShapeRef.new(shape: InventoryGroupList, location_name: "Groups"))
    InventoryAggregator.struct_class = Types::InventoryAggregator

    InventoryAggregatorList.member = Shapes::ShapeRef.new(shape: InventoryAggregator)

    InventoryDeletionStatusItem.add_member(:deletion_id, Shapes::ShapeRef.new(shape: InventoryDeletionId, location_name: "DeletionId"))
    InventoryDeletionStatusItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    InventoryDeletionStatusItem.add_member(:deletion_start_time, Shapes::ShapeRef.new(shape: InventoryDeletionStartTime, location_name: "DeletionStartTime"))
    InventoryDeletionStatusItem.add_member(:last_status, Shapes::ShapeRef.new(shape: InventoryDeletionStatus, location_name: "LastStatus"))
    InventoryDeletionStatusItem.add_member(:last_status_message, Shapes::ShapeRef.new(shape: InventoryDeletionLastStatusMessage, location_name: "LastStatusMessage"))
    InventoryDeletionStatusItem.add_member(:deletion_summary, Shapes::ShapeRef.new(shape: InventoryDeletionSummary, location_name: "DeletionSummary"))
    InventoryDeletionStatusItem.add_member(:last_status_update_time, Shapes::ShapeRef.new(shape: InventoryDeletionLastStatusUpdateTime, location_name: "LastStatusUpdateTime"))
    InventoryDeletionStatusItem.struct_class = Types::InventoryDeletionStatusItem

    InventoryDeletionSummary.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    InventoryDeletionSummary.add_member(:remaining_count, Shapes::ShapeRef.new(shape: RemainingCount, location_name: "RemainingCount"))
    InventoryDeletionSummary.add_member(:summary_items, Shapes::ShapeRef.new(shape: InventoryDeletionSummaryItems, location_name: "SummaryItems"))
    InventoryDeletionSummary.struct_class = Types::InventoryDeletionSummary

    InventoryDeletionSummaryItem.add_member(:version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "Version"))
    InventoryDeletionSummaryItem.add_member(:count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "Count"))
    InventoryDeletionSummaryItem.add_member(:remaining_count, Shapes::ShapeRef.new(shape: RemainingCount, location_name: "RemainingCount"))
    InventoryDeletionSummaryItem.struct_class = Types::InventoryDeletionSummaryItem

    InventoryDeletionSummaryItems.member = Shapes::ShapeRef.new(shape: InventoryDeletionSummaryItem)

    InventoryDeletionsList.member = Shapes::ShapeRef.new(shape: InventoryDeletionStatusItem)

    InventoryFilter.add_member(:key, Shapes::ShapeRef.new(shape: InventoryFilterKey, required: true, location_name: "Key"))
    InventoryFilter.add_member(:values, Shapes::ShapeRef.new(shape: InventoryFilterValueList, required: true, location_name: "Values"))
    InventoryFilter.add_member(:type, Shapes::ShapeRef.new(shape: InventoryQueryOperatorType, location_name: "Type"))
    InventoryFilter.struct_class = Types::InventoryFilter

    InventoryFilterList.member = Shapes::ShapeRef.new(shape: InventoryFilter)

    InventoryFilterValueList.member = Shapes::ShapeRef.new(shape: InventoryFilterValue)

    InventoryGroup.add_member(:name, Shapes::ShapeRef.new(shape: InventoryGroupName, required: true, location_name: "Name"))
    InventoryGroup.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, required: true, location_name: "Filters"))
    InventoryGroup.struct_class = Types::InventoryGroup

    InventoryGroupList.member = Shapes::ShapeRef.new(shape: InventoryGroup)

    InventoryItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryItem.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, required: true, location_name: "SchemaVersion"))
    InventoryItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, required: true, location_name: "CaptureTime"))
    InventoryItem.add_member(:content_hash, Shapes::ShapeRef.new(shape: InventoryItemContentHash, location_name: "ContentHash"))
    InventoryItem.add_member(:content, Shapes::ShapeRef.new(shape: InventoryItemEntryList, location_name: "Content"))
    InventoryItem.add_member(:context, Shapes::ShapeRef.new(shape: InventoryItemContentContext, location_name: "Context"))
    InventoryItem.struct_class = Types::InventoryItem

    InventoryItemAttribute.add_member(:name, Shapes::ShapeRef.new(shape: InventoryItemAttributeName, required: true, location_name: "Name"))
    InventoryItemAttribute.add_member(:data_type, Shapes::ShapeRef.new(shape: InventoryAttributeDataType, required: true, location_name: "DataType"))
    InventoryItemAttribute.struct_class = Types::InventoryItemAttribute

    InventoryItemAttributeList.member = Shapes::ShapeRef.new(shape: InventoryItemAttribute)

    InventoryItemContentContext.key = Shapes::ShapeRef.new(shape: AttributeName)
    InventoryItemContentContext.value = Shapes::ShapeRef.new(shape: AttributeValue)

    InventoryItemEntry.key = Shapes::ShapeRef.new(shape: AttributeName)
    InventoryItemEntry.value = Shapes::ShapeRef.new(shape: AttributeValue)

    InventoryItemEntryList.member = Shapes::ShapeRef.new(shape: InventoryItemEntry)

    InventoryItemList.member = Shapes::ShapeRef.new(shape: InventoryItem)

    InventoryItemSchema.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryItemSchema.add_member(:version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "Version"))
    InventoryItemSchema.add_member(:attributes, Shapes::ShapeRef.new(shape: InventoryItemAttributeList, required: true, location_name: "Attributes"))
    InventoryItemSchema.add_member(:display_name, Shapes::ShapeRef.new(shape: InventoryTypeDisplayName, location_name: "DisplayName"))
    InventoryItemSchema.struct_class = Types::InventoryItemSchema

    InventoryItemSchemaResultList.member = Shapes::ShapeRef.new(shape: InventoryItemSchema)

    InventoryResultEntity.add_member(:id, Shapes::ShapeRef.new(shape: InventoryResultEntityId, location_name: "Id"))
    InventoryResultEntity.add_member(:data, Shapes::ShapeRef.new(shape: InventoryResultItemMap, location_name: "Data"))
    InventoryResultEntity.struct_class = Types::InventoryResultEntity

    InventoryResultEntityList.member = Shapes::ShapeRef.new(shape: InventoryResultEntity)

    InventoryResultItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryResultItem.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, required: true, location_name: "SchemaVersion"))
    InventoryResultItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, location_name: "CaptureTime"))
    InventoryResultItem.add_member(:content_hash, Shapes::ShapeRef.new(shape: InventoryItemContentHash, location_name: "ContentHash"))
    InventoryResultItem.add_member(:content, Shapes::ShapeRef.new(shape: InventoryItemEntryList, required: true, location_name: "Content"))
    InventoryResultItem.struct_class = Types::InventoryResultItem

    InventoryResultItemMap.key = Shapes::ShapeRef.new(shape: InventoryResultItemKey)
    InventoryResultItemMap.value = Shapes::ShapeRef.new(shape: InventoryResultItem)

    KeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    LabelParameterVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    LabelParameterVersionRequest.add_member(:parameter_version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "ParameterVersion", metadata: {"box"=>true}))
    LabelParameterVersionRequest.add_member(:labels, Shapes::ShapeRef.new(shape: ParameterLabelList, required: true, location_name: "Labels"))
    LabelParameterVersionRequest.struct_class = Types::LabelParameterVersionRequest

    LabelParameterVersionResult.add_member(:invalid_labels, Shapes::ShapeRef.new(shape: ParameterLabelList, location_name: "InvalidLabels"))
    LabelParameterVersionResult.struct_class = Types::LabelParameterVersionResult

    ListAssociationVersionsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    ListAssociationVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListAssociationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationVersionsRequest.struct_class = Types::ListAssociationVersionsRequest

    ListAssociationVersionsResult.add_member(:association_versions, Shapes::ShapeRef.new(shape: AssociationVersionList, location_name: "AssociationVersions"))
    ListAssociationVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationVersionsResult.struct_class = Types::ListAssociationVersionsResult

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

    ListComplianceItemsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ComplianceStringFilterList, location_name: "Filters"))
    ListComplianceItemsRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ComplianceResourceIdList, location_name: "ResourceIds"))
    ListComplianceItemsRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ComplianceResourceTypeList, location_name: "ResourceTypes"))
    ListComplianceItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListComplianceItemsRequest.struct_class = Types::ListComplianceItemsRequest

    ListComplianceItemsResult.add_member(:compliance_items, Shapes::ShapeRef.new(shape: ComplianceItemList, location_name: "ComplianceItems"))
    ListComplianceItemsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceItemsResult.struct_class = Types::ListComplianceItemsResult

    ListComplianceSummariesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ComplianceStringFilterList, location_name: "Filters"))
    ListComplianceSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListComplianceSummariesRequest.struct_class = Types::ListComplianceSummariesRequest

    ListComplianceSummariesResult.add_member(:compliance_summary_items, Shapes::ShapeRef.new(shape: ComplianceSummaryItemList, location_name: "ComplianceSummaryItems"))
    ListComplianceSummariesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceSummariesResult.struct_class = Types::ListComplianceSummariesResult

    ListDocumentVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    ListDocumentVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListDocumentVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentVersionsRequest.struct_class = Types::ListDocumentVersionsRequest

    ListDocumentVersionsResult.add_member(:document_versions, Shapes::ShapeRef.new(shape: DocumentVersionList, location_name: "DocumentVersions"))
    ListDocumentVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentVersionsResult.struct_class = Types::ListDocumentVersionsResult

    ListDocumentsRequest.add_member(:document_filter_list, Shapes::ShapeRef.new(shape: DocumentFilterList, location_name: "DocumentFilterList"))
    ListDocumentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterList, location_name: "Filters"))
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

    ListResourceComplianceSummariesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ComplianceStringFilterList, location_name: "Filters"))
    ListResourceComplianceSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceComplianceSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResourceComplianceSummariesRequest.struct_class = Types::ListResourceComplianceSummariesRequest

    ListResourceComplianceSummariesResult.add_member(:resource_compliance_summary_items, Shapes::ShapeRef.new(shape: ResourceComplianceSummaryItemList, location_name: "ResourceComplianceSummaryItems"))
    ListResourceComplianceSummariesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceComplianceSummariesResult.struct_class = Types::ListResourceComplianceSummariesResult

    ListResourceDataSyncRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceDataSyncRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListResourceDataSyncRequest.struct_class = Types::ListResourceDataSyncRequest

    ListResourceDataSyncResult.add_member(:resource_data_sync_items, Shapes::ShapeRef.new(shape: ResourceDataSyncItemList, location_name: "ResourceDataSyncItems"))
    ListResourceDataSyncResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceDataSyncResult.struct_class = Types::ListResourceDataSyncResult

    ListTagsForResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    LoggingInfo.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "S3BucketName"))
    LoggingInfo.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    LoggingInfo.add_member(:s3_region, Shapes::ShapeRef.new(shape: S3Region, required: true, location_name: "S3Region"))
    LoggingInfo.struct_class = Types::LoggingInfo

    MaintenanceWindowAutomationParameters.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    MaintenanceWindowAutomationParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    MaintenanceWindowAutomationParameters.struct_class = Types::MaintenanceWindowAutomationParameters

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
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
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
    MaintenanceWindowIdentity.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    MaintenanceWindowIdentity.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    MaintenanceWindowIdentity.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    MaintenanceWindowIdentity.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    MaintenanceWindowIdentity.struct_class = Types::MaintenanceWindowIdentity

    MaintenanceWindowIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowIdentity)

    MaintenanceWindowLambdaParameters.add_member(:client_context, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaClientContext, location_name: "ClientContext"))
    MaintenanceWindowLambdaParameters.add_member(:qualifier, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaQualifier, location_name: "Qualifier"))
    MaintenanceWindowLambdaParameters.add_member(:payload, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaPayload, location_name: "Payload"))
    MaintenanceWindowLambdaParameters.struct_class = Types::MaintenanceWindowLambdaParameters

    MaintenanceWindowRunCommandParameters.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    MaintenanceWindowRunCommandParameters.add_member(:document_hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "DocumentHash"))
    MaintenanceWindowRunCommandParameters.add_member(:document_hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "DocumentHashType"))
    MaintenanceWindowRunCommandParameters.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    MaintenanceWindowRunCommandParameters.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    MaintenanceWindowRunCommandParameters.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    MaintenanceWindowRunCommandParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    MaintenanceWindowRunCommandParameters.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    MaintenanceWindowRunCommandParameters.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds", metadata: {"box"=>true}))
    MaintenanceWindowRunCommandParameters.struct_class = Types::MaintenanceWindowRunCommandParameters

    MaintenanceWindowStepFunctionsParameters.add_member(:input, Shapes::ShapeRef.new(shape: MaintenanceWindowStepFunctionsInput, location_name: "Input"))
    MaintenanceWindowStepFunctionsParameters.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowStepFunctionsName, location_name: "Name"))
    MaintenanceWindowStepFunctionsParameters.struct_class = Types::MaintenanceWindowStepFunctionsParameters

    MaintenanceWindowTarget.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowTarget.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    MaintenanceWindowTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, location_name: "ResourceType"))
    MaintenanceWindowTarget.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    MaintenanceWindowTarget.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    MaintenanceWindowTarget.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowTarget.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
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
    MaintenanceWindowTask.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    MaintenanceWindowTask.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    MaintenanceWindowTask.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowTask.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    MaintenanceWindowTask.struct_class = Types::MaintenanceWindowTask

    MaintenanceWindowTaskInvocationParameters.add_member(:run_command, Shapes::ShapeRef.new(shape: MaintenanceWindowRunCommandParameters, location_name: "RunCommand"))
    MaintenanceWindowTaskInvocationParameters.add_member(:automation, Shapes::ShapeRef.new(shape: MaintenanceWindowAutomationParameters, location_name: "Automation"))
    MaintenanceWindowTaskInvocationParameters.add_member(:step_functions, Shapes::ShapeRef.new(shape: MaintenanceWindowStepFunctionsParameters, location_name: "StepFunctions"))
    MaintenanceWindowTaskInvocationParameters.add_member(:lambda, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaParameters, location_name: "Lambda"))
    MaintenanceWindowTaskInvocationParameters.struct_class = Types::MaintenanceWindowTaskInvocationParameters

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

    NonCompliantSummary.add_member(:non_compliant_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "NonCompliantCount"))
    NonCompliantSummary.add_member(:severity_summary, Shapes::ShapeRef.new(shape: SeveritySummary, location_name: "SeveritySummary"))
    NonCompliantSummary.struct_class = Types::NonCompliantSummary

    NormalStringMap.key = Shapes::ShapeRef.new(shape: String)
    NormalStringMap.value = Shapes::ShapeRef.new(shape: String)

    NotificationConfig.add_member(:notification_arn, Shapes::ShapeRef.new(shape: NotificationArn, location_name: "NotificationArn"))
    NotificationConfig.add_member(:notification_events, Shapes::ShapeRef.new(shape: NotificationEventList, location_name: "NotificationEvents"))
    NotificationConfig.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, location_name: "NotificationType"))
    NotificationConfig.struct_class = Types::NotificationConfig

    NotificationEventList.member = Shapes::ShapeRef.new(shape: NotificationEvent)

    OutputSource.add_member(:output_source_id, Shapes::ShapeRef.new(shape: OutputSourceId, location_name: "OutputSourceId"))
    OutputSource.add_member(:output_source_type, Shapes::ShapeRef.new(shape: OutputSourceType, location_name: "OutputSourceType"))
    OutputSource.struct_class = Types::OutputSource

    Parameter.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    Parameter.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    Parameter.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, location_name: "Value"))
    Parameter.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    Parameter.add_member(:selector, Shapes::ShapeRef.new(shape: PSParameterSelector, location_name: "Selector"))
    Parameter.add_member(:source_result, Shapes::ShapeRef.new(shape: String, location_name: "SourceResult"))
    Parameter.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    Parameter.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    Parameter.struct_class = Types::Parameter

    ParameterHistory.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    ParameterHistory.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    ParameterHistory.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    ParameterHistory.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ParameterHistory.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ParameterHistory.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    ParameterHistory.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, location_name: "Value"))
    ParameterHistory.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: AllowedPattern, location_name: "AllowedPattern"))
    ParameterHistory.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    ParameterHistory.add_member(:labels, Shapes::ShapeRef.new(shape: ParameterLabelList, location_name: "Labels"))
    ParameterHistory.struct_class = Types::ParameterHistory

    ParameterHistoryList.member = Shapes::ShapeRef.new(shape: ParameterHistory)

    ParameterLabelList.member = Shapes::ShapeRef.new(shape: ParameterLabel)

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    ParameterMetadata.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    ParameterMetadata.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    ParameterMetadata.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    ParameterMetadata.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ParameterMetadata.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ParameterMetadata.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    ParameterMetadata.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: AllowedPattern, location_name: "AllowedPattern"))
    ParameterMetadata.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    ParameterMetadata.struct_class = Types::ParameterMetadata

    ParameterMetadataList.member = Shapes::ShapeRef.new(shape: ParameterMetadata)

    ParameterNameList.member = Shapes::ShapeRef.new(shape: PSParameterName)

    ParameterStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: ParameterStringFilterKey, required: true, location_name: "Key"))
    ParameterStringFilter.add_member(:option, Shapes::ShapeRef.new(shape: ParameterStringQueryOption, location_name: "Option"))
    ParameterStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: ParameterStringFilterValueList, location_name: "Values"))
    ParameterStringFilter.struct_class = Types::ParameterStringFilter

    ParameterStringFilterList.member = Shapes::ShapeRef.new(shape: ParameterStringFilter)

    ParameterStringFilterValueList.member = Shapes::ShapeRef.new(shape: ParameterStringFilterValue)

    ParameterValueList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    Parameters.key = Shapes::ShapeRef.new(shape: ParameterName)
    Parameters.value = Shapes::ShapeRef.new(shape: ParameterValueList)

    ParametersFilter.add_member(:key, Shapes::ShapeRef.new(shape: ParametersFilterKey, required: true, location_name: "Key"))
    ParametersFilter.add_member(:values, Shapes::ShapeRef.new(shape: ParametersFilterValueList, required: true, location_name: "Values"))
    ParametersFilter.struct_class = Types::ParametersFilter

    ParametersFilterList.member = Shapes::ShapeRef.new(shape: ParametersFilter)

    ParametersFilterValueList.member = Shapes::ShapeRef.new(shape: ParametersFilterValue)

    Patch.add_member(:id, Shapes::ShapeRef.new(shape: PatchId, location_name: "Id"))
    Patch.add_member(:release_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ReleaseDate"))
    Patch.add_member(:title, Shapes::ShapeRef.new(shape: PatchTitle, location_name: "Title"))
    Patch.add_member(:description, Shapes::ShapeRef.new(shape: PatchDescription, location_name: "Description"))
    Patch.add_member(:content_url, Shapes::ShapeRef.new(shape: PatchContentUrl, location_name: "ContentUrl"))
    Patch.add_member(:vendor, Shapes::ShapeRef.new(shape: PatchVendor, location_name: "Vendor"))
    Patch.add_member(:product_family, Shapes::ShapeRef.new(shape: PatchProductFamily, location_name: "ProductFamily"))
    Patch.add_member(:product, Shapes::ShapeRef.new(shape: PatchProduct, location_name: "Product"))
    Patch.add_member(:classification, Shapes::ShapeRef.new(shape: PatchClassification, location_name: "Classification"))
    Patch.add_member(:msrc_severity, Shapes::ShapeRef.new(shape: PatchMsrcSeverity, location_name: "MsrcSeverity"))
    Patch.add_member(:kb_number, Shapes::ShapeRef.new(shape: PatchKbNumber, location_name: "KbNumber"))
    Patch.add_member(:msrc_number, Shapes::ShapeRef.new(shape: PatchMsrcNumber, location_name: "MsrcNumber"))
    Patch.add_member(:language, Shapes::ShapeRef.new(shape: PatchLanguage, location_name: "Language"))
    Patch.struct_class = Types::Patch

    PatchBaselineIdentity.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    PatchBaselineIdentity.add_member(:baseline_name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "BaselineName"))
    PatchBaselineIdentity.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    PatchBaselineIdentity.add_member(:baseline_description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "BaselineDescription"))
    PatchBaselineIdentity.add_member(:default_baseline, Shapes::ShapeRef.new(shape: DefaultBaseline, location_name: "DefaultBaseline"))
    PatchBaselineIdentity.struct_class = Types::PatchBaselineIdentity

    PatchBaselineIdentityList.member = Shapes::ShapeRef.new(shape: PatchBaselineIdentity)

    PatchComplianceData.add_member(:title, Shapes::ShapeRef.new(shape: PatchTitle, required: true, location_name: "Title"))
    PatchComplianceData.add_member(:kb_id, Shapes::ShapeRef.new(shape: PatchKbNumber, required: true, location_name: "KBId"))
    PatchComplianceData.add_member(:classification, Shapes::ShapeRef.new(shape: PatchClassification, required: true, location_name: "Classification"))
    PatchComplianceData.add_member(:severity, Shapes::ShapeRef.new(shape: PatchSeverity, required: true, location_name: "Severity"))
    PatchComplianceData.add_member(:state, Shapes::ShapeRef.new(shape: PatchComplianceDataState, required: true, location_name: "State"))
    PatchComplianceData.add_member(:installed_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "InstalledTime"))
    PatchComplianceData.struct_class = Types::PatchComplianceData

    PatchComplianceDataList.member = Shapes::ShapeRef.new(shape: PatchComplianceData)

    PatchFilter.add_member(:key, Shapes::ShapeRef.new(shape: PatchFilterKey, required: true, location_name: "Key"))
    PatchFilter.add_member(:values, Shapes::ShapeRef.new(shape: PatchFilterValueList, required: true, location_name: "Values"))
    PatchFilter.struct_class = Types::PatchFilter

    PatchFilterGroup.add_member(:patch_filters, Shapes::ShapeRef.new(shape: PatchFilterList, required: true, location_name: "PatchFilters"))
    PatchFilterGroup.struct_class = Types::PatchFilterGroup

    PatchFilterList.member = Shapes::ShapeRef.new(shape: PatchFilter)

    PatchFilterValueList.member = Shapes::ShapeRef.new(shape: PatchFilterValue)

    PatchGroupList.member = Shapes::ShapeRef.new(shape: PatchGroup)

    PatchGroupPatchBaselineMapping.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    PatchGroupPatchBaselineMapping.add_member(:baseline_identity, Shapes::ShapeRef.new(shape: PatchBaselineIdentity, location_name: "BaselineIdentity"))
    PatchGroupPatchBaselineMapping.struct_class = Types::PatchGroupPatchBaselineMapping

    PatchGroupPatchBaselineMappingList.member = Shapes::ShapeRef.new(shape: PatchGroupPatchBaselineMapping)

    PatchIdList.member = Shapes::ShapeRef.new(shape: PatchId)

    PatchList.member = Shapes::ShapeRef.new(shape: Patch)

    PatchOrchestratorFilter.add_member(:key, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterKey, location_name: "Key"))
    PatchOrchestratorFilter.add_member(:values, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterValues, location_name: "Values"))
    PatchOrchestratorFilter.struct_class = Types::PatchOrchestratorFilter

    PatchOrchestratorFilterList.member = Shapes::ShapeRef.new(shape: PatchOrchestratorFilter)

    PatchOrchestratorFilterValues.member = Shapes::ShapeRef.new(shape: PatchOrchestratorFilterValue)

    PatchRule.add_member(:patch_filter_group, Shapes::ShapeRef.new(shape: PatchFilterGroup, required: true, location_name: "PatchFilterGroup"))
    PatchRule.add_member(:compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ComplianceLevel"))
    PatchRule.add_member(:approve_after_days, Shapes::ShapeRef.new(shape: ApproveAfterDays, required: true, location_name: "ApproveAfterDays", metadata: {"box"=>true}))
    PatchRule.add_member(:enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNonSecurity", metadata: {"box"=>true}))
    PatchRule.struct_class = Types::PatchRule

    PatchRuleGroup.add_member(:patch_rules, Shapes::ShapeRef.new(shape: PatchRuleList, required: true, location_name: "PatchRules"))
    PatchRuleGroup.struct_class = Types::PatchRuleGroup

    PatchRuleList.member = Shapes::ShapeRef.new(shape: PatchRule)

    PatchSource.add_member(:name, Shapes::ShapeRef.new(shape: PatchSourceName, required: true, location_name: "Name"))
    PatchSource.add_member(:products, Shapes::ShapeRef.new(shape: PatchSourceProductList, required: true, location_name: "Products"))
    PatchSource.add_member(:configuration, Shapes::ShapeRef.new(shape: PatchSourceConfiguration, required: true, location_name: "Configuration"))
    PatchSource.struct_class = Types::PatchSource

    PatchSourceList.member = Shapes::ShapeRef.new(shape: PatchSource)

    PatchSourceProductList.member = Shapes::ShapeRef.new(shape: PatchSourceProduct)

    PatchStatus.add_member(:deployment_status, Shapes::ShapeRef.new(shape: PatchDeploymentStatus, location_name: "DeploymentStatus"))
    PatchStatus.add_member(:compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ComplianceLevel"))
    PatchStatus.add_member(:approval_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ApprovalDate"))
    PatchStatus.struct_class = Types::PatchStatus

    PlatformTypeList.member = Shapes::ShapeRef.new(shape: PlatformType)

    PutComplianceItemsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ComplianceResourceId, required: true, location_name: "ResourceId"))
    PutComplianceItemsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ComplianceResourceType, required: true, location_name: "ResourceType"))
    PutComplianceItemsRequest.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, required: true, location_name: "ComplianceType"))
    PutComplianceItemsRequest.add_member(:execution_summary, Shapes::ShapeRef.new(shape: ComplianceExecutionSummary, required: true, location_name: "ExecutionSummary"))
    PutComplianceItemsRequest.add_member(:items, Shapes::ShapeRef.new(shape: ComplianceItemEntryList, required: true, location_name: "Items"))
    PutComplianceItemsRequest.add_member(:item_content_hash, Shapes::ShapeRef.new(shape: ComplianceItemContentHash, location_name: "ItemContentHash"))
    PutComplianceItemsRequest.struct_class = Types::PutComplianceItemsRequest

    PutComplianceItemsResult.struct_class = Types::PutComplianceItemsResult

    PutInventoryRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    PutInventoryRequest.add_member(:items, Shapes::ShapeRef.new(shape: InventoryItemList, required: true, location_name: "Items"))
    PutInventoryRequest.struct_class = Types::PutInventoryRequest

    PutInventoryResult.add_member(:message, Shapes::ShapeRef.new(shape: PutInventoryMessage, location_name: "Message"))
    PutInventoryResult.struct_class = Types::PutInventoryResult

    PutParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    PutParameterRequest.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    PutParameterRequest.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, required: true, location_name: "Value"))
    PutParameterRequest.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "Type"))
    PutParameterRequest.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    PutParameterRequest.add_member(:overwrite, Shapes::ShapeRef.new(shape: Boolean, location_name: "Overwrite", metadata: {"box"=>true}))
    PutParameterRequest.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: AllowedPattern, location_name: "AllowedPattern"))
    PutParameterRequest.struct_class = Types::PutParameterRequest

    PutParameterResult.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    PutParameterResult.struct_class = Types::PutParameterResult

    RegisterDefaultPatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    RegisterDefaultPatchBaselineRequest.struct_class = Types::RegisterDefaultPatchBaselineRequest

    RegisterDefaultPatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    RegisterDefaultPatchBaselineResult.struct_class = Types::RegisterDefaultPatchBaselineResult

    RegisterPatchBaselineForPatchGroupRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    RegisterPatchBaselineForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    RegisterPatchBaselineForPatchGroupRequest.struct_class = Types::RegisterPatchBaselineForPatchGroupRequest

    RegisterPatchBaselineForPatchGroupResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    RegisterPatchBaselineForPatchGroupResult.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    RegisterPatchBaselineForPatchGroupResult.struct_class = Types::RegisterPatchBaselineForPatchGroupResult

    RegisterTargetWithMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, required: true, location_name: "ResourceType"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RegisterTargetWithMaintenanceWindowRequest.struct_class = Types::RegisterTargetWithMaintenanceWindowRequest

    RegisterTargetWithMaintenanceWindowResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    RegisterTargetWithMaintenanceWindowResult.struct_class = Types::RegisterTargetWithMaintenanceWindowResult

    RegisterTaskWithMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, required: true, location_name: "TaskArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, required: true, location_name: "TaskType"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority", metadata: {"box"=>true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, required: true, location_name: "MaxConcurrency"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, required: true, location_name: "MaxErrors"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RegisterTaskWithMaintenanceWindowRequest.struct_class = Types::RegisterTaskWithMaintenanceWindowRequest

    RegisterTaskWithMaintenanceWindowResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    RegisterTaskWithMaintenanceWindowResult.struct_class = Types::RegisterTaskWithMaintenanceWindowResult

    RemoveTagsFromResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    RemoveTagsFromResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceRequest.struct_class = Types::RemoveTagsFromResourceRequest

    RemoveTagsFromResourceResult.struct_class = Types::RemoveTagsFromResourceResult

    ResolvedTargets.add_member(:parameter_values, Shapes::ShapeRef.new(shape: TargetParameterList, location_name: "ParameterValues"))
    ResolvedTargets.add_member(:truncated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Truncated"))
    ResolvedTargets.struct_class = Types::ResolvedTargets

    ResourceComplianceSummaryItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, location_name: "ComplianceType"))
    ResourceComplianceSummaryItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: ComplianceResourceType, location_name: "ResourceType"))
    ResourceComplianceSummaryItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: ComplianceResourceId, location_name: "ResourceId"))
    ResourceComplianceSummaryItem.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    ResourceComplianceSummaryItem.add_member(:overall_severity, Shapes::ShapeRef.new(shape: ComplianceSeverity, location_name: "OverallSeverity"))
    ResourceComplianceSummaryItem.add_member(:execution_summary, Shapes::ShapeRef.new(shape: ComplianceExecutionSummary, location_name: "ExecutionSummary"))
    ResourceComplianceSummaryItem.add_member(:compliant_summary, Shapes::ShapeRef.new(shape: CompliantSummary, location_name: "CompliantSummary"))
    ResourceComplianceSummaryItem.add_member(:non_compliant_summary, Shapes::ShapeRef.new(shape: NonCompliantSummary, location_name: "NonCompliantSummary"))
    ResourceComplianceSummaryItem.struct_class = Types::ResourceComplianceSummaryItem

    ResourceComplianceSummaryItemList.member = Shapes::ShapeRef.new(shape: ResourceComplianceSummaryItem)

    ResourceDataSyncItem.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    ResourceDataSyncItem.add_member(:s3_destination, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Destination, location_name: "S3Destination"))
    ResourceDataSyncItem.add_member(:last_sync_time, Shapes::ShapeRef.new(shape: LastResourceDataSyncTime, location_name: "LastSyncTime"))
    ResourceDataSyncItem.add_member(:last_successful_sync_time, Shapes::ShapeRef.new(shape: LastSuccessfulResourceDataSyncTime, location_name: "LastSuccessfulSyncTime"))
    ResourceDataSyncItem.add_member(:last_status, Shapes::ShapeRef.new(shape: LastResourceDataSyncStatus, location_name: "LastStatus"))
    ResourceDataSyncItem.add_member(:sync_created_time, Shapes::ShapeRef.new(shape: ResourceDataSyncCreatedTime, location_name: "SyncCreatedTime"))
    ResourceDataSyncItem.add_member(:last_sync_status_message, Shapes::ShapeRef.new(shape: LastResourceDataSyncMessage, location_name: "LastSyncStatusMessage"))
    ResourceDataSyncItem.struct_class = Types::ResourceDataSyncItem

    ResourceDataSyncItemList.member = Shapes::ShapeRef.new(shape: ResourceDataSyncItem)

    ResourceDataSyncS3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: ResourceDataSyncS3BucketName, required: true, location_name: "BucketName"))
    ResourceDataSyncS3Destination.add_member(:prefix, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Prefix, location_name: "Prefix"))
    ResourceDataSyncS3Destination.add_member(:sync_format, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Format, required: true, location_name: "SyncFormat"))
    ResourceDataSyncS3Destination.add_member(:region, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Region, required: true, location_name: "Region"))
    ResourceDataSyncS3Destination.add_member(:awskms_key_arn, Shapes::ShapeRef.new(shape: ResourceDataSyncAWSKMSKeyARN, location_name: "AWSKMSKeyARN"))
    ResourceDataSyncS3Destination.struct_class = Types::ResourceDataSyncS3Destination

    ResultAttribute.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    ResultAttribute.struct_class = Types::ResultAttribute

    ResultAttributeList.member = Shapes::ShapeRef.new(shape: ResultAttribute)

    ResumeSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    ResumeSessionRequest.struct_class = Types::ResumeSessionRequest

    ResumeSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    ResumeSessionResponse.add_member(:token_value, Shapes::ShapeRef.new(shape: TokenValue, location_name: "TokenValue"))
    ResumeSessionResponse.add_member(:stream_url, Shapes::ShapeRef.new(shape: StreamUrl, location_name: "StreamUrl"))
    ResumeSessionResponse.struct_class = Types::ResumeSessionResponse

    S3OutputLocation.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    S3OutputLocation.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    S3OutputLocation.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    S3OutputLocation.struct_class = Types::S3OutputLocation

    S3OutputUrl.add_member(:output_url, Shapes::ShapeRef.new(shape: Url, location_name: "OutputUrl"))
    S3OutputUrl.struct_class = Types::S3OutputUrl

    SendAutomationSignalRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    SendAutomationSignalRequest.add_member(:signal_type, Shapes::ShapeRef.new(shape: SignalType, required: true, location_name: "SignalType"))
    SendAutomationSignalRequest.add_member(:payload, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Payload"))
    SendAutomationSignalRequest.struct_class = Types::SendAutomationSignalRequest

    SendAutomationSignalResult.struct_class = Types::SendAutomationSignalResult

    SendCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    SendCommandRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    SendCommandRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    SendCommandRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    SendCommandRequest.add_member(:document_hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "DocumentHash"))
    SendCommandRequest.add_member(:document_hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "DocumentHashType"))
    SendCommandRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds", metadata: {"box"=>true}))
    SendCommandRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    SendCommandRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    SendCommandRequest.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    SendCommandRequest.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    SendCommandRequest.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    SendCommandRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    SendCommandRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    SendCommandRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    SendCommandRequest.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    SendCommandRequest.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    SendCommandRequest.struct_class = Types::SendCommandRequest

    SendCommandResult.add_member(:command, Shapes::ShapeRef.new(shape: Command, location_name: "Command"))
    SendCommandResult.struct_class = Types::SendCommandResult

    Session.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    Session.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, location_name: "Target"))
    Session.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    Session.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartDate"))
    Session.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndDate"))
    Session.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    Session.add_member(:owner, Shapes::ShapeRef.new(shape: SessionOwner, location_name: "Owner"))
    Session.add_member(:details, Shapes::ShapeRef.new(shape: SessionDetails, location_name: "Details"))
    Session.add_member(:output_url, Shapes::ShapeRef.new(shape: SessionManagerOutputUrl, location_name: "OutputUrl"))
    Session.struct_class = Types::Session

    SessionFilter.add_member(:key, Shapes::ShapeRef.new(shape: SessionFilterKey, required: true, location_name: "key"))
    SessionFilter.add_member(:value, Shapes::ShapeRef.new(shape: SessionFilterValue, required: true, location_name: "value"))
    SessionFilter.struct_class = Types::SessionFilter

    SessionFilterList.member = Shapes::ShapeRef.new(shape: SessionFilter)

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    SessionManagerOutputUrl.add_member(:s3_output_url, Shapes::ShapeRef.new(shape: SessionManagerS3OutputUrl, location_name: "S3OutputUrl"))
    SessionManagerOutputUrl.add_member(:cloud_watch_output_url, Shapes::ShapeRef.new(shape: SessionManagerCloudWatchOutputUrl, location_name: "CloudWatchOutputUrl"))
    SessionManagerOutputUrl.struct_class = Types::SessionManagerOutputUrl

    SessionManagerParameterValueList.member = Shapes::ShapeRef.new(shape: SessionManagerParameterValue)

    SessionManagerParameters.key = Shapes::ShapeRef.new(shape: SessionManagerParameterName)
    SessionManagerParameters.value = Shapes::ShapeRef.new(shape: SessionManagerParameterValueList)

    SeveritySummary.add_member(:critical_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "CriticalCount"))
    SeveritySummary.add_member(:high_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "HighCount"))
    SeveritySummary.add_member(:medium_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "MediumCount"))
    SeveritySummary.add_member(:low_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "LowCount"))
    SeveritySummary.add_member(:informational_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "InformationalCount"))
    SeveritySummary.add_member(:unspecified_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "UnspecifiedCount"))
    SeveritySummary.struct_class = Types::SeveritySummary

    StartAssociationsOnceRequest.add_member(:association_ids, Shapes::ShapeRef.new(shape: AssociationIdList, required: true, location_name: "AssociationIds"))
    StartAssociationsOnceRequest.struct_class = Types::StartAssociationsOnceRequest

    StartAssociationsOnceResult.struct_class = Types::StartAssociationsOnceResult

    StartAutomationExecutionRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    StartAutomationExecutionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion", metadata: {"box"=>true}))
    StartAutomationExecutionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    StartAutomationExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken"))
    StartAutomationExecutionRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "Mode"))
    StartAutomationExecutionRequest.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    StartAutomationExecutionRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    StartAutomationExecutionRequest.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    StartAutomationExecutionRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    StartAutomationExecutionRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    StartAutomationExecutionRequest.struct_class = Types::StartAutomationExecutionRequest

    StartAutomationExecutionResult.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    StartAutomationExecutionResult.struct_class = Types::StartAutomationExecutionResult

    StartSessionRequest.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, required: true, location_name: "Target"))
    StartSessionRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "DocumentName"))
    StartSessionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SessionManagerParameters, location_name: "Parameters"))
    StartSessionRequest.struct_class = Types::StartSessionRequest

    StartSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    StartSessionResponse.add_member(:token_value, Shapes::ShapeRef.new(shape: TokenValue, location_name: "TokenValue"))
    StartSessionResponse.add_member(:stream_url, Shapes::ShapeRef.new(shape: StreamUrl, location_name: "StreamUrl"))
    StartSessionResponse.struct_class = Types::StartSessionResponse

    StepExecution.add_member(:step_name, Shapes::ShapeRef.new(shape: String, location_name: "StepName"))
    StepExecution.add_member(:action, Shapes::ShapeRef.new(shape: AutomationActionName, location_name: "Action"))
    StepExecution.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "TimeoutSeconds", metadata: {"box"=>true}))
    StepExecution.add_member(:on_failure, Shapes::ShapeRef.new(shape: String, location_name: "OnFailure"))
    StepExecution.add_member(:max_attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAttempts", metadata: {"box"=>true}))
    StepExecution.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    StepExecution.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    StepExecution.add_member(:step_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "StepStatus"))
    StepExecution.add_member(:response_code, Shapes::ShapeRef.new(shape: String, location_name: "ResponseCode"))
    StepExecution.add_member(:inputs, Shapes::ShapeRef.new(shape: NormalStringMap, location_name: "Inputs"))
    StepExecution.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    StepExecution.add_member(:response, Shapes::ShapeRef.new(shape: String, location_name: "Response"))
    StepExecution.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    StepExecution.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    StepExecution.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: String, location_name: "StepExecutionId"))
    StepExecution.add_member(:overridden_parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "OverriddenParameters"))
    StepExecution.add_member(:is_end, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsEnd", metadata: {"box"=>true}))
    StepExecution.add_member(:next_step, Shapes::ShapeRef.new(shape: String, location_name: "NextStep", metadata: {"box"=>true}))
    StepExecution.add_member(:is_critical, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsCritical", metadata: {"box"=>true}))
    StepExecution.add_member(:valid_next_steps, Shapes::ShapeRef.new(shape: ValidNextStepList, location_name: "ValidNextSteps"))
    StepExecution.struct_class = Types::StepExecution

    StepExecutionFilter.add_member(:key, Shapes::ShapeRef.new(shape: StepExecutionFilterKey, required: true, location_name: "Key"))
    StepExecutionFilter.add_member(:values, Shapes::ShapeRef.new(shape: StepExecutionFilterValueList, required: true, location_name: "Values"))
    StepExecutionFilter.struct_class = Types::StepExecutionFilter

    StepExecutionFilterList.member = Shapes::ShapeRef.new(shape: StepExecutionFilter)

    StepExecutionFilterValueList.member = Shapes::ShapeRef.new(shape: StepExecutionFilterValue)

    StepExecutionList.member = Shapes::ShapeRef.new(shape: StepExecution)

    StopAutomationExecutionRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    StopAutomationExecutionRequest.add_member(:type, Shapes::ShapeRef.new(shape: StopType, location_name: "Type"))
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

    TargetMap.key = Shapes::ShapeRef.new(shape: TargetMapKey)
    TargetMap.value = Shapes::ShapeRef.new(shape: TargetMapValueList)

    TargetMapValueList.member = Shapes::ShapeRef.new(shape: TargetMapValue)

    TargetMaps.member = Shapes::ShapeRef.new(shape: TargetMap)

    TargetParameterList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    TargetValues.member = Shapes::ShapeRef.new(shape: TargetValue)

    Targets.member = Shapes::ShapeRef.new(shape: Target)

    TerminateSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    TerminateSessionRequest.struct_class = Types::TerminateSessionRequest

    TerminateSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    TerminateSessionResponse.struct_class = Types::TerminateSessionResponse

    UpdateAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    UpdateAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateAssociationRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    UpdateAssociationRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    UpdateAssociationRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    UpdateAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    UpdateAssociationRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateAssociationRequest.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    UpdateAssociationRequest.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
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
    UpdateDocumentRequest.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    UpdateDocumentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    UpdateDocumentRequest.struct_class = Types::UpdateDocumentRequest

    UpdateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
    UpdateDocumentResult.struct_class = Types::UpdateDocumentResult

    UpdateMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    UpdateMaintenanceWindowRequest.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box"=>true}))
    UpdateMaintenanceWindowRequest.struct_class = Types::UpdateMaintenanceWindowRequest

    UpdateMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowResult.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    UpdateMaintenanceWindowResult.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    UpdateMaintenanceWindowResult.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    UpdateMaintenanceWindowResult.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets"))
    UpdateMaintenanceWindowResult.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    UpdateMaintenanceWindowResult.struct_class = Types::UpdateMaintenanceWindowResult

    UpdateMaintenanceWindowTargetRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowTargetRequest.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, required: true, location_name: "WindowTargetId"))
    UpdateMaintenanceWindowTargetRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTargetRequest.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    UpdateMaintenanceWindowTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTargetRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box"=>true}))
    UpdateMaintenanceWindowTargetRequest.struct_class = Types::UpdateMaintenanceWindowTargetRequest

    UpdateMaintenanceWindowTargetResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowTargetResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    UpdateMaintenanceWindowTargetResult.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTargetResult.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    UpdateMaintenanceWindowTargetResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTargetResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTargetResult.struct_class = Types::UpdateMaintenanceWindowTargetResult

    UpdateMaintenanceWindowTaskRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowTaskRequest.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, required: true, location_name: "WindowTaskId"))
    UpdateMaintenanceWindowTaskRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    UpdateMaintenanceWindowTaskRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    UpdateMaintenanceWindowTaskRequest.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority", metadata: {"box"=>true}))
    UpdateMaintenanceWindowTaskRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    UpdateMaintenanceWindowTaskRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    UpdateMaintenanceWindowTaskRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    UpdateMaintenanceWindowTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTaskRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box"=>true}))
    UpdateMaintenanceWindowTaskRequest.struct_class = Types::UpdateMaintenanceWindowTaskRequest

    UpdateMaintenanceWindowTaskResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowTaskResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    UpdateMaintenanceWindowTaskResult.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    UpdateMaintenanceWindowTaskResult.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    UpdateMaintenanceWindowTaskResult.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    UpdateMaintenanceWindowTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    UpdateMaintenanceWindowTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    UpdateMaintenanceWindowTaskResult.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    UpdateMaintenanceWindowTaskResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTaskResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTaskResult.struct_class = Types::UpdateMaintenanceWindowTaskResult

    UpdateManagedInstanceRoleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
    UpdateManagedInstanceRoleRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
    UpdateManagedInstanceRoleRequest.struct_class = Types::UpdateManagedInstanceRoleRequest

    UpdateManagedInstanceRoleResult.struct_class = Types::UpdateManagedInstanceRoleResult

    UpdatePatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    UpdatePatchBaselineRequest.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "Name"))
    UpdatePatchBaselineRequest.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    UpdatePatchBaselineRequest.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    UpdatePatchBaselineRequest.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    UpdatePatchBaselineRequest.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    UpdatePatchBaselineRequest.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box"=>true}))
    UpdatePatchBaselineRequest.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    UpdatePatchBaselineRequest.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    UpdatePatchBaselineRequest.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    UpdatePatchBaselineRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box"=>true}))
    UpdatePatchBaselineRequest.struct_class = Types::UpdatePatchBaselineRequest

    UpdatePatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    UpdatePatchBaselineResult.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "Name"))
    UpdatePatchBaselineResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    UpdatePatchBaselineResult.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    UpdatePatchBaselineResult.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    UpdatePatchBaselineResult.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    UpdatePatchBaselineResult.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    UpdatePatchBaselineResult.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box"=>true}))
    UpdatePatchBaselineResult.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    UpdatePatchBaselineResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    UpdatePatchBaselineResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    UpdatePatchBaselineResult.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    UpdatePatchBaselineResult.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    UpdatePatchBaselineResult.struct_class = Types::UpdatePatchBaselineResult

    ValidNextStepList.member = Shapes::ShapeRef.new(shape: ValidNextStep)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-06"

      api.metadata = {
        "apiVersion" => "2014-11-06",
        "endpointPrefix" => "ssm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon SSM",
        "serviceFullName" => "Amazon Simple Systems Manager (SSM)",
        "serviceId" => "SSM",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonSSM",
        "uid" => "ssm-2014-11-06",
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
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
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

      api.add_operation(:create_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncCountExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncInvalidConfigurationException)
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
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
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

      api.add_operation(:delete_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInventoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeleteInventoryParametersException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInventoryRequestException)
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

      api.add_operation(:delete_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncNotFoundException)
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

      api.add_operation(:deregister_patch_baseline_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterPatchBaselineForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterPatchBaselineForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterPatchBaselineForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
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
        o.errors << Shapes::ShapeRef.new(shape: TargetInUseException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidAssociationVersion)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
      end)

      api.add_operation(:describe_association_execution_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssociationExecutionTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionTargetsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: AssociationExecutionDoesNotExist)
      end)

      api.add_operation(:describe_association_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssociationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_automation_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutomationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutomationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutomationExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_automation_step_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutomationStepExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutomationStepExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutomationStepExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_available_patches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAvailablePatches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAvailablePatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAvailablePatchesResult)
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

      api.add_operation(:describe_effective_patches_for_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEffectivePatchesForPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEffectivePatchesForPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEffectivePatchesForPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperatingSystem)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
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

      api.add_operation(:describe_instance_patch_states, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancePatchStates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_instance_patch_states_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancePatchStatesForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_instance_patches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancePatches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePatchesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_inventory_deletions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInventoryDeletions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInventoryDeletionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInventoryDeletionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeletionIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterOption)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_patch_baselines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchBaselines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchBaselinesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchBaselinesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_patch_group_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchGroupState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchGroupStateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchGroupStateResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_patch_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
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

      api.add_operation(:get_connection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_default_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDefaultPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDefaultPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_deployable_patch_snapshot_for_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployablePatchSnapshotForInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeployablePatchSnapshotForInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeployablePatchSnapshotForInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperatingSystem)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidInventoryGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAggregatorException)
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

      api.add_operation(:get_maintenance_window_execution_task_invocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowExecutionTaskInvocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskInvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskInvocationResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParameterResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionNotFound)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_parameters_by_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParametersByPath"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersByPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParametersByPathResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterOption)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_patch_baseline_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPatchBaselineForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPatchBaselineForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPatchBaselineForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:label_parameter_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LabelParameterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LabelParameterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: LabelParameterVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionLabelLimitExceeded)
      end)

      api.add_operation(:list_association_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociationVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociationVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
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

      api.add_operation(:list_compliance_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceItemsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:list_compliance_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceSummariesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
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

      api.add_operation(:list_resource_compliance_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceComplianceSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceComplianceSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceComplianceSummariesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
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

      api.add_operation(:put_compliance_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutComplianceItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutComplianceItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutComplianceItemsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidItemContentException)
        o.errors << Shapes::ShapeRef.new(shape: TotalSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ItemSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ComplianceTypeCountLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedInventoryItemContextException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInventoryItemContextException)
        o.errors << Shapes::ShapeRef.new(shape: SubTypeCountLimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: HierarchyLevelLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: HierarchyTypeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAllowedPatternException)
        o.errors << Shapes::ShapeRef.new(shape: ParameterMaxVersionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ParameterPatternMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedParameterType)
      end)

      api.add_operation(:register_default_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDefaultPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDefaultPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDefaultPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:register_patch_baseline_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterPatchBaselineForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterPatchBaselineForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterPatchBaselineForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
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
        o.errors << Shapes::ShapeRef.new(shape: FeatureNotAvailableException)
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
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:resume_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResumeSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:send_automation_signal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendAutomationSignal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendAutomationSignalRequest)
        o.output = Shapes::ShapeRef.new(shape: SendAutomationSignalResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationStepNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationSignalException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputFolder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRole)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNotificationConfig)
      end)

      api.add_operation(:start_associations_once, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssociationsOnce"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAssociationsOnceRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssociationsOnceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAssociation)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
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
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:start_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotConnected)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:stop_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationStatusUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:terminate_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
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
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAssociationVersion)
        o.errors << Shapes::ShapeRef.new(shape: AssociationVersionLimitExceeded)
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

      api.add_operation(:update_maintenance_window_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceWindowTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTargetResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_maintenance_window_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceWindowTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTaskResult)
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

      api.add_operation(:update_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
