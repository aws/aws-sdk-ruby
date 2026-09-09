# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTSiteWise
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPolicySummaries = Shapes::ListShape.new(name: 'AccessPolicySummaries')
    AccessPolicySummary = Shapes::StructureShape.new(name: 'AccessPolicySummary')
    ActionDefinition = Shapes::StructureShape.new(name: 'ActionDefinition')
    ActionDefinitions = Shapes::ListShape.new(name: 'ActionDefinitions')
    ActionPayload = Shapes::StructureShape.new(name: 'ActionPayload')
    ActionPayloadString = Shapes::StringShape.new(name: 'ActionPayloadString')
    ActionSummaries = Shapes::ListShape.new(name: 'ActionSummaries')
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    AdaptiveIngestion = Shapes::BooleanShape.new(name: 'AdaptiveIngestion')
    AggregateType = Shapes::StringShape.new(name: 'AggregateType')
    AggregateTypes = Shapes::ListShape.new(name: 'AggregateTypes')
    AggregatedDoubleValue = Shapes::FloatShape.new(name: 'AggregatedDoubleValue')
    AggregatedValue = Shapes::StructureShape.new(name: 'AggregatedValue')
    AggregatedValues = Shapes::ListShape.new(name: 'AggregatedValues')
    Aggregates = Shapes::StructureShape.new(name: 'Aggregates')
    Alarms = Shapes::StructureShape.new(name: 'Alarms')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Annotation = Shapes::StructureShape.new(name: 'Annotation')
    ApplicationDescription = Shapes::StringShape.new(name: 'ApplicationDescription')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    AssetBindingValueFilter = Shapes::StructureShape.new(name: 'AssetBindingValueFilter')
    AssetCompositeModel = Shapes::StructureShape.new(name: 'AssetCompositeModel')
    AssetCompositeModelPath = Shapes::ListShape.new(name: 'AssetCompositeModelPath')
    AssetCompositeModelPathSegment = Shapes::StructureShape.new(name: 'AssetCompositeModelPathSegment')
    AssetCompositeModelSummaries = Shapes::ListShape.new(name: 'AssetCompositeModelSummaries')
    AssetCompositeModelSummary = Shapes::StructureShape.new(name: 'AssetCompositeModelSummary')
    AssetCompositeModels = Shapes::ListShape.new(name: 'AssetCompositeModels')
    AssetErrorCode = Shapes::StringShape.new(name: 'AssetErrorCode')
    AssetErrorDetails = Shapes::StructureShape.new(name: 'AssetErrorDetails')
    AssetErrorMessage = Shapes::StringShape.new(name: 'AssetErrorMessage')
    AssetHierarchies = Shapes::ListShape.new(name: 'AssetHierarchies')
    AssetHierarchy = Shapes::StructureShape.new(name: 'AssetHierarchy')
    AssetHierarchyInfo = Shapes::StructureShape.new(name: 'AssetHierarchyInfo')
    AssetIDs = Shapes::ListShape.new(name: 'AssetIDs')
    AssetModelBindingValueFilter = Shapes::StructureShape.new(name: 'AssetModelBindingValueFilter')
    AssetModelCompositeModel = Shapes::StructureShape.new(name: 'AssetModelCompositeModel')
    AssetModelCompositeModelDefinition = Shapes::StructureShape.new(name: 'AssetModelCompositeModelDefinition')
    AssetModelCompositeModelDefinitions = Shapes::ListShape.new(name: 'AssetModelCompositeModelDefinitions')
    AssetModelCompositeModelPath = Shapes::ListShape.new(name: 'AssetModelCompositeModelPath')
    AssetModelCompositeModelPathSegment = Shapes::StructureShape.new(name: 'AssetModelCompositeModelPathSegment')
    AssetModelCompositeModelSummaries = Shapes::ListShape.new(name: 'AssetModelCompositeModelSummaries')
    AssetModelCompositeModelSummary = Shapes::StructureShape.new(name: 'AssetModelCompositeModelSummary')
    AssetModelCompositeModels = Shapes::ListShape.new(name: 'AssetModelCompositeModels')
    AssetModelHierarchies = Shapes::ListShape.new(name: 'AssetModelHierarchies')
    AssetModelHierarchy = Shapes::StructureShape.new(name: 'AssetModelHierarchy')
    AssetModelHierarchyDefinition = Shapes::StructureShape.new(name: 'AssetModelHierarchyDefinition')
    AssetModelHierarchyDefinitions = Shapes::ListShape.new(name: 'AssetModelHierarchyDefinitions')
    AssetModelProperties = Shapes::ListShape.new(name: 'AssetModelProperties')
    AssetModelProperty = Shapes::StructureShape.new(name: 'AssetModelProperty')
    AssetModelPropertyBindingValue = Shapes::StructureShape.new(name: 'AssetModelPropertyBindingValue')
    AssetModelPropertyBindingValueFilter = Shapes::StructureShape.new(name: 'AssetModelPropertyBindingValueFilter')
    AssetModelPropertyDefinition = Shapes::StructureShape.new(name: 'AssetModelPropertyDefinition')
    AssetModelPropertyDefinitions = Shapes::ListShape.new(name: 'AssetModelPropertyDefinitions')
    AssetModelPropertyPath = Shapes::ListShape.new(name: 'AssetModelPropertyPath')
    AssetModelPropertyPathSegment = Shapes::StructureShape.new(name: 'AssetModelPropertyPathSegment')
    AssetModelPropertySummaries = Shapes::ListShape.new(name: 'AssetModelPropertySummaries')
    AssetModelPropertySummary = Shapes::StructureShape.new(name: 'AssetModelPropertySummary')
    AssetModelState = Shapes::StringShape.new(name: 'AssetModelState')
    AssetModelStatus = Shapes::StructureShape.new(name: 'AssetModelStatus')
    AssetModelSummaries = Shapes::ListShape.new(name: 'AssetModelSummaries')
    AssetModelSummary = Shapes::StructureShape.new(name: 'AssetModelSummary')
    AssetModelType = Shapes::StringShape.new(name: 'AssetModelType')
    AssetModelVersionFilter = Shapes::StringShape.new(name: 'AssetModelVersionFilter')
    AssetModelVersionType = Shapes::StringShape.new(name: 'AssetModelVersionType')
    AssetProperties = Shapes::ListShape.new(name: 'AssetProperties')
    AssetProperty = Shapes::StructureShape.new(name: 'AssetProperty')
    AssetPropertyAlias = Shapes::StringShape.new(name: 'AssetPropertyAlias')
    AssetPropertyBindingValue = Shapes::StructureShape.new(name: 'AssetPropertyBindingValue')
    AssetPropertyBindingValueFilter = Shapes::StructureShape.new(name: 'AssetPropertyBindingValueFilter')
    AssetPropertyPath = Shapes::ListShape.new(name: 'AssetPropertyPath')
    AssetPropertyPathSegment = Shapes::StructureShape.new(name: 'AssetPropertyPathSegment')
    AssetPropertySummaries = Shapes::ListShape.new(name: 'AssetPropertySummaries')
    AssetPropertySummary = Shapes::StructureShape.new(name: 'AssetPropertySummary')
    AssetPropertyValue = Shapes::StructureShape.new(name: 'AssetPropertyValue')
    AssetPropertyValueHistory = Shapes::ListShape.new(name: 'AssetPropertyValueHistory')
    AssetPropertyValues = Shapes::ListShape.new(name: 'AssetPropertyValues')
    AssetRelationshipSummaries = Shapes::ListShape.new(name: 'AssetRelationshipSummaries')
    AssetRelationshipSummary = Shapes::StructureShape.new(name: 'AssetRelationshipSummary')
    AssetRelationshipType = Shapes::StringShape.new(name: 'AssetRelationshipType')
    AssetState = Shapes::StringShape.new(name: 'AssetState')
    AssetStatus = Shapes::StructureShape.new(name: 'AssetStatus')
    AssetSummaries = Shapes::ListShape.new(name: 'AssetSummaries')
    AssetSummary = Shapes::StructureShape.new(name: 'AssetSummary')
    AssociateAssetsRequest = Shapes::StructureShape.new(name: 'AssociateAssetsRequest')
    AssociateDataSegmentEntries = Shapes::ListShape.new(name: 'AssociateDataSegmentEntries')
    AssociateDataSegmentEntry = Shapes::StructureShape.new(name: 'AssociateDataSegmentEntry')
    AssociateTimeSeriesToAssetPropertyRequest = Shapes::StructureShape.new(name: 'AssociateTimeSeriesToAssetPropertyRequest')
    AssociatedAssetsSummaries = Shapes::ListShape.new(name: 'AssociatedAssetsSummaries')
    AssociatedAssetsSummary = Shapes::StructureShape.new(name: 'AssociatedAssetsSummary')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AuthMode = Shapes::StringShape.new(name: 'AuthMode')
    BatchAssociateDataSegmentsToDatasetRequest = Shapes::StructureShape.new(name: 'BatchAssociateDataSegmentsToDatasetRequest')
    BatchAssociateDataSegmentsToDatasetResponse = Shapes::StructureShape.new(name: 'BatchAssociateDataSegmentsToDatasetResponse')
    BatchAssociateProjectAssetsErrors = Shapes::ListShape.new(name: 'BatchAssociateProjectAssetsErrors')
    BatchAssociateProjectAssetsRequest = Shapes::StructureShape.new(name: 'BatchAssociateProjectAssetsRequest')
    BatchAssociateProjectAssetsResponse = Shapes::StructureShape.new(name: 'BatchAssociateProjectAssetsResponse')
    BatchDeleteDatasetDataSegmentsRequest = Shapes::StructureShape.new(name: 'BatchDeleteDatasetDataSegmentsRequest')
    BatchDeleteDatasetDataSegmentsResponse = Shapes::StructureShape.new(name: 'BatchDeleteDatasetDataSegmentsResponse')
    BatchDisassociateDataSegmentsFromDatasetRequest = Shapes::StructureShape.new(name: 'BatchDisassociateDataSegmentsFromDatasetRequest')
    BatchDisassociateDataSegmentsFromDatasetResponse = Shapes::StructureShape.new(name: 'BatchDisassociateDataSegmentsFromDatasetResponse')
    BatchDisassociateProjectAssetsErrors = Shapes::ListShape.new(name: 'BatchDisassociateProjectAssetsErrors')
    BatchDisassociateProjectAssetsRequest = Shapes::StructureShape.new(name: 'BatchDisassociateProjectAssetsRequest')
    BatchDisassociateProjectAssetsResponse = Shapes::StructureShape.new(name: 'BatchDisassociateProjectAssetsResponse')
    BatchEntryCompletionStatus = Shapes::StringShape.new(name: 'BatchEntryCompletionStatus')
    BatchGetAssetPropertyAggregatesEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyAggregatesEntries')
    BatchGetAssetPropertyAggregatesEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesEntry')
    BatchGetAssetPropertyAggregatesErrorCode = Shapes::StringShape.new(name: 'BatchGetAssetPropertyAggregatesErrorCode')
    BatchGetAssetPropertyAggregatesErrorEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyAggregatesErrorEntries')
    BatchGetAssetPropertyAggregatesErrorEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesErrorEntry')
    BatchGetAssetPropertyAggregatesErrorInfo = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesErrorInfo')
    BatchGetAssetPropertyAggregatesMaxResults = Shapes::IntegerShape.new(name: 'BatchGetAssetPropertyAggregatesMaxResults')
    BatchGetAssetPropertyAggregatesRequest = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesRequest')
    BatchGetAssetPropertyAggregatesResponse = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesResponse')
    BatchGetAssetPropertyAggregatesSkippedEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyAggregatesSkippedEntries')
    BatchGetAssetPropertyAggregatesSkippedEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesSkippedEntry')
    BatchGetAssetPropertyAggregatesSuccessEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyAggregatesSuccessEntries')
    BatchGetAssetPropertyAggregatesSuccessEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyAggregatesSuccessEntry')
    BatchGetAssetPropertyValueEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueEntries')
    BatchGetAssetPropertyValueEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueEntry')
    BatchGetAssetPropertyValueErrorCode = Shapes::StringShape.new(name: 'BatchGetAssetPropertyValueErrorCode')
    BatchGetAssetPropertyValueErrorEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueErrorEntries')
    BatchGetAssetPropertyValueErrorEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueErrorEntry')
    BatchGetAssetPropertyValueErrorInfo = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueErrorInfo')
    BatchGetAssetPropertyValueHistoryEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueHistoryEntries')
    BatchGetAssetPropertyValueHistoryEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistoryEntry')
    BatchGetAssetPropertyValueHistoryErrorCode = Shapes::StringShape.new(name: 'BatchGetAssetPropertyValueHistoryErrorCode')
    BatchGetAssetPropertyValueHistoryErrorEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueHistoryErrorEntries')
    BatchGetAssetPropertyValueHistoryErrorEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistoryErrorEntry')
    BatchGetAssetPropertyValueHistoryErrorInfo = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistoryErrorInfo')
    BatchGetAssetPropertyValueHistoryMaxResults = Shapes::IntegerShape.new(name: 'BatchGetAssetPropertyValueHistoryMaxResults')
    BatchGetAssetPropertyValueHistoryRequest = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistoryRequest')
    BatchGetAssetPropertyValueHistoryResponse = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistoryResponse')
    BatchGetAssetPropertyValueHistorySkippedEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueHistorySkippedEntries')
    BatchGetAssetPropertyValueHistorySkippedEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistorySkippedEntry')
    BatchGetAssetPropertyValueHistorySuccessEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueHistorySuccessEntries')
    BatchGetAssetPropertyValueHistorySuccessEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueHistorySuccessEntry')
    BatchGetAssetPropertyValueRequest = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueRequest')
    BatchGetAssetPropertyValueResponse = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueResponse')
    BatchGetAssetPropertyValueSkippedEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueSkippedEntries')
    BatchGetAssetPropertyValueSkippedEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueSkippedEntry')
    BatchGetAssetPropertyValueSuccessEntries = Shapes::ListShape.new(name: 'BatchGetAssetPropertyValueSuccessEntries')
    BatchGetAssetPropertyValueSuccessEntry = Shapes::StructureShape.new(name: 'BatchGetAssetPropertyValueSuccessEntry')
    BatchPutAssetPropertyError = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyError')
    BatchPutAssetPropertyErrorEntries = Shapes::ListShape.new(name: 'BatchPutAssetPropertyErrorEntries')
    BatchPutAssetPropertyErrorEntry = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyErrorEntry')
    BatchPutAssetPropertyErrors = Shapes::ListShape.new(name: 'BatchPutAssetPropertyErrors')
    BatchPutAssetPropertyValueErrorCode = Shapes::StringShape.new(name: 'BatchPutAssetPropertyValueErrorCode')
    BatchPutAssetPropertyValueRequest = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyValueRequest')
    BatchPutAssetPropertyValueResponse = Shapes::StructureShape.new(name: 'BatchPutAssetPropertyValueResponse')
    BindingValueList = Shapes::ListShape.new(name: 'BindingValueList')
    BooleanValue = Shapes::BooleanShape.new(name: 'BooleanValue')
    Bucket = Shapes::StringShape.new(name: 'Bucket')
    BulkImportJobName = Shapes::StringShape.new(name: 'BulkImportJobName')
    CancelEnrichmentJobRequest = Shapes::StructureShape.new(name: 'CancelEnrichmentJobRequest')
    CancelEnrichmentJobResponse = Shapes::StructureShape.new(name: 'CancelEnrichmentJobResponse')
    CancelPipelineExecutionRequest = Shapes::StructureShape.new(name: 'CancelPipelineExecutionRequest')
    CancelPipelineExecutionRequestReasonString = Shapes::StringShape.new(name: 'CancelPipelineExecutionRequestReasonString')
    CancelPipelineExecutionResponse = Shapes::StructureShape.new(name: 'CancelPipelineExecutionResponse')
    CancelQueryRequest = Shapes::StructureShape.new(name: 'CancelQueryRequest')
    CancelQueryResponse = Shapes::StructureShape.new(name: 'CancelQueryResponse')
    CapabilityConfiguration = Shapes::StringShape.new(name: 'CapabilityConfiguration')
    CapabilityNamespace = Shapes::StringShape.new(name: 'CapabilityNamespace')
    CapabilitySyncStatus = Shapes::StringShape.new(name: 'CapabilitySyncStatus')
    CaptureBlob = Shapes::BlobShape.new(name: 'CaptureBlob')
    Citation = Shapes::StructureShape.new(name: 'Citation')
    Citations = Shapes::ListShape.new(name: 'Citations')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ColumnDataType = Shapes::StringShape.new(name: 'ColumnDataType')
    ColumnInfo = Shapes::StructureShape.new(name: 'ColumnInfo')
    ColumnInformation = Shapes::StructureShape.new(name: 'ColumnInformation')
    ColumnInformationList = Shapes::ListShape.new(name: 'ColumnInformationList')
    ColumnLabel = Shapes::StringShape.new(name: 'ColumnLabel')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnNames = Shapes::ListShape.new(name: 'ColumnNames')
    ColumnType = Shapes::StructureShape.new(name: 'ColumnType')
    ColumnValue = Shapes::StringShape.new(name: 'ColumnValue')
    ColumnsList = Shapes::ListShape.new(name: 'ColumnsList')
    CommandList = Shapes::ListShape.new(name: 'CommandList')
    CompositeModelProperty = Shapes::StructureShape.new(name: 'CompositeModelProperty')
    CompositionDetails = Shapes::StructureShape.new(name: 'CompositionDetails')
    CompositionRelationship = Shapes::ListShape.new(name: 'CompositionRelationship')
    CompositionRelationshipItem = Shapes::StructureShape.new(name: 'CompositionRelationshipItem')
    CompositionRelationshipSummaries = Shapes::ListShape.new(name: 'CompositionRelationshipSummaries')
    CompositionRelationshipSummary = Shapes::StructureShape.new(name: 'CompositionRelationshipSummary')
    ComputationModelAnomalyDetectionConfiguration = Shapes::StructureShape.new(name: 'ComputationModelAnomalyDetectionConfiguration')
    ComputationModelConfiguration = Shapes::StructureShape.new(name: 'ComputationModelConfiguration')
    ComputationModelDataBinding = Shapes::MapShape.new(name: 'ComputationModelDataBinding')
    ComputationModelDataBindingUsageSummaries = Shapes::ListShape.new(name: 'ComputationModelDataBindingUsageSummaries')
    ComputationModelDataBindingUsageSummary = Shapes::StructureShape.new(name: 'ComputationModelDataBindingUsageSummary')
    ComputationModelDataBindingValue = Shapes::StructureShape.new(name: 'ComputationModelDataBindingValue')
    ComputationModelDataBindingVariable = Shapes::StringShape.new(name: 'ComputationModelDataBindingVariable')
    ComputationModelExecutionSummary = Shapes::MapShape.new(name: 'ComputationModelExecutionSummary')
    ComputationModelExecutionSummaryKey = Shapes::StringShape.new(name: 'ComputationModelExecutionSummaryKey')
    ComputationModelExecutionSummaryValue = Shapes::StringShape.new(name: 'ComputationModelExecutionSummaryValue')
    ComputationModelIdList = Shapes::ListShape.new(name: 'ComputationModelIdList')
    ComputationModelResolveToResourceSummaries = Shapes::ListShape.new(name: 'ComputationModelResolveToResourceSummaries')
    ComputationModelResolveToResourceSummary = Shapes::StructureShape.new(name: 'ComputationModelResolveToResourceSummary')
    ComputationModelState = Shapes::StringShape.new(name: 'ComputationModelState')
    ComputationModelStatus = Shapes::StructureShape.new(name: 'ComputationModelStatus')
    ComputationModelSummaries = Shapes::ListShape.new(name: 'ComputationModelSummaries')
    ComputationModelSummary = Shapes::StructureShape.new(name: 'ComputationModelSummary')
    ComputationModelType = Shapes::StringShape.new(name: 'ComputationModelType')
    ComputationModelVersionFilter = Shapes::StringShape.new(name: 'ComputationModelVersionFilter')
    ComputeLocation = Shapes::StringShape.new(name: 'ComputeLocation')
    ComputeNode = Shapes::StructureShape.new(name: 'ComputeNode')
    ComputeNodeEnvironmentVariablesMap = Shapes::MapShape.new(name: 'ComputeNodeEnvironmentVariablesMap')
    ComputeNodeErrorCode = Shapes::StringShape.new(name: 'ComputeNodeErrorCode')
    ComputeNodeExecutionDetails = Shapes::StructureShape.new(name: 'ComputeNodeExecutionDetails')
    ComputeNodeExecutionDetailsList = Shapes::ListShape.new(name: 'ComputeNodeExecutionDetailsList')
    ComputeNodeExecutionState = Shapes::StringShape.new(name: 'ComputeNodeExecutionState')
    ComputeNodeExecutionStateDetails = Shapes::StructureShape.new(name: 'ComputeNodeExecutionStateDetails')
    ComputeNodeExecutionStatus = Shapes::StructureShape.new(name: 'ComputeNodeExecutionStatus')
    ComputeNodeList = Shapes::ListShape.new(name: 'ComputeNodeList')
    ComputeNodeMountsMap = Shapes::MapShape.new(name: 'ComputeNodeMountsMap')
    ComputeNodeNameList = Shapes::ListShape.new(name: 'ComputeNodeNameList')
    ConfigurationErrorDetails = Shapes::StructureShape.new(name: 'ConfigurationErrorDetails')
    ConfigurationState = Shapes::StringShape.new(name: 'ConfigurationState')
    ConfigurationStatus = Shapes::StructureShape.new(name: 'ConfigurationStatus')
    ConflictingOperationException = Shapes::StructureShape.new(name: 'ConflictingOperationException')
    ContainerTaskConfiguration = Shapes::StructureShape.new(name: 'ContainerTaskConfiguration')
    Content = Shapes::StructureShape.new(name: 'Content')
    ConversationId = Shapes::StringShape.new(name: 'ConversationId')
    CoreDeviceOperatingSystem = Shapes::StringShape.new(name: 'CoreDeviceOperatingSystem')
    CoreDeviceThingName = Shapes::StringShape.new(name: 'CoreDeviceThingName')
    CreateAccessPolicyRequest = Shapes::StructureShape.new(name: 'CreateAccessPolicyRequest')
    CreateAccessPolicyResponse = Shapes::StructureShape.new(name: 'CreateAccessPolicyResponse')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateAssetModelCompositeModelRequest = Shapes::StructureShape.new(name: 'CreateAssetModelCompositeModelRequest')
    CreateAssetModelCompositeModelResponse = Shapes::StructureShape.new(name: 'CreateAssetModelCompositeModelResponse')
    CreateAssetModelRequest = Shapes::StructureShape.new(name: 'CreateAssetModelRequest')
    CreateAssetModelResponse = Shapes::StructureShape.new(name: 'CreateAssetModelResponse')
    CreateAssetRequest = Shapes::StructureShape.new(name: 'CreateAssetRequest')
    CreateAssetResponse = Shapes::StructureShape.new(name: 'CreateAssetResponse')
    CreateBulkImportJobRequest = Shapes::StructureShape.new(name: 'CreateBulkImportJobRequest')
    CreateBulkImportJobResponse = Shapes::StructureShape.new(name: 'CreateBulkImportJobResponse')
    CreateComputationModelRequest = Shapes::StructureShape.new(name: 'CreateComputationModelRequest')
    CreateComputationModelResponse = Shapes::StructureShape.new(name: 'CreateComputationModelResponse')
    CreateDashboardRequest = Shapes::StructureShape.new(name: 'CreateDashboardRequest')
    CreateDashboardResponse = Shapes::StructureShape.new(name: 'CreateDashboardResponse')
    CreateDatasetExportJobRequest = Shapes::StructureShape.new(name: 'CreateDatasetExportJobRequest')
    CreateDatasetExportJobResponse = Shapes::StructureShape.new(name: 'CreateDatasetExportJobResponse')
    CreateDatasetRequest = Shapes::StructureShape.new(name: 'CreateDatasetRequest')
    CreateDatasetResponse = Shapes::StructureShape.new(name: 'CreateDatasetResponse')
    CreateEnrichmentJobRequest = Shapes::StructureShape.new(name: 'CreateEnrichmentJobRequest')
    CreateEnrichmentJobResponse = Shapes::StructureShape.new(name: 'CreateEnrichmentJobResponse')
    CreateGatewayRequest = Shapes::StructureShape.new(name: 'CreateGatewayRequest')
    CreateGatewayResponse = Shapes::StructureShape.new(name: 'CreateGatewayResponse')
    CreateMissingProperty = Shapes::BooleanShape.new(name: 'CreateMissingProperty')
    CreatePipelineRequest = Shapes::StructureShape.new(name: 'CreatePipelineRequest')
    CreatePipelineResponse = Shapes::StructureShape.new(name: 'CreatePipelineResponse')
    CreatePortalRequest = Shapes::StructureShape.new(name: 'CreatePortalRequest')
    CreatePortalResponse = Shapes::StructureShape.new(name: 'CreatePortalResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    CreateTaskRequest = Shapes::StructureShape.new(name: 'CreateTaskRequest')
    CreateTaskResponse = Shapes::StructureShape.new(name: 'CreateTaskResponse')
    CreateWorkspaceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceRequest')
    CreateWorkspaceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceResponse')
    Csv = Shapes::StructureShape.new(name: 'Csv')
    CustomID = Shapes::StringShape.new(name: 'CustomID')
    CustomerManagedS3Storage = Shapes::StructureShape.new(name: 'CustomerManagedS3Storage')
    DashboardDefinition = Shapes::StringShape.new(name: 'DashboardDefinition')
    DashboardSummaries = Shapes::ListShape.new(name: 'DashboardSummaries')
    DashboardSummary = Shapes::StructureShape.new(name: 'DashboardSummary')
    DataBindingValue = Shapes::StructureShape.new(name: 'DataBindingValue')
    DataBindingValueFilter = Shapes::StructureShape.new(name: 'DataBindingValueFilter')
    DataSegmentEnrichment = Shapes::StructureShape.new(name: 'DataSegmentEnrichment')
    DataSegmentErrorCode = Shapes::StringShape.new(name: 'DataSegmentErrorCode')
    DataSegmentErrorMessage = Shapes::StringShape.new(name: 'DataSegmentErrorMessage')
    DataSegmentRelationshipSummaries = Shapes::ListShape.new(name: 'DataSegmentRelationshipSummaries')
    DataSegmentRelationshipSummary = Shapes::StructureShape.new(name: 'DataSegmentRelationshipSummary')
    DataSegmentSummaries = Shapes::ListShape.new(name: 'DataSegmentSummaries')
    DataSegmentSummary = Shapes::StructureShape.new(name: 'DataSegmentSummary')
    DataSetIdList = Shapes::ListShape.new(name: 'DataSetIdList')
    DataSetReference = Shapes::StructureShape.new(name: 'DataSetReference')
    DatasetConfig = Shapes::StructureShape.new(name: 'DatasetConfig')
    DatasetEnrichment = Shapes::StructureShape.new(name: 'DatasetEnrichment')
    DatasetEnrichmentEntry = Shapes::StructureShape.new(name: 'DatasetEnrichmentEntry')
    DatasetEnrichmentStatus = Shapes::StringShape.new(name: 'DatasetEnrichmentStatus')
    DatasetExportJobFilter = Shapes::StringShape.new(name: 'DatasetExportJobFilter')
    DatasetExportJobId = Shapes::StringShape.new(name: 'DatasetExportJobId')
    DatasetExportJobStatus = Shapes::StringShape.new(name: 'DatasetExportJobStatus')
    DatasetId = Shapes::StringShape.new(name: 'DatasetId')
    DatasetItem = Shapes::StructureShape.new(name: 'DatasetItem')
    DatasetSource = Shapes::StructureShape.new(name: 'DatasetSource')
    DatasetSourceFormat = Shapes::StringShape.new(name: 'DatasetSourceFormat')
    DatasetSourceType = Shapes::StringShape.new(name: 'DatasetSourceType')
    DatasetState = Shapes::StringShape.new(name: 'DatasetState')
    DatasetStatus = Shapes::StructureShape.new(name: 'DatasetStatus')
    DatasetSummaries = Shapes::ListShape.new(name: 'DatasetSummaries')
    DatasetSummary = Shapes::StructureShape.new(name: 'DatasetSummary')
    DatasetTypeEnum = Shapes::StringShape.new(name: 'DatasetTypeEnum')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DatumList = Shapes::ListShape.new(name: 'DatumList')
    DefaultValue = Shapes::StringShape.new(name: 'DefaultValue')
    DeleteAccessPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAccessPolicyRequest')
    DeleteAccessPolicyResponse = Shapes::StructureShape.new(name: 'DeleteAccessPolicyResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteAssetModelCompositeModelRequest = Shapes::StructureShape.new(name: 'DeleteAssetModelCompositeModelRequest')
    DeleteAssetModelCompositeModelResponse = Shapes::StructureShape.new(name: 'DeleteAssetModelCompositeModelResponse')
    DeleteAssetModelInterfaceRelationshipRequest = Shapes::StructureShape.new(name: 'DeleteAssetModelInterfaceRelationshipRequest')
    DeleteAssetModelInterfaceRelationshipResponse = Shapes::StructureShape.new(name: 'DeleteAssetModelInterfaceRelationshipResponse')
    DeleteAssetModelRequest = Shapes::StructureShape.new(name: 'DeleteAssetModelRequest')
    DeleteAssetModelResponse = Shapes::StructureShape.new(name: 'DeleteAssetModelResponse')
    DeleteAssetRequest = Shapes::StructureShape.new(name: 'DeleteAssetRequest')
    DeleteAssetResponse = Shapes::StructureShape.new(name: 'DeleteAssetResponse')
    DeleteComputationModelRequest = Shapes::StructureShape.new(name: 'DeleteComputationModelRequest')
    DeleteComputationModelResponse = Shapes::StructureShape.new(name: 'DeleteComputationModelResponse')
    DeleteDashboardRequest = Shapes::StructureShape.new(name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Shapes::StructureShape.new(name: 'DeleteDashboardResponse')
    DeleteDataSegmentEntries = Shapes::ListShape.new(name: 'DeleteDataSegmentEntries')
    DeleteDataSegmentEntry = Shapes::StructureShape.new(name: 'DeleteDataSegmentEntry')
    DeleteDatasetRequest = Shapes::StructureShape.new(name: 'DeleteDatasetRequest')
    DeleteDatasetResponse = Shapes::StructureShape.new(name: 'DeleteDatasetResponse')
    DeleteFilesAfterImport = Shapes::BooleanShape.new(name: 'DeleteFilesAfterImport')
    DeleteGatewayRequest = Shapes::StructureShape.new(name: 'DeleteGatewayRequest')
    DeletePipelineRequest = Shapes::StructureShape.new(name: 'DeletePipelineRequest')
    DeletePipelineResponse = Shapes::StructureShape.new(name: 'DeletePipelineResponse')
    DeletePortalRequest = Shapes::StructureShape.new(name: 'DeletePortalRequest')
    DeletePortalResponse = Shapes::StructureShape.new(name: 'DeletePortalResponse')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResponse = Shapes::StructureShape.new(name: 'DeleteProjectResponse')
    DeleteTaskRequest = Shapes::StructureShape.new(name: 'DeleteTaskRequest')
    DeleteTaskResponse = Shapes::StructureShape.new(name: 'DeleteTaskResponse')
    DeleteTimeSeriesRequest = Shapes::StructureShape.new(name: 'DeleteTimeSeriesRequest')
    DeleteWorkspaceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceRequest')
    DeleteWorkspaceResponse = Shapes::StructureShape.new(name: 'DeleteWorkspaceResponse')
    DescribeAccessPolicyRequest = Shapes::StructureShape.new(name: 'DescribeAccessPolicyRequest')
    DescribeAccessPolicyResponse = Shapes::StructureShape.new(name: 'DescribeAccessPolicyResponse')
    DescribeActionRequest = Shapes::StructureShape.new(name: 'DescribeActionRequest')
    DescribeActionResponse = Shapes::StructureShape.new(name: 'DescribeActionResponse')
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    DescribeAssetCompositeModelRequest = Shapes::StructureShape.new(name: 'DescribeAssetCompositeModelRequest')
    DescribeAssetCompositeModelResponse = Shapes::StructureShape.new(name: 'DescribeAssetCompositeModelResponse')
    DescribeAssetModelCompositeModelRequest = Shapes::StructureShape.new(name: 'DescribeAssetModelCompositeModelRequest')
    DescribeAssetModelCompositeModelResponse = Shapes::StructureShape.new(name: 'DescribeAssetModelCompositeModelResponse')
    DescribeAssetModelInterfaceRelationshipRequest = Shapes::StructureShape.new(name: 'DescribeAssetModelInterfaceRelationshipRequest')
    DescribeAssetModelInterfaceRelationshipResponse = Shapes::StructureShape.new(name: 'DescribeAssetModelInterfaceRelationshipResponse')
    DescribeAssetModelRequest = Shapes::StructureShape.new(name: 'DescribeAssetModelRequest')
    DescribeAssetModelResponse = Shapes::StructureShape.new(name: 'DescribeAssetModelResponse')
    DescribeAssetPropertyRequest = Shapes::StructureShape.new(name: 'DescribeAssetPropertyRequest')
    DescribeAssetPropertyResponse = Shapes::StructureShape.new(name: 'DescribeAssetPropertyResponse')
    DescribeAssetRequest = Shapes::StructureShape.new(name: 'DescribeAssetRequest')
    DescribeAssetResponse = Shapes::StructureShape.new(name: 'DescribeAssetResponse')
    DescribeBulkImportJobRequest = Shapes::StructureShape.new(name: 'DescribeBulkImportJobRequest')
    DescribeBulkImportJobResponse = Shapes::StructureShape.new(name: 'DescribeBulkImportJobResponse')
    DescribeComputationModelExecutionSummaryRequest = Shapes::StructureShape.new(name: 'DescribeComputationModelExecutionSummaryRequest')
    DescribeComputationModelExecutionSummaryResponse = Shapes::StructureShape.new(name: 'DescribeComputationModelExecutionSummaryResponse')
    DescribeComputationModelRequest = Shapes::StructureShape.new(name: 'DescribeComputationModelRequest')
    DescribeComputationModelResponse = Shapes::StructureShape.new(name: 'DescribeComputationModelResponse')
    DescribeDashboardRequest = Shapes::StructureShape.new(name: 'DescribeDashboardRequest')
    DescribeDashboardResponse = Shapes::StructureShape.new(name: 'DescribeDashboardResponse')
    DescribeDatasetExportJobRequest = Shapes::StructureShape.new(name: 'DescribeDatasetExportJobRequest')
    DescribeDatasetExportJobResponse = Shapes::StructureShape.new(name: 'DescribeDatasetExportJobResponse')
    DescribeDatasetRequest = Shapes::StructureShape.new(name: 'DescribeDatasetRequest')
    DescribeDatasetResponse = Shapes::StructureShape.new(name: 'DescribeDatasetResponse')
    DescribeDefaultEncryptionConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeDefaultEncryptionConfigurationRequest')
    DescribeDefaultEncryptionConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeDefaultEncryptionConfigurationResponse')
    DescribeEnrichmentJobRequest = Shapes::StructureShape.new(name: 'DescribeEnrichmentJobRequest')
    DescribeEnrichmentJobResponse = Shapes::StructureShape.new(name: 'DescribeEnrichmentJobResponse')
    DescribeExecutionRequest = Shapes::StructureShape.new(name: 'DescribeExecutionRequest')
    DescribeExecutionResponse = Shapes::StructureShape.new(name: 'DescribeExecutionResponse')
    DescribeGatewayCapabilityConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeGatewayCapabilityConfigurationRequest')
    DescribeGatewayCapabilityConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeGatewayCapabilityConfigurationResponse')
    DescribeGatewayRequest = Shapes::StructureShape.new(name: 'DescribeGatewayRequest')
    DescribeGatewayResponse = Shapes::StructureShape.new(name: 'DescribeGatewayResponse')
    DescribeLoggingOptionsRequest = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsRequest')
    DescribeLoggingOptionsResponse = Shapes::StructureShape.new(name: 'DescribeLoggingOptionsResponse')
    DescribePipelineExecutionRequest = Shapes::StructureShape.new(name: 'DescribePipelineExecutionRequest')
    DescribePipelineExecutionRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'DescribePipelineExecutionRequestMaxResultsInteger')
    DescribePipelineExecutionResponse = Shapes::StructureShape.new(name: 'DescribePipelineExecutionResponse')
    DescribePipelineRequest = Shapes::StructureShape.new(name: 'DescribePipelineRequest')
    DescribePipelineResponse = Shapes::StructureShape.new(name: 'DescribePipelineResponse')
    DescribePortalRequest = Shapes::StructureShape.new(name: 'DescribePortalRequest')
    DescribePortalResponse = Shapes::StructureShape.new(name: 'DescribePortalResponse')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResponse = Shapes::StructureShape.new(name: 'DescribeProjectResponse')
    DescribeQueryRequest = Shapes::StructureShape.new(name: 'DescribeQueryRequest')
    DescribeQueryResponse = Shapes::StructureShape.new(name: 'DescribeQueryResponse')
    DescribeSearchRequest = Shapes::StructureShape.new(name: 'DescribeSearchRequest')
    DescribeSearchResponse = Shapes::StructureShape.new(name: 'DescribeSearchResponse')
    DescribeStorageConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeStorageConfigurationRequest')
    DescribeStorageConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeStorageConfigurationResponse')
    DescribeTaskRequest = Shapes::StructureShape.new(name: 'DescribeTaskRequest')
    DescribeTaskResponse = Shapes::StructureShape.new(name: 'DescribeTaskResponse')
    DescribeTimeSeriesRequest = Shapes::StructureShape.new(name: 'DescribeTimeSeriesRequest')
    DescribeTimeSeriesResponse = Shapes::StructureShape.new(name: 'DescribeTimeSeriesResponse')
    DescribeWorkspaceRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceRequest')
    DescribeWorkspaceResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetailedError = Shapes::StructureShape.new(name: 'DetailedError')
    DetailedErrorCode = Shapes::StringShape.new(name: 'DetailedErrorCode')
    DetailedErrorList = Shapes::ListShape.new(name: 'DetailedErrorList')
    DetailedErrorMessage = Shapes::StringShape.new(name: 'DetailedErrorMessage')
    DetailedErrors = Shapes::ListShape.new(name: 'DetailedErrors')
    DetailedPipelineError = Shapes::StructureShape.new(name: 'DetailedPipelineError')
    DetailedPipelineErrorCode = Shapes::StringShape.new(name: 'DetailedPipelineErrorCode')
    DisallowIngestNullNaN = Shapes::BooleanShape.new(name: 'DisallowIngestNullNaN')
    DisassociateAssetsRequest = Shapes::StructureShape.new(name: 'DisassociateAssetsRequest')
    DisassociateDataSegmentEntries = Shapes::ListShape.new(name: 'DisassociateDataSegmentEntries')
    DisassociateDataSegmentEntry = Shapes::StructureShape.new(name: 'DisassociateDataSegmentEntry')
    DisassociateTimeSeriesFromAssetPropertyRequest = Shapes::StructureShape.new(name: 'DisassociateTimeSeriesFromAssetPropertyRequest')
    DisassociatedDataStorageState = Shapes::StringShape.new(name: 'DisassociatedDataStorageState')
    DnsSubdomain = Shapes::StringShape.new(name: 'DnsSubdomain')
    ETag = Shapes::StringShape.new(name: 'ETag')
    EcrUri = Shapes::StringShape.new(name: 'EcrUri')
    Email = Shapes::StringShape.new(name: 'Email')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EnrichmentJobConfiguration = Shapes::UnionShape.new(name: 'EnrichmentJobConfiguration')
    EnrichmentJobStatus = Shapes::StringShape.new(name: 'EnrichmentJobStatus')
    EnrichmentJobSummaries = Shapes::ListShape.new(name: 'EnrichmentJobSummaries')
    EnrichmentJobSummary = Shapes::StructureShape.new(name: 'EnrichmentJobSummary')
    EnrichmentStatus = Shapes::StringShape.new(name: 'EnrichmentStatus')
    EnrichmentTrimSettings = Shapes::StructureShape.new(name: 'EnrichmentTrimSettings')
    EntryId = Shapes::StringShape.new(name: 'EntryId')
    EnvironmentVariableName = Shapes::StringShape.new(name: 'EnvironmentVariableName')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = Shapes::MapShape.new(name: 'EnvironmentVariablesMap')
    EphemeralStorageConfiguration = Shapes::StructureShape.new(name: 'EphemeralStorageConfiguration')
    EphemeralStorageConfigurationStorageSizeInGiBInteger = Shapes::IntegerShape.new(name: 'EphemeralStorageConfigurationStorageSizeInGiBInteger')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorReportLocation = Shapes::StructureShape.new(name: 'ErrorReportLocation')
    EventDetection = Shapes::StructureShape.new(name: 'EventDetection')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExcludeProperties = Shapes::BooleanShape.new(name: 'ExcludeProperties')
    ExecuteActionRequest = Shapes::StructureShape.new(name: 'ExecuteActionRequest')
    ExecuteActionResponse = Shapes::StructureShape.new(name: 'ExecuteActionResponse')
    ExecuteQueryMaxResults = Shapes::IntegerShape.new(name: 'ExecuteQueryMaxResults')
    ExecuteQueryNextToken = Shapes::StringShape.new(name: 'ExecuteQueryNextToken')
    ExecuteQueryRequest = Shapes::StructureShape.new(name: 'ExecuteQueryRequest')
    ExecuteQueryResponse = Shapes::StructureShape.new(name: 'ExecuteQueryResponse')
    ExecutionDetails = Shapes::MapShape.new(name: 'ExecutionDetails')
    ExecutionDetailsKey = Shapes::StringShape.new(name: 'ExecutionDetailsKey')
    ExecutionDetailsValue = Shapes::StringShape.new(name: 'ExecutionDetailsValue')
    ExecutionEnvironmentVariables = Shapes::StructureShape.new(name: 'ExecutionEnvironmentVariables')
    ExecutionEnvironmentVariablesMap = Shapes::MapShape.new(name: 'ExecutionEnvironmentVariablesMap')
    ExecutionEnvironmentVariablesMapKeyString = Shapes::StringShape.new(name: 'ExecutionEnvironmentVariablesMapKeyString')
    ExecutionEnvironmentVariablesMapValueString = Shapes::StringShape.new(name: 'ExecutionEnvironmentVariablesMapValueString')
    ExecutionPriority = Shapes::IntegerShape.new(name: 'ExecutionPriority')
    ExecutionResult = Shapes::MapShape.new(name: 'ExecutionResult')
    ExecutionResultKey = Shapes::StringShape.new(name: 'ExecutionResultKey')
    ExecutionResultValue = Shapes::StringShape.new(name: 'ExecutionResultValue')
    ExecutionState = Shapes::StringShape.new(name: 'ExecutionState')
    ExecutionStatus = Shapes::StructureShape.new(name: 'ExecutionStatus')
    ExecutionSummaries = Shapes::ListShape.new(name: 'ExecutionSummaries')
    ExecutionSummary = Shapes::StructureShape.new(name: 'ExecutionSummary')
    ExportDataType = Shapes::StringShape.new(name: 'ExportDataType')
    ExportDataTypeList = Shapes::ListShape.new(name: 'ExportDataTypeList')
    ExportErrorReportLocation = Shapes::StructureShape.new(name: 'ExportErrorReportLocation')
    ExportJobSummary = Shapes::StructureShape.new(name: 'ExportJobSummary')
    ExportJobSummaryList = Shapes::ListShape.new(name: 'ExportJobSummaryList')
    Expression = Shapes::StringShape.new(name: 'Expression')
    ExpressionVariable = Shapes::StructureShape.new(name: 'ExpressionVariable')
    ExpressionVariables = Shapes::ListShape.new(name: 'ExpressionVariables')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    FailedDataSegmentAssociation = Shapes::StructureShape.new(name: 'FailedDataSegmentAssociation')
    FailedDataSegmentAssociations = Shapes::ListShape.new(name: 'FailedDataSegmentAssociations')
    FailedDataSegmentDeletion = Shapes::StructureShape.new(name: 'FailedDataSegmentDeletion')
    FailedDataSegmentDeletions = Shapes::ListShape.new(name: 'FailedDataSegmentDeletions')
    FailedDataSegmentDisassociation = Shapes::StructureShape.new(name: 'FailedDataSegmentDisassociation')
    FailedDataSegmentDisassociations = Shapes::ListShape.new(name: 'FailedDataSegmentDisassociations')
    File = Shapes::StructureShape.new(name: 'File')
    FileFormat = Shapes::StructureShape.new(name: 'FileFormat')
    Files = Shapes::ListShape.new(name: 'Files')
    Float = Shapes::FloatShape.new(name: 'Float')
    FormatSettings = Shapes::StructureShape.new(name: 'FormatSettings')
    ForwardingConfig = Shapes::StructureShape.new(name: 'ForwardingConfig')
    ForwardingConfigState = Shapes::StringShape.new(name: 'ForwardingConfigState')
    GatewayCapabilitySummaries = Shapes::ListShape.new(name: 'GatewayCapabilitySummaries')
    GatewayCapabilitySummary = Shapes::StructureShape.new(name: 'GatewayCapabilitySummary')
    GatewayName = Shapes::StringShape.new(name: 'GatewayName')
    GatewayPlatform = Shapes::StructureShape.new(name: 'GatewayPlatform')
    GatewaySummaries = Shapes::ListShape.new(name: 'GatewaySummaries')
    GatewaySummary = Shapes::StructureShape.new(name: 'GatewaySummary')
    GatewayVersion = Shapes::StringShape.new(name: 'GatewayVersion')
    GetAssetPropertyAggregatesRequest = Shapes::StructureShape.new(name: 'GetAssetPropertyAggregatesRequest')
    GetAssetPropertyAggregatesResponse = Shapes::StructureShape.new(name: 'GetAssetPropertyAggregatesResponse')
    GetAssetPropertyValueAggregatesMaxResults = Shapes::IntegerShape.new(name: 'GetAssetPropertyValueAggregatesMaxResults')
    GetAssetPropertyValueHistoryMaxResults = Shapes::IntegerShape.new(name: 'GetAssetPropertyValueHistoryMaxResults')
    GetAssetPropertyValueHistoryRequest = Shapes::StructureShape.new(name: 'GetAssetPropertyValueHistoryRequest')
    GetAssetPropertyValueHistoryResponse = Shapes::StructureShape.new(name: 'GetAssetPropertyValueHistoryResponse')
    GetAssetPropertyValueRequest = Shapes::StructureShape.new(name: 'GetAssetPropertyValueRequest')
    GetAssetPropertyValueResponse = Shapes::StructureShape.new(name: 'GetAssetPropertyValueResponse')
    GetCaptureDataNextToken = Shapes::StringShape.new(name: 'GetCaptureDataNextToken')
    GetCaptureDataRequest = Shapes::StructureShape.new(name: 'GetCaptureDataRequest')
    GetCaptureDataResponse = Shapes::StructureShape.new(name: 'GetCaptureDataResponse')
    GetInterpolatedAssetPropertyValuesRequest = Shapes::StructureShape.new(name: 'GetInterpolatedAssetPropertyValuesRequest')
    GetInterpolatedAssetPropertyValuesResponse = Shapes::StructureShape.new(name: 'GetInterpolatedAssetPropertyValuesResponse')
    GetQueryResultsRequest = Shapes::StructureShape.new(name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Shapes::StructureShape.new(name: 'GetQueryResultsResponse')
    GetSearchResultsRequest = Shapes::StructureShape.new(name: 'GetSearchResultsRequest')
    GetSearchResultsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetSearchResultsRequestMaxResultsInteger')
    GetSearchResultsResponse = Shapes::StructureShape.new(name: 'GetSearchResultsResponse')
    Greengrass = Shapes::StructureShape.new(name: 'Greengrass')
    GreengrassV2 = Shapes::StructureShape.new(name: 'GreengrassV2')
    GroupId = Shapes::StringShape.new(name: 'GroupId')
    GroupIdFilterList = Shapes::ListShape.new(name: 'GroupIdFilterList')
    GroupIdentity = Shapes::StructureShape.new(name: 'GroupIdentity')
    HierarchyMapping = Shapes::StructureShape.new(name: 'HierarchyMapping')
    HierarchyMappings = Shapes::ListShape.new(name: 'HierarchyMappings')
    IAMRoleIdentity = Shapes::StructureShape.new(name: 'IAMRoleIdentity')
    IAMUserIdentity = Shapes::StructureShape.new(name: 'IAMUserIdentity')
    ID = Shapes::StringShape.new(name: 'ID')
    IDs = Shapes::ListShape.new(name: 'IDs')
    IamArn = Shapes::StringShape.new(name: 'IamArn')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    IdentityId = Shapes::StringShape.new(name: 'IdentityId')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageFile = Shapes::StructureShape.new(name: 'ImageFile')
    ImageFileData = Shapes::BlobShape.new(name: 'ImageFileData')
    ImageFileType = Shapes::StringShape.new(name: 'ImageFileType')
    ImageLocation = Shapes::StructureShape.new(name: 'ImageLocation')
    InputProperties = Shapes::StringShape.new(name: 'InputProperties')
    InterfaceDetails = Shapes::ListShape.new(name: 'InterfaceDetails')
    InterfaceRelationship = Shapes::StructureShape.new(name: 'InterfaceRelationship')
    InterfaceRelationshipSummaries = Shapes::ListShape.new(name: 'InterfaceRelationshipSummaries')
    InterfaceRelationshipSummary = Shapes::StructureShape.new(name: 'InterfaceRelationshipSummary')
    InterfaceSummaries = Shapes::ListShape.new(name: 'InterfaceSummaries')
    InterfaceSummary = Shapes::StructureShape.new(name: 'InterfaceSummary')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InterpolatedAssetPropertyValue = Shapes::StructureShape.new(name: 'InterpolatedAssetPropertyValue')
    InterpolatedAssetPropertyValues = Shapes::ListShape.new(name: 'InterpolatedAssetPropertyValues')
    InterpolationType = Shapes::StringShape.new(name: 'InterpolationType')
    Interval = Shapes::StringShape.new(name: 'Interval')
    IntervalInSeconds = Shapes::IntegerShape.new(name: 'IntervalInSeconds')
    IntervalWindowInSeconds = Shapes::IntegerShape.new(name: 'IntervalWindowInSeconds')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvocationOutput = Shapes::StructureShape.new(name: 'InvocationOutput')
    InvokeAssistantRequest = Shapes::StructureShape.new(name: 'InvokeAssistantRequest')
    InvokeAssistantResponse = Shapes::StructureShape.new(name: 'InvokeAssistantResponse')
    IotCoreThingName = Shapes::StringShape.new(name: 'IotCoreThingName')
    JobConfiguration = Shapes::StructureShape.new(name: 'JobConfiguration')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummaries = Shapes::ListShape.new(name: 'JobSummaries')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobType = Shapes::StringShape.new(name: 'JobType')
    KendraSourceDetail = Shapes::StructureShape.new(name: 'KendraSourceDetail')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAccessPoliciesRequest = Shapes::StructureShape.new(name: 'ListAccessPoliciesRequest')
    ListAccessPoliciesResponse = Shapes::StructureShape.new(name: 'ListAccessPoliciesResponse')
    ListActionsRequest = Shapes::StructureShape.new(name: 'ListActionsRequest')
    ListActionsResponse = Shapes::StructureShape.new(name: 'ListActionsResponse')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListAssetModelCompositeModelsRequest = Shapes::StructureShape.new(name: 'ListAssetModelCompositeModelsRequest')
    ListAssetModelCompositeModelsResponse = Shapes::StructureShape.new(name: 'ListAssetModelCompositeModelsResponse')
    ListAssetModelPropertiesFilter = Shapes::StringShape.new(name: 'ListAssetModelPropertiesFilter')
    ListAssetModelPropertiesRequest = Shapes::StructureShape.new(name: 'ListAssetModelPropertiesRequest')
    ListAssetModelPropertiesResponse = Shapes::StructureShape.new(name: 'ListAssetModelPropertiesResponse')
    ListAssetModelsRequest = Shapes::StructureShape.new(name: 'ListAssetModelsRequest')
    ListAssetModelsResponse = Shapes::StructureShape.new(name: 'ListAssetModelsResponse')
    ListAssetModelsTypeFilter = Shapes::ListShape.new(name: 'ListAssetModelsTypeFilter')
    ListAssetPropertiesFilter = Shapes::StringShape.new(name: 'ListAssetPropertiesFilter')
    ListAssetPropertiesRequest = Shapes::StructureShape.new(name: 'ListAssetPropertiesRequest')
    ListAssetPropertiesResponse = Shapes::StructureShape.new(name: 'ListAssetPropertiesResponse')
    ListAssetRelationshipsRequest = Shapes::StructureShape.new(name: 'ListAssetRelationshipsRequest')
    ListAssetRelationshipsResponse = Shapes::StructureShape.new(name: 'ListAssetRelationshipsResponse')
    ListAssetsFilter = Shapes::StringShape.new(name: 'ListAssetsFilter')
    ListAssetsRequest = Shapes::StructureShape.new(name: 'ListAssetsRequest')
    ListAssetsResponse = Shapes::StructureShape.new(name: 'ListAssetsResponse')
    ListAssociatedAssetsRequest = Shapes::StructureShape.new(name: 'ListAssociatedAssetsRequest')
    ListAssociatedAssetsResponse = Shapes::StructureShape.new(name: 'ListAssociatedAssetsResponse')
    ListBulkImportJobsFilter = Shapes::StringShape.new(name: 'ListBulkImportJobsFilter')
    ListBulkImportJobsRequest = Shapes::StructureShape.new(name: 'ListBulkImportJobsRequest')
    ListBulkImportJobsResponse = Shapes::StructureShape.new(name: 'ListBulkImportJobsResponse')
    ListCompositionRelationshipsRequest = Shapes::StructureShape.new(name: 'ListCompositionRelationshipsRequest')
    ListCompositionRelationshipsResponse = Shapes::StructureShape.new(name: 'ListCompositionRelationshipsResponse')
    ListComputationModelDataBindingUsagesRequest = Shapes::StructureShape.new(name: 'ListComputationModelDataBindingUsagesRequest')
    ListComputationModelDataBindingUsagesResponse = Shapes::StructureShape.new(name: 'ListComputationModelDataBindingUsagesResponse')
    ListComputationModelResolveToResourcesRequest = Shapes::StructureShape.new(name: 'ListComputationModelResolveToResourcesRequest')
    ListComputationModelResolveToResourcesResponse = Shapes::StructureShape.new(name: 'ListComputationModelResolveToResourcesResponse')
    ListComputationModelsRequest = Shapes::StructureShape.new(name: 'ListComputationModelsRequest')
    ListComputationModelsResponse = Shapes::StructureShape.new(name: 'ListComputationModelsResponse')
    ListDashboardsRequest = Shapes::StructureShape.new(name: 'ListDashboardsRequest')
    ListDashboardsResponse = Shapes::StructureShape.new(name: 'ListDashboardsResponse')
    ListDatasetDataSegmentRelationshipsRequest = Shapes::StructureShape.new(name: 'ListDatasetDataSegmentRelationshipsRequest')
    ListDatasetDataSegmentRelationshipsResponse = Shapes::StructureShape.new(name: 'ListDatasetDataSegmentRelationshipsResponse')
    ListDatasetDataSegmentsRequest = Shapes::StructureShape.new(name: 'ListDatasetDataSegmentsRequest')
    ListDatasetDataSegmentsResponse = Shapes::StructureShape.new(name: 'ListDatasetDataSegmentsResponse')
    ListDatasetExportJobsRequest = Shapes::StructureShape.new(name: 'ListDatasetExportJobsRequest')
    ListDatasetExportJobsResponse = Shapes::StructureShape.new(name: 'ListDatasetExportJobsResponse')
    ListDatasetsRequest = Shapes::StructureShape.new(name: 'ListDatasetsRequest')
    ListDatasetsResponse = Shapes::StructureShape.new(name: 'ListDatasetsResponse')
    ListEnrichmentJobsRequest = Shapes::StructureShape.new(name: 'ListEnrichmentJobsRequest')
    ListEnrichmentJobsResponse = Shapes::StructureShape.new(name: 'ListEnrichmentJobsResponse')
    ListExecutionsRequest = Shapes::StructureShape.new(name: 'ListExecutionsRequest')
    ListExecutionsResponse = Shapes::StructureShape.new(name: 'ListExecutionsResponse')
    ListExportJobsMaxResults = Shapes::IntegerShape.new(name: 'ListExportJobsMaxResults')
    ListExportJobsNextToken = Shapes::StringShape.new(name: 'ListExportJobsNextToken')
    ListGatewaysRequest = Shapes::StructureShape.new(name: 'ListGatewaysRequest')
    ListGatewaysResponse = Shapes::StructureShape.new(name: 'ListGatewaysResponse')
    ListInterfaceRelationshipsRequest = Shapes::StructureShape.new(name: 'ListInterfaceRelationshipsRequest')
    ListInterfaceRelationshipsResponse = Shapes::StructureShape.new(name: 'ListInterfaceRelationshipsResponse')
    ListPipelineExecutionsRequest = Shapes::StructureShape.new(name: 'ListPipelineExecutionsRequest')
    ListPipelineExecutionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPipelineExecutionsRequestMaxResultsInteger')
    ListPipelineExecutionsResponse = Shapes::StructureShape.new(name: 'ListPipelineExecutionsResponse')
    ListPipelinesRequest = Shapes::StructureShape.new(name: 'ListPipelinesRequest')
    ListPipelinesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPipelinesRequestMaxResultsInteger')
    ListPipelinesResponse = Shapes::StructureShape.new(name: 'ListPipelinesResponse')
    ListPortalsRequest = Shapes::StructureShape.new(name: 'ListPortalsRequest')
    ListPortalsResponse = Shapes::StructureShape.new(name: 'ListPortalsResponse')
    ListProjectAssetsRequest = Shapes::StructureShape.new(name: 'ListProjectAssetsRequest')
    ListProjectAssetsResponse = Shapes::StructureShape.new(name: 'ListProjectAssetsResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ListQueriesRequest = Shapes::StructureShape.new(name: 'ListQueriesRequest')
    ListQueriesResponse = Shapes::StructureShape.new(name: 'ListQueriesResponse')
    ListSearchesFilters = Shapes::StructureShape.new(name: 'ListSearchesFilters')
    ListSearchesRequest = Shapes::StructureShape.new(name: 'ListSearchesRequest')
    ListSearchesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSearchesRequestMaxResultsInteger')
    ListSearchesResponse = Shapes::StructureShape.new(name: 'ListSearchesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTasksRequest = Shapes::StructureShape.new(name: 'ListTasksRequest')
    ListTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTasksRequestMaxResultsInteger')
    ListTasksResponse = Shapes::StructureShape.new(name: 'ListTasksResponse')
    ListTimeSeriesRequest = Shapes::StructureShape.new(name: 'ListTimeSeriesRequest')
    ListTimeSeriesResponse = Shapes::StructureShape.new(name: 'ListTimeSeriesResponse')
    ListTimeSeriesType = Shapes::StringShape.new(name: 'ListTimeSeriesType')
    ListWorkspacesRequest = Shapes::StructureShape.new(name: 'ListWorkspacesRequest')
    ListWorkspacesResponse = Shapes::StructureShape.new(name: 'ListWorkspacesResponse')
    Location = Shapes::StructureShape.new(name: 'Location')
    LoggingLevel = Shapes::StringShape.new(name: 'LoggingLevel')
    LoggingOptions = Shapes::StructureShape.new(name: 'LoggingOptions')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Macro = Shapes::StringShape.new(name: 'Macro')
    MatchByPropertyName = Shapes::BooleanShape.new(name: 'MatchByPropertyName')
    MatchedDataBinding = Shapes::StructureShape.new(name: 'MatchedDataBinding')
    MaxInterpolatedResults = Shapes::IntegerShape.new(name: 'MaxInterpolatedResults')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Measurement = Shapes::StructureShape.new(name: 'Measurement')
    MeasurementProcessingConfig = Shapes::StructureShape.new(name: 'MeasurementProcessingConfig')
    MessageInput = Shapes::StringShape.new(name: 'MessageInput')
    Metadata = Shapes::MapShape.new(name: 'Metadata')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataValue = Shapes::StringShape.new(name: 'MetadataValue')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricProcessingConfig = Shapes::StructureShape.new(name: 'MetricProcessingConfig')
    MetricWindow = Shapes::StructureShape.new(name: 'MetricWindow')
    MonitorErrorCode = Shapes::StringShape.new(name: 'MonitorErrorCode')
    MonitorErrorDetails = Shapes::StructureShape.new(name: 'MonitorErrorDetails')
    MonitorErrorMessage = Shapes::StringShape.new(name: 'MonitorErrorMessage')
    Mount = Shapes::StructureShape.new(name: 'Mount')
    MountList = Shapes::ListShape.new(name: 'MountList')
    MountOverrides = Shapes::StructureShape.new(name: 'MountOverrides')
    MountRelativePath = Shapes::StringShape.new(name: 'MountRelativePath')
    MountS3AccessPointArn = Shapes::StringShape.new(name: 'MountS3AccessPointArn')
    MountS3KeyPrefix = Shapes::StringShape.new(name: 'MountS3KeyPrefix')
    MountSource = Shapes::UnionShape.new(name: 'MountSource')
    MountStorageType = Shapes::StringShape.new(name: 'MountStorageType')
    Mp4 = Shapes::StructureShape.new(name: 'Mp4')
    MultiLayerStorage = Shapes::StructureShape.new(name: 'MultiLayerStorage')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumberOfDays = Shapes::IntegerShape.new(name: 'NumberOfDays')
    Offset = Shapes::StringShape.new(name: 'Offset')
    OffsetInNanos = Shapes::IntegerShape.new(name: 'OffsetInNanos')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Parquet = Shapes::StructureShape.new(name: 'Parquet')
    Permission = Shapes::StringShape.new(name: 'Permission')
    PipelineErrorCode = Shapes::StringShape.new(name: 'PipelineErrorCode')
    PipelineExecutionState = Shapes::StringShape.new(name: 'PipelineExecutionState')
    PipelineExecutionStateDetails = Shapes::StructureShape.new(name: 'PipelineExecutionStateDetails')
    PipelineExecutionStatus = Shapes::StructureShape.new(name: 'PipelineExecutionStatus')
    PipelineExecutionSummary = Shapes::StructureShape.new(name: 'PipelineExecutionSummary')
    PipelineExecutionSummaryList = Shapes::ListShape.new(name: 'PipelineExecutionSummaryList')
    PipelineSummaries = Shapes::ListShape.new(name: 'PipelineSummaries')
    PipelineSummary = Shapes::StructureShape.new(name: 'PipelineSummary')
    PortalClientId = Shapes::StringShape.new(name: 'PortalClientId')
    PortalResource = Shapes::StructureShape.new(name: 'PortalResource')
    PortalState = Shapes::StringShape.new(name: 'PortalState')
    PortalStatus = Shapes::StructureShape.new(name: 'PortalStatus')
    PortalSummaries = Shapes::ListShape.new(name: 'PortalSummaries')
    PortalSummary = Shapes::StructureShape.new(name: 'PortalSummary')
    PortalTools = Shapes::ListShape.new(name: 'PortalTools')
    PortalType = Shapes::StringShape.new(name: 'PortalType')
    PortalTypeConfiguration = Shapes::MapShape.new(name: 'PortalTypeConfiguration')
    PortalTypeEntry = Shapes::StructureShape.new(name: 'PortalTypeEntry')
    PortalTypeKey = Shapes::StringShape.new(name: 'PortalTypeKey')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    PrimitiveBoolean = Shapes::BooleanShape.new(name: 'PrimitiveBoolean')
    ProcessingInput = Shapes::UnionShape.new(name: 'ProcessingInput')
    ProcessingType = Shapes::StringShape.new(name: 'ProcessingType')
    ProcessingUnit = Shapes::StringShape.new(name: 'ProcessingUnit')
    ProjectResource = Shapes::StructureShape.new(name: 'ProjectResource')
    ProjectSummaries = Shapes::ListShape.new(name: 'ProjectSummaries')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    Property = Shapes::StructureShape.new(name: 'Property')
    PropertyAlias = Shapes::StringShape.new(name: 'PropertyAlias')
    PropertyDataType = Shapes::StringShape.new(name: 'PropertyDataType')
    PropertyMapping = Shapes::StructureShape.new(name: 'PropertyMapping')
    PropertyMappingConfiguration = Shapes::StructureShape.new(name: 'PropertyMappingConfiguration')
    PropertyMappings = Shapes::ListShape.new(name: 'PropertyMappings')
    PropertyNotification = Shapes::StructureShape.new(name: 'PropertyNotification')
    PropertyNotificationState = Shapes::StringShape.new(name: 'PropertyNotificationState')
    PropertyNotificationTopic = Shapes::StringShape.new(name: 'PropertyNotificationTopic')
    PropertyType = Shapes::StructureShape.new(name: 'PropertyType')
    PropertyUnit = Shapes::StringShape.new(name: 'PropertyUnit')
    PropertyValueBooleanValue = Shapes::BooleanShape.new(name: 'PropertyValueBooleanValue')
    PropertyValueDoubleValue = Shapes::FloatShape.new(name: 'PropertyValueDoubleValue')
    PropertyValueIntegerValue = Shapes::IntegerShape.new(name: 'PropertyValueIntegerValue')
    PropertyValueNullValue = Shapes::StructureShape.new(name: 'PropertyValueNullValue')
    PropertyValueStringValue = Shapes::StringShape.new(name: 'PropertyValueStringValue')
    PutAssetModelInterfaceRelationshipRequest = Shapes::StructureShape.new(name: 'PutAssetModelInterfaceRelationshipRequest')
    PutAssetModelInterfaceRelationshipResponse = Shapes::StructureShape.new(name: 'PutAssetModelInterfaceRelationshipResponse')
    PutAssetPropertyValueEntries = Shapes::ListShape.new(name: 'PutAssetPropertyValueEntries')
    PutAssetPropertyValueEntry = Shapes::StructureShape.new(name: 'PutAssetPropertyValueEntry')
    PutDefaultEncryptionConfigurationRequest = Shapes::StructureShape.new(name: 'PutDefaultEncryptionConfigurationRequest')
    PutDefaultEncryptionConfigurationResponse = Shapes::StructureShape.new(name: 'PutDefaultEncryptionConfigurationResponse')
    PutLoggingOptionsRequest = Shapes::StructureShape.new(name: 'PutLoggingOptionsRequest')
    PutLoggingOptionsResponse = Shapes::StructureShape.new(name: 'PutLoggingOptionsResponse')
    PutStorageConfigurationRequest = Shapes::StructureShape.new(name: 'PutStorageConfigurationRequest')
    PutStorageConfigurationResponse = Shapes::StructureShape.new(name: 'PutStorageConfigurationResponse')
    Qualities = Shapes::ListShape.new(name: 'Qualities')
    Quality = Shapes::StringShape.new(name: 'Quality')
    QueryErrorMessage = Shapes::StringShape.new(name: 'QueryErrorMessage')
    QueryFilter = Shapes::StringShape.new(name: 'QueryFilter')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryListNextToken = Shapes::StringShape.new(name: 'QueryListNextToken')
    QueryMaxResults = Shapes::IntegerShape.new(name: 'QueryMaxResults')
    QueryNextToken = Shapes::StringShape.new(name: 'QueryNextToken')
    QueryStatement = Shapes::StringShape.new(name: 'QueryStatement')
    QueryStatistics = Shapes::StructureShape.new(name: 'QueryStatistics')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    QuerySummary = Shapes::StructureShape.new(name: 'QuerySummary')
    QuerySummaryList = Shapes::ListShape.new(name: 'QuerySummaryList')
    QueryTimeoutException = Shapes::StructureShape.new(name: 'QueryTimeoutException')
    RawValueType = Shapes::StringShape.new(name: 'RawValueType')
    Reference = Shapes::StructureShape.new(name: 'Reference')
    Resolution = Shapes::StringShape.new(name: 'Resolution')
    ResolveTo = Shapes::StructureShape.new(name: 'ResolveTo')
    ResolveToResourceType = Shapes::StringShape.new(name: 'ResolveToResourceType')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceError = Shapes::StructureShape.new(name: 'ResourceError')
    ResourceErrorCode = Shapes::StringShape.new(name: 'ResourceErrorCode')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceState = Shapes::StringShape.new(name: 'ResourceState')
    ResourceStatus = Shapes::StructureShape.new(name: 'ResourceStatus')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    RestrictedDescription = Shapes::StringShape.new(name: 'RestrictedDescription')
    RestrictedName = Shapes::StringShape.new(name: 'RestrictedName')
    Result = Shapes::ListShape.new(name: 'Result')
    ResultProperty = Shapes::StringShape.new(name: 'ResultProperty')
    RetentionPeriod = Shapes::StructureShape.new(name: 'RetentionPeriod')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    Rows = Shapes::ListShape.new(name: 'Rows')
    S3AccessPointSource = Shapes::StructureShape.new(name: 'S3AccessPointSource')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SSOApplicationId = Shapes::StringShape.new(name: 'SSOApplicationId')
    ScalarType = Shapes::StringShape.new(name: 'ScalarType')
    ScalarValue = Shapes::StringShape.new(name: 'ScalarValue')
    SearchFilters = Shapes::StructureShape.new(name: 'SearchFilters')
    SearchId = Shapes::StringShape.new(name: 'SearchId')
    SearchQueryStatement = Shapes::StringShape.new(name: 'SearchQueryStatement')
    SearchResult = Shapes::StructureShape.new(name: 'SearchResult')
    SearchResultList = Shapes::ListShape.new(name: 'SearchResultList')
    SearchStatus = Shapes::StringShape.new(name: 'SearchStatus')
    SearchStatusFilterList = Shapes::ListShape.new(name: 'SearchStatusFilterList')
    SearchSummaries = Shapes::ListShape.new(name: 'SearchSummaries')
    SearchSummary = Shapes::StructureShape.new(name: 'SearchSummary')
    SearchType = Shapes::StringShape.new(name: 'SearchType')
    SearchTypeFilterList = Shapes::ListShape.new(name: 'SearchTypeFilterList')
    SelectAll = Shapes::StringShape.new(name: 'SelectAll')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SessionConfig = Shapes::StructureShape.new(name: 'SessionConfig')
    SiemensIE = Shapes::StructureShape.new(name: 'SiemensIE')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceDetail = Shapes::StructureShape.new(name: 'SourceDetail')
    StartPipelineExecutionRequest = Shapes::StructureShape.new(name: 'StartPipelineExecutionRequest')
    StartPipelineExecutionResponse = Shapes::StructureShape.new(name: 'StartPipelineExecutionResponse')
    StartQueryRequest = Shapes::StructureShape.new(name: 'StartQueryRequest')
    StartQueryResponse = Shapes::StructureShape.new(name: 'StartQueryResponse')
    StartSearchRequest = Shapes::StructureShape.new(name: 'StartSearchRequest')
    StartSearchResponse = Shapes::StructureShape.new(name: 'StartSearchResponse')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    StorageType = Shapes::StringShape.new(name: 'StorageType')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetResource = Shapes::StructureShape.new(name: 'TargetResource')
    TargetResourceType = Shapes::StringShape.new(name: 'TargetResourceType')
    TaskConfiguration = Shapes::UnionShape.new(name: 'TaskConfiguration')
    TaskSummaries = Shapes::ListShape.new(name: 'TaskSummaries')
    TaskSummary = Shapes::StructureShape.new(name: 'TaskSummary')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeInNanos = Shapes::StructureShape.new(name: 'TimeInNanos')
    TimeInSeconds = Shapes::IntegerShape.new(name: 'TimeInSeconds')
    TimeInterval = Shapes::StructureShape.new(name: 'TimeInterval')
    TimeIntervalList = Shapes::ListShape.new(name: 'TimeIntervalList')
    TimeOrdering = Shapes::StringShape.new(name: 'TimeOrdering')
    TimeSeriesId = Shapes::StringShape.new(name: 'TimeSeriesId')
    TimeSeriesIdList = Shapes::ListShape.new(name: 'TimeSeriesIdList')
    TimeSeriesSummaries = Shapes::ListShape.new(name: 'TimeSeriesSummaries')
    TimeSeriesSummary = Shapes::StructureShape.new(name: 'TimeSeriesSummary')
    TimeoutSeconds = Shapes::IntegerShape.new(name: 'TimeoutSeconds')
    TimeseriesItem = Shapes::StructureShape.new(name: 'TimeseriesItem')
    TimeseriesList = Shapes::ListShape.new(name: 'TimeseriesList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Timestamps = Shapes::ListShape.new(name: 'Timestamps')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    Trace = Shapes::StructureShape.new(name: 'Trace')
    Transform = Shapes::StructureShape.new(name: 'Transform')
    TransformProcessingConfig = Shapes::StructureShape.new(name: 'TransformProcessingConfig')
    TraversalDirection = Shapes::StringShape.new(name: 'TraversalDirection')
    TraversalType = Shapes::StringShape.new(name: 'TraversalType')
    TrimSettings = Shapes::StructureShape.new(name: 'TrimSettings')
    TumblingWindow = Shapes::StructureShape.new(name: 'TumblingWindow')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    Unlimited = Shapes::BooleanShape.new(name: 'Unlimited')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccessPolicyRequest = Shapes::StructureShape.new(name: 'UpdateAccessPolicyRequest')
    UpdateAccessPolicyResponse = Shapes::StructureShape.new(name: 'UpdateAccessPolicyResponse')
    UpdateAssetModelCompositeModelRequest = Shapes::StructureShape.new(name: 'UpdateAssetModelCompositeModelRequest')
    UpdateAssetModelCompositeModelResponse = Shapes::StructureShape.new(name: 'UpdateAssetModelCompositeModelResponse')
    UpdateAssetModelRequest = Shapes::StructureShape.new(name: 'UpdateAssetModelRequest')
    UpdateAssetModelResponse = Shapes::StructureShape.new(name: 'UpdateAssetModelResponse')
    UpdateAssetPropertyRequest = Shapes::StructureShape.new(name: 'UpdateAssetPropertyRequest')
    UpdateAssetRequest = Shapes::StructureShape.new(name: 'UpdateAssetRequest')
    UpdateAssetResponse = Shapes::StructureShape.new(name: 'UpdateAssetResponse')
    UpdateComputationModelRequest = Shapes::StructureShape.new(name: 'UpdateComputationModelRequest')
    UpdateComputationModelResponse = Shapes::StructureShape.new(name: 'UpdateComputationModelResponse')
    UpdateDashboardRequest = Shapes::StructureShape.new(name: 'UpdateDashboardRequest')
    UpdateDashboardResponse = Shapes::StructureShape.new(name: 'UpdateDashboardResponse')
    UpdateDatasetRequest = Shapes::StructureShape.new(name: 'UpdateDatasetRequest')
    UpdateDatasetResponse = Shapes::StructureShape.new(name: 'UpdateDatasetResponse')
    UpdateGatewayCapabilityConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateGatewayCapabilityConfigurationRequest')
    UpdateGatewayCapabilityConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateGatewayCapabilityConfigurationResponse')
    UpdateGatewayRequest = Shapes::StructureShape.new(name: 'UpdateGatewayRequest')
    UpdatePipelineRequest = Shapes::StructureShape.new(name: 'UpdatePipelineRequest')
    UpdatePipelineResponse = Shapes::StructureShape.new(name: 'UpdatePipelineResponse')
    UpdatePortalRequest = Shapes::StructureShape.new(name: 'UpdatePortalRequest')
    UpdatePortalResponse = Shapes::StructureShape.new(name: 'UpdatePortalResponse')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResponse = Shapes::StructureShape.new(name: 'UpdateProjectResponse')
    UpdateTaskRequest = Shapes::StructureShape.new(name: 'UpdateTaskRequest')
    UpdateTaskResponse = Shapes::StructureShape.new(name: 'UpdateTaskResponse')
    UpdateWorkspaceRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceRequest')
    UpdateWorkspaceResponse = Shapes::StructureShape.new(name: 'UpdateWorkspaceResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserIdentity = Shapes::StructureShape.new(name: 'UserIdentity')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StructureShape.new(name: 'VariableValue')
    Variant = Shapes::StructureShape.new(name: 'Variant')
    Version = Shapes::StringShape.new(name: 'Version')
    VideoDataType = Shapes::StringShape.new(name: 'VideoDataType')
    WarmTierRetentionPeriod = Shapes::StructureShape.new(name: 'WarmTierRetentionPeriod')
    WarmTierState = Shapes::StringShape.new(name: 'WarmTierState')
    WorkspaceEncryptionConfiguration = Shapes::StructureShape.new(name: 'WorkspaceEncryptionConfiguration')
    WorkspaceEncryptionConfigurationInfo = Shapes::StructureShape.new(name: 'WorkspaceEncryptionConfigurationInfo')
    WorkspaceErrorDetails = Shapes::StructureShape.new(name: 'WorkspaceErrorDetails')
    WorkspaceName = Shapes::StringShape.new(name: 'WorkspaceName')
    WorkspaceState = Shapes::StringShape.new(name: 'WorkspaceState')
    WorkspaceStatus = Shapes::StructureShape.new(name: 'WorkspaceStatus')
    WorkspaceSummaries = Shapes::ListShape.new(name: 'WorkspaceSummaries')
    WorkspaceSummary = Shapes::StructureShape.new(name: 'WorkspaceSummary')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessPolicySummaries.member = Shapes::ShapeRef.new(shape: AccessPolicySummary)

    AccessPolicySummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AccessPolicySummary.add_member(:identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "identity"))
    AccessPolicySummary.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    AccessPolicySummary.add_member(:permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "permission"))
    AccessPolicySummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    AccessPolicySummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    AccessPolicySummary.struct_class = Types::AccessPolicySummary

    ActionDefinition.add_member(:action_definition_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "actionDefinitionId"))
    ActionDefinition.add_member(:action_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionName"))
    ActionDefinition.add_member(:action_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "actionType"))
    ActionDefinition.struct_class = Types::ActionDefinition

    ActionDefinitions.member = Shapes::ShapeRef.new(shape: ActionDefinition)

    ActionPayload.add_member(:string_value, Shapes::ShapeRef.new(shape: ActionPayloadString, required: true, location_name: "stringValue"))
    ActionPayload.struct_class = Types::ActionPayload

    ActionSummaries.member = Shapes::ShapeRef.new(shape: ActionSummary)

    ActionSummary.add_member(:action_id, Shapes::ShapeRef.new(shape: ID, location_name: "actionId"))
    ActionSummary.add_member(:action_definition_id, Shapes::ShapeRef.new(shape: ID, location_name: "actionDefinitionId"))
    ActionSummary.add_member(:target_resource, Shapes::ShapeRef.new(shape: TargetResource, location_name: "targetResource"))
    ActionSummary.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    ActionSummary.struct_class = Types::ActionSummary

    AggregateTypes.member = Shapes::ShapeRef.new(shape: AggregateType)

    AggregatedValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    AggregatedValue.add_member(:quality, Shapes::ShapeRef.new(shape: Quality, location_name: "quality"))
    AggregatedValue.add_member(:value, Shapes::ShapeRef.new(shape: Aggregates, required: true, location_name: "value"))
    AggregatedValue.struct_class = Types::AggregatedValue

    AggregatedValues.member = Shapes::ShapeRef.new(shape: AggregatedValue)

    Aggregates.add_member(:average, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "average"))
    Aggregates.add_member(:count, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "count"))
    Aggregates.add_member(:maximum, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "maximum"))
    Aggregates.add_member(:minimum, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "minimum"))
    Aggregates.add_member(:sum, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "sum"))
    Aggregates.add_member(:standard_deviation, Shapes::ShapeRef.new(shape: AggregatedDoubleValue, location_name: "standardDeviation"))
    Aggregates.struct_class = Types::Aggregates

    Alarms.add_member(:alarm_role_arn, Shapes::ShapeRef.new(shape: IamArn, required: true, location_name: "alarmRoleArn"))
    Alarms.add_member(:notification_lambda_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "notificationLambdaArn"))
    Alarms.struct_class = Types::Alarms

    Annotation.struct_class = Types::Annotation

    ApplicationList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    ApplicationSummary.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "id"))
    ApplicationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    ApplicationSummary.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "status"))
    ApplicationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ApplicationSummary.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    AssetBindingValueFilter.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    AssetBindingValueFilter.struct_class = Types::AssetBindingValueFilter

    AssetCompositeModel.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetCompositeModel.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetCompositeModel.add_member(:type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "type"))
    AssetCompositeModel.add_member(:properties, Shapes::ShapeRef.new(shape: AssetProperties, required: true, location_name: "properties"))
    AssetCompositeModel.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetCompositeModel.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetCompositeModel.struct_class = Types::AssetCompositeModel

    AssetCompositeModelPath.member = Shapes::ShapeRef.new(shape: AssetCompositeModelPathSegment)

    AssetCompositeModelPathSegment.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetCompositeModelPathSegment.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AssetCompositeModelPathSegment.struct_class = Types::AssetCompositeModelPathSegment

    AssetCompositeModelSummaries.member = Shapes::ShapeRef.new(shape: AssetCompositeModelSummary)

    AssetCompositeModelSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetCompositeModelSummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetCompositeModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetCompositeModelSummary.add_member(:type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "type"))
    AssetCompositeModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AssetCompositeModelSummary.add_member(:path, Shapes::ShapeRef.new(shape: AssetCompositeModelPath, required: true, location_name: "path"))
    AssetCompositeModelSummary.struct_class = Types::AssetCompositeModelSummary

    AssetCompositeModels.member = Shapes::ShapeRef.new(shape: AssetCompositeModel)

    AssetErrorDetails.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    AssetErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: AssetErrorCode, required: true, location_name: "code"))
    AssetErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: AssetErrorMessage, required: true, location_name: "message"))
    AssetErrorDetails.struct_class = Types::AssetErrorDetails

    AssetHierarchies.member = Shapes::ShapeRef.new(shape: AssetHierarchy)

    AssetHierarchy.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetHierarchy.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetHierarchy.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetHierarchy.struct_class = Types::AssetHierarchy

    AssetHierarchyInfo.add_member(:parent_asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "parentAssetId"))
    AssetHierarchyInfo.add_member(:child_asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "childAssetId"))
    AssetHierarchyInfo.struct_class = Types::AssetHierarchyInfo

    AssetIDs.member = Shapes::ShapeRef.new(shape: ID)

    AssetModelBindingValueFilter.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssetModelBindingValueFilter.struct_class = Types::AssetModelBindingValueFilter

    AssetModelCompositeModel.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelCompositeModel.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetModelCompositeModel.add_member(:type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "type"))
    AssetModelCompositeModel.add_member(:properties, Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: "properties"))
    AssetModelCompositeModel.add_member(:id, Shapes::ShapeRef.new(shape: CustomID, location_name: "id"))
    AssetModelCompositeModel.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelCompositeModel.struct_class = Types::AssetModelCompositeModel

    AssetModelCompositeModelDefinition.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelCompositeModelDefinition.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelCompositeModelDefinition.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelCompositeModelDefinition.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetModelCompositeModelDefinition.add_member(:type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "type"))
    AssetModelCompositeModelDefinition.add_member(:properties, Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: "properties"))
    AssetModelCompositeModelDefinition.struct_class = Types::AssetModelCompositeModelDefinition

    AssetModelCompositeModelDefinitions.member = Shapes::ShapeRef.new(shape: AssetModelCompositeModelDefinition)

    AssetModelCompositeModelPath.member = Shapes::ShapeRef.new(shape: AssetModelCompositeModelPathSegment)

    AssetModelCompositeModelPathSegment.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelCompositeModelPathSegment.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AssetModelCompositeModelPathSegment.struct_class = Types::AssetModelCompositeModelPathSegment

    AssetModelCompositeModelSummaries.member = Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummary)

    AssetModelCompositeModelSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetModelCompositeModelSummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelCompositeModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelCompositeModelSummary.add_member(:type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "type"))
    AssetModelCompositeModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetModelCompositeModelSummary.add_member(:path, Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, location_name: "path"))
    AssetModelCompositeModelSummary.struct_class = Types::AssetModelCompositeModelSummary

    AssetModelCompositeModels.member = Shapes::ShapeRef.new(shape: AssetModelCompositeModel)

    AssetModelHierarchies.member = Shapes::ShapeRef.new(shape: AssetModelHierarchy)

    AssetModelHierarchy.add_member(:id, Shapes::ShapeRef.new(shape: CustomID, location_name: "id"))
    AssetModelHierarchy.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelHierarchy.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelHierarchy.add_member(:child_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "childAssetModelId"))
    AssetModelHierarchy.struct_class = Types::AssetModelHierarchy

    AssetModelHierarchyDefinition.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelHierarchyDefinition.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelHierarchyDefinition.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelHierarchyDefinition.add_member(:child_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "childAssetModelId"))
    AssetModelHierarchyDefinition.struct_class = Types::AssetModelHierarchyDefinition

    AssetModelHierarchyDefinitions.member = Shapes::ShapeRef.new(shape: AssetModelHierarchyDefinition)

    AssetModelProperties.member = Shapes::ShapeRef.new(shape: AssetModelProperty)

    AssetModelProperty.add_member(:id, Shapes::ShapeRef.new(shape: CustomID, location_name: "id"))
    AssetModelProperty.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelProperty.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelProperty.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetModelProperty.add_member(:data_type_spec, Shapes::ShapeRef.new(shape: Name, location_name: "dataTypeSpec"))
    AssetModelProperty.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetModelProperty.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, required: true, location_name: "type"))
    AssetModelProperty.add_member(:path, Shapes::ShapeRef.new(shape: AssetModelPropertyPath, location_name: "path"))
    AssetModelProperty.struct_class = Types::AssetModelProperty

    AssetModelPropertyBindingValue.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssetModelPropertyBindingValue.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "propertyId"))
    AssetModelPropertyBindingValue.struct_class = Types::AssetModelPropertyBindingValue

    AssetModelPropertyBindingValueFilter.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssetModelPropertyBindingValueFilter.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "propertyId"))
    AssetModelPropertyBindingValueFilter.struct_class = Types::AssetModelPropertyBindingValueFilter

    AssetModelPropertyDefinition.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelPropertyDefinition.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelPropertyDefinition.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelPropertyDefinition.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetModelPropertyDefinition.add_member(:data_type_spec, Shapes::ShapeRef.new(shape: Name, location_name: "dataTypeSpec"))
    AssetModelPropertyDefinition.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetModelPropertyDefinition.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, required: true, location_name: "type"))
    AssetModelPropertyDefinition.struct_class = Types::AssetModelPropertyDefinition

    AssetModelPropertyDefinitions.member = Shapes::ShapeRef.new(shape: AssetModelPropertyDefinition)

    AssetModelPropertyPath.member = Shapes::ShapeRef.new(shape: AssetModelPropertyPathSegment)

    AssetModelPropertyPathSegment.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelPropertyPathSegment.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AssetModelPropertyPathSegment.struct_class = Types::AssetModelPropertyPathSegment

    AssetModelPropertySummaries.member = Shapes::ShapeRef.new(shape: AssetModelPropertySummary)

    AssetModelPropertySummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetModelPropertySummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelPropertySummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelPropertySummary.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetModelPropertySummary.add_member(:data_type_spec, Shapes::ShapeRef.new(shape: Name, location_name: "dataTypeSpec"))
    AssetModelPropertySummary.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetModelPropertySummary.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, required: true, location_name: "type"))
    AssetModelPropertySummary.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelCompositeModelId"))
    AssetModelPropertySummary.add_member(:path, Shapes::ShapeRef.new(shape: AssetModelPropertyPath, location_name: "path"))
    AssetModelPropertySummary.add_member(:interface_summaries, Shapes::ShapeRef.new(shape: InterfaceSummaries, location_name: "interfaceSummaries"))
    AssetModelPropertySummary.struct_class = Types::AssetModelPropertySummary

    AssetModelStatus.add_member(:state, Shapes::ShapeRef.new(shape: AssetModelState, required: true, location_name: "state"))
    AssetModelStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    AssetModelStatus.struct_class = Types::AssetModelStatus

    AssetModelSummaries.member = Shapes::ShapeRef.new(shape: AssetModelSummary)

    AssetModelSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetModelSummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetModelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    AssetModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetModelSummary.add_member(:asset_model_type, Shapes::ShapeRef.new(shape: AssetModelType, location_name: "assetModelType"))
    AssetModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AssetModelSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    AssetModelSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    AssetModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "status"))
    AssetModelSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    AssetModelSummary.struct_class = Types::AssetModelSummary

    AssetProperties.member = Shapes::ShapeRef.new(shape: AssetProperty)

    AssetProperty.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetProperty.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetProperty.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetProperty.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    AssetProperty.add_member(:notification, Shapes::ShapeRef.new(shape: PropertyNotification, location_name: "notification"))
    AssetProperty.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    AssetProperty.add_member(:data_type_spec, Shapes::ShapeRef.new(shape: Name, location_name: "dataTypeSpec"))
    AssetProperty.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetProperty.add_member(:path, Shapes::ShapeRef.new(shape: AssetPropertyPath, location_name: "path"))
    AssetProperty.struct_class = Types::AssetProperty

    AssetPropertyBindingValue.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    AssetPropertyBindingValue.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "propertyId"))
    AssetPropertyBindingValue.struct_class = Types::AssetPropertyBindingValue

    AssetPropertyBindingValueFilter.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    AssetPropertyBindingValueFilter.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "propertyId"))
    AssetPropertyBindingValueFilter.struct_class = Types::AssetPropertyBindingValueFilter

    AssetPropertyPath.member = Shapes::ShapeRef.new(shape: AssetPropertyPathSegment)

    AssetPropertyPathSegment.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    AssetPropertyPathSegment.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    AssetPropertyPathSegment.struct_class = Types::AssetPropertyPathSegment

    AssetPropertySummaries.member = Shapes::ShapeRef.new(shape: AssetPropertySummary)

    AssetPropertySummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetPropertySummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetPropertySummary.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    AssetPropertySummary.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    AssetPropertySummary.add_member(:notification, Shapes::ShapeRef.new(shape: PropertyNotification, location_name: "notification"))
    AssetPropertySummary.add_member(:asset_composite_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetCompositeModelId"))
    AssetPropertySummary.add_member(:path, Shapes::ShapeRef.new(shape: AssetPropertyPath, location_name: "path"))
    AssetPropertySummary.struct_class = Types::AssetPropertySummary

    AssetPropertyValue.add_member(:value, Shapes::ShapeRef.new(shape: Variant, required: true, location_name: "value"))
    AssetPropertyValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "timestamp"))
    AssetPropertyValue.add_member(:quality, Shapes::ShapeRef.new(shape: Quality, location_name: "quality"))
    AssetPropertyValue.struct_class = Types::AssetPropertyValue

    AssetPropertyValueHistory.member = Shapes::ShapeRef.new(shape: AssetPropertyValue)

    AssetPropertyValues.member = Shapes::ShapeRef.new(shape: AssetPropertyValue)

    AssetRelationshipSummaries.member = Shapes::ShapeRef.new(shape: AssetRelationshipSummary)

    AssetRelationshipSummary.add_member(:hierarchy_info, Shapes::ShapeRef.new(shape: AssetHierarchyInfo, location_name: "hierarchyInfo"))
    AssetRelationshipSummary.add_member(:relationship_type, Shapes::ShapeRef.new(shape: AssetRelationshipType, required: true, location_name: "relationshipType"))
    AssetRelationshipSummary.struct_class = Types::AssetRelationshipSummary

    AssetStatus.add_member(:state, Shapes::ShapeRef.new(shape: AssetState, required: true, location_name: "state"))
    AssetStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    AssetStatus.struct_class = Types::AssetStatus

    AssetSummaries.member = Shapes::ShapeRef.new(shape: AssetSummary)

    AssetSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssetSummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    AssetSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssetSummary.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssetSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    AssetSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    AssetSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "status"))
    AssetSummary.add_member(:hierarchies, Shapes::ShapeRef.new(shape: AssetHierarchies, required: true, location_name: "hierarchies"))
    AssetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssetSummary.struct_class = Types::AssetSummary

    AssociateAssetsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    AssociateAssetsRequest.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "hierarchyId"))
    AssociateAssetsRequest.add_member(:child_asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "childAssetId"))
    AssociateAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociateAssetsRequest.struct_class = Types::AssociateAssetsRequest

    AssociateDataSegmentEntries.member = Shapes::ShapeRef.new(shape: AssociateDataSegmentEntry)

    AssociateDataSegmentEntry.add_member(:source_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "sourceDatasetId"))
    AssociateDataSegmentEntry.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    AssociateDataSegmentEntry.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    AssociateDataSegmentEntry.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    AssociateDataSegmentEntry.struct_class = Types::AssociateDataSegmentEntry

    AssociateTimeSeriesToAssetPropertyRequest.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, required: true, location: "querystring", location_name: "alias"))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "querystring", location_name: "assetId"))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "querystring", location_name: "propertyId"))
    AssociateTimeSeriesToAssetPropertyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociateTimeSeriesToAssetPropertyRequest.struct_class = Types::AssociateTimeSeriesToAssetPropertyRequest

    AssociatedAssetsSummaries.member = Shapes::ShapeRef.new(shape: AssociatedAssetsSummary)

    AssociatedAssetsSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    AssociatedAssetsSummary.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    AssociatedAssetsSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    AssociatedAssetsSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssociatedAssetsSummary.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    AssociatedAssetsSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    AssociatedAssetsSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    AssociatedAssetsSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "status"))
    AssociatedAssetsSummary.add_member(:hierarchies, Shapes::ShapeRef.new(shape: AssetHierarchies, required: true, location_name: "hierarchies"))
    AssociatedAssetsSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssociatedAssetsSummary.struct_class = Types::AssociatedAssetsSummary

    Attribute.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "defaultValue"))
    Attribute.struct_class = Types::Attribute

    BatchAssociateDataSegmentsToDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    BatchAssociateDataSegmentsToDatasetRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    BatchAssociateDataSegmentsToDatasetRequest.add_member(:associate_data_segment_entries, Shapes::ShapeRef.new(shape: AssociateDataSegmentEntries, required: true, location_name: "associateDataSegmentEntries"))
    BatchAssociateDataSegmentsToDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchAssociateDataSegmentsToDatasetRequest.struct_class = Types::BatchAssociateDataSegmentsToDatasetRequest

    BatchAssociateDataSegmentsToDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    BatchAssociateDataSegmentsToDatasetResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "datasetVersion"))
    BatchAssociateDataSegmentsToDatasetResponse.add_member(:failed_associations, Shapes::ShapeRef.new(shape: FailedDataSegmentAssociations, required: true, location_name: "failedAssociations"))
    BatchAssociateDataSegmentsToDatasetResponse.struct_class = Types::BatchAssociateDataSegmentsToDatasetResponse

    BatchAssociateProjectAssetsErrors.member = Shapes::ShapeRef.new(shape: AssetErrorDetails)

    BatchAssociateProjectAssetsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    BatchAssociateProjectAssetsRequest.add_member(:asset_ids, Shapes::ShapeRef.new(shape: IDs, required: true, location_name: "assetIds"))
    BatchAssociateProjectAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchAssociateProjectAssetsRequest.struct_class = Types::BatchAssociateProjectAssetsRequest

    BatchAssociateProjectAssetsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsErrors, location_name: "errors"))
    BatchAssociateProjectAssetsResponse.struct_class = Types::BatchAssociateProjectAssetsResponse

    BatchDeleteDatasetDataSegmentsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    BatchDeleteDatasetDataSegmentsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    BatchDeleteDatasetDataSegmentsRequest.add_member(:delete_data_segment_entries, Shapes::ShapeRef.new(shape: DeleteDataSegmentEntries, required: true, location_name: "deleteDataSegmentEntries"))
    BatchDeleteDatasetDataSegmentsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchDeleteDatasetDataSegmentsRequest.struct_class = Types::BatchDeleteDatasetDataSegmentsRequest

    BatchDeleteDatasetDataSegmentsResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    BatchDeleteDatasetDataSegmentsResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "datasetVersion"))
    BatchDeleteDatasetDataSegmentsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: FailedDataSegmentDeletions, required: true, location_name: "errors"))
    BatchDeleteDatasetDataSegmentsResponse.struct_class = Types::BatchDeleteDatasetDataSegmentsResponse

    BatchDisassociateDataSegmentsFromDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    BatchDisassociateDataSegmentsFromDatasetRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    BatchDisassociateDataSegmentsFromDatasetRequest.add_member(:disassociate_data_segment_entries, Shapes::ShapeRef.new(shape: DisassociateDataSegmentEntries, required: true, location_name: "disassociateDataSegmentEntries"))
    BatchDisassociateDataSegmentsFromDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchDisassociateDataSegmentsFromDatasetRequest.struct_class = Types::BatchDisassociateDataSegmentsFromDatasetRequest

    BatchDisassociateDataSegmentsFromDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    BatchDisassociateDataSegmentsFromDatasetResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "datasetVersion"))
    BatchDisassociateDataSegmentsFromDatasetResponse.add_member(:failed_disassociations, Shapes::ShapeRef.new(shape: FailedDataSegmentDisassociations, required: true, location_name: "failedDisassociations"))
    BatchDisassociateDataSegmentsFromDatasetResponse.struct_class = Types::BatchDisassociateDataSegmentsFromDatasetResponse

    BatchDisassociateProjectAssetsErrors.member = Shapes::ShapeRef.new(shape: AssetErrorDetails)

    BatchDisassociateProjectAssetsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    BatchDisassociateProjectAssetsRequest.add_member(:asset_ids, Shapes::ShapeRef.new(shape: IDs, required: true, location_name: "assetIds"))
    BatchDisassociateProjectAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchDisassociateProjectAssetsRequest.struct_class = Types::BatchDisassociateProjectAssetsRequest

    BatchDisassociateProjectAssetsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsErrors, location_name: "errors"))
    BatchDisassociateProjectAssetsResponse.struct_class = Types::BatchDisassociateProjectAssetsResponse

    BatchGetAssetPropertyAggregatesEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesEntry)

    BatchGetAssetPropertyAggregatesEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:aggregate_types, Shapes::ShapeRef.new(shape: AggregateTypes, required: true, location_name: "aggregateTypes"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:resolution, Shapes::ShapeRef.new(shape: Resolution, required: true, location_name: "resolution"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startDate"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endDate"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:qualities, Shapes::ShapeRef.new(shape: Qualities, location_name: "qualities"))
    BatchGetAssetPropertyAggregatesEntry.add_member(:time_ordering, Shapes::ShapeRef.new(shape: TimeOrdering, location_name: "timeOrdering"))
    BatchGetAssetPropertyAggregatesEntry.struct_class = Types::BatchGetAssetPropertyAggregatesEntry

    BatchGetAssetPropertyAggregatesErrorEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorEntry)

    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorCode, required: true, location_name: "errorCode"))
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "errorMessage"))
    BatchGetAssetPropertyAggregatesErrorEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyAggregatesErrorEntry.struct_class = Types::BatchGetAssetPropertyAggregatesErrorEntry

    BatchGetAssetPropertyAggregatesErrorInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorCode, required: true, location_name: "errorCode"))
    BatchGetAssetPropertyAggregatesErrorInfo.add_member(:error_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "errorTimestamp"))
    BatchGetAssetPropertyAggregatesErrorInfo.struct_class = Types::BatchGetAssetPropertyAggregatesErrorInfo

    BatchGetAssetPropertyAggregatesRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesEntries, required: true, location_name: "entries"))
    BatchGetAssetPropertyAggregatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchGetAssetPropertyAggregatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesMaxResults, location_name: "maxResults"))
    BatchGetAssetPropertyAggregatesRequest.struct_class = Types::BatchGetAssetPropertyAggregatesRequest

    BatchGetAssetPropertyAggregatesResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorEntries, required: true, location_name: "errorEntries"))
    BatchGetAssetPropertyAggregatesResponse.add_member(:success_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSuccessEntries, required: true, location_name: "successEntries"))
    BatchGetAssetPropertyAggregatesResponse.add_member(:skipped_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSkippedEntries, required: true, location_name: "skippedEntries"))
    BatchGetAssetPropertyAggregatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchGetAssetPropertyAggregatesResponse.struct_class = Types::BatchGetAssetPropertyAggregatesResponse

    BatchGetAssetPropertyAggregatesSkippedEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSkippedEntry)

    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:completion_status, Shapes::ShapeRef.new(shape: BatchEntryCompletionStatus, required: true, location_name: "completionStatus"))
    BatchGetAssetPropertyAggregatesSkippedEntry.add_member(:error_info, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesErrorInfo, location_name: "errorInfo"))
    BatchGetAssetPropertyAggregatesSkippedEntry.struct_class = Types::BatchGetAssetPropertyAggregatesSkippedEntry

    BatchGetAssetPropertyAggregatesSuccessEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesSuccessEntry)

    BatchGetAssetPropertyAggregatesSuccessEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyAggregatesSuccessEntry.add_member(:aggregated_values, Shapes::ShapeRef.new(shape: AggregatedValues, required: true, location_name: "aggregatedValues"))
    BatchGetAssetPropertyAggregatesSuccessEntry.struct_class = Types::BatchGetAssetPropertyAggregatesSuccessEntry

    BatchGetAssetPropertyValueEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueEntry)

    BatchGetAssetPropertyValueEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueEntry.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    BatchGetAssetPropertyValueEntry.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    BatchGetAssetPropertyValueEntry.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    BatchGetAssetPropertyValueEntry.struct_class = Types::BatchGetAssetPropertyValueEntry

    BatchGetAssetPropertyValueErrorEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorEntry)

    BatchGetAssetPropertyValueErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorCode, required: true, location_name: "errorCode"))
    BatchGetAssetPropertyValueErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "errorMessage"))
    BatchGetAssetPropertyValueErrorEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueErrorEntry.struct_class = Types::BatchGetAssetPropertyValueErrorEntry

    BatchGetAssetPropertyValueErrorInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorCode, required: true, location_name: "errorCode"))
    BatchGetAssetPropertyValueErrorInfo.add_member(:error_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "errorTimestamp"))
    BatchGetAssetPropertyValueErrorInfo.struct_class = Types::BatchGetAssetPropertyValueErrorInfo

    BatchGetAssetPropertyValueHistoryEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryEntry)

    BatchGetAssetPropertyValueHistoryEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startDate"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endDate"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:qualities, Shapes::ShapeRef.new(shape: Qualities, location_name: "qualities"))
    BatchGetAssetPropertyValueHistoryEntry.add_member(:time_ordering, Shapes::ShapeRef.new(shape: TimeOrdering, location_name: "timeOrdering"))
    BatchGetAssetPropertyValueHistoryEntry.struct_class = Types::BatchGetAssetPropertyValueHistoryEntry

    BatchGetAssetPropertyValueHistoryErrorEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorEntry)

    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorCode, required: true, location_name: "errorCode"))
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "errorMessage"))
    BatchGetAssetPropertyValueHistoryErrorEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueHistoryErrorEntry.struct_class = Types::BatchGetAssetPropertyValueHistoryErrorEntry

    BatchGetAssetPropertyValueHistoryErrorInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorCode, required: true, location_name: "errorCode"))
    BatchGetAssetPropertyValueHistoryErrorInfo.add_member(:error_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "errorTimestamp"))
    BatchGetAssetPropertyValueHistoryErrorInfo.struct_class = Types::BatchGetAssetPropertyValueHistoryErrorInfo

    BatchGetAssetPropertyValueHistoryRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryEntries, required: true, location_name: "entries"))
    BatchGetAssetPropertyValueHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchGetAssetPropertyValueHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryMaxResults, location_name: "maxResults"))
    BatchGetAssetPropertyValueHistoryRequest.struct_class = Types::BatchGetAssetPropertyValueHistoryRequest

    BatchGetAssetPropertyValueHistoryResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorEntries, required: true, location_name: "errorEntries"))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:success_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySuccessEntries, required: true, location_name: "successEntries"))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:skipped_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySkippedEntries, required: true, location_name: "skippedEntries"))
    BatchGetAssetPropertyValueHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchGetAssetPropertyValueHistoryResponse.struct_class = Types::BatchGetAssetPropertyValueHistoryResponse

    BatchGetAssetPropertyValueHistorySkippedEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySkippedEntry)

    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:completion_status, Shapes::ShapeRef.new(shape: BatchEntryCompletionStatus, required: true, location_name: "completionStatus"))
    BatchGetAssetPropertyValueHistorySkippedEntry.add_member(:error_info, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryErrorInfo, location_name: "errorInfo"))
    BatchGetAssetPropertyValueHistorySkippedEntry.struct_class = Types::BatchGetAssetPropertyValueHistorySkippedEntry

    BatchGetAssetPropertyValueHistorySuccessEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistorySuccessEntry)

    BatchGetAssetPropertyValueHistorySuccessEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueHistorySuccessEntry.add_member(:asset_property_value_history, Shapes::ShapeRef.new(shape: AssetPropertyValueHistory, required: true, location_name: "assetPropertyValueHistory"))
    BatchGetAssetPropertyValueHistorySuccessEntry.struct_class = Types::BatchGetAssetPropertyValueHistorySuccessEntry

    BatchGetAssetPropertyValueRequest.add_member(:entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueEntries, required: true, location_name: "entries"))
    BatchGetAssetPropertyValueRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchGetAssetPropertyValueRequest.struct_class = Types::BatchGetAssetPropertyValueRequest

    BatchGetAssetPropertyValueResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorEntries, required: true, location_name: "errorEntries"))
    BatchGetAssetPropertyValueResponse.add_member(:success_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSuccessEntries, required: true, location_name: "successEntries"))
    BatchGetAssetPropertyValueResponse.add_member(:skipped_entries, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSkippedEntries, required: true, location_name: "skippedEntries"))
    BatchGetAssetPropertyValueResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchGetAssetPropertyValueResponse.struct_class = Types::BatchGetAssetPropertyValueResponse

    BatchGetAssetPropertyValueSkippedEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSkippedEntry)

    BatchGetAssetPropertyValueSkippedEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueSkippedEntry.add_member(:completion_status, Shapes::ShapeRef.new(shape: BatchEntryCompletionStatus, required: true, location_name: "completionStatus"))
    BatchGetAssetPropertyValueSkippedEntry.add_member(:error_info, Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueErrorInfo, location_name: "errorInfo"))
    BatchGetAssetPropertyValueSkippedEntry.struct_class = Types::BatchGetAssetPropertyValueSkippedEntry

    BatchGetAssetPropertyValueSuccessEntries.member = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueSuccessEntry)

    BatchGetAssetPropertyValueSuccessEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchGetAssetPropertyValueSuccessEntry.add_member(:asset_property_value, Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: "assetPropertyValue"))
    BatchGetAssetPropertyValueSuccessEntry.struct_class = Types::BatchGetAssetPropertyValueSuccessEntry

    BatchPutAssetPropertyError.add_member(:error_code, Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueErrorCode, required: true, location_name: "errorCode"))
    BatchPutAssetPropertyError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "errorMessage"))
    BatchPutAssetPropertyError.add_member(:timestamps, Shapes::ShapeRef.new(shape: Timestamps, required: true, location_name: "timestamps"))
    BatchPutAssetPropertyError.struct_class = Types::BatchPutAssetPropertyError

    BatchPutAssetPropertyErrorEntries.member = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrorEntry)

    BatchPutAssetPropertyErrorEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    BatchPutAssetPropertyErrorEntry.add_member(:errors, Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrors, required: true, location_name: "errors"))
    BatchPutAssetPropertyErrorEntry.struct_class = Types::BatchPutAssetPropertyErrorEntry

    BatchPutAssetPropertyErrors.member = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyError)

    BatchPutAssetPropertyValueRequest.add_member(:enable_partial_entry_processing, Shapes::ShapeRef.new(shape: BooleanValue, location_name: "enablePartialEntryProcessing"))
    BatchPutAssetPropertyValueRequest.add_member(:entries, Shapes::ShapeRef.new(shape: PutAssetPropertyValueEntries, required: true, location_name: "entries"))
    BatchPutAssetPropertyValueRequest.struct_class = Types::BatchPutAssetPropertyValueRequest

    BatchPutAssetPropertyValueResponse.add_member(:error_entries, Shapes::ShapeRef.new(shape: BatchPutAssetPropertyErrorEntries, required: true, location_name: "errorEntries"))
    BatchPutAssetPropertyValueResponse.struct_class = Types::BatchPutAssetPropertyValueResponse

    BindingValueList.member = Shapes::ShapeRef.new(shape: ComputationModelDataBindingValue)

    CancelEnrichmentJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CancelEnrichmentJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "jobId"))
    CancelEnrichmentJobRequest.struct_class = Types::CancelEnrichmentJobRequest

    CancelEnrichmentJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "jobId"))
    CancelEnrichmentJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentJobStatus, required: true, location_name: "status"))
    CancelEnrichmentJobResponse.struct_class = Types::CancelEnrichmentJobResponse

    CancelPipelineExecutionRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CancelPipelineExecutionRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    CancelPipelineExecutionRequest.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "pipelineExecutionId"))
    CancelPipelineExecutionRequest.add_member(:reason, Shapes::ShapeRef.new(shape: CancelPipelineExecutionRequestReasonString, location_name: "reason"))
    CancelPipelineExecutionRequest.struct_class = Types::CancelPipelineExecutionRequest

    CancelPipelineExecutionResponse.add_member(:state, Shapes::ShapeRef.new(shape: PipelineExecutionState, required: true, location_name: "state"))
    CancelPipelineExecutionResponse.struct_class = Types::CancelPipelineExecutionResponse

    CancelQueryRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CancelQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location: "uri", location_name: "queryId"))
    CancelQueryRequest.struct_class = Types::CancelQueryRequest

    CancelQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    CancelQueryResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    CancelQueryResponse.struct_class = Types::CancelQueryResponse

    Citation.add_member(:reference, Shapes::ShapeRef.new(shape: Reference, location_name: "reference"))
    Citation.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "content"))
    Citation.struct_class = Types::Citation

    Citations.member = Shapes::ShapeRef.new(shape: Citation)

    ColumnInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ColumnInfo.add_member(:type, Shapes::ShapeRef.new(shape: ColumnType, location_name: "type"))
    ColumnInfo.struct_class = Types::ColumnInfo

    ColumnInformation.add_member(:name, Shapes::ShapeRef.new(shape: ColumnLabel, required: true, location_name: "name"))
    ColumnInformation.add_member(:type, Shapes::ShapeRef.new(shape: ColumnDataType, required: true, location_name: "type"))
    ColumnInformation.struct_class = Types::ColumnInformation

    ColumnInformationList.member = Shapes::ShapeRef.new(shape: ColumnInformation)

    ColumnNames.member = Shapes::ShapeRef.new(shape: ColumnName)

    ColumnType.add_member(:scalar_type, Shapes::ShapeRef.new(shape: ScalarType, location_name: "scalarType"))
    ColumnType.struct_class = Types::ColumnType

    ColumnsList.member = Shapes::ShapeRef.new(shape: ColumnInfo)

    CommandList.member = Shapes::ShapeRef.new(shape: String)

    CompositeModelProperty.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CompositeModelProperty.add_member(:type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "type"))
    CompositeModelProperty.add_member(:asset_property, Shapes::ShapeRef.new(shape: Property, required: true, location_name: "assetProperty"))
    CompositeModelProperty.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    CompositeModelProperty.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    CompositeModelProperty.struct_class = Types::CompositeModelProperty

    CompositionDetails.add_member(:composition_relationship, Shapes::ShapeRef.new(shape: CompositionRelationship, location_name: "compositionRelationship"))
    CompositionDetails.struct_class = Types::CompositionDetails

    CompositionRelationship.member = Shapes::ShapeRef.new(shape: CompositionRelationshipItem)

    CompositionRelationshipItem.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    CompositionRelationshipItem.struct_class = Types::CompositionRelationshipItem

    CompositionRelationshipSummaries.member = Shapes::ShapeRef.new(shape: CompositionRelationshipSummary)

    CompositionRelationshipSummary.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    CompositionRelationshipSummary.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelCompositeModelId"))
    CompositionRelationshipSummary.add_member(:asset_model_composite_model_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelCompositeModelType"))
    CompositionRelationshipSummary.struct_class = Types::CompositionRelationshipSummary

    ComputationModelAnomalyDetectionConfiguration.add_member(:input_properties, Shapes::ShapeRef.new(shape: InputProperties, required: true, location_name: "inputProperties"))
    ComputationModelAnomalyDetectionConfiguration.add_member(:result_property, Shapes::ShapeRef.new(shape: ResultProperty, required: true, location_name: "resultProperty"))
    ComputationModelAnomalyDetectionConfiguration.struct_class = Types::ComputationModelAnomalyDetectionConfiguration

    ComputationModelConfiguration.add_member(:anomaly_detection, Shapes::ShapeRef.new(shape: ComputationModelAnomalyDetectionConfiguration, location_name: "anomalyDetection"))
    ComputationModelConfiguration.struct_class = Types::ComputationModelConfiguration

    ComputationModelDataBinding.key = Shapes::ShapeRef.new(shape: ComputationModelDataBindingVariable)
    ComputationModelDataBinding.value = Shapes::ShapeRef.new(shape: ComputationModelDataBindingValue)

    ComputationModelDataBindingUsageSummaries.member = Shapes::ShapeRef.new(shape: ComputationModelDataBindingUsageSummary)

    ComputationModelDataBindingUsageSummary.add_member(:computation_model_ids, Shapes::ShapeRef.new(shape: ComputationModelIdList, required: true, location_name: "computationModelIds"))
    ComputationModelDataBindingUsageSummary.add_member(:matched_data_binding, Shapes::ShapeRef.new(shape: MatchedDataBinding, required: true, location_name: "matchedDataBinding"))
    ComputationModelDataBindingUsageSummary.struct_class = Types::ComputationModelDataBindingUsageSummary

    ComputationModelDataBindingValue.add_member(:asset_model_property, Shapes::ShapeRef.new(shape: AssetModelPropertyBindingValue, location_name: "assetModelProperty"))
    ComputationModelDataBindingValue.add_member(:asset_property, Shapes::ShapeRef.new(shape: AssetPropertyBindingValue, location_name: "assetProperty"))
    ComputationModelDataBindingValue.add_member(:list, Shapes::ShapeRef.new(shape: BindingValueList, location_name: "list"))
    ComputationModelDataBindingValue.struct_class = Types::ComputationModelDataBindingValue

    ComputationModelExecutionSummary.key = Shapes::ShapeRef.new(shape: ComputationModelExecutionSummaryKey)
    ComputationModelExecutionSummary.value = Shapes::ShapeRef.new(shape: ComputationModelExecutionSummaryValue)

    ComputationModelIdList.member = Shapes::ShapeRef.new(shape: ID)

    ComputationModelResolveToResourceSummaries.member = Shapes::ShapeRef.new(shape: ComputationModelResolveToResourceSummary)

    ComputationModelResolveToResourceSummary.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    ComputationModelResolveToResourceSummary.struct_class = Types::ComputationModelResolveToResourceSummary

    ComputationModelStatus.add_member(:state, Shapes::ShapeRef.new(shape: ComputationModelState, required: true, location_name: "state"))
    ComputationModelStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    ComputationModelStatus.struct_class = Types::ComputationModelStatus

    ComputationModelSummaries.member = Shapes::ShapeRef.new(shape: ComputationModelSummary)

    ComputationModelSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ComputationModelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    ComputationModelSummary.add_member(:name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "name"))
    ComputationModelSummary.add_member(:description, Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: "description"))
    ComputationModelSummary.add_member(:type, Shapes::ShapeRef.new(shape: ComputationModelType, required: true, location_name: "type"))
    ComputationModelSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    ComputationModelSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    ComputationModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ComputationModelStatus, required: true, location_name: "status"))
    ComputationModelSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    ComputationModelSummary.struct_class = Types::ComputationModelSummary

    ComputeNode.add_member(:compute_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "computeNodeName"))
    ComputeNode.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "taskName"))
    ComputeNode.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    ComputeNode.add_member(:depends_on, Shapes::ShapeRef.new(shape: ComputeNodeNameList, location_name: "dependsOn"))
    ComputeNode.struct_class = Types::ComputeNode

    ComputeNodeEnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: ResourceName)
    ComputeNodeEnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariablesMap)

    ComputeNodeExecutionDetails.add_member(:compute_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "computeNodeName"))
    ComputeNodeExecutionDetails.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "taskName"))
    ComputeNodeExecutionDetails.add_member(:task_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "taskArn"))
    ComputeNodeExecutionDetails.add_member(:task_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "taskVersion"))
    ComputeNodeExecutionDetails.add_member(:depends_on, Shapes::ShapeRef.new(shape: ComputeNodeNameList, required: true, location_name: "dependsOn"))
    ComputeNodeExecutionDetails.add_member(:status, Shapes::ShapeRef.new(shape: ComputeNodeExecutionStatus, required: true, location_name: "status"))
    ComputeNodeExecutionDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ComputeNodeExecutionDetails.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ComputeNodeExecutionDetails.add_member(:execution_environment_variables, Shapes::ShapeRef.new(shape: ExecutionEnvironmentVariablesMap, location_name: "executionEnvironmentVariables"))
    ComputeNodeExecutionDetails.add_member(:execution_mounts, Shapes::ShapeRef.new(shape: MountList, location_name: "executionMounts"))
    ComputeNodeExecutionDetails.struct_class = Types::ComputeNodeExecutionDetails

    ComputeNodeExecutionDetailsList.member = Shapes::ShapeRef.new(shape: ComputeNodeExecutionDetails)

    ComputeNodeExecutionStateDetails.add_member(:code, Shapes::ShapeRef.new(shape: ComputeNodeErrorCode, required: true, location_name: "code"))
    ComputeNodeExecutionStateDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ComputeNodeExecutionStateDetails.add_member(:details, Shapes::ShapeRef.new(shape: DetailedErrorList, location_name: "details"))
    ComputeNodeExecutionStateDetails.struct_class = Types::ComputeNodeExecutionStateDetails

    ComputeNodeExecutionStatus.add_member(:state, Shapes::ShapeRef.new(shape: ComputeNodeExecutionState, required: true, location_name: "state"))
    ComputeNodeExecutionStatus.add_member(:state_details, Shapes::ShapeRef.new(shape: ComputeNodeExecutionStateDetails, location_name: "stateDetails"))
    ComputeNodeExecutionStatus.struct_class = Types::ComputeNodeExecutionStatus

    ComputeNodeList.member = Shapes::ShapeRef.new(shape: ComputeNode)

    ComputeNodeMountsMap.key = Shapes::ShapeRef.new(shape: ResourceName)
    ComputeNodeMountsMap.value = Shapes::ShapeRef.new(shape: MountList)

    ComputeNodeNameList.member = Shapes::ShapeRef.new(shape: ResourceName)

    ConfigurationErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "code"))
    ConfigurationErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConfigurationErrorDetails.struct_class = Types::ConfigurationErrorDetails

    ConfigurationStatus.add_member(:state, Shapes::ShapeRef.new(shape: ConfigurationState, required: true, location_name: "state"))
    ConfigurationStatus.add_member(:error, Shapes::ShapeRef.new(shape: ConfigurationErrorDetails, location_name: "error"))
    ConfigurationStatus.struct_class = Types::ConfigurationStatus

    ConflictingOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictingOperationException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictingOperationException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ConflictingOperationException.struct_class = Types::ConflictingOperationException

    ContainerTaskConfiguration.add_member(:ecr_uri, Shapes::ShapeRef.new(shape: EcrUri, required: true, location_name: "ecrUri"))
    ContainerTaskConfiguration.add_member(:task_execution_role, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "taskExecutionRole"))
    ContainerTaskConfiguration.add_member(:processing_type, Shapes::ShapeRef.new(shape: ProcessingType, required: true, location_name: "processingType"))
    ContainerTaskConfiguration.add_member(:processing_unit, Shapes::ShapeRef.new(shape: ProcessingUnit, required: true, location_name: "processingUnit"))
    ContainerTaskConfiguration.add_member(:ephemeral_storage_configuration, Shapes::ShapeRef.new(shape: EphemeralStorageConfiguration, location_name: "ephemeralStorageConfiguration"))
    ContainerTaskConfiguration.add_member(:command, Shapes::ShapeRef.new(shape: CommandList, location_name: "command"))
    ContainerTaskConfiguration.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "timeoutSeconds"))
    ContainerTaskConfiguration.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    ContainerTaskConfiguration.add_member(:mounts, Shapes::ShapeRef.new(shape: MountList, location_name: "mounts"))
    ContainerTaskConfiguration.struct_class = Types::ContainerTaskConfiguration

    Content.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    Content.struct_class = Types::Content

    CreateAccessPolicyRequest.add_member(:access_policy_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "accessPolicyIdentity"))
    CreateAccessPolicyRequest.add_member(:access_policy_resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "accessPolicyResource"))
    CreateAccessPolicyRequest.add_member(:access_policy_permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "accessPolicyPermission"))
    CreateAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAccessPolicyRequest.struct_class = Types::CreateAccessPolicyRequest

    CreateAccessPolicyResponse.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "accessPolicyId"))
    CreateAccessPolicyResponse.add_member(:access_policy_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "accessPolicyArn"))
    CreateAccessPolicyResponse.struct_class = Types::CreateAccessPolicyResponse

    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateApplicationRequest.add_member(:idc_instance_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "idcInstanceArn"))
    CreateApplicationRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    CreateApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "id"))
    CreateApplicationResponse.add_member(:dns_subdomain, Shapes::ShapeRef.new(shape: DnsSubdomain, required: true, location_name: "dnsSubdomain"))
    CreateApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    CreateApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "status"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateAssetModelCompositeModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetModelCompositeModelExternalId"))
    CreateAssetModelCompositeModelRequest.add_member(:parent_asset_model_composite_model_id, Shapes::ShapeRef.new(shape: CustomID, location_name: "parentAssetModelCompositeModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelCompositeModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetModelCompositeModelDescription"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelCompositeModelName"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelCompositeModelType"))
    CreateAssetModelCompositeModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAssetModelCompositeModelRequest.add_member(:composed_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, location_name: "composedAssetModelId"))
    CreateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_properties, Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: "assetModelCompositeModelProperties"))
    CreateAssetModelCompositeModelRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "If-Match"))
    CreateAssetModelCompositeModelRequest.add_member(:if_none_match, Shapes::ShapeRef.new(shape: SelectAll, location: "header", location_name: "If-None-Match"))
    CreateAssetModelCompositeModelRequest.add_member(:match_for_version_type, Shapes::ShapeRef.new(shape: AssetModelVersionType, location: "header", location_name: "Match-For-Version-Type"))
    CreateAssetModelCompositeModelRequest.struct_class = Types::CreateAssetModelCompositeModelRequest

    CreateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelCompositeModelId"))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, required: true, location_name: "assetModelCompositeModelPath"))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    CreateAssetModelCompositeModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelId"))
    CreateAssetModelCompositeModelResponse.struct_class = Types::CreateAssetModelCompositeModelResponse

    CreateAssetModelRequest.add_member(:asset_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelName"))
    CreateAssetModelRequest.add_member(:asset_model_type, Shapes::ShapeRef.new(shape: AssetModelType, location_name: "assetModelType"))
    CreateAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelId"))
    CreateAssetModelRequest.add_member(:asset_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetModelExternalId"))
    CreateAssetModelRequest.add_member(:asset_model_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetModelDescription"))
    CreateAssetModelRequest.add_member(:asset_model_properties, Shapes::ShapeRef.new(shape: AssetModelPropertyDefinitions, location_name: "assetModelProperties"))
    CreateAssetModelRequest.add_member(:asset_model_hierarchies, Shapes::ShapeRef.new(shape: AssetModelHierarchyDefinitions, location_name: "assetModelHierarchies"))
    CreateAssetModelRequest.add_member(:asset_model_composite_models, Shapes::ShapeRef.new(shape: AssetModelCompositeModelDefinitions, location_name: "assetModelCompositeModels"))
    CreateAssetModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAssetModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAssetModelRequest.struct_class = Types::CreateAssetModelRequest

    CreateAssetModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    CreateAssetModelResponse.add_member(:asset_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetModelArn"))
    CreateAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    CreateAssetModelResponse.struct_class = Types::CreateAssetModelResponse

    CreateAssetRequest.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    CreateAssetRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "assetModelId"))
    CreateAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    CreateAssetRequest.add_member(:asset_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetExternalId"))
    CreateAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAssetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAssetRequest.add_member(:asset_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetDescription"))
    CreateAssetRequest.struct_class = Types::CreateAssetRequest

    CreateAssetResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    CreateAssetResponse.add_member(:asset_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetArn"))
    CreateAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    CreateAssetResponse.struct_class = Types::CreateAssetResponse

    CreateBulkImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: BulkImportJobName, required: true, location_name: "jobName"))
    CreateBulkImportJobRequest.add_member(:job_role_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "jobRoleArn"))
    CreateBulkImportJobRequest.add_member(:files, Shapes::ShapeRef.new(shape: Files, required: true, location_name: "files"))
    CreateBulkImportJobRequest.add_member(:error_report_location, Shapes::ShapeRef.new(shape: ErrorReportLocation, required: true, location_name: "errorReportLocation"))
    CreateBulkImportJobRequest.add_member(:job_configuration, Shapes::ShapeRef.new(shape: JobConfiguration, location_name: "jobConfiguration"))
    CreateBulkImportJobRequest.add_member(:adaptive_ingestion, Shapes::ShapeRef.new(shape: AdaptiveIngestion, location_name: "adaptiveIngestion"))
    CreateBulkImportJobRequest.add_member(:delete_files_after_import, Shapes::ShapeRef.new(shape: DeleteFilesAfterImport, location_name: "deleteFilesAfterImport"))
    CreateBulkImportJobRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, location_name: "datasetId"))
    CreateBulkImportJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    CreateBulkImportJobRequest.struct_class = Types::CreateBulkImportJobRequest

    CreateBulkImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "jobId"))
    CreateBulkImportJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: BulkImportJobName, required: true, location_name: "jobName"))
    CreateBulkImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    CreateBulkImportJobResponse.struct_class = Types::CreateBulkImportJobResponse

    CreateComputationModelRequest.add_member(:computation_model_name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "computationModelName"))
    CreateComputationModelRequest.add_member(:computation_model_description, Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: "computationModelDescription"))
    CreateComputationModelRequest.add_member(:computation_model_configuration, Shapes::ShapeRef.new(shape: ComputationModelConfiguration, required: true, location_name: "computationModelConfiguration"))
    CreateComputationModelRequest.add_member(:computation_model_data_binding, Shapes::ShapeRef.new(shape: ComputationModelDataBinding, required: true, location_name: "computationModelDataBinding"))
    CreateComputationModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateComputationModelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateComputationModelRequest.struct_class = Types::CreateComputationModelRequest

    CreateComputationModelResponse.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "computationModelId"))
    CreateComputationModelResponse.add_member(:computation_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "computationModelArn"))
    CreateComputationModelResponse.add_member(:computation_model_status, Shapes::ShapeRef.new(shape: ComputationModelStatus, required: true, location_name: "computationModelStatus"))
    CreateComputationModelResponse.struct_class = Types::CreateComputationModelResponse

    CreateDashboardRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    CreateDashboardRequest.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "dashboardName"))
    CreateDashboardRequest.add_member(:dashboard_description, Shapes::ShapeRef.new(shape: Description, location_name: "dashboardDescription"))
    CreateDashboardRequest.add_member(:dashboard_definition, Shapes::ShapeRef.new(shape: DashboardDefinition, required: true, location_name: "dashboardDefinition"))
    CreateDashboardRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDashboardRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDashboardRequest.struct_class = Types::CreateDashboardRequest

    CreateDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "dashboardId"))
    CreateDashboardResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dashboardArn"))
    CreateDashboardResponse.struct_class = Types::CreateDashboardResponse

    CreateDatasetExportJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CreateDatasetExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDatasetExportJobRequest.add_member(:destination_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "destinationS3Uri"))
    CreateDatasetExportJobRequest.add_member(:input, Shapes::ShapeRef.new(shape: ProcessingInput, required: true, location_name: "input"))
    CreateDatasetExportJobRequest.add_member(:error_report_location, Shapes::ShapeRef.new(shape: ExportErrorReportLocation, required: true, location_name: "errorReportLocation"))
    CreateDatasetExportJobRequest.struct_class = Types::CreateDatasetExportJobRequest

    CreateDatasetExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: DatasetExportJobId, required: true, location_name: "jobId"))
    CreateDatasetExportJobResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    CreateDatasetExportJobResponse.struct_class = Types::CreateDatasetExportJobResponse

    CreateDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, location_name: "datasetId"))
    CreateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "datasetName"))
    CreateDatasetRequest.add_member(:dataset_description, Shapes::ShapeRef.new(shape: Description, location_name: "datasetDescription"))
    CreateDatasetRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetTypeEnum, location_name: "datasetType"))
    CreateDatasetRequest.add_member(:dataset_config, Shapes::ShapeRef.new(shape: DatasetConfig, location_name: "datasetConfig"))
    CreateDatasetRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    CreateDatasetRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    CreateDatasetRequest.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DatasetSource, required: true, location_name: "datasetSource"))
    CreateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDatasetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDatasetRequest.struct_class = Types::CreateDatasetRequest

    CreateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    CreateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "datasetArn"))
    CreateDatasetResponse.add_member(:dataset_status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "datasetStatus"))
    CreateDatasetResponse.struct_class = Types::CreateDatasetResponse

    CreateEnrichmentJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CreateEnrichmentJobRequest.add_member(:job_configuration, Shapes::ShapeRef.new(shape: EnrichmentJobConfiguration, required: true, location_name: "jobConfiguration"))
    CreateEnrichmentJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEnrichmentJobRequest.struct_class = Types::CreateEnrichmentJobRequest

    CreateEnrichmentJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "jobId"))
    CreateEnrichmentJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentJobStatus, required: true, location_name: "status"))
    CreateEnrichmentJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateEnrichmentJobResponse.struct_class = Types::CreateEnrichmentJobResponse

    CreateGatewayRequest.add_member(:gateway_name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "gatewayName"))
    CreateGatewayRequest.add_member(:gateway_platform, Shapes::ShapeRef.new(shape: GatewayPlatform, required: true, location_name: "gatewayPlatform"))
    CreateGatewayRequest.add_member(:gateway_version, Shapes::ShapeRef.new(shape: GatewayVersion, location_name: "gatewayVersion"))
    CreateGatewayRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateGatewayRequest.struct_class = Types::CreateGatewayRequest

    CreateGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    CreateGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "gatewayArn"))
    CreateGatewayResponse.struct_class = Types::CreateGatewayResponse

    CreatePipelineRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CreatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "pipelineName"))
    CreatePipelineRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePipelineRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    CreatePipelineRequest.add_member(:computations, Shapes::ShapeRef.new(shape: ComputeNodeList, required: true, location_name: "computations"))
    CreatePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePipelineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePipelineRequest.struct_class = Types::CreatePipelineRequest

    CreatePipelineResponse.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "pipelineName"))
    CreatePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "pipelineArn"))
    CreatePipelineResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    CreatePipelineResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    CreatePipelineResponse.struct_class = Types::CreatePipelineResponse

    CreatePortalRequest.add_member(:portal_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "portalName"))
    CreatePortalRequest.add_member(:portal_description, Shapes::ShapeRef.new(shape: Description, location_name: "portalDescription"))
    CreatePortalRequest.add_member(:portal_contact_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "portalContactEmail"))
    CreatePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePortalRequest.add_member(:portal_logo_image_file, Shapes::ShapeRef.new(shape: ImageFile, location_name: "portalLogoImageFile"))
    CreatePortalRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, required: true, location_name: "roleArn"))
    CreatePortalRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePortalRequest.add_member(:portal_auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "portalAuthMode"))
    CreatePortalRequest.add_member(:notification_sender_email, Shapes::ShapeRef.new(shape: Email, location_name: "notificationSenderEmail"))
    CreatePortalRequest.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "alarms"))
    CreatePortalRequest.add_member(:portal_type, Shapes::ShapeRef.new(shape: PortalType, location_name: "portalType"))
    CreatePortalRequest.add_member(:portal_type_configuration, Shapes::ShapeRef.new(shape: PortalTypeConfiguration, location_name: "portalTypeConfiguration"))
    CreatePortalRequest.struct_class = Types::CreatePortalRequest

    CreatePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    CreatePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    CreatePortalResponse.add_member(:portal_start_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "portalStartUrl"))
    CreatePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    CreatePortalResponse.add_member(:sso_application_id, Shapes::ShapeRef.new(shape: SSOApplicationId, required: true, location_name: "ssoApplicationId"))
    CreatePortalResponse.struct_class = Types::CreatePortalResponse

    CreateProjectRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    CreateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "projectName"))
    CreateProjectRequest.add_member(:project_description, Shapes::ShapeRef.new(shape: Description, location_name: "projectDescription"))
    CreateProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    CreateProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "projectArn"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    CreateTaskRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    CreateTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "taskName"))
    CreateTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateTaskRequest.add_member(:task_configuration, Shapes::ShapeRef.new(shape: TaskConfiguration, required: true, location_name: "taskConfiguration"))
    CreateTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateTaskRequest.struct_class = Types::CreateTaskRequest

    CreateTaskResponse.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "taskName"))
    CreateTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "taskArn"))
    CreateTaskResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    CreateTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    CreateTaskResponse.struct_class = Types::CreateTaskResponse

    CreateWorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    CreateWorkspaceRequest.add_member(:workspace_description, Shapes::ShapeRef.new(shape: Description, location_name: "workspaceDescription"))
    CreateWorkspaceRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: WorkspaceEncryptionConfiguration, required: true, location_name: "encryptionConfiguration"))
    CreateWorkspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkspaceRequest.struct_class = Types::CreateWorkspaceRequest

    CreateWorkspaceResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    CreateWorkspaceResponse.add_member(:workspace_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "workspaceArn"))
    CreateWorkspaceResponse.add_member(:workspace_status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "workspaceStatus"))
    CreateWorkspaceResponse.struct_class = Types::CreateWorkspaceResponse

    Csv.add_member(:column_names, Shapes::ShapeRef.new(shape: ColumnNames, required: true, location_name: "columnNames"))
    Csv.struct_class = Types::Csv

    CustomerManagedS3Storage.add_member(:s3_resource_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "s3ResourceArn"))
    CustomerManagedS3Storage.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "roleArn"))
    CustomerManagedS3Storage.struct_class = Types::CustomerManagedS3Storage

    DashboardSummaries.member = Shapes::ShapeRef.new(shape: DashboardSummary)

    DashboardSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    DashboardSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    DashboardSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DashboardSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    DashboardSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    DashboardSummary.struct_class = Types::DashboardSummary

    DataBindingValue.add_member(:asset_model_property, Shapes::ShapeRef.new(shape: AssetModelPropertyBindingValue, location_name: "assetModelProperty"))
    DataBindingValue.add_member(:asset_property, Shapes::ShapeRef.new(shape: AssetPropertyBindingValue, location_name: "assetProperty"))
    DataBindingValue.struct_class = Types::DataBindingValue

    DataBindingValueFilter.add_member(:asset, Shapes::ShapeRef.new(shape: AssetBindingValueFilter, location_name: "asset"))
    DataBindingValueFilter.add_member(:asset_model, Shapes::ShapeRef.new(shape: AssetModelBindingValueFilter, location_name: "assetModel"))
    DataBindingValueFilter.add_member(:asset_property, Shapes::ShapeRef.new(shape: AssetPropertyBindingValueFilter, location_name: "assetProperty"))
    DataBindingValueFilter.add_member(:asset_model_property, Shapes::ShapeRef.new(shape: AssetModelPropertyBindingValueFilter, location_name: "assetModelProperty"))
    DataBindingValueFilter.struct_class = Types::DataBindingValueFilter

    DataSegmentEnrichment.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentStatus, required: true, location_name: "status"))
    DataSegmentEnrichment.add_member(:last_enriched_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastEnrichedAt"))
    DataSegmentEnrichment.struct_class = Types::DataSegmentEnrichment

    DataSegmentRelationshipSummaries.member = Shapes::ShapeRef.new(shape: DataSegmentRelationshipSummary)

    DataSegmentRelationshipSummary.add_member(:target_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "targetDatasetId"))
    DataSegmentRelationshipSummary.add_member(:source_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "sourceDatasetId"))
    DataSegmentRelationshipSummary.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    DataSegmentRelationshipSummary.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    DataSegmentRelationshipSummary.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    DataSegmentRelationshipSummary.struct_class = Types::DataSegmentRelationshipSummary

    DataSegmentSummaries.member = Shapes::ShapeRef.new(shape: DataSegmentSummary)

    DataSegmentSummary.add_member(:source_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "sourceDatasetId"))
    DataSegmentSummary.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    DataSegmentSummary.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    DataSegmentSummary.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    DataSegmentSummary.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, required: true, location_name: "alias"))
    DataSegmentSummary.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    DataSegmentSummary.add_member(:enrichment, Shapes::ShapeRef.new(shape: DataSegmentEnrichment, location_name: "enrichment"))
    DataSegmentSummary.struct_class = Types::DataSegmentSummary

    DataSetIdList.member = Shapes::ShapeRef.new(shape: DatasetId)

    DataSetReference.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: String, location_name: "datasetArn"))
    DataSetReference.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    DataSetReference.struct_class = Types::DataSetReference

    DatasetConfig.add_member(:session, Shapes::ShapeRef.new(shape: SessionConfig, location_name: "session"))
    DatasetConfig.struct_class = Types::DatasetConfig

    DatasetEnrichment.add_member(:video, Shapes::ShapeRef.new(shape: DatasetEnrichmentEntry, location_name: "video"))
    DatasetEnrichment.struct_class = Types::DatasetEnrichment

    DatasetEnrichmentEntry.add_member(:status, Shapes::ShapeRef.new(shape: DatasetEnrichmentStatus, required: true, location_name: "status"))
    DatasetEnrichmentEntry.add_member(:last_enriched_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastEnrichedAt"))
    DatasetEnrichmentEntry.struct_class = Types::DatasetEnrichmentEntry

    DatasetItem.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    DatasetItem.add_member(:trim_settings, Shapes::ShapeRef.new(shape: TrimSettings, location_name: "trimSettings"))
    DatasetItem.add_member(:export_data_types, Shapes::ShapeRef.new(shape: ExportDataTypeList, location_name: "exportDataTypes"))
    DatasetItem.struct_class = Types::DatasetItem

    DatasetSource.add_member(:source_type, Shapes::ShapeRef.new(shape: DatasetSourceType, required: true, location_name: "sourceType"))
    DatasetSource.add_member(:source_format, Shapes::ShapeRef.new(shape: DatasetSourceFormat, required: true, location_name: "sourceFormat"))
    DatasetSource.add_member(:source_detail, Shapes::ShapeRef.new(shape: SourceDetail, location_name: "sourceDetail"))
    DatasetSource.struct_class = Types::DatasetSource

    DatasetStatus.add_member(:state, Shapes::ShapeRef.new(shape: DatasetState, required: true, location_name: "state"))
    DatasetStatus.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    DatasetStatus.struct_class = Types::DatasetStatus

    DatasetSummaries.member = Shapes::ShapeRef.new(shape: DatasetSummary)

    DatasetSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    DatasetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    DatasetSummary.add_member(:name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "name"))
    DatasetSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    DatasetSummary.add_member(:source_type, Shapes::ShapeRef.new(shape: DatasetSourceType, location_name: "sourceType"))
    DatasetSummary.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetTypeEnum, location_name: "datasetType"))
    DatasetSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    DatasetSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    DatasetSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "status"))
    DatasetSummary.add_member(:enrichment_status, Shapes::ShapeRef.new(shape: DatasetEnrichment, location_name: "enrichmentStatus"))
    DatasetSummary.struct_class = Types::DatasetSummary

    Datum.add_member(:scalar_value, Shapes::ShapeRef.new(shape: ScalarValue, location_name: "scalarValue"))
    Datum.add_member(:array_value, Shapes::ShapeRef.new(shape: DatumList, location_name: "arrayValue"))
    Datum.add_member(:row_value, Shapes::ShapeRef.new(shape: Row, location_name: "rowValue"))
    Datum.add_member(:null_value, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "nullValue"))
    Datum.struct_class = Types::Datum

    DatumList.member = Shapes::ShapeRef.new(shape: Datum)

    DeleteAccessPolicyRequest.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "accessPolicyId"))
    DeleteAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAccessPolicyRequest.struct_class = Types::DeleteAccessPolicyRequest

    DeleteAccessPolicyResponse.struct_class = Types::DeleteAccessPolicyResponse

    DeleteApplicationRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DeleteApplicationRequest.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "id"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteAssetModelCompositeModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    DeleteAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelCompositeModelId"))
    DeleteAssetModelCompositeModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAssetModelCompositeModelRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "If-Match"))
    DeleteAssetModelCompositeModelRequest.add_member(:if_none_match, Shapes::ShapeRef.new(shape: SelectAll, location: "header", location_name: "If-None-Match"))
    DeleteAssetModelCompositeModelRequest.add_member(:match_for_version_type, Shapes::ShapeRef.new(shape: AssetModelVersionType, location: "header", location_name: "Match-For-Version-Type"))
    DeleteAssetModelCompositeModelRequest.struct_class = Types::DeleteAssetModelCompositeModelRequest

    DeleteAssetModelCompositeModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    DeleteAssetModelCompositeModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelId"))
    DeleteAssetModelCompositeModelResponse.struct_class = Types::DeleteAssetModelCompositeModelResponse

    DeleteAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "interfaceAssetModelId"))
    DeleteAssetModelInterfaceRelationshipRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAssetModelInterfaceRelationshipRequest.struct_class = Types::DeleteAssetModelInterfaceRelationshipRequest

    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "interfaceAssetModelId"))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetModelArn"))
    DeleteAssetModelInterfaceRelationshipResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    DeleteAssetModelInterfaceRelationshipResponse.struct_class = Types::DeleteAssetModelInterfaceRelationshipResponse

    DeleteAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    DeleteAssetModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAssetModelRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "If-Match"))
    DeleteAssetModelRequest.add_member(:if_none_match, Shapes::ShapeRef.new(shape: SelectAll, location: "header", location_name: "If-None-Match"))
    DeleteAssetModelRequest.add_member(:match_for_version_type, Shapes::ShapeRef.new(shape: AssetModelVersionType, location: "header", location_name: "Match-For-Version-Type"))
    DeleteAssetModelRequest.struct_class = Types::DeleteAssetModelRequest

    DeleteAssetModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelId"))
    DeleteAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    DeleteAssetModelResponse.struct_class = Types::DeleteAssetModelResponse

    DeleteAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    DeleteAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAssetRequest.struct_class = Types::DeleteAssetRequest

    DeleteAssetResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    DeleteAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    DeleteAssetResponse.struct_class = Types::DeleteAssetResponse

    DeleteComputationModelRequest.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "computationModelId"))
    DeleteComputationModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteComputationModelRequest.struct_class = Types::DeleteComputationModelRequest

    DeleteComputationModelResponse.add_member(:computation_model_status, Shapes::ShapeRef.new(shape: ComputationModelStatus, required: true, location_name: "computationModelStatus"))
    DeleteComputationModelResponse.struct_class = Types::DeleteComputationModelResponse

    DeleteDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "dashboardId"))
    DeleteDashboardRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteDashboardRequest.struct_class = Types::DeleteDashboardRequest

    DeleteDashboardResponse.struct_class = Types::DeleteDashboardResponse

    DeleteDataSegmentEntries.member = Shapes::ShapeRef.new(shape: DeleteDataSegmentEntry)

    DeleteDataSegmentEntry.add_member(:time_series_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "timeSeriesId"))
    DeleteDataSegmentEntry.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    DeleteDataSegmentEntry.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    DeleteDataSegmentEntry.struct_class = Types::DeleteDataSegmentEntry

    DeleteDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    DeleteDatasetRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    DeleteDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteDatasetRequest.struct_class = Types::DeleteDatasetRequest

    DeleteDatasetResponse.add_member(:dataset_status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "datasetStatus"))
    DeleteDatasetResponse.struct_class = Types::DeleteDatasetResponse

    DeleteGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    DeleteGatewayRequest.struct_class = Types::DeleteGatewayRequest

    DeletePipelineRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DeletePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    DeletePipelineRequest.struct_class = Types::DeletePipelineRequest

    DeletePipelineResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    DeletePipelineResponse.struct_class = Types::DeletePipelineResponse

    DeletePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    DeletePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeletePortalRequest.struct_class = Types::DeletePortalRequest

    DeletePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    DeletePortalResponse.struct_class = Types::DeletePortalResponse

    DeleteProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    DeleteProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResponse.struct_class = Types::DeleteProjectResponse

    DeleteTaskRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DeleteTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "taskName"))
    DeleteTaskRequest.struct_class = Types::DeleteTaskRequest

    DeleteTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    DeleteTaskResponse.struct_class = Types::DeleteTaskResponse

    DeleteTimeSeriesRequest.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location: "querystring", location_name: "alias"))
    DeleteTimeSeriesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "assetId"))
    DeleteTimeSeriesRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "propertyId"))
    DeleteTimeSeriesRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteTimeSeriesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    DeleteTimeSeriesRequest.struct_class = Types::DeleteTimeSeriesRequest

    DeleteWorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DeleteWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteWorkspaceRequest.struct_class = Types::DeleteWorkspaceRequest

    DeleteWorkspaceResponse.add_member(:workspace_status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "workspaceStatus"))
    DeleteWorkspaceResponse.struct_class = Types::DeleteWorkspaceResponse

    DescribeAccessPolicyRequest.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "accessPolicyId"))
    DescribeAccessPolicyRequest.struct_class = Types::DescribeAccessPolicyRequest

    DescribeAccessPolicyResponse.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "accessPolicyId"))
    DescribeAccessPolicyResponse.add_member(:access_policy_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "accessPolicyArn"))
    DescribeAccessPolicyResponse.add_member(:access_policy_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "accessPolicyIdentity"))
    DescribeAccessPolicyResponse.add_member(:access_policy_resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "accessPolicyResource"))
    DescribeAccessPolicyResponse.add_member(:access_policy_permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "accessPolicyPermission"))
    DescribeAccessPolicyResponse.add_member(:access_policy_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "accessPolicyCreationDate"))
    DescribeAccessPolicyResponse.add_member(:access_policy_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "accessPolicyLastUpdateDate"))
    DescribeAccessPolicyResponse.struct_class = Types::DescribeAccessPolicyResponse

    DescribeActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "actionId"))
    DescribeActionRequest.struct_class = Types::DescribeActionRequest

    DescribeActionResponse.add_member(:action_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "actionId"))
    DescribeActionResponse.add_member(:target_resource, Shapes::ShapeRef.new(shape: TargetResource, required: true, location_name: "targetResource"))
    DescribeActionResponse.add_member(:action_definition_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "actionDefinitionId"))
    DescribeActionResponse.add_member(:action_payload, Shapes::ShapeRef.new(shape: ActionPayload, required: true, location_name: "actionPayload"))
    DescribeActionResponse.add_member(:execution_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "executionTime"))
    DescribeActionResponse.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    DescribeActionResponse.struct_class = Types::DescribeActionResponse

    DescribeApplicationRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeApplicationRequest.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "id"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    DescribeApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DescribeApplicationResponse.add_member(:dns_subdomain, Shapes::ShapeRef.new(shape: DnsSubdomain, required: true, location_name: "dnsSubdomain"))
    DescribeApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "description"))
    DescribeApplicationResponse.add_member(:id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "id"))
    DescribeApplicationResponse.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "idcApplicationArn"))
    DescribeApplicationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "name"))
    DescribeApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "status"))
    DescribeApplicationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DescribeApplicationResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    DescribeAssetCompositeModelRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    DescribeAssetCompositeModelRequest.add_member(:asset_composite_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetCompositeModelId"))
    DescribeAssetCompositeModelRequest.struct_class = Types::DescribeAssetCompositeModelRequest

    DescribeAssetCompositeModelResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetCompositeModelId"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetCompositeModelExternalId"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_path, Shapes::ShapeRef.new(shape: AssetCompositeModelPath, required: true, location_name: "assetCompositeModelPath"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetCompositeModelName"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "assetCompositeModelDescription"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetCompositeModelType"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_properties, Shapes::ShapeRef.new(shape: AssetProperties, required: true, location_name: "assetCompositeModelProperties"))
    DescribeAssetCompositeModelResponse.add_member(:asset_composite_model_summaries, Shapes::ShapeRef.new(shape: AssetCompositeModelSummaries, required: true, location_name: "assetCompositeModelSummaries"))
    DescribeAssetCompositeModelResponse.add_member(:action_definitions, Shapes::ShapeRef.new(shape: ActionDefinitions, location_name: "actionDefinitions"))
    DescribeAssetCompositeModelResponse.struct_class = Types::DescribeAssetCompositeModelResponse

    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelCompositeModelId"))
    DescribeAssetModelCompositeModelRequest.add_member(:asset_model_version, Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location: "querystring", location_name: "assetModelVersion"))
    DescribeAssetModelCompositeModelRequest.struct_class = Types::DescribeAssetModelCompositeModelRequest

    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelCompositeModelId"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetModelCompositeModelExternalId"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, required: true, location_name: "assetModelCompositeModelPath"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelCompositeModelName"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "assetModelCompositeModelDescription"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_type, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelCompositeModelType"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_properties, Shapes::ShapeRef.new(shape: AssetModelProperties, required: true, location_name: "assetModelCompositeModelProperties"))
    DescribeAssetModelCompositeModelResponse.add_member(:composition_details, Shapes::ShapeRef.new(shape: CompositionDetails, location_name: "compositionDetails"))
    DescribeAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_summaries, Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummaries, required: true, location_name: "assetModelCompositeModelSummaries"))
    DescribeAssetModelCompositeModelResponse.add_member(:action_definitions, Shapes::ShapeRef.new(shape: ActionDefinitions, location_name: "actionDefinitions"))
    DescribeAssetModelCompositeModelResponse.struct_class = Types::DescribeAssetModelCompositeModelResponse

    DescribeAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    DescribeAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "interfaceAssetModelId"))
    DescribeAssetModelInterfaceRelationshipRequest.struct_class = Types::DescribeAssetModelInterfaceRelationshipRequest

    DescribeAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "interfaceAssetModelId"))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:property_mappings, Shapes::ShapeRef.new(shape: PropertyMappings, required: true, location_name: "propertyMappings"))
    DescribeAssetModelInterfaceRelationshipResponse.add_member(:hierarchy_mappings, Shapes::ShapeRef.new(shape: HierarchyMappings, required: true, location_name: "hierarchyMappings"))
    DescribeAssetModelInterfaceRelationshipResponse.struct_class = Types::DescribeAssetModelInterfaceRelationshipResponse

    DescribeAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    DescribeAssetModelRequest.add_member(:exclude_properties, Shapes::ShapeRef.new(shape: ExcludeProperties, location: "querystring", location_name: "excludeProperties"))
    DescribeAssetModelRequest.add_member(:asset_model_version, Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location: "querystring", location_name: "assetModelVersion"))
    DescribeAssetModelRequest.struct_class = Types::DescribeAssetModelRequest

    DescribeAssetModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetModelResponse.add_member(:asset_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetModelExternalId"))
    DescribeAssetModelResponse.add_member(:asset_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetModelArn"))
    DescribeAssetModelResponse.add_member(:asset_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelName"))
    DescribeAssetModelResponse.add_member(:asset_model_type, Shapes::ShapeRef.new(shape: AssetModelType, location_name: "assetModelType"))
    DescribeAssetModelResponse.add_member(:asset_model_description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "assetModelDescription"))
    DescribeAssetModelResponse.add_member(:asset_model_properties, Shapes::ShapeRef.new(shape: AssetModelProperties, required: true, location_name: "assetModelProperties"))
    DescribeAssetModelResponse.add_member(:asset_model_hierarchies, Shapes::ShapeRef.new(shape: AssetModelHierarchies, required: true, location_name: "assetModelHierarchies"))
    DescribeAssetModelResponse.add_member(:asset_model_composite_models, Shapes::ShapeRef.new(shape: AssetModelCompositeModels, location_name: "assetModelCompositeModels"))
    DescribeAssetModelResponse.add_member(:asset_model_composite_model_summaries, Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummaries, location_name: "assetModelCompositeModelSummaries"))
    DescribeAssetModelResponse.add_member(:asset_model_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetModelCreationDate"))
    DescribeAssetModelResponse.add_member(:asset_model_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetModelLastUpdateDate"))
    DescribeAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    DescribeAssetModelResponse.add_member(:asset_model_version, Shapes::ShapeRef.new(shape: Version, location_name: "assetModelVersion"))
    DescribeAssetModelResponse.add_member(:interface_details, Shapes::ShapeRef.new(shape: InterfaceDetails, location_name: "interfaceDetails"))
    DescribeAssetModelResponse.add_member(:e_tag, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "ETag"))
    DescribeAssetModelResponse.struct_class = Types::DescribeAssetModelResponse

    DescribeAssetPropertyRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    DescribeAssetPropertyRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "propertyId"))
    DescribeAssetPropertyRequest.struct_class = Types::DescribeAssetPropertyRequest

    DescribeAssetPropertyResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    DescribeAssetPropertyResponse.add_member(:asset_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetExternalId"))
    DescribeAssetPropertyResponse.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    DescribeAssetPropertyResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetPropertyResponse.add_member(:asset_property, Shapes::ShapeRef.new(shape: Property, location_name: "assetProperty"))
    DescribeAssetPropertyResponse.add_member(:composite_model, Shapes::ShapeRef.new(shape: CompositeModelProperty, location_name: "compositeModel"))
    DescribeAssetPropertyResponse.struct_class = Types::DescribeAssetPropertyResponse

    DescribeAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    DescribeAssetRequest.add_member(:exclude_properties, Shapes::ShapeRef.new(shape: ExcludeProperties, location: "querystring", location_name: "excludeProperties"))
    DescribeAssetRequest.struct_class = Types::DescribeAssetRequest

    DescribeAssetResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    DescribeAssetResponse.add_member(:asset_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetExternalId"))
    DescribeAssetResponse.add_member(:asset_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetArn"))
    DescribeAssetResponse.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    DescribeAssetResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    DescribeAssetResponse.add_member(:asset_properties, Shapes::ShapeRef.new(shape: AssetProperties, required: true, location_name: "assetProperties"))
    DescribeAssetResponse.add_member(:asset_hierarchies, Shapes::ShapeRef.new(shape: AssetHierarchies, required: true, location_name: "assetHierarchies"))
    DescribeAssetResponse.add_member(:asset_composite_models, Shapes::ShapeRef.new(shape: AssetCompositeModels, location_name: "assetCompositeModels"))
    DescribeAssetResponse.add_member(:asset_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetCreationDate"))
    DescribeAssetResponse.add_member(:asset_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "assetLastUpdateDate"))
    DescribeAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    DescribeAssetResponse.add_member(:asset_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetDescription"))
    DescribeAssetResponse.add_member(:asset_composite_model_summaries, Shapes::ShapeRef.new(shape: AssetCompositeModelSummaries, location_name: "assetCompositeModelSummaries"))
    DescribeAssetResponse.struct_class = Types::DescribeAssetResponse

    DescribeBulkImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "jobId"))
    DescribeBulkImportJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    DescribeBulkImportJobRequest.struct_class = Types::DescribeBulkImportJobRequest

    DescribeBulkImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "jobId"))
    DescribeBulkImportJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "jobName"))
    DescribeBulkImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    DescribeBulkImportJobResponse.add_member(:job_role_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "jobRoleArn"))
    DescribeBulkImportJobResponse.add_member(:files, Shapes::ShapeRef.new(shape: Files, required: true, location_name: "files"))
    DescribeBulkImportJobResponse.add_member(:error_report_location, Shapes::ShapeRef.new(shape: ErrorReportLocation, required: true, location_name: "errorReportLocation"))
    DescribeBulkImportJobResponse.add_member(:job_configuration, Shapes::ShapeRef.new(shape: JobConfiguration, location_name: "jobConfiguration"))
    DescribeBulkImportJobResponse.add_member(:job_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "jobCreationDate"))
    DescribeBulkImportJobResponse.add_member(:job_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "jobLastUpdateDate"))
    DescribeBulkImportJobResponse.add_member(:adaptive_ingestion, Shapes::ShapeRef.new(shape: AdaptiveIngestion, location_name: "adaptiveIngestion"))
    DescribeBulkImportJobResponse.add_member(:delete_files_after_import, Shapes::ShapeRef.new(shape: DeleteFilesAfterImport, location_name: "deleteFilesAfterImport"))
    DescribeBulkImportJobResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, location_name: "datasetId"))
    DescribeBulkImportJobResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    DescribeBulkImportJobResponse.struct_class = Types::DescribeBulkImportJobResponse

    DescribeComputationModelExecutionSummaryRequest.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "computationModelId"))
    DescribeComputationModelExecutionSummaryRequest.add_member(:resolve_to_resource_type, Shapes::ShapeRef.new(shape: ResolveToResourceType, location: "querystring", location_name: "resolveToResourceType"))
    DescribeComputationModelExecutionSummaryRequest.add_member(:resolve_to_resource_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "resolveToResourceId"))
    DescribeComputationModelExecutionSummaryRequest.struct_class = Types::DescribeComputationModelExecutionSummaryRequest

    DescribeComputationModelExecutionSummaryResponse.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "computationModelId"))
    DescribeComputationModelExecutionSummaryResponse.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    DescribeComputationModelExecutionSummaryResponse.add_member(:computation_model_execution_summary, Shapes::ShapeRef.new(shape: ComputationModelExecutionSummary, required: true, location_name: "computationModelExecutionSummary"))
    DescribeComputationModelExecutionSummaryResponse.struct_class = Types::DescribeComputationModelExecutionSummaryResponse

    DescribeComputationModelRequest.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "computationModelId"))
    DescribeComputationModelRequest.add_member(:computation_model_version, Shapes::ShapeRef.new(shape: ComputationModelVersionFilter, location: "querystring", location_name: "computationModelVersion"))
    DescribeComputationModelRequest.struct_class = Types::DescribeComputationModelRequest

    DescribeComputationModelResponse.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "computationModelId"))
    DescribeComputationModelResponse.add_member(:computation_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "computationModelArn"))
    DescribeComputationModelResponse.add_member(:computation_model_name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "computationModelName"))
    DescribeComputationModelResponse.add_member(:computation_model_description, Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: "computationModelDescription"))
    DescribeComputationModelResponse.add_member(:computation_model_configuration, Shapes::ShapeRef.new(shape: ComputationModelConfiguration, required: true, location_name: "computationModelConfiguration"))
    DescribeComputationModelResponse.add_member(:computation_model_data_binding, Shapes::ShapeRef.new(shape: ComputationModelDataBinding, required: true, location_name: "computationModelDataBinding"))
    DescribeComputationModelResponse.add_member(:computation_model_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "computationModelCreationDate"))
    DescribeComputationModelResponse.add_member(:computation_model_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "computationModelLastUpdateDate"))
    DescribeComputationModelResponse.add_member(:computation_model_status, Shapes::ShapeRef.new(shape: ComputationModelStatus, required: true, location_name: "computationModelStatus"))
    DescribeComputationModelResponse.add_member(:computation_model_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "computationModelVersion"))
    DescribeComputationModelResponse.add_member(:action_definitions, Shapes::ShapeRef.new(shape: ActionDefinitions, required: true, location_name: "actionDefinitions"))
    DescribeComputationModelResponse.struct_class = Types::DescribeComputationModelResponse

    DescribeDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "dashboardId"))
    DescribeDashboardRequest.struct_class = Types::DescribeDashboardRequest

    DescribeDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "dashboardId"))
    DescribeDashboardResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "dashboardArn"))
    DescribeDashboardResponse.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "dashboardName"))
    DescribeDashboardResponse.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    DescribeDashboardResponse.add_member(:dashboard_description, Shapes::ShapeRef.new(shape: Description, location_name: "dashboardDescription"))
    DescribeDashboardResponse.add_member(:dashboard_definition, Shapes::ShapeRef.new(shape: DashboardDefinition, required: true, location_name: "dashboardDefinition"))
    DescribeDashboardResponse.add_member(:dashboard_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "dashboardCreationDate"))
    DescribeDashboardResponse.add_member(:dashboard_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "dashboardLastUpdateDate"))
    DescribeDashboardResponse.struct_class = Types::DescribeDashboardResponse

    DescribeDatasetExportJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeDatasetExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: DatasetExportJobId, required: true, location: "uri", location_name: "jobId"))
    DescribeDatasetExportJobRequest.struct_class = Types::DescribeDatasetExportJobRequest

    DescribeDatasetExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: DatasetExportJobId, required: true, location_name: "jobId"))
    DescribeDatasetExportJobResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribeDatasetExportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DatasetExportJobStatus, required: true, location_name: "status"))
    DescribeDatasetExportJobResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    DescribeDatasetExportJobResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    DescribeDatasetExportJobResponse.add_member(:destination_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "destinationS3Uri"))
    DescribeDatasetExportJobResponse.add_member(:error_report_location, Shapes::ShapeRef.new(shape: ExportErrorReportLocation, required: true, location_name: "errorReportLocation"))
    DescribeDatasetExportJobResponse.add_member(:input, Shapes::ShapeRef.new(shape: ProcessingInput, required: true, location_name: "input"))
    DescribeDatasetExportJobResponse.struct_class = Types::DescribeDatasetExportJobResponse

    DescribeDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    DescribeDatasetRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    DescribeDatasetRequest.add_member(:dataset_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "datasetVersion"))
    DescribeDatasetRequest.struct_class = Types::DescribeDatasetRequest

    DescribeDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    DescribeDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "datasetArn"))
    DescribeDatasetResponse.add_member(:dataset_name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "datasetName"))
    DescribeDatasetResponse.add_member(:dataset_description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "datasetDescription"))
    DescribeDatasetResponse.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetTypeEnum, location_name: "datasetType"))
    DescribeDatasetResponse.add_member(:dataset_config, Shapes::ShapeRef.new(shape: DatasetConfig, location_name: "datasetConfig"))
    DescribeDatasetResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    DescribeDatasetResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    DescribeDatasetResponse.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DatasetSource, required: true, location_name: "datasetSource"))
    DescribeDatasetResponse.add_member(:dataset_status, Shapes::ShapeRef.new(shape: DatasetStatus, required: true, location_name: "datasetStatus"))
    DescribeDatasetResponse.add_member(:dataset_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "datasetCreationDate"))
    DescribeDatasetResponse.add_member(:dataset_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "datasetLastUpdateDate"))
    DescribeDatasetResponse.add_member(:dataset_version, Shapes::ShapeRef.new(shape: Version, location_name: "datasetVersion"))
    DescribeDatasetResponse.add_member(:enrichment_status, Shapes::ShapeRef.new(shape: DatasetEnrichment, location_name: "enrichmentStatus"))
    DescribeDatasetResponse.struct_class = Types::DescribeDatasetResponse

    DescribeDefaultEncryptionConfigurationRequest.struct_class = Types::DescribeDefaultEncryptionConfigurationRequest

    DescribeDefaultEncryptionConfigurationResponse.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    DescribeDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "kmsKeyArn"))
    DescribeDefaultEncryptionConfigurationResponse.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    DescribeDefaultEncryptionConfigurationResponse.struct_class = Types::DescribeDefaultEncryptionConfigurationResponse

    DescribeEnrichmentJobRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeEnrichmentJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "jobId"))
    DescribeEnrichmentJobRequest.struct_class = Types::DescribeEnrichmentJobRequest

    DescribeEnrichmentJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "jobId"))
    DescribeEnrichmentJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentJobStatus, required: true, location_name: "status"))
    DescribeEnrichmentJobResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribeEnrichmentJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "jobType"))
    DescribeEnrichmentJobResponse.add_member(:job_configuration, Shapes::ShapeRef.new(shape: EnrichmentJobConfiguration, required: true, location_name: "jobConfiguration"))
    DescribeEnrichmentJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DescribeEnrichmentJobResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DescribeEnrichmentJobResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    DescribeEnrichmentJobResponse.add_member(:cancelled_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "cancelledAt"))
    DescribeEnrichmentJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    DescribeEnrichmentJobResponse.struct_class = Types::DescribeEnrichmentJobResponse

    DescribeExecutionRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "executionId"))
    DescribeExecutionRequest.struct_class = Types::DescribeExecutionRequest

    DescribeExecutionResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "executionId"))
    DescribeExecutionResponse.add_member(:action_type, Shapes::ShapeRef.new(shape: Name, location_name: "actionType"))
    DescribeExecutionResponse.add_member(:target_resource, Shapes::ShapeRef.new(shape: TargetResource, required: true, location_name: "targetResource"))
    DescribeExecutionResponse.add_member(:target_resource_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "targetResourceVersion"))
    DescribeExecutionResponse.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    DescribeExecutionResponse.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "executionStartTime"))
    DescribeExecutionResponse.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "executionEndTime"))
    DescribeExecutionResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "executionStatus"))
    DescribeExecutionResponse.add_member(:execution_result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "executionResult"))
    DescribeExecutionResponse.add_member(:execution_details, Shapes::ShapeRef.new(shape: ExecutionDetails, location_name: "executionDetails"))
    DescribeExecutionResponse.add_member(:execution_entity_version, Shapes::ShapeRef.new(shape: Version, location_name: "executionEntityVersion"))
    DescribeExecutionResponse.struct_class = Types::DescribeExecutionResponse

    DescribeGatewayCapabilityConfigurationRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    DescribeGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location: "uri", location_name: "capabilityNamespace"))
    DescribeGatewayCapabilityConfigurationRequest.struct_class = Types::DescribeGatewayCapabilityConfigurationRequest

    DescribeGatewayCapabilityConfigurationResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "capabilityConfiguration"))
    DescribeGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, Shapes::ShapeRef.new(shape: CapabilitySyncStatus, required: true, location_name: "capabilitySyncStatus"))
    DescribeGatewayCapabilityConfigurationResponse.struct_class = Types::DescribeGatewayCapabilityConfigurationResponse

    DescribeGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    DescribeGatewayRequest.struct_class = Types::DescribeGatewayRequest

    DescribeGatewayResponse.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    DescribeGatewayResponse.add_member(:gateway_name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "gatewayName"))
    DescribeGatewayResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "gatewayArn"))
    DescribeGatewayResponse.add_member(:gateway_platform, Shapes::ShapeRef.new(shape: GatewayPlatform, location_name: "gatewayPlatform"))
    DescribeGatewayResponse.add_member(:gateway_version, Shapes::ShapeRef.new(shape: GatewayVersion, location_name: "gatewayVersion"))
    DescribeGatewayResponse.add_member(:gateway_capability_summaries, Shapes::ShapeRef.new(shape: GatewayCapabilitySummaries, required: true, location_name: "gatewayCapabilitySummaries"))
    DescribeGatewayResponse.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    DescribeGatewayResponse.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    DescribeGatewayResponse.struct_class = Types::DescribeGatewayResponse

    DescribeLoggingOptionsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    DescribeLoggingOptionsRequest.struct_class = Types::DescribeLoggingOptionsRequest

    DescribeLoggingOptionsResponse.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, required: true, location_name: "loggingOptions"))
    DescribeLoggingOptionsResponse.struct_class = Types::DescribeLoggingOptionsResponse

    DescribePipelineExecutionRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribePipelineExecutionRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    DescribePipelineExecutionRequest.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "pipelineExecutionId"))
    DescribePipelineExecutionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    DescribePipelineExecutionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribePipelineExecutionRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    DescribePipelineExecutionRequest.struct_class = Types::DescribePipelineExecutionRequest

    DescribePipelineExecutionResponse.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "pipelineExecutionId"))
    DescribePipelineExecutionResponse.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "pipelineName"))
    DescribePipelineExecutionResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribePipelineExecutionResponse.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "pipelineVersion"))
    DescribePipelineExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, required: true, location_name: "status"))
    DescribePipelineExecutionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DescribePipelineExecutionResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DescribePipelineExecutionResponse.add_member(:request_environment_variables, Shapes::ShapeRef.new(shape: ExecutionEnvironmentVariables, required: true, location_name: "requestEnvironmentVariables"))
    DescribePipelineExecutionResponse.add_member(:request_mount_overrides, Shapes::ShapeRef.new(shape: MountOverrides, location_name: "requestMountOverrides"))
    DescribePipelineExecutionResponse.add_member(:execution_priority, Shapes::ShapeRef.new(shape: ExecutionPriority, location_name: "executionPriority"))
    DescribePipelineExecutionResponse.add_member(:compute_node_execution_details, Shapes::ShapeRef.new(shape: ComputeNodeExecutionDetailsList, required: true, location_name: "computeNodeExecutionDetails"))
    DescribePipelineExecutionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribePipelineExecutionResponse.struct_class = Types::DescribePipelineExecutionResponse

    DescribePipelineRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    DescribePipelineRequest.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "version"))
    DescribePipelineRequest.struct_class = Types::DescribePipelineRequest

    DescribePipelineResponse.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "pipelineName"))
    DescribePipelineResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribePipelineResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribePipelineResponse.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "pipelineArn"))
    DescribePipelineResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    DescribePipelineResponse.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    DescribePipelineResponse.add_member(:computations, Shapes::ShapeRef.new(shape: ComputeNodeList, required: true, location_name: "computations"))
    DescribePipelineResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    DescribePipelineResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DescribePipelineResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DescribePipelineResponse.struct_class = Types::DescribePipelineResponse

    DescribePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    DescribePortalRequest.struct_class = Types::DescribePortalRequest

    DescribePortalResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    DescribePortalResponse.add_member(:portal_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "portalArn"))
    DescribePortalResponse.add_member(:portal_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "portalName"))
    DescribePortalResponse.add_member(:portal_description, Shapes::ShapeRef.new(shape: Description, location_name: "portalDescription"))
    DescribePortalResponse.add_member(:portal_client_id, Shapes::ShapeRef.new(shape: PortalClientId, required: true, location_name: "portalClientId"))
    DescribePortalResponse.add_member(:portal_start_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "portalStartUrl"))
    DescribePortalResponse.add_member(:portal_contact_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "portalContactEmail"))
    DescribePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    DescribePortalResponse.add_member(:portal_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "portalCreationDate"))
    DescribePortalResponse.add_member(:portal_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "portalLastUpdateDate"))
    DescribePortalResponse.add_member(:portal_logo_image_location, Shapes::ShapeRef.new(shape: ImageLocation, location_name: "portalLogoImageLocation"))
    DescribePortalResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, location_name: "roleArn"))
    DescribePortalResponse.add_member(:portal_auth_mode, Shapes::ShapeRef.new(shape: AuthMode, location_name: "portalAuthMode"))
    DescribePortalResponse.add_member(:notification_sender_email, Shapes::ShapeRef.new(shape: Email, location_name: "notificationSenderEmail"))
    DescribePortalResponse.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "alarms"))
    DescribePortalResponse.add_member(:portal_type, Shapes::ShapeRef.new(shape: PortalType, location_name: "portalType"))
    DescribePortalResponse.add_member(:portal_type_configuration, Shapes::ShapeRef.new(shape: PortalTypeConfiguration, location_name: "portalTypeConfiguration"))
    DescribePortalResponse.struct_class = Types::DescribePortalResponse

    DescribeProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResponse.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "projectId"))
    DescribeProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "projectArn"))
    DescribeProjectResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "projectName"))
    DescribeProjectResponse.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "portalId"))
    DescribeProjectResponse.add_member(:project_description, Shapes::ShapeRef.new(shape: Description, location_name: "projectDescription"))
    DescribeProjectResponse.add_member(:project_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "projectCreationDate"))
    DescribeProjectResponse.add_member(:project_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "projectLastUpdateDate"))
    DescribeProjectResponse.struct_class = Types::DescribeProjectResponse

    DescribeQueryRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location: "uri", location_name: "queryId"))
    DescribeQueryRequest.struct_class = Types::DescribeQueryRequest

    DescribeQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    DescribeQueryResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    DescribeQueryResponse.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    DescribeQueryResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    DescribeQueryResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryStatistics, location_name: "statistics"))
    DescribeQueryResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: QueryErrorMessage, location_name: "errorMessage"))
    DescribeQueryResponse.struct_class = Types::DescribeQueryResponse

    DescribeSearchRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeSearchRequest.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location: "uri", location_name: "searchId"))
    DescribeSearchRequest.struct_class = Types::DescribeSearchRequest

    DescribeSearchResponse.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "searchId"))
    DescribeSearchResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribeSearchResponse.add_member(:status, Shapes::ShapeRef.new(shape: SearchStatus, required: true, location_name: "status"))
    DescribeSearchResponse.add_member(:query_statement, Shapes::ShapeRef.new(shape: SearchQueryStatement, required: true, location_name: "queryStatement"))
    DescribeSearchResponse.add_member(:search_type, Shapes::ShapeRef.new(shape: SearchType, required: true, location_name: "searchType"))
    DescribeSearchResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DescribeSearchResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    DescribeSearchResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "groupId"))
    DescribeSearchResponse.struct_class = Types::DescribeSearchResponse

    DescribeStorageConfigurationRequest.struct_class = Types::DescribeStorageConfigurationRequest

    DescribeStorageConfigurationResponse.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, required: true, location_name: "storageType"))
    DescribeStorageConfigurationResponse.add_member(:multi_layer_storage, Shapes::ShapeRef.new(shape: MultiLayerStorage, location_name: "multiLayerStorage"))
    DescribeStorageConfigurationResponse.add_member(:disassociated_data_storage, Shapes::ShapeRef.new(shape: DisassociatedDataStorageState, location_name: "disassociatedDataStorage"))
    DescribeStorageConfigurationResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    DescribeStorageConfigurationResponse.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    DescribeStorageConfigurationResponse.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    DescribeStorageConfigurationResponse.add_member(:warm_tier, Shapes::ShapeRef.new(shape: WarmTierState, location_name: "warmTier"))
    DescribeStorageConfigurationResponse.add_member(:warm_tier_retention_period, Shapes::ShapeRef.new(shape: WarmTierRetentionPeriod, location_name: "warmTierRetentionPeriod"))
    DescribeStorageConfigurationResponse.add_member(:disallow_ingest_null_na_n, Shapes::ShapeRef.new(shape: DisallowIngestNullNaN, location_name: "disallowIngestNullNaN"))
    DescribeStorageConfigurationResponse.struct_class = Types::DescribeStorageConfigurationResponse

    DescribeTaskRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "taskName"))
    DescribeTaskRequest.add_member(:task_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "version"))
    DescribeTaskRequest.struct_class = Types::DescribeTaskRequest

    DescribeTaskResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribeTaskResponse.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "taskName"))
    DescribeTaskResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    DescribeTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "taskArn"))
    DescribeTaskResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    DescribeTaskResponse.add_member(:task_configuration, Shapes::ShapeRef.new(shape: TaskConfiguration, required: true, location_name: "taskConfiguration"))
    DescribeTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    DescribeTaskResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DescribeTaskResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DescribeTaskResponse.struct_class = Types::DescribeTaskResponse

    DescribeTimeSeriesRequest.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location: "querystring", location_name: "alias"))
    DescribeTimeSeriesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "assetId"))
    DescribeTimeSeriesRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "propertyId"))
    DescribeTimeSeriesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    DescribeTimeSeriesRequest.struct_class = Types::DescribeTimeSeriesRequest

    DescribeTimeSeriesResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    DescribeTimeSeriesResponse.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    DescribeTimeSeriesResponse.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    DescribeTimeSeriesResponse.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    DescribeTimeSeriesResponse.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    DescribeTimeSeriesResponse.add_member(:data_type_spec, Shapes::ShapeRef.new(shape: Name, location_name: "dataTypeSpec"))
    DescribeTimeSeriesResponse.add_member(:time_series_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timeSeriesCreationDate"))
    DescribeTimeSeriesResponse.add_member(:time_series_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timeSeriesLastUpdateDate"))
    DescribeTimeSeriesResponse.add_member(:time_series_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "timeSeriesArn"))
    DescribeTimeSeriesResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    DescribeTimeSeriesResponse.struct_class = Types::DescribeTimeSeriesResponse

    DescribeWorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    DescribeWorkspaceRequest.struct_class = Types::DescribeWorkspaceRequest

    DescribeWorkspaceResponse.add_member(:workspace_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "workspaceArn"))
    DescribeWorkspaceResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    DescribeWorkspaceResponse.add_member(:workspace_description, Shapes::ShapeRef.new(shape: Description, location_name: "workspaceDescription"))
    DescribeWorkspaceResponse.add_member(:workspace_status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "workspaceStatus"))
    DescribeWorkspaceResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: WorkspaceEncryptionConfigurationInfo, location_name: "encryptionConfiguration"))
    DescribeWorkspaceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DescribeWorkspaceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    DescribeWorkspaceResponse.struct_class = Types::DescribeWorkspaceResponse

    DetailedError.add_member(:code, Shapes::ShapeRef.new(shape: DetailedErrorCode, required: true, location_name: "code"))
    DetailedError.add_member(:message, Shapes::ShapeRef.new(shape: DetailedErrorMessage, required: true, location_name: "message"))
    DetailedError.struct_class = Types::DetailedError

    DetailedErrorList.member = Shapes::ShapeRef.new(shape: DetailedPipelineError)

    DetailedErrors.member = Shapes::ShapeRef.new(shape: DetailedError)

    DetailedPipelineError.add_member(:code, Shapes::ShapeRef.new(shape: DetailedPipelineErrorCode, required: true, location_name: "code"))
    DetailedPipelineError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DetailedPipelineError.struct_class = Types::DetailedPipelineError

    DisassociateAssetsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    DisassociateAssetsRequest.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "hierarchyId"))
    DisassociateAssetsRequest.add_member(:child_asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "childAssetId"))
    DisassociateAssetsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateAssetsRequest.struct_class = Types::DisassociateAssetsRequest

    DisassociateDataSegmentEntries.member = Shapes::ShapeRef.new(shape: DisassociateDataSegmentEntry)

    DisassociateDataSegmentEntry.add_member(:source_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "sourceDatasetId"))
    DisassociateDataSegmentEntry.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    DisassociateDataSegmentEntry.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    DisassociateDataSegmentEntry.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    DisassociateDataSegmentEntry.struct_class = Types::DisassociateDataSegmentEntry

    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, required: true, location: "querystring", location_name: "alias"))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "querystring", location_name: "assetId"))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "querystring", location_name: "propertyId"))
    DisassociateTimeSeriesFromAssetPropertyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DisassociateTimeSeriesFromAssetPropertyRequest.struct_class = Types::DisassociateTimeSeriesFromAssetPropertyRequest

    EnrichmentJobConfiguration.add_member(:event_detection, Shapes::ShapeRef.new(shape: EventDetection, location_name: "eventDetection"))
    EnrichmentJobConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EnrichmentJobConfiguration.add_member_subclass(:event_detection, Types::EnrichmentJobConfiguration::EventDetection)
    EnrichmentJobConfiguration.add_member_subclass(:unknown, Types::EnrichmentJobConfiguration::Unknown)
    EnrichmentJobConfiguration.struct_class = Types::EnrichmentJobConfiguration

    EnrichmentJobSummaries.member = Shapes::ShapeRef.new(shape: EnrichmentJobSummary)

    EnrichmentJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "jobId"))
    EnrichmentJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentJobStatus, required: true, location_name: "status"))
    EnrichmentJobSummary.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    EnrichmentJobSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "jobType"))
    EnrichmentJobSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    EnrichmentJobSummary.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    EnrichmentJobSummary.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: "timeSeriesId"))
    EnrichmentJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    EnrichmentJobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    EnrichmentJobSummary.struct_class = Types::EnrichmentJobSummary

    EnrichmentTrimSettings.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTime"))
    EnrichmentTrimSettings.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTime"))
    EnrichmentTrimSettings.struct_class = Types::EnrichmentTrimSettings

    EnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableName)
    EnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

    EphemeralStorageConfiguration.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, required: true, location_name: "storageClass"))
    EphemeralStorageConfiguration.add_member(:storage_size_in_gi_b, Shapes::ShapeRef.new(shape: EphemeralStorageConfigurationStorageSizeInGiBInteger, required: true, location_name: "storageSizeInGiB"))
    EphemeralStorageConfiguration.struct_class = Types::EphemeralStorageConfiguration

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ErrorDetails.add_member(:details, Shapes::ShapeRef.new(shape: DetailedErrors, location_name: "details"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ErrorReportLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: Bucket, required: true, location_name: "bucket"))
    ErrorReportLocation.add_member(:prefix, Shapes::ShapeRef.new(shape: String, required: true, location_name: "prefix"))
    ErrorReportLocation.struct_class = Types::ErrorReportLocation

    EventDetection.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "datasetId"))
    EventDetection.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: "timeSeriesId"))
    EventDetection.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    EventDetection.add_member(:trim_settings, Shapes::ShapeRef.new(shape: EnrichmentTrimSettings, required: true, location_name: "trimSettings"))
    EventDetection.struct_class = Types::EventDetection

    ExecuteActionRequest.add_member(:target_resource, Shapes::ShapeRef.new(shape: TargetResource, required: true, location_name: "targetResource"))
    ExecuteActionRequest.add_member(:action_definition_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "actionDefinitionId"))
    ExecuteActionRequest.add_member(:action_payload, Shapes::ShapeRef.new(shape: ActionPayload, required: true, location_name: "actionPayload"))
    ExecuteActionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ExecuteActionRequest.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    ExecuteActionRequest.struct_class = Types::ExecuteActionRequest

    ExecuteActionResponse.add_member(:action_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "actionId"))
    ExecuteActionResponse.struct_class = Types::ExecuteActionResponse

    ExecuteQueryRequest.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryStatement, required: true, location_name: "queryStatement"))
    ExecuteQueryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ExecuteQueryNextToken, location_name: "nextToken"))
    ExecuteQueryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ExecuteQueryMaxResults, location_name: "maxResults"))
    ExecuteQueryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ExecuteQueryRequest.struct_class = Types::ExecuteQueryRequest

    ExecuteQueryResponse.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnsList, location_name: "columns"))
    ExecuteQueryResponse.add_member(:rows, Shapes::ShapeRef.new(shape: Rows, location_name: "rows"))
    ExecuteQueryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ExecuteQueryNextToken, location_name: "nextToken"))
    ExecuteQueryResponse.struct_class = Types::ExecuteQueryResponse

    ExecutionDetails.key = Shapes::ShapeRef.new(shape: ExecutionDetailsKey)
    ExecutionDetails.value = Shapes::ShapeRef.new(shape: ExecutionDetailsValue)

    ExecutionEnvironmentVariables.add_member(:global, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "global"))
    ExecutionEnvironmentVariables.add_member(:compute_nodes, Shapes::ShapeRef.new(shape: ComputeNodeEnvironmentVariablesMap, location_name: "computeNodes"))
    ExecutionEnvironmentVariables.struct_class = Types::ExecutionEnvironmentVariables

    ExecutionEnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: ExecutionEnvironmentVariablesMapKeyString)
    ExecutionEnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: ExecutionEnvironmentVariablesMapValueString)

    ExecutionResult.key = Shapes::ShapeRef.new(shape: ExecutionResultKey)
    ExecutionResult.value = Shapes::ShapeRef.new(shape: ExecutionResultValue)

    ExecutionStatus.add_member(:state, Shapes::ShapeRef.new(shape: ExecutionState, required: true, location_name: "state"))
    ExecutionStatus.struct_class = Types::ExecutionStatus

    ExecutionSummaries.member = Shapes::ShapeRef.new(shape: ExecutionSummary)

    ExecutionSummary.add_member(:execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "executionId"))
    ExecutionSummary.add_member(:action_type, Shapes::ShapeRef.new(shape: Name, location_name: "actionType"))
    ExecutionSummary.add_member(:target_resource, Shapes::ShapeRef.new(shape: TargetResource, required: true, location_name: "targetResource"))
    ExecutionSummary.add_member(:target_resource_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "targetResourceVersion"))
    ExecutionSummary.add_member(:resolve_to, Shapes::ShapeRef.new(shape: ResolveTo, location_name: "resolveTo"))
    ExecutionSummary.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "executionStartTime"))
    ExecutionSummary.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "executionEndTime"))
    ExecutionSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, required: true, location_name: "executionStatus"))
    ExecutionSummary.add_member(:execution_entity_version, Shapes::ShapeRef.new(shape: Version, location_name: "executionEntityVersion"))
    ExecutionSummary.struct_class = Types::ExecutionSummary

    ExportDataTypeList.member = Shapes::ShapeRef.new(shape: ExportDataType)

    ExportErrorReportLocation.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    ExportErrorReportLocation.struct_class = Types::ExportErrorReportLocation

    ExportJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: DatasetExportJobId, required: true, location_name: "jobId"))
    ExportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: DatasetExportJobStatus, required: true, location_name: "status"))
    ExportJobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    ExportJobSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    ExportJobSummary.add_member(:destination_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "destinationS3Uri"))
    ExportJobSummary.struct_class = Types::ExportJobSummary

    ExportJobSummaryList.member = Shapes::ShapeRef.new(shape: ExportJobSummary)

    ExpressionVariable.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    ExpressionVariable.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    ExpressionVariable.struct_class = Types::ExpressionVariable

    ExpressionVariables.member = Shapes::ShapeRef.new(shape: ExpressionVariable)

    FailedDataSegmentAssociation.add_member(:source_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "sourceDatasetId"))
    FailedDataSegmentAssociation.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    FailedDataSegmentAssociation.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    FailedDataSegmentAssociation.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    FailedDataSegmentAssociation.add_member(:error_code, Shapes::ShapeRef.new(shape: DataSegmentErrorCode, required: true, location_name: "errorCode"))
    FailedDataSegmentAssociation.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSegmentErrorMessage, required: true, location_name: "errorMessage"))
    FailedDataSegmentAssociation.struct_class = Types::FailedDataSegmentAssociation

    FailedDataSegmentAssociations.member = Shapes::ShapeRef.new(shape: FailedDataSegmentAssociation)

    FailedDataSegmentDeletion.add_member(:time_series_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "timeSeriesId"))
    FailedDataSegmentDeletion.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    FailedDataSegmentDeletion.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    FailedDataSegmentDeletion.add_member(:error_code, Shapes::ShapeRef.new(shape: DataSegmentErrorCode, required: true, location_name: "errorCode"))
    FailedDataSegmentDeletion.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSegmentErrorMessage, required: true, location_name: "errorMessage"))
    FailedDataSegmentDeletion.struct_class = Types::FailedDataSegmentDeletion

    FailedDataSegmentDeletions.member = Shapes::ShapeRef.new(shape: FailedDataSegmentDeletion)

    FailedDataSegmentDisassociation.add_member(:source_dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "sourceDatasetId"))
    FailedDataSegmentDisassociation.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    FailedDataSegmentDisassociation.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    FailedDataSegmentDisassociation.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    FailedDataSegmentDisassociation.add_member(:error_code, Shapes::ShapeRef.new(shape: DataSegmentErrorCode, required: true, location_name: "errorCode"))
    FailedDataSegmentDisassociation.add_member(:error_message, Shapes::ShapeRef.new(shape: DataSegmentErrorMessage, required: true, location_name: "errorMessage"))
    FailedDataSegmentDisassociation.struct_class = Types::FailedDataSegmentDisassociation

    FailedDataSegmentDisassociations.member = Shapes::ShapeRef.new(shape: FailedDataSegmentDisassociation)

    File.add_member(:bucket, Shapes::ShapeRef.new(shape: Bucket, required: true, location_name: "bucket"))
    File.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    File.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "versionId"))
    File.add_member(:alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "alias"))
    File.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeInNanos, location_name: "startTime"))
    File.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "fileFormat"))
    File.struct_class = Types::File

    FileFormat.add_member(:csv, Shapes::ShapeRef.new(shape: Csv, location_name: "csv"))
    FileFormat.add_member(:parquet, Shapes::ShapeRef.new(shape: Parquet, location_name: "parquet"))
    FileFormat.add_member(:mp4, Shapes::ShapeRef.new(shape: Mp4, location_name: "mp4"))
    FileFormat.add_member(:annotation, Shapes::ShapeRef.new(shape: Annotation, location_name: "annotation"))
    FileFormat.struct_class = Types::FileFormat

    Files.member = Shapes::ShapeRef.new(shape: File)

    FormatSettings.add_member(:frames_per_second, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "framesPerSecond"))
    FormatSettings.add_member(:width_in_pixels, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "widthInPixels"))
    FormatSettings.add_member(:height_in_pixels, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "heightInPixels"))
    FormatSettings.struct_class = Types::FormatSettings

    ForwardingConfig.add_member(:state, Shapes::ShapeRef.new(shape: ForwardingConfigState, required: true, location_name: "state"))
    ForwardingConfig.struct_class = Types::ForwardingConfig

    GatewayCapabilitySummaries.member = Shapes::ShapeRef.new(shape: GatewayCapabilitySummary)

    GatewayCapabilitySummary.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    GatewayCapabilitySummary.add_member(:capability_sync_status, Shapes::ShapeRef.new(shape: CapabilitySyncStatus, required: true, location_name: "capabilitySyncStatus"))
    GatewayCapabilitySummary.struct_class = Types::GatewayCapabilitySummary

    GatewayPlatform.add_member(:greengrass, Shapes::ShapeRef.new(shape: Greengrass, location_name: "greengrass"))
    GatewayPlatform.add_member(:greengrass_v2, Shapes::ShapeRef.new(shape: GreengrassV2, location_name: "greengrassV2"))
    GatewayPlatform.add_member(:siemens_ie, Shapes::ShapeRef.new(shape: SiemensIE, location_name: "siemensIE"))
    GatewayPlatform.struct_class = Types::GatewayPlatform

    GatewaySummaries.member = Shapes::ShapeRef.new(shape: GatewaySummary)

    GatewaySummary.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "gatewayId"))
    GatewaySummary.add_member(:gateway_name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "gatewayName"))
    GatewaySummary.add_member(:gateway_platform, Shapes::ShapeRef.new(shape: GatewayPlatform, location_name: "gatewayPlatform"))
    GatewaySummary.add_member(:gateway_version, Shapes::ShapeRef.new(shape: GatewayVersion, location_name: "gatewayVersion"))
    GatewaySummary.add_member(:gateway_capability_summaries, Shapes::ShapeRef.new(shape: GatewayCapabilitySummaries, location_name: "gatewayCapabilitySummaries"))
    GatewaySummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationDate"))
    GatewaySummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateDate"))
    GatewaySummary.struct_class = Types::GatewaySummary

    GetAssetPropertyAggregatesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetAssetPropertyAggregatesRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetAssetPropertyAggregatesRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetAssetPropertyAggregatesRequest.add_member(:aggregate_types, Shapes::ShapeRef.new(shape: AggregateTypes, required: true, location: "querystring", location_name: "aggregateTypes"))
    GetAssetPropertyAggregatesRequest.add_member(:resolution, Shapes::ShapeRef.new(shape: Resolution, required: true, location: "querystring", location_name: "resolution"))
    GetAssetPropertyAggregatesRequest.add_member(:qualities, Shapes::ShapeRef.new(shape: Qualities, location: "querystring", location_name: "qualities"))
    GetAssetPropertyAggregatesRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "startDate"))
    GetAssetPropertyAggregatesRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "endDate"))
    GetAssetPropertyAggregatesRequest.add_member(:time_ordering, Shapes::ShapeRef.new(shape: TimeOrdering, location: "querystring", location_name: "timeOrdering"))
    GetAssetPropertyAggregatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetAssetPropertyAggregatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetAssetPropertyValueAggregatesMaxResults, location: "querystring", location_name: "maxResults"))
    GetAssetPropertyAggregatesRequest.struct_class = Types::GetAssetPropertyAggregatesRequest

    GetAssetPropertyAggregatesResponse.add_member(:aggregated_values, Shapes::ShapeRef.new(shape: AggregatedValues, required: true, location_name: "aggregatedValues"))
    GetAssetPropertyAggregatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAssetPropertyAggregatesResponse.struct_class = Types::GetAssetPropertyAggregatesResponse

    GetAssetPropertyValueHistoryRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetAssetPropertyValueHistoryRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetAssetPropertyValueHistoryRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetAssetPropertyValueHistoryRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startDate"))
    GetAssetPropertyValueHistoryRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endDate"))
    GetAssetPropertyValueHistoryRequest.add_member(:qualities, Shapes::ShapeRef.new(shape: Qualities, location: "querystring", location_name: "qualities"))
    GetAssetPropertyValueHistoryRequest.add_member(:time_ordering, Shapes::ShapeRef.new(shape: TimeOrdering, location: "querystring", location_name: "timeOrdering"))
    GetAssetPropertyValueHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetAssetPropertyValueHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryMaxResults, location: "querystring", location_name: "maxResults"))
    GetAssetPropertyValueHistoryRequest.struct_class = Types::GetAssetPropertyValueHistoryRequest

    GetAssetPropertyValueHistoryResponse.add_member(:asset_property_value_history, Shapes::ShapeRef.new(shape: AssetPropertyValueHistory, required: true, location_name: "assetPropertyValueHistory"))
    GetAssetPropertyValueHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetAssetPropertyValueHistoryResponse.struct_class = Types::GetAssetPropertyValueHistoryResponse

    GetAssetPropertyValueRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetAssetPropertyValueRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetAssetPropertyValueRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetAssetPropertyValueRequest.struct_class = Types::GetAssetPropertyValueRequest

    GetAssetPropertyValueResponse.add_member(:property_value, Shapes::ShapeRef.new(shape: AssetPropertyValue, location_name: "propertyValue"))
    GetAssetPropertyValueResponse.struct_class = Types::GetAssetPropertyValueResponse

    GetCaptureDataRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    GetCaptureDataRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTime"))
    GetCaptureDataRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTime"))
    GetCaptureDataRequest.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: "timeSeriesId"))
    GetCaptureDataRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    GetCaptureDataRequest.add_member(:format_settings, Shapes::ShapeRef.new(shape: FormatSettings, location_name: "formatSettings"))
    GetCaptureDataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GetCaptureDataNextToken, location_name: "nextToken"))
    GetCaptureDataRequest.struct_class = Types::GetCaptureDataRequest

    GetCaptureDataResponse.add_member(:data, Shapes::ShapeRef.new(shape: CaptureBlob, required: true, location_name: "data"))
    GetCaptureDataResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTime"))
    GetCaptureDataResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTime"))
    GetCaptureDataResponse.add_member(:data_type, Shapes::ShapeRef.new(shape: VideoDataType, required: true, location_name: "dataType"))
    GetCaptureDataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GetCaptureDataNextToken, location_name: "nextToken"))
    GetCaptureDataResponse.struct_class = Types::GetCaptureDataResponse

    GetInterpolatedAssetPropertyValuesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "assetId"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "propertyId"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:start_time_in_seconds, Shapes::ShapeRef.new(shape: TimeInSeconds, required: true, location: "querystring", location_name: "startTimeInSeconds"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:start_time_offset_in_nanos, Shapes::ShapeRef.new(shape: OffsetInNanos, location: "querystring", location_name: "startTimeOffsetInNanos"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:end_time_in_seconds, Shapes::ShapeRef.new(shape: TimeInSeconds, required: true, location: "querystring", location_name: "endTimeInSeconds"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:end_time_offset_in_nanos, Shapes::ShapeRef.new(shape: OffsetInNanos, location: "querystring", location_name: "endTimeOffsetInNanos"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:quality, Shapes::ShapeRef.new(shape: Quality, required: true, location: "querystring", location_name: "quality"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: IntervalInSeconds, required: true, location: "querystring", location_name: "intervalInSeconds"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxInterpolatedResults, location: "querystring", location_name: "maxResults"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:type, Shapes::ShapeRef.new(shape: InterpolationType, required: true, location: "querystring", location_name: "type"))
    GetInterpolatedAssetPropertyValuesRequest.add_member(:interval_window_in_seconds, Shapes::ShapeRef.new(shape: IntervalWindowInSeconds, location: "querystring", location_name: "intervalWindowInSeconds"))
    GetInterpolatedAssetPropertyValuesRequest.struct_class = Types::GetInterpolatedAssetPropertyValuesRequest

    GetInterpolatedAssetPropertyValuesResponse.add_member(:interpolated_asset_property_values, Shapes::ShapeRef.new(shape: InterpolatedAssetPropertyValues, required: true, location_name: "interpolatedAssetPropertyValues"))
    GetInterpolatedAssetPropertyValuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetInterpolatedAssetPropertyValuesResponse.struct_class = Types::GetInterpolatedAssetPropertyValuesResponse

    GetQueryResultsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    GetQueryResultsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location: "uri", location_name: "queryId"))
    GetQueryResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryMaxResults, location: "querystring", location_name: "maxResults"))
    GetQueryResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: QueryNextToken, location: "querystring", location_name: "nextToken"))
    GetQueryResultsRequest.struct_class = Types::GetQueryResultsRequest

    GetQueryResultsResponse.add_member(:column_info, Shapes::ShapeRef.new(shape: ColumnInformationList, location_name: "columnInfo"))
    GetQueryResultsResponse.add_member(:rows, Shapes::ShapeRef.new(shape: RowList, location_name: "rows"))
    GetQueryResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: QueryNextToken, location_name: "nextToken"))
    GetQueryResultsResponse.struct_class = Types::GetQueryResultsResponse

    GetSearchResultsRequest.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location: "uri", location_name: "searchId"))
    GetSearchResultsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    GetSearchResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetSearchResultsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    GetSearchResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetSearchResultsRequest.struct_class = Types::GetSearchResultsRequest

    GetSearchResultsResponse.add_member(:search_results, Shapes::ShapeRef.new(shape: SearchResultList, required: true, location_name: "searchResults"))
    GetSearchResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetSearchResultsResponse.struct_class = Types::GetSearchResultsResponse

    Greengrass.add_member(:group_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "groupArn"))
    Greengrass.struct_class = Types::Greengrass

    GreengrassV2.add_member(:core_device_thing_name, Shapes::ShapeRef.new(shape: CoreDeviceThingName, required: true, location_name: "coreDeviceThingName"))
    GreengrassV2.add_member(:core_device_operating_system, Shapes::ShapeRef.new(shape: CoreDeviceOperatingSystem, location_name: "coreDeviceOperatingSystem"))
    GreengrassV2.struct_class = Types::GreengrassV2

    GroupIdFilterList.member = Shapes::ShapeRef.new(shape: GroupId)

    GroupIdentity.add_member(:id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "id"))
    GroupIdentity.struct_class = Types::GroupIdentity

    HierarchyMapping.add_member(:asset_model_hierarchy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelHierarchyId"))
    HierarchyMapping.add_member(:interface_asset_model_hierarchy_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "interfaceAssetModelHierarchyId"))
    HierarchyMapping.struct_class = Types::HierarchyMapping

    HierarchyMappings.member = Shapes::ShapeRef.new(shape: HierarchyMapping)

    IAMRoleIdentity.add_member(:arn, Shapes::ShapeRef.new(shape: IamArn, required: true, location_name: "arn"))
    IAMRoleIdentity.struct_class = Types::IAMRoleIdentity

    IAMUserIdentity.add_member(:arn, Shapes::ShapeRef.new(shape: IamArn, required: true, location_name: "arn"))
    IAMUserIdentity.struct_class = Types::IAMUserIdentity

    IDs.member = Shapes::ShapeRef.new(shape: ID)

    Identity.add_member(:user, Shapes::ShapeRef.new(shape: UserIdentity, location_name: "user"))
    Identity.add_member(:group, Shapes::ShapeRef.new(shape: GroupIdentity, location_name: "group"))
    Identity.add_member(:iam_user, Shapes::ShapeRef.new(shape: IAMUserIdentity, location_name: "iamUser"))
    Identity.add_member(:iam_role, Shapes::ShapeRef.new(shape: IAMRoleIdentity, location_name: "iamRole"))
    Identity.struct_class = Types::Identity

    Image.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "id"))
    Image.add_member(:file, Shapes::ShapeRef.new(shape: ImageFile, location_name: "file"))
    Image.struct_class = Types::Image

    ImageFile.add_member(:data, Shapes::ShapeRef.new(shape: ImageFileData, required: true, location_name: "data"))
    ImageFile.add_member(:type, Shapes::ShapeRef.new(shape: ImageFileType, required: true, location_name: "type"))
    ImageFile.struct_class = Types::ImageFile

    ImageLocation.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ImageLocation.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    ImageLocation.struct_class = Types::ImageLocation

    InterfaceDetails.member = Shapes::ShapeRef.new(shape: InterfaceRelationship)

    InterfaceRelationship.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    InterfaceRelationship.struct_class = Types::InterfaceRelationship

    InterfaceRelationshipSummaries.member = Shapes::ShapeRef.new(shape: InterfaceRelationshipSummary)

    InterfaceRelationshipSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    InterfaceRelationshipSummary.struct_class = Types::InterfaceRelationshipSummary

    InterfaceSummaries.member = Shapes::ShapeRef.new(shape: InterfaceSummary)

    InterfaceSummary.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "interfaceAssetModelId"))
    InterfaceSummary.add_member(:interface_asset_model_property_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "interfaceAssetModelPropertyId"))
    InterfaceSummary.struct_class = Types::InterfaceSummary

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InterpolatedAssetPropertyValue.add_member(:timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "timestamp"))
    InterpolatedAssetPropertyValue.add_member(:value, Shapes::ShapeRef.new(shape: Variant, required: true, location_name: "value"))
    InterpolatedAssetPropertyValue.struct_class = Types::InterpolatedAssetPropertyValue

    InterpolatedAssetPropertyValues.member = Shapes::ShapeRef.new(shape: InterpolatedAssetPropertyValue)

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvocationOutput.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvocationOutput.add_member(:citations, Shapes::ShapeRef.new(shape: Citations, location_name: "citations"))
    InvocationOutput.struct_class = Types::InvocationOutput

    InvokeAssistantRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    InvokeAssistantRequest.add_member(:message, Shapes::ShapeRef.new(shape: MessageInput, required: true, location_name: "message"))
    InvokeAssistantRequest.add_member(:enable_trace, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "enableTrace"))
    InvokeAssistantRequest.struct_class = Types::InvokeAssistantRequest

    InvokeAssistantResponse.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "body"))
    InvokeAssistantResponse.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "header", location_name: "x-amz-iotsitewise-assistant-conversation-id"))
    InvokeAssistantResponse.struct_class = Types::InvokeAssistantResponse
    InvokeAssistantResponse[:payload] = :body
    InvokeAssistantResponse[:payload_member] = InvokeAssistantResponse.member(:body)

    JobConfiguration.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "fileFormat"))
    JobConfiguration.struct_class = Types::JobConfiguration

    JobSummaries.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    JobSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    JobSummary.struct_class = Types::JobSummary

    KendraSourceDetail.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "knowledgeBaseArn"))
    KendraSourceDetail.add_member(:role_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "roleArn"))
    KendraSourceDetail.struct_class = Types::KendraSourceDetail

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAccessPoliciesRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location: "querystring", location_name: "identityType"))
    ListAccessPoliciesRequest.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location: "querystring", location_name: "identityId"))
    ListAccessPoliciesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location: "querystring", location_name: "resourceType"))
    ListAccessPoliciesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "resourceId"))
    ListAccessPoliciesRequest.add_member(:iam_arn, Shapes::ShapeRef.new(shape: IamArn, location: "querystring", location_name: "iamArn"))
    ListAccessPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAccessPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessPoliciesRequest.struct_class = Types::ListAccessPoliciesRequest

    ListAccessPoliciesResponse.add_member(:access_policy_summaries, Shapes::ShapeRef.new(shape: AccessPolicySummaries, required: true, location_name: "accessPolicySummaries"))
    ListAccessPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAccessPoliciesResponse.struct_class = Types::ListAccessPoliciesResponse

    ListActionsRequest.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: TargetResourceType, required: true, location: "querystring", location_name: "targetResourceType"))
    ListActionsRequest.add_member(:target_resource_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "querystring", location_name: "targetResourceId"))
    ListActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListActionsRequest.add_member(:resolve_to_resource_type, Shapes::ShapeRef.new(shape: ResolveToResourceType, location: "querystring", location_name: "resolveToResourceType"))
    ListActionsRequest.add_member(:resolve_to_resource_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "resolveToResourceId"))
    ListActionsRequest.struct_class = Types::ListActionsRequest

    ListActionsResponse.add_member(:action_summaries, Shapes::ShapeRef.new(shape: ActionSummaries, required: true, location_name: "actionSummaries"))
    ListActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, required: true, location_name: "nextToken"))
    ListActionsResponse.struct_class = Types::ListActionsResponse

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, required: true, location_name: "applications"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListAssetModelCompositeModelsRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    ListAssetModelCompositeModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetModelCompositeModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetModelCompositeModelsRequest.add_member(:asset_model_version, Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location: "querystring", location_name: "assetModelVersion"))
    ListAssetModelCompositeModelsRequest.struct_class = Types::ListAssetModelCompositeModelsRequest

    ListAssetModelCompositeModelsResponse.add_member(:asset_model_composite_model_summaries, Shapes::ShapeRef.new(shape: AssetModelCompositeModelSummaries, required: true, location_name: "assetModelCompositeModelSummaries"))
    ListAssetModelCompositeModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetModelCompositeModelsResponse.struct_class = Types::ListAssetModelCompositeModelsResponse

    ListAssetModelPropertiesRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    ListAssetModelPropertiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetModelPropertiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetModelPropertiesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAssetModelPropertiesFilter, location: "querystring", location_name: "filter"))
    ListAssetModelPropertiesRequest.add_member(:asset_model_version, Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location: "querystring", location_name: "assetModelVersion"))
    ListAssetModelPropertiesRequest.struct_class = Types::ListAssetModelPropertiesRequest

    ListAssetModelPropertiesResponse.add_member(:asset_model_property_summaries, Shapes::ShapeRef.new(shape: AssetModelPropertySummaries, required: true, location_name: "assetModelPropertySummaries"))
    ListAssetModelPropertiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetModelPropertiesResponse.struct_class = Types::ListAssetModelPropertiesResponse

    ListAssetModelsRequest.add_member(:asset_model_types, Shapes::ShapeRef.new(shape: ListAssetModelsTypeFilter, location: "querystring", location_name: "assetModelTypes"))
    ListAssetModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetModelsRequest.add_member(:asset_model_version, Shapes::ShapeRef.new(shape: AssetModelVersionFilter, location: "querystring", location_name: "assetModelVersion"))
    ListAssetModelsRequest.struct_class = Types::ListAssetModelsRequest

    ListAssetModelsResponse.add_member(:asset_model_summaries, Shapes::ShapeRef.new(shape: AssetModelSummaries, required: true, location_name: "assetModelSummaries"))
    ListAssetModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetModelsResponse.struct_class = Types::ListAssetModelsResponse

    ListAssetModelsTypeFilter.member = Shapes::ShapeRef.new(shape: AssetModelType)

    ListAssetPropertiesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    ListAssetPropertiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetPropertiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetPropertiesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAssetPropertiesFilter, location: "querystring", location_name: "filter"))
    ListAssetPropertiesRequest.struct_class = Types::ListAssetPropertiesRequest

    ListAssetPropertiesResponse.add_member(:asset_property_summaries, Shapes::ShapeRef.new(shape: AssetPropertySummaries, required: true, location_name: "assetPropertySummaries"))
    ListAssetPropertiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetPropertiesResponse.struct_class = Types::ListAssetPropertiesResponse

    ListAssetRelationshipsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    ListAssetRelationshipsRequest.add_member(:traversal_type, Shapes::ShapeRef.new(shape: TraversalType, required: true, location: "querystring", location_name: "traversalType"))
    ListAssetRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetRelationshipsRequest.struct_class = Types::ListAssetRelationshipsRequest

    ListAssetRelationshipsResponse.add_member(:asset_relationship_summaries, Shapes::ShapeRef.new(shape: AssetRelationshipSummaries, required: true, location_name: "assetRelationshipSummaries"))
    ListAssetRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetRelationshipsResponse.struct_class = Types::ListAssetRelationshipsResponse

    ListAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssetsRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "assetModelId"))
    ListAssetsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAssetsFilter, location: "querystring", location_name: "filter"))
    ListAssetsRequest.struct_class = Types::ListAssetsRequest

    ListAssetsResponse.add_member(:asset_summaries, Shapes::ShapeRef.new(shape: AssetSummaries, required: true, location_name: "assetSummaries"))
    ListAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssetsResponse.struct_class = Types::ListAssetsResponse

    ListAssociatedAssetsRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    ListAssociatedAssetsRequest.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "hierarchyId"))
    ListAssociatedAssetsRequest.add_member(:traversal_direction, Shapes::ShapeRef.new(shape: TraversalDirection, location: "querystring", location_name: "traversalDirection"))
    ListAssociatedAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssociatedAssetsRequest.struct_class = Types::ListAssociatedAssetsRequest

    ListAssociatedAssetsResponse.add_member(:asset_summaries, Shapes::ShapeRef.new(shape: AssociatedAssetsSummaries, required: true, location_name: "assetSummaries"))
    ListAssociatedAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociatedAssetsResponse.struct_class = Types::ListAssociatedAssetsResponse

    ListBulkImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBulkImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBulkImportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListBulkImportJobsFilter, location: "querystring", location_name: "filter"))
    ListBulkImportJobsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    ListBulkImportJobsRequest.struct_class = Types::ListBulkImportJobsRequest

    ListBulkImportJobsResponse.add_member(:job_summaries, Shapes::ShapeRef.new(shape: JobSummaries, required: true, location_name: "jobSummaries"))
    ListBulkImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBulkImportJobsResponse.struct_class = Types::ListBulkImportJobsResponse

    ListCompositionRelationshipsRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "assetModelId"))
    ListCompositionRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCompositionRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCompositionRelationshipsRequest.struct_class = Types::ListCompositionRelationshipsRequest

    ListCompositionRelationshipsResponse.add_member(:composition_relationship_summaries, Shapes::ShapeRef.new(shape: CompositionRelationshipSummaries, required: true, location_name: "compositionRelationshipSummaries"))
    ListCompositionRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCompositionRelationshipsResponse.struct_class = Types::ListCompositionRelationshipsResponse

    ListComputationModelDataBindingUsagesRequest.add_member(:data_binding_value_filter, Shapes::ShapeRef.new(shape: DataBindingValueFilter, required: true, location_name: "dataBindingValueFilter"))
    ListComputationModelDataBindingUsagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComputationModelDataBindingUsagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListComputationModelDataBindingUsagesRequest.struct_class = Types::ListComputationModelDataBindingUsagesRequest

    ListComputationModelDataBindingUsagesResponse.add_member(:data_binding_usage_summaries, Shapes::ShapeRef.new(shape: ComputationModelDataBindingUsageSummaries, required: true, location_name: "dataBindingUsageSummaries"))
    ListComputationModelDataBindingUsagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComputationModelDataBindingUsagesResponse.struct_class = Types::ListComputationModelDataBindingUsagesResponse

    ListComputationModelResolveToResourcesRequest.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "computationModelId"))
    ListComputationModelResolveToResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListComputationModelResolveToResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListComputationModelResolveToResourcesRequest.struct_class = Types::ListComputationModelResolveToResourcesRequest

    ListComputationModelResolveToResourcesResponse.add_member(:computation_model_resolve_to_resource_summaries, Shapes::ShapeRef.new(shape: ComputationModelResolveToResourceSummaries, required: true, location_name: "computationModelResolveToResourceSummaries"))
    ListComputationModelResolveToResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComputationModelResolveToResourcesResponse.struct_class = Types::ListComputationModelResolveToResourcesResponse

    ListComputationModelsRequest.add_member(:computation_model_type, Shapes::ShapeRef.new(shape: ComputationModelType, location: "querystring", location_name: "computationModelType"))
    ListComputationModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListComputationModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListComputationModelsRequest.struct_class = Types::ListComputationModelsRequest

    ListComputationModelsResponse.add_member(:computation_model_summaries, Shapes::ShapeRef.new(shape: ComputationModelSummaries, required: true, location_name: "computationModelSummaries"))
    ListComputationModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListComputationModelsResponse.struct_class = Types::ListComputationModelsResponse

    ListDashboardsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "querystring", location_name: "projectId"))
    ListDashboardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDashboardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDashboardsRequest.struct_class = Types::ListDashboardsRequest

    ListDashboardsResponse.add_member(:dashboard_summaries, Shapes::ShapeRef.new(shape: DashboardSummaries, required: true, location_name: "dashboardSummaries"))
    ListDashboardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDashboardsResponse.struct_class = Types::ListDashboardsResponse

    ListDatasetDataSegmentRelationshipsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    ListDatasetDataSegmentRelationshipsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "querystring", location_name: "workspaceName"))
    ListDatasetDataSegmentRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDatasetDataSegmentRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetDataSegmentRelationshipsRequest.struct_class = Types::ListDatasetDataSegmentRelationshipsRequest

    ListDatasetDataSegmentRelationshipsResponse.add_member(:data_segment_relationship_summaries, Shapes::ShapeRef.new(shape: DataSegmentRelationshipSummaries, required: true, location_name: "dataSegmentRelationshipSummaries"))
    ListDatasetDataSegmentRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetDataSegmentRelationshipsResponse.struct_class = Types::ListDatasetDataSegmentRelationshipsResponse

    ListDatasetDataSegmentsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    ListDatasetDataSegmentsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "querystring", location_name: "workspaceName"))
    ListDatasetDataSegmentsRequest.add_member(:dataset_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "datasetVersion"))
    ListDatasetDataSegmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDatasetDataSegmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetDataSegmentsRequest.struct_class = Types::ListDatasetDataSegmentsRequest

    ListDatasetDataSegmentsResponse.add_member(:data_segments, Shapes::ShapeRef.new(shape: DataSegmentSummaries, required: true, location_name: "dataSegments"))
    ListDatasetDataSegmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetDataSegmentsResponse.struct_class = Types::ListDatasetDataSegmentsResponse

    ListDatasetExportJobsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListDatasetExportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: DatasetExportJobFilter, location: "querystring", location_name: "filter"))
    ListDatasetExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListExportJobsMaxResults, location: "querystring", location_name: "maxResults"))
    ListDatasetExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExportJobsNextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetExportJobsRequest.struct_class = Types::ListDatasetExportJobsRequest

    ListDatasetExportJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: ExportJobSummaryList, required: true, location_name: "jobs"))
    ListDatasetExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListExportJobsNextToken, location_name: "nextToken"))
    ListDatasetExportJobsResponse.struct_class = Types::ListDatasetExportJobsResponse

    ListDatasetsRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: DatasetSourceType, required: true, location: "querystring", location_name: "sourceType"))
    ListDatasetsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    ListDatasetsRequest.add_member(:dataset_type, Shapes::ShapeRef.new(shape: DatasetTypeEnum, location: "querystring", location_name: "datasetType"))
    ListDatasetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDatasetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDatasetsRequest.struct_class = Types::ListDatasetsRequest

    ListDatasetsResponse.add_member(:dataset_summaries, Shapes::ShapeRef.new(shape: DatasetSummaries, required: true, location_name: "datasetSummaries"))
    ListDatasetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDatasetsResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    ListDatasetsResponse.struct_class = Types::ListDatasetsResponse

    ListEnrichmentJobsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListEnrichmentJobsRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "datasetId"))
    ListEnrichmentJobsRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location: "querystring", location_name: "propertyAlias"))
    ListEnrichmentJobsRequest.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location: "querystring", location_name: "timeSeriesId"))
    ListEnrichmentJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentJobStatus, location: "querystring", location_name: "status"))
    ListEnrichmentJobsRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location: "querystring", location_name: "jobType"))
    ListEnrichmentJobsRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startDate"))
    ListEnrichmentJobsRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endDate"))
    ListEnrichmentJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnrichmentJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEnrichmentJobsRequest.struct_class = Types::ListEnrichmentJobsRequest

    ListEnrichmentJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: EnrichmentJobSummaries, required: true, location_name: "jobs"))
    ListEnrichmentJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnrichmentJobsResponse.struct_class = Types::ListEnrichmentJobsResponse

    ListExecutionsRequest.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: TargetResourceType, required: true, location: "querystring", location_name: "targetResourceType"))
    ListExecutionsRequest.add_member(:target_resource_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "querystring", location_name: "targetResourceId"))
    ListExecutionsRequest.add_member(:resolve_to_resource_type, Shapes::ShapeRef.new(shape: ResolveToResourceType, location: "querystring", location_name: "resolveToResourceType"))
    ListExecutionsRequest.add_member(:resolve_to_resource_id, Shapes::ShapeRef.new(shape: ID, location: "querystring", location_name: "resolveToResourceId"))
    ListExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListExecutionsRequest.add_member(:action_type, Shapes::ShapeRef.new(shape: Name, location: "querystring", location_name: "actionType"))
    ListExecutionsRequest.struct_class = Types::ListExecutionsRequest

    ListExecutionsResponse.add_member(:execution_summaries, Shapes::ShapeRef.new(shape: ExecutionSummaries, required: true, location_name: "executionSummaries"))
    ListExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListExecutionsResponse.struct_class = Types::ListExecutionsResponse

    ListGatewaysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGatewaysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGatewaysRequest.struct_class = Types::ListGatewaysRequest

    ListGatewaysResponse.add_member(:gateway_summaries, Shapes::ShapeRef.new(shape: GatewaySummaries, required: true, location_name: "gatewaySummaries"))
    ListGatewaysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGatewaysResponse.struct_class = Types::ListGatewaysResponse

    ListInterfaceRelationshipsRequest.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "interfaceAssetModelId"))
    ListInterfaceRelationshipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInterfaceRelationshipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInterfaceRelationshipsRequest.struct_class = Types::ListInterfaceRelationshipsRequest

    ListInterfaceRelationshipsResponse.add_member(:interface_relationship_summaries, Shapes::ShapeRef.new(shape: InterfaceRelationshipSummaries, required: true, location_name: "interfaceRelationshipSummaries"))
    ListInterfaceRelationshipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInterfaceRelationshipsResponse.struct_class = Types::ListInterfaceRelationshipsResponse

    ListPipelineExecutionsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListPipelineExecutionsRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    ListPipelineExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPipelineExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPipelineExecutionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListPipelineExecutionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: PipelineExecutionState, location: "querystring", location_name: "state"))
    ListPipelineExecutionsRequest.add_member(:start_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTimeAfter"))
    ListPipelineExecutionsRequest.add_member(:start_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTimeBefore"))
    ListPipelineExecutionsRequest.add_member(:end_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTimeAfter"))
    ListPipelineExecutionsRequest.add_member(:end_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTimeBefore"))
    ListPipelineExecutionsRequest.struct_class = Types::ListPipelineExecutionsRequest

    ListPipelineExecutionsResponse.add_member(:pipeline_execution_summaries, Shapes::ShapeRef.new(shape: PipelineExecutionSummaryList, required: true, location_name: "pipelineExecutionSummaries"))
    ListPipelineExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPipelineExecutionsResponse.struct_class = Types::ListPipelineExecutionsResponse

    ListPipelinesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListPipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPipelinesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListPipelinesRequest.struct_class = Types::ListPipelinesRequest

    ListPipelinesResponse.add_member(:pipeline_summaries, Shapes::ShapeRef.new(shape: PipelineSummaries, required: true, location_name: "pipelineSummaries"))
    ListPipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPipelinesResponse.struct_class = Types::ListPipelinesResponse

    ListPortalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPortalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPortalsRequest.struct_class = Types::ListPortalsRequest

    ListPortalsResponse.add_member(:portal_summaries, Shapes::ShapeRef.new(shape: PortalSummaries, location_name: "portalSummaries"))
    ListPortalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPortalsResponse.struct_class = Types::ListPortalsResponse

    ListProjectAssetsRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    ListProjectAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectAssetsRequest.struct_class = Types::ListProjectAssetsRequest

    ListProjectAssetsResponse.add_member(:asset_ids, Shapes::ShapeRef.new(shape: AssetIDs, required: true, location_name: "assetIds"))
    ListProjectAssetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectAssetsResponse.struct_class = Types::ListProjectAssetsResponse

    ListProjectsRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "querystring", location_name: "portalId"))
    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:project_summaries, Shapes::ShapeRef.new(shape: ProjectSummaries, required: true, location_name: "projectSummaries"))
    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ListQueriesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListQueriesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: QueryFilter, location: "querystring", location_name: "filter"))
    ListQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryMaxResults, location: "querystring", location_name: "maxResults"))
    ListQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: QueryListNextToken, location: "querystring", location_name: "nextToken"))
    ListQueriesRequest.struct_class = Types::ListQueriesRequest

    ListQueriesResponse.add_member(:queries, Shapes::ShapeRef.new(shape: QuerySummaryList, required: true, location_name: "queries"))
    ListQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: QueryListNextToken, location_name: "nextToken"))
    ListQueriesResponse.struct_class = Types::ListQueriesResponse

    ListSearchesFilters.add_member(:status_filter, Shapes::ShapeRef.new(shape: SearchStatusFilterList, location_name: "statusFilter"))
    ListSearchesFilters.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAfter"))
    ListSearchesFilters.add_member(:started_before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedBefore"))
    ListSearchesFilters.add_member(:group_id_filter, Shapes::ShapeRef.new(shape: GroupIdFilterList, location_name: "groupIdFilter"))
    ListSearchesFilters.add_member(:search_type_filter, Shapes::ShapeRef.new(shape: SearchTypeFilterList, location_name: "searchTypeFilter"))
    ListSearchesFilters.struct_class = Types::ListSearchesFilters

    ListSearchesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListSearchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSearchesRequestMaxResultsInteger, location_name: "maxResults"))
    ListSearchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSearchesRequest.add_member(:list_searches_filters, Shapes::ShapeRef.new(shape: ListSearchesFilters, location_name: "listSearchesFilters"))
    ListSearchesRequest.struct_class = Types::ListSearchesRequest

    ListSearchesResponse.add_member(:search_summaries, Shapes::ShapeRef.new(shape: SearchSummaries, required: true, location_name: "searchSummaries"))
    ListSearchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSearchesResponse.struct_class = Types::ListSearchesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTasksRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    ListTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTasksRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListTasksRequest.struct_class = Types::ListTasksRequest

    ListTasksResponse.add_member(:task_summaries, Shapes::ShapeRef.new(shape: TaskSummaries, required: true, location_name: "taskSummaries"))
    ListTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTasksResponse.struct_class = Types::ListTasksResponse

    ListTimeSeriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTimeSeriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTimeSeriesRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, location: "querystring", location_name: "assetId"))
    ListTimeSeriesRequest.add_member(:alias_prefix, Shapes::ShapeRef.new(shape: PropertyAlias, location: "querystring", location_name: "aliasPrefix"))
    ListTimeSeriesRequest.add_member(:time_series_type, Shapes::ShapeRef.new(shape: ListTimeSeriesType, location: "querystring", location_name: "timeSeriesType"))
    ListTimeSeriesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location: "querystring", location_name: "workspaceName"))
    ListTimeSeriesRequest.struct_class = Types::ListTimeSeriesRequest

    ListTimeSeriesResponse.add_member(:time_series_summaries, Shapes::ShapeRef.new(shape: TimeSeriesSummaries, required: true, location_name: "TimeSeriesSummaries"))
    ListTimeSeriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTimeSeriesResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    ListTimeSeriesResponse.struct_class = Types::ListTimeSeriesResponse

    ListWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWorkspacesRequest.struct_class = Types::ListWorkspacesRequest

    ListWorkspacesResponse.add_member(:workspace_summaries, Shapes::ShapeRef.new(shape: WorkspaceSummaries, required: true, location_name: "workspaceSummaries"))
    ListWorkspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkspacesResponse.struct_class = Types::ListWorkspacesResponse

    Location.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    Location.struct_class = Types::Location

    LoggingOptions.add_member(:level, Shapes::ShapeRef.new(shape: LoggingLevel, required: true, location_name: "level"))
    LoggingOptions.struct_class = Types::LoggingOptions

    MatchedDataBinding.add_member(:value, Shapes::ShapeRef.new(shape: DataBindingValue, required: true, location_name: "value"))
    MatchedDataBinding.struct_class = Types::MatchedDataBinding

    Measurement.add_member(:processing_config, Shapes::ShapeRef.new(shape: MeasurementProcessingConfig, location_name: "processingConfig"))
    Measurement.struct_class = Types::Measurement

    MeasurementProcessingConfig.add_member(:forwarding_config, Shapes::ShapeRef.new(shape: ForwardingConfig, required: true, location_name: "forwardingConfig"))
    MeasurementProcessingConfig.struct_class = Types::MeasurementProcessingConfig

    Metadata.key = Shapes::ShapeRef.new(shape: MetadataKey)
    Metadata.value = Shapes::ShapeRef.new(shape: MetadataValue)

    Metric.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, location_name: "expression"))
    Metric.add_member(:variables, Shapes::ShapeRef.new(shape: ExpressionVariables, location_name: "variables"))
    Metric.add_member(:window, Shapes::ShapeRef.new(shape: MetricWindow, required: true, location_name: "window"))
    Metric.add_member(:processing_config, Shapes::ShapeRef.new(shape: MetricProcessingConfig, location_name: "processingConfig"))
    Metric.struct_class = Types::Metric

    MetricProcessingConfig.add_member(:compute_location, Shapes::ShapeRef.new(shape: ComputeLocation, required: true, location_name: "computeLocation"))
    MetricProcessingConfig.struct_class = Types::MetricProcessingConfig

    MetricWindow.add_member(:tumbling, Shapes::ShapeRef.new(shape: TumblingWindow, location_name: "tumbling"))
    MetricWindow.struct_class = Types::MetricWindow

    MonitorErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: MonitorErrorCode, location_name: "code"))
    MonitorErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: MonitorErrorMessage, location_name: "message"))
    MonitorErrorDetails.struct_class = Types::MonitorErrorDetails

    Mount.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    Mount.add_member(:relative_path, Shapes::ShapeRef.new(shape: MountRelativePath, required: true, location_name: "relativePath"))
    Mount.add_member(:source, Shapes::ShapeRef.new(shape: MountSource, required: true, location_name: "source"))
    Mount.add_member(:storage_type, Shapes::ShapeRef.new(shape: MountStorageType, required: true, location_name: "storageType"))
    Mount.struct_class = Types::Mount

    MountList.member = Shapes::ShapeRef.new(shape: Mount)

    MountOverrides.add_member(:compute_nodes, Shapes::ShapeRef.new(shape: ComputeNodeMountsMap, required: true, location_name: "computeNodes"))
    MountOverrides.struct_class = Types::MountOverrides

    MountSource.add_member(:s3_access_point, Shapes::ShapeRef.new(shape: S3AccessPointSource, location_name: "s3AccessPoint"))
    MountSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MountSource.add_member_subclass(:s3_access_point, Types::MountSource::S3AccessPoint)
    MountSource.add_member_subclass(:unknown, Types::MountSource::Unknown)
    MountSource.struct_class = Types::MountSource

    Mp4.struct_class = Types::Mp4

    MultiLayerStorage.add_member(:customer_managed_s3_storage, Shapes::ShapeRef.new(shape: CustomerManagedS3Storage, required: true, location_name: "customerManagedS3Storage"))
    MultiLayerStorage.struct_class = Types::MultiLayerStorage

    Parquet.struct_class = Types::Parquet

    PipelineExecutionStateDetails.add_member(:code, Shapes::ShapeRef.new(shape: PipelineErrorCode, location_name: "code"))
    PipelineExecutionStateDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    PipelineExecutionStateDetails.add_member(:details, Shapes::ShapeRef.new(shape: DetailedErrorList, location_name: "details"))
    PipelineExecutionStateDetails.struct_class = Types::PipelineExecutionStateDetails

    PipelineExecutionStatus.add_member(:state, Shapes::ShapeRef.new(shape: PipelineExecutionState, required: true, location_name: "state"))
    PipelineExecutionStatus.add_member(:state_details, Shapes::ShapeRef.new(shape: PipelineExecutionStateDetails, location_name: "stateDetails"))
    PipelineExecutionStatus.struct_class = Types::PipelineExecutionStatus

    PipelineExecutionSummary.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "pipelineExecutionId"))
    PipelineExecutionSummary.add_member(:pipeline_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "pipelineVersion"))
    PipelineExecutionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PipelineExecutionStatus, required: true, location_name: "status"))
    PipelineExecutionSummary.add_member(:execution_priority, Shapes::ShapeRef.new(shape: ExecutionPriority, location_name: "executionPriority"))
    PipelineExecutionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    PipelineExecutionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    PipelineExecutionSummary.struct_class = Types::PipelineExecutionSummary

    PipelineExecutionSummaryList.member = Shapes::ShapeRef.new(shape: PipelineExecutionSummary)

    PipelineSummaries.member = Shapes::ShapeRef.new(shape: PipelineSummary)

    PipelineSummary.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "pipelineName"))
    PipelineSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PipelineSummary.add_member(:pipeline_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "pipelineArn"))
    PipelineSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    PipelineSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    PipelineSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    PipelineSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    PipelineSummary.struct_class = Types::PipelineSummary

    PortalResource.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    PortalResource.struct_class = Types::PortalResource

    PortalStatus.add_member(:state, Shapes::ShapeRef.new(shape: PortalState, required: true, location_name: "state"))
    PortalStatus.add_member(:error, Shapes::ShapeRef.new(shape: MonitorErrorDetails, location_name: "error"))
    PortalStatus.struct_class = Types::PortalStatus

    PortalSummaries.member = Shapes::ShapeRef.new(shape: PortalSummary)

    PortalSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    PortalSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    PortalSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PortalSummary.add_member(:start_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "startUrl"))
    PortalSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    PortalSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    PortalSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, location_name: "roleArn"))
    PortalSummary.add_member(:status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "status"))
    PortalSummary.add_member(:portal_type, Shapes::ShapeRef.new(shape: PortalType, location_name: "portalType"))
    PortalSummary.struct_class = Types::PortalSummary

    PortalTools.member = Shapes::ShapeRef.new(shape: Name)

    PortalTypeConfiguration.key = Shapes::ShapeRef.new(shape: PortalTypeKey)
    PortalTypeConfiguration.value = Shapes::ShapeRef.new(shape: PortalTypeEntry)

    PortalTypeEntry.add_member(:portal_tools, Shapes::ShapeRef.new(shape: PortalTools, location_name: "portalTools"))
    PortalTypeEntry.struct_class = Types::PortalTypeEntry

    PreconditionFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    PreconditionFailedException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    PreconditionFailedException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    PreconditionFailedException.struct_class = Types::PreconditionFailedException

    ProcessingInput.add_member(:timeseries, Shapes::ShapeRef.new(shape: TimeseriesList, location_name: "timeseries"))
    ProcessingInput.add_member(:dataset, Shapes::ShapeRef.new(shape: DatasetItem, location_name: "dataset"))
    ProcessingInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProcessingInput.add_member_subclass(:timeseries, Types::ProcessingInput::Timeseries)
    ProcessingInput.add_member_subclass(:dataset, Types::ProcessingInput::Dataset)
    ProcessingInput.add_member_subclass(:unknown, Types::ProcessingInput::Unknown)
    ProcessingInput.struct_class = Types::ProcessingInput

    ProjectResource.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ProjectResource.struct_class = Types::ProjectResource

    ProjectSummaries.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ProjectSummary.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    ProjectSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ProjectSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ProjectSummary.add_member(:creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationDate"))
    ProjectSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateDate"))
    ProjectSummary.struct_class = Types::ProjectSummary

    Property.add_member(:id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "id"))
    Property.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "externalId"))
    Property.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    Property.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    Property.add_member(:notification, Shapes::ShapeRef.new(shape: PropertyNotification, location_name: "notification"))
    Property.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    Property.add_member(:unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "unit"))
    Property.add_member(:type, Shapes::ShapeRef.new(shape: PropertyType, location_name: "type"))
    Property.add_member(:path, Shapes::ShapeRef.new(shape: AssetPropertyPath, location_name: "path"))
    Property.struct_class = Types::Property

    PropertyMapping.add_member(:asset_model_property_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "assetModelPropertyId"))
    PropertyMapping.add_member(:interface_asset_model_property_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location_name: "interfaceAssetModelPropertyId"))
    PropertyMapping.struct_class = Types::PropertyMapping

    PropertyMappingConfiguration.add_member(:match_by_property_name, Shapes::ShapeRef.new(shape: MatchByPropertyName, location_name: "matchByPropertyName"))
    PropertyMappingConfiguration.add_member(:create_missing_property, Shapes::ShapeRef.new(shape: CreateMissingProperty, location_name: "createMissingProperty"))
    PropertyMappingConfiguration.add_member(:overrides, Shapes::ShapeRef.new(shape: PropertyMappings, location_name: "overrides"))
    PropertyMappingConfiguration.struct_class = Types::PropertyMappingConfiguration

    PropertyMappings.member = Shapes::ShapeRef.new(shape: PropertyMapping)

    PropertyNotification.add_member(:topic, Shapes::ShapeRef.new(shape: PropertyNotificationTopic, required: true, location_name: "topic"))
    PropertyNotification.add_member(:state, Shapes::ShapeRef.new(shape: PropertyNotificationState, required: true, location_name: "state"))
    PropertyNotification.struct_class = Types::PropertyNotification

    PropertyType.add_member(:attribute, Shapes::ShapeRef.new(shape: Attribute, location_name: "attribute"))
    PropertyType.add_member(:measurement, Shapes::ShapeRef.new(shape: Measurement, location_name: "measurement"))
    PropertyType.add_member(:transform, Shapes::ShapeRef.new(shape: Transform, location_name: "transform"))
    PropertyType.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, location_name: "metric"))
    PropertyType.struct_class = Types::PropertyType

    PropertyValueNullValue.add_member(:value_type, Shapes::ShapeRef.new(shape: RawValueType, required: true, location_name: "valueType"))
    PropertyValueNullValue.struct_class = Types::PropertyValueNullValue

    PutAssetModelInterfaceRelationshipRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    PutAssetModelInterfaceRelationshipRequest.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "interfaceAssetModelId"))
    PutAssetModelInterfaceRelationshipRequest.add_member(:property_mapping_configuration, Shapes::ShapeRef.new(shape: PropertyMappingConfiguration, required: true, location_name: "propertyMappingConfiguration"))
    PutAssetModelInterfaceRelationshipRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutAssetModelInterfaceRelationshipRequest.struct_class = Types::PutAssetModelInterfaceRelationshipRequest

    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetModelId"))
    PutAssetModelInterfaceRelationshipResponse.add_member(:interface_asset_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "interfaceAssetModelId"))
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "assetModelArn"))
    PutAssetModelInterfaceRelationshipResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    PutAssetModelInterfaceRelationshipResponse.struct_class = Types::PutAssetModelInterfaceRelationshipResponse

    PutAssetPropertyValueEntries.member = Shapes::ShapeRef.new(shape: PutAssetPropertyValueEntry)

    PutAssetPropertyValueEntry.add_member(:entry_id, Shapes::ShapeRef.new(shape: EntryId, required: true, location_name: "entryId"))
    PutAssetPropertyValueEntry.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    PutAssetPropertyValueEntry.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    PutAssetPropertyValueEntry.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    PutAssetPropertyValueEntry.add_member(:property_values, Shapes::ShapeRef.new(shape: AssetPropertyValues, required: true, location_name: "propertyValues"))
    PutAssetPropertyValueEntry.struct_class = Types::PutAssetPropertyValueEntry

    PutDefaultEncryptionConfigurationRequest.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    PutDefaultEncryptionConfigurationRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    PutDefaultEncryptionConfigurationRequest.struct_class = Types::PutDefaultEncryptionConfigurationRequest

    PutDefaultEncryptionConfigurationResponse.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    PutDefaultEncryptionConfigurationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "kmsKeyArn"))
    PutDefaultEncryptionConfigurationResponse.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    PutDefaultEncryptionConfigurationResponse.struct_class = Types::PutDefaultEncryptionConfigurationResponse

    PutLoggingOptionsRequest.add_member(:logging_options, Shapes::ShapeRef.new(shape: LoggingOptions, required: true, location_name: "loggingOptions"))
    PutLoggingOptionsRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    PutLoggingOptionsRequest.struct_class = Types::PutLoggingOptionsRequest

    PutLoggingOptionsResponse.struct_class = Types::PutLoggingOptionsResponse

    PutStorageConfigurationRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, required: true, location_name: "storageType"))
    PutStorageConfigurationRequest.add_member(:multi_layer_storage, Shapes::ShapeRef.new(shape: MultiLayerStorage, location_name: "multiLayerStorage"))
    PutStorageConfigurationRequest.add_member(:disassociated_data_storage, Shapes::ShapeRef.new(shape: DisassociatedDataStorageState, location_name: "disassociatedDataStorage"))
    PutStorageConfigurationRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    PutStorageConfigurationRequest.add_member(:warm_tier, Shapes::ShapeRef.new(shape: WarmTierState, location_name: "warmTier"))
    PutStorageConfigurationRequest.add_member(:warm_tier_retention_period, Shapes::ShapeRef.new(shape: WarmTierRetentionPeriod, location_name: "warmTierRetentionPeriod"))
    PutStorageConfigurationRequest.add_member(:disallow_ingest_null_na_n, Shapes::ShapeRef.new(shape: DisallowIngestNullNaN, location_name: "disallowIngestNullNaN"))
    PutStorageConfigurationRequest.struct_class = Types::PutStorageConfigurationRequest

    PutStorageConfigurationResponse.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, required: true, location_name: "storageType"))
    PutStorageConfigurationResponse.add_member(:multi_layer_storage, Shapes::ShapeRef.new(shape: MultiLayerStorage, location_name: "multiLayerStorage"))
    PutStorageConfigurationResponse.add_member(:disassociated_data_storage, Shapes::ShapeRef.new(shape: DisassociatedDataStorageState, location_name: "disassociatedDataStorage"))
    PutStorageConfigurationResponse.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "retentionPeriod"))
    PutStorageConfigurationResponse.add_member(:configuration_status, Shapes::ShapeRef.new(shape: ConfigurationStatus, required: true, location_name: "configurationStatus"))
    PutStorageConfigurationResponse.add_member(:warm_tier, Shapes::ShapeRef.new(shape: WarmTierState, location_name: "warmTier"))
    PutStorageConfigurationResponse.add_member(:warm_tier_retention_period, Shapes::ShapeRef.new(shape: WarmTierRetentionPeriod, location_name: "warmTierRetentionPeriod"))
    PutStorageConfigurationResponse.add_member(:disallow_ingest_null_na_n, Shapes::ShapeRef.new(shape: DisallowIngestNullNaN, location_name: "disallowIngestNullNaN"))
    PutStorageConfigurationResponse.struct_class = Types::PutStorageConfigurationResponse

    Qualities.member = Shapes::ShapeRef.new(shape: Quality)

    QueryStatistics.add_member(:row_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "rowCount"))
    QueryStatistics.add_member(:bytes_scanned, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "bytesScanned"))
    QueryStatistics.add_member(:execution_time_in_millis, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "executionTimeInMillis"))
    QueryStatistics.struct_class = Types::QueryStatistics

    QuerySummary.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    QuerySummary.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    QuerySummary.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    QuerySummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    QuerySummary.struct_class = Types::QuerySummary

    QuerySummaryList.member = Shapes::ShapeRef.new(shape: QuerySummary)

    QueryTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    QueryTimeoutException.struct_class = Types::QueryTimeoutException

    Reference.add_member(:dataset, Shapes::ShapeRef.new(shape: DataSetReference, location_name: "dataset"))
    Reference.struct_class = Types::Reference

    ResolveTo.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "assetId"))
    ResolveTo.struct_class = Types::ResolveTo

    Resource.add_member(:portal, Shapes::ShapeRef.new(shape: PortalResource, location_name: "portal"))
    Resource.add_member(:project, Shapes::ShapeRef.new(shape: ProjectResource, location_name: "project"))
    Resource.struct_class = Types::Resource

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceAlreadyExistsException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceAlreadyExistsException.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceError.add_member(:code, Shapes::ShapeRef.new(shape: ResourceErrorCode, location_name: "code"))
    ResourceError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceError.struct_class = Types::ResourceError

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceStatus.add_member(:error, Shapes::ShapeRef.new(shape: ResourceError, location_name: "error"))
    ResourceStatus.add_member(:state, Shapes::ShapeRef.new(shape: ResourceState, location_name: "state"))
    ResourceStatus.struct_class = Types::ResourceStatus

    ResponseStream.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, event: true, location_name: "trace"))
    ResponseStream.add_member(:output, Shapes::ShapeRef.new(shape: InvocationOutput, event: true, location_name: "output"))
    ResponseStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    ResponseStream.add_member(:conflicting_operation_exception, Shapes::ShapeRef.new(shape: ConflictingOperationException, location_name: "conflictingOperationException"))
    ResponseStream.add_member(:internal_failure_exception, Shapes::ShapeRef.new(shape: InternalFailureException, location_name: "internalFailureException"))
    ResponseStream.add_member(:invalid_request_exception, Shapes::ShapeRef.new(shape: InvalidRequestException, location_name: "invalidRequestException"))
    ResponseStream.add_member(:limit_exceeded_exception, Shapes::ShapeRef.new(shape: LimitExceededException, location_name: "limitExceededException"))
    ResponseStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    ResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ResponseStream.struct_class = Types::ResponseStream

    Result.member = Shapes::ShapeRef.new(shape: ColumnValue)

    RetentionPeriod.add_member(:number_of_days, Shapes::ShapeRef.new(shape: NumberOfDays, location_name: "numberOfDays"))
    RetentionPeriod.add_member(:unlimited, Shapes::ShapeRef.new(shape: Unlimited, location_name: "unlimited"))
    RetentionPeriod.struct_class = Types::RetentionPeriod

    Row.add_member(:data, Shapes::ShapeRef.new(shape: DatumList, required: true, location_name: "data"))
    Row.struct_class = Types::Row

    RowList.member = Shapes::ShapeRef.new(shape: Result)

    Rows.member = Shapes::ShapeRef.new(shape: Row)

    S3AccessPointSource.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: MountS3AccessPointArn, required: true, location_name: "accessPointArn"))
    S3AccessPointSource.add_member(:prefix, Shapes::ShapeRef.new(shape: MountS3KeyPrefix, location_name: "prefix"))
    S3AccessPointSource.struct_class = Types::S3AccessPointSource

    SearchFilters.add_member(:time_series_ids, Shapes::ShapeRef.new(shape: TimeSeriesIdList, location_name: "timeSeriesIds"))
    SearchFilters.add_member(:dataset_ids, Shapes::ShapeRef.new(shape: DataSetIdList, location_name: "datasetIds"))
    SearchFilters.add_member(:time_intervals, Shapes::ShapeRef.new(shape: TimeIntervalList, location_name: "timeIntervals"))
    SearchFilters.struct_class = Types::SearchFilters

    SearchResult.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "searchId"))
    SearchResult.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    SearchResult.add_member(:dataset_id, Shapes::ShapeRef.new(shape: DatasetId, required: true, location_name: "datasetId"))
    SearchResult.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    SearchResult.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTimestamp"))
    SearchResult.add_member(:end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTimestamp"))
    SearchResult.add_member(:top_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "topTimestamp"))
    SearchResult.add_member(:score, Shapes::ShapeRef.new(shape: Float, required: true, location_name: "score"))
    SearchResult.struct_class = Types::SearchResult

    SearchResultList.member = Shapes::ShapeRef.new(shape: SearchResult)

    SearchStatusFilterList.member = Shapes::ShapeRef.new(shape: SearchStatus)

    SearchSummaries.member = Shapes::ShapeRef.new(shape: SearchSummary)

    SearchSummary.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "searchId"))
    SearchSummary.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    SearchSummary.add_member(:status, Shapes::ShapeRef.new(shape: SearchStatus, required: true, location_name: "status"))
    SearchSummary.add_member(:query_statement, Shapes::ShapeRef.new(shape: SearchQueryStatement, required: true, location_name: "queryStatement"))
    SearchSummary.add_member(:search_type, Shapes::ShapeRef.new(shape: SearchType, required: true, location_name: "searchType"))
    SearchSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    SearchSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    SearchSummary.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "groupId"))
    SearchSummary.struct_class = Types::SearchSummary

    SearchTypeFilterList.member = Shapes::ShapeRef.new(shape: SearchType)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SessionConfig.add_member(:session_start_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "sessionStartTimestamp"))
    SessionConfig.add_member(:session_end_timestamp, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "sessionEndTimestamp"))
    SessionConfig.struct_class = Types::SessionConfig

    SiemensIE.add_member(:iot_core_thing_name, Shapes::ShapeRef.new(shape: IotCoreThingName, required: true, location_name: "iotCoreThingName"))
    SiemensIE.struct_class = Types::SiemensIE

    Source.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Source.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    Source.struct_class = Types::Source

    SourceDetail.add_member(:kendra, Shapes::ShapeRef.new(shape: KendraSourceDetail, location_name: "kendra"))
    SourceDetail.struct_class = Types::SourceDetail

    StartPipelineExecutionRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    StartPipelineExecutionRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    StartPipelineExecutionRequest.add_member(:execution_environment_variable_overrides, Shapes::ShapeRef.new(shape: ExecutionEnvironmentVariables, location_name: "executionEnvironmentVariableOverrides"))
    StartPipelineExecutionRequest.add_member(:execution_mount_overrides, Shapes::ShapeRef.new(shape: MountOverrides, location_name: "executionMountOverrides"))
    StartPipelineExecutionRequest.add_member(:execution_priority, Shapes::ShapeRef.new(shape: ExecutionPriority, location_name: "executionPriority"))
    StartPipelineExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartPipelineExecutionRequest.struct_class = Types::StartPipelineExecutionRequest

    StartPipelineExecutionResponse.add_member(:pipeline_execution_id, Shapes::ShapeRef.new(shape: ID, required: true, location_name: "pipelineExecutionId"))
    StartPipelineExecutionResponse.struct_class = Types::StartPipelineExecutionResponse

    StartQueryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartQueryRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    StartQueryRequest.add_member(:query_statement, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "queryStatement"))
    StartQueryRequest.struct_class = Types::StartQueryRequest

    StartQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    StartQueryResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, required: true, location_name: "status"))
    StartQueryResponse.struct_class = Types::StartQueryResponse

    StartSearchRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    StartSearchRequest.add_member(:query_statement, Shapes::ShapeRef.new(shape: SearchQueryStatement, required: true, location_name: "queryStatement"))
    StartSearchRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartSearchRequest.add_member(:search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "searchType"))
    StartSearchRequest.add_member(:search_filters, Shapes::ShapeRef.new(shape: SearchFilters, location_name: "searchFilters"))
    StartSearchRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "groupId"))
    StartSearchRequest.struct_class = Types::StartSearchRequest

    StartSearchResponse.add_member(:search_id, Shapes::ShapeRef.new(shape: SearchId, required: true, location_name: "searchId"))
    StartSearchResponse.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "workspaceName"))
    StartSearchResponse.add_member(:status, Shapes::ShapeRef.new(shape: SearchStatus, required: true, location_name: "status"))
    StartSearchResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "groupId"))
    StartSearchResponse.struct_class = Types::StartSearchResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetResource.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    TargetResource.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "computationModelId"))
    TargetResource.struct_class = Types::TargetResource

    TaskConfiguration.add_member(:container_task_configuration, Shapes::ShapeRef.new(shape: ContainerTaskConfiguration, location_name: "containerTaskConfiguration"))
    TaskConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TaskConfiguration.add_member_subclass(:container_task_configuration, Types::TaskConfiguration::ContainerTaskConfiguration)
    TaskConfiguration.add_member_subclass(:unknown, Types::TaskConfiguration::Unknown)
    TaskConfiguration.struct_class = Types::TaskConfiguration

    TaskSummaries.member = Shapes::ShapeRef.new(shape: TaskSummary)

    TaskSummary.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "taskName"))
    TaskSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "taskArn"))
    TaskSummary.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    TaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    TaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    TaskSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    TaskSummary.struct_class = Types::TaskSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeInNanos.add_member(:time_in_seconds, Shapes::ShapeRef.new(shape: TimeInSeconds, required: true, location_name: "timeInSeconds"))
    TimeInNanos.add_member(:offset_in_nanos, Shapes::ShapeRef.new(shape: OffsetInNanos, location_name: "offsetInNanos"))
    TimeInNanos.struct_class = Types::TimeInNanos

    TimeInterval.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTime"))
    TimeInterval.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTime"))
    TimeInterval.struct_class = Types::TimeInterval

    TimeIntervalList.member = Shapes::ShapeRef.new(shape: TimeInterval)

    TimeSeriesIdList.member = Shapes::ShapeRef.new(shape: TimeSeriesId)

    TimeSeriesSummaries.member = Shapes::ShapeRef.new(shape: TimeSeriesSummary)

    TimeSeriesSummary.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    TimeSeriesSummary.add_member(:property_id, Shapes::ShapeRef.new(shape: ID, location_name: "propertyId"))
    TimeSeriesSummary.add_member(:alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "alias"))
    TimeSeriesSummary.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, required: true, location_name: "timeSeriesId"))
    TimeSeriesSummary.add_member(:data_type, Shapes::ShapeRef.new(shape: PropertyDataType, required: true, location_name: "dataType"))
    TimeSeriesSummary.add_member(:data_type_spec, Shapes::ShapeRef.new(shape: Name, location_name: "dataTypeSpec"))
    TimeSeriesSummary.add_member(:time_series_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timeSeriesCreationDate"))
    TimeSeriesSummary.add_member(:time_series_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timeSeriesLastUpdateDate"))
    TimeSeriesSummary.add_member(:time_series_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "timeSeriesArn"))
    TimeSeriesSummary.struct_class = Types::TimeSeriesSummary

    TimeseriesItem.add_member(:time_series_id, Shapes::ShapeRef.new(shape: TimeSeriesId, location_name: "timeSeriesId"))
    TimeseriesItem.add_member(:property_alias, Shapes::ShapeRef.new(shape: AssetPropertyAlias, location_name: "propertyAlias"))
    TimeseriesItem.add_member(:trim_settings, Shapes::ShapeRef.new(shape: TrimSettings, location_name: "trimSettings"))
    TimeseriesItem.add_member(:format_settings, Shapes::ShapeRef.new(shape: FormatSettings, location_name: "formatSettings"))
    TimeseriesItem.struct_class = Types::TimeseriesItem

    TimeseriesList.member = Shapes::ShapeRef.new(shape: TimeseriesItem)

    Timestamps.member = Shapes::ShapeRef.new(shape: TimeInNanos)

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    Trace.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    Trace.struct_class = Types::Trace

    Transform.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "expression"))
    Transform.add_member(:variables, Shapes::ShapeRef.new(shape: ExpressionVariables, required: true, location_name: "variables"))
    Transform.add_member(:processing_config, Shapes::ShapeRef.new(shape: TransformProcessingConfig, location_name: "processingConfig"))
    Transform.struct_class = Types::Transform

    TransformProcessingConfig.add_member(:compute_location, Shapes::ShapeRef.new(shape: ComputeLocation, required: true, location_name: "computeLocation"))
    TransformProcessingConfig.add_member(:forwarding_config, Shapes::ShapeRef.new(shape: ForwardingConfig, location_name: "forwardingConfig"))
    TransformProcessingConfig.struct_class = Types::TransformProcessingConfig

    TrimSettings.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "startTime"))
    TrimSettings.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeInNanos, required: true, location_name: "endTime"))
    TrimSettings.struct_class = Types::TrimSettings

    TumblingWindow.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, required: true, location_name: "interval"))
    TumblingWindow.add_member(:offset, Shapes::ShapeRef.new(shape: Offset, location_name: "offset"))
    TumblingWindow.struct_class = Types::TumblingWindow

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccessPolicyRequest.add_member(:access_policy_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "accessPolicyId"))
    UpdateAccessPolicyRequest.add_member(:access_policy_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "accessPolicyIdentity"))
    UpdateAccessPolicyRequest.add_member(:access_policy_resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "accessPolicyResource"))
    UpdateAccessPolicyRequest.add_member(:access_policy_permission, Shapes::ShapeRef.new(shape: Permission, required: true, location_name: "accessPolicyPermission"))
    UpdateAccessPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAccessPolicyRequest.struct_class = Types::UpdateAccessPolicyRequest

    UpdateAccessPolicyResponse.struct_class = Types::UpdateAccessPolicyResponse

    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelCompositeModelId"))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetModelCompositeModelExternalId"))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetModelCompositeModelDescription"))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelCompositeModelName"))
    UpdateAssetModelCompositeModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAssetModelCompositeModelRequest.add_member(:asset_model_composite_model_properties, Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: "assetModelCompositeModelProperties"))
    UpdateAssetModelCompositeModelRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "If-Match"))
    UpdateAssetModelCompositeModelRequest.add_member(:if_none_match, Shapes::ShapeRef.new(shape: SelectAll, location: "header", location_name: "If-None-Match"))
    UpdateAssetModelCompositeModelRequest.add_member(:match_for_version_type, Shapes::ShapeRef.new(shape: AssetModelVersionType, location: "header", location_name: "Match-For-Version-Type"))
    UpdateAssetModelCompositeModelRequest.struct_class = Types::UpdateAssetModelCompositeModelRequest

    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_composite_model_path, Shapes::ShapeRef.new(shape: AssetModelCompositeModelPath, required: true, location_name: "assetModelCompositeModelPath"))
    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    UpdateAssetModelCompositeModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelId"))
    UpdateAssetModelCompositeModelResponse.struct_class = Types::UpdateAssetModelCompositeModelResponse

    UpdateAssetModelRequest.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetModelId"))
    UpdateAssetModelRequest.add_member(:asset_model_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetModelExternalId"))
    UpdateAssetModelRequest.add_member(:asset_model_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetModelName"))
    UpdateAssetModelRequest.add_member(:asset_model_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetModelDescription"))
    UpdateAssetModelRequest.add_member(:asset_model_properties, Shapes::ShapeRef.new(shape: AssetModelProperties, location_name: "assetModelProperties"))
    UpdateAssetModelRequest.add_member(:asset_model_hierarchies, Shapes::ShapeRef.new(shape: AssetModelHierarchies, location_name: "assetModelHierarchies"))
    UpdateAssetModelRequest.add_member(:asset_model_composite_models, Shapes::ShapeRef.new(shape: AssetModelCompositeModels, location_name: "assetModelCompositeModels"))
    UpdateAssetModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAssetModelRequest.add_member(:if_match, Shapes::ShapeRef.new(shape: ETag, location: "header", location_name: "If-Match"))
    UpdateAssetModelRequest.add_member(:if_none_match, Shapes::ShapeRef.new(shape: SelectAll, location: "header", location_name: "If-None-Match"))
    UpdateAssetModelRequest.add_member(:match_for_version_type, Shapes::ShapeRef.new(shape: AssetModelVersionType, location: "header", location_name: "Match-For-Version-Type"))
    UpdateAssetModelRequest.struct_class = Types::UpdateAssetModelRequest

    UpdateAssetModelResponse.add_member(:asset_model_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetModelId"))
    UpdateAssetModelResponse.add_member(:asset_model_status, Shapes::ShapeRef.new(shape: AssetModelStatus, required: true, location_name: "assetModelStatus"))
    UpdateAssetModelResponse.struct_class = Types::UpdateAssetModelResponse

    UpdateAssetPropertyRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    UpdateAssetPropertyRequest.add_member(:property_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "propertyId"))
    UpdateAssetPropertyRequest.add_member(:property_alias, Shapes::ShapeRef.new(shape: PropertyAlias, location_name: "propertyAlias"))
    UpdateAssetPropertyRequest.add_member(:property_notification_state, Shapes::ShapeRef.new(shape: PropertyNotificationState, location_name: "propertyNotificationState"))
    UpdateAssetPropertyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAssetPropertyRequest.add_member(:property_unit, Shapes::ShapeRef.new(shape: PropertyUnit, location_name: "propertyUnit"))
    UpdateAssetPropertyRequest.struct_class = Types::UpdateAssetPropertyRequest

    UpdateAssetRequest.add_member(:asset_id, Shapes::ShapeRef.new(shape: CustomID, required: true, location: "uri", location_name: "assetId"))
    UpdateAssetRequest.add_member(:asset_external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "assetExternalId"))
    UpdateAssetRequest.add_member(:asset_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "assetName"))
    UpdateAssetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateAssetRequest.add_member(:asset_description, Shapes::ShapeRef.new(shape: Description, location_name: "assetDescription"))
    UpdateAssetRequest.struct_class = Types::UpdateAssetRequest

    UpdateAssetResponse.add_member(:asset_id, Shapes::ShapeRef.new(shape: ID, location_name: "assetId"))
    UpdateAssetResponse.add_member(:asset_status, Shapes::ShapeRef.new(shape: AssetStatus, required: true, location_name: "assetStatus"))
    UpdateAssetResponse.struct_class = Types::UpdateAssetResponse

    UpdateComputationModelRequest.add_member(:computation_model_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "computationModelId"))
    UpdateComputationModelRequest.add_member(:computation_model_name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "computationModelName"))
    UpdateComputationModelRequest.add_member(:computation_model_description, Shapes::ShapeRef.new(shape: RestrictedDescription, location_name: "computationModelDescription"))
    UpdateComputationModelRequest.add_member(:computation_model_configuration, Shapes::ShapeRef.new(shape: ComputationModelConfiguration, required: true, location_name: "computationModelConfiguration"))
    UpdateComputationModelRequest.add_member(:computation_model_data_binding, Shapes::ShapeRef.new(shape: ComputationModelDataBinding, required: true, location_name: "computationModelDataBinding"))
    UpdateComputationModelRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateComputationModelRequest.struct_class = Types::UpdateComputationModelRequest

    UpdateComputationModelResponse.add_member(:computation_model_status, Shapes::ShapeRef.new(shape: ComputationModelStatus, required: true, location_name: "computationModelStatus"))
    UpdateComputationModelResponse.struct_class = Types::UpdateComputationModelResponse

    UpdateDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "dashboardId"))
    UpdateDashboardRequest.add_member(:dashboard_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "dashboardName"))
    UpdateDashboardRequest.add_member(:dashboard_description, Shapes::ShapeRef.new(shape: Description, location_name: "dashboardDescription"))
    UpdateDashboardRequest.add_member(:dashboard_definition, Shapes::ShapeRef.new(shape: DashboardDefinition, required: true, location_name: "dashboardDefinition"))
    UpdateDashboardRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDashboardRequest.struct_class = Types::UpdateDashboardRequest

    UpdateDashboardResponse.struct_class = Types::UpdateDashboardResponse

    UpdateDatasetRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "datasetId"))
    UpdateDatasetRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    UpdateDatasetRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: RestrictedName, required: true, location_name: "datasetName"))
    UpdateDatasetRequest.add_member(:dataset_description, Shapes::ShapeRef.new(shape: Description, location_name: "datasetDescription"))
    UpdateDatasetRequest.add_member(:dataset_config, Shapes::ShapeRef.new(shape: DatasetConfig, location_name: "datasetConfig"))
    UpdateDatasetRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
    UpdateDatasetRequest.add_member(:dataset_source, Shapes::ShapeRef.new(shape: DatasetSource, required: true, location_name: "datasetSource"))
    UpdateDatasetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDatasetRequest.struct_class = Types::UpdateDatasetRequest

    UpdateDatasetResponse.add_member(:dataset_id, Shapes::ShapeRef.new(shape: ID, location_name: "datasetId"))
    UpdateDatasetResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "datasetArn"))
    UpdateDatasetResponse.add_member(:dataset_status, Shapes::ShapeRef.new(shape: DatasetStatus, location_name: "datasetStatus"))
    UpdateDatasetResponse.struct_class = Types::UpdateDatasetResponse

    UpdateGatewayCapabilityConfigurationRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    UpdateGatewayCapabilityConfigurationRequest.add_member(:capability_configuration, Shapes::ShapeRef.new(shape: CapabilityConfiguration, required: true, location_name: "capabilityConfiguration"))
    UpdateGatewayCapabilityConfigurationRequest.struct_class = Types::UpdateGatewayCapabilityConfigurationRequest

    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_namespace, Shapes::ShapeRef.new(shape: CapabilityNamespace, required: true, location_name: "capabilityNamespace"))
    UpdateGatewayCapabilityConfigurationResponse.add_member(:capability_sync_status, Shapes::ShapeRef.new(shape: CapabilitySyncStatus, required: true, location_name: "capabilitySyncStatus"))
    UpdateGatewayCapabilityConfigurationResponse.struct_class = Types::UpdateGatewayCapabilityConfigurationResponse

    UpdateGatewayRequest.add_member(:gateway_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "gatewayId"))
    UpdateGatewayRequest.add_member(:gateway_name, Shapes::ShapeRef.new(shape: GatewayName, required: true, location_name: "gatewayName"))
    UpdateGatewayRequest.struct_class = Types::UpdateGatewayRequest

    UpdatePipelineRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    UpdatePipelineRequest.add_member(:pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "pipelineName"))
    UpdatePipelineRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdatePipelineRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "environmentVariables"))
    UpdatePipelineRequest.add_member(:computations, Shapes::ShapeRef.new(shape: ComputeNodeList, location_name: "computations"))
    UpdatePipelineRequest.struct_class = Types::UpdatePipelineRequest

    UpdatePipelineResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    UpdatePipelineResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    UpdatePipelineResponse.struct_class = Types::UpdatePipelineResponse

    UpdatePortalRequest.add_member(:portal_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "portalId"))
    UpdatePortalRequest.add_member(:portal_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "portalName"))
    UpdatePortalRequest.add_member(:portal_description, Shapes::ShapeRef.new(shape: Description, location_name: "portalDescription"))
    UpdatePortalRequest.add_member(:portal_contact_email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "portalContactEmail"))
    UpdatePortalRequest.add_member(:portal_logo_image, Shapes::ShapeRef.new(shape: Image, location_name: "portalLogoImage"))
    UpdatePortalRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamArn, required: true, location_name: "roleArn"))
    UpdatePortalRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdatePortalRequest.add_member(:notification_sender_email, Shapes::ShapeRef.new(shape: Email, location_name: "notificationSenderEmail"))
    UpdatePortalRequest.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "alarms"))
    UpdatePortalRequest.add_member(:portal_type, Shapes::ShapeRef.new(shape: PortalType, location_name: "portalType"))
    UpdatePortalRequest.add_member(:portal_type_configuration, Shapes::ShapeRef.new(shape: PortalTypeConfiguration, location_name: "portalTypeConfiguration"))
    UpdatePortalRequest.struct_class = Types::UpdatePortalRequest

    UpdatePortalResponse.add_member(:portal_status, Shapes::ShapeRef.new(shape: PortalStatus, required: true, location_name: "portalStatus"))
    UpdatePortalResponse.struct_class = Types::UpdatePortalResponse

    UpdateProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ID, required: true, location: "uri", location_name: "projectId"))
    UpdateProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "projectName"))
    UpdateProjectRequest.add_member(:project_description, Shapes::ShapeRef.new(shape: Description, location_name: "projectDescription"))
    UpdateProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

    UpdateProjectResponse.struct_class = Types::UpdateProjectResponse

    UpdateTaskRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    UpdateTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "taskName"))
    UpdateTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateTaskRequest.add_member(:task_configuration, Shapes::ShapeRef.new(shape: TaskConfiguration, location_name: "taskConfiguration"))
    UpdateTaskRequest.struct_class = Types::UpdateTaskRequest

    UpdateTaskResponse.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    UpdateTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    UpdateTaskResponse.struct_class = Types::UpdateTaskResponse

    UpdateWorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location: "uri", location_name: "workspaceName"))
    UpdateWorkspaceRequest.add_member(:workspace_description, Shapes::ShapeRef.new(shape: Description, location_name: "workspaceDescription"))
    UpdateWorkspaceRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: WorkspaceEncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateWorkspaceRequest.struct_class = Types::UpdateWorkspaceRequest

    UpdateWorkspaceResponse.add_member(:workspace_status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "workspaceStatus"))
    UpdateWorkspaceResponse.struct_class = Types::UpdateWorkspaceResponse

    UserIdentity.add_member(:id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "id"))
    UserIdentity.struct_class = Types::UserIdentity

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VariableValue.add_member(:property_id, Shapes::ShapeRef.new(shape: Macro, location_name: "propertyId"))
    VariableValue.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: Macro, location_name: "hierarchyId"))
    VariableValue.add_member(:property_path, Shapes::ShapeRef.new(shape: AssetModelPropertyPath, location_name: "propertyPath"))
    VariableValue.struct_class = Types::VariableValue

    Variant.add_member(:string_value, Shapes::ShapeRef.new(shape: PropertyValueStringValue, location_name: "stringValue"))
    Variant.add_member(:integer_value, Shapes::ShapeRef.new(shape: PropertyValueIntegerValue, location_name: "integerValue"))
    Variant.add_member(:double_value, Shapes::ShapeRef.new(shape: PropertyValueDoubleValue, location_name: "doubleValue"))
    Variant.add_member(:boolean_value, Shapes::ShapeRef.new(shape: PropertyValueBooleanValue, location_name: "booleanValue"))
    Variant.add_member(:null_value, Shapes::ShapeRef.new(shape: PropertyValueNullValue, location_name: "nullValue"))
    Variant.struct_class = Types::Variant

    WarmTierRetentionPeriod.add_member(:number_of_days, Shapes::ShapeRef.new(shape: NumberOfDays, location_name: "numberOfDays"))
    WarmTierRetentionPeriod.add_member(:unlimited, Shapes::ShapeRef.new(shape: Unlimited, location_name: "unlimited"))
    WarmTierRetentionPeriod.struct_class = Types::WarmTierRetentionPeriod

    WorkspaceEncryptionConfiguration.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    WorkspaceEncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    WorkspaceEncryptionConfiguration.struct_class = Types::WorkspaceEncryptionConfiguration

    WorkspaceEncryptionConfigurationInfo.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    WorkspaceEncryptionConfigurationInfo.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "kmsKeyArn"))
    WorkspaceEncryptionConfigurationInfo.struct_class = Types::WorkspaceEncryptionConfigurationInfo

    WorkspaceErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "code"))
    WorkspaceErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "message"))
    WorkspaceErrorDetails.struct_class = Types::WorkspaceErrorDetails

    WorkspaceStatus.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceState, required: true, location_name: "state"))
    WorkspaceStatus.add_member(:error, Shapes::ShapeRef.new(shape: WorkspaceErrorDetails, location_name: "error"))
    WorkspaceStatus.struct_class = Types::WorkspaceStatus

    WorkspaceSummaries.member = Shapes::ShapeRef.new(shape: WorkspaceSummary)

    WorkspaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceName, required: true, location_name: "name"))
    WorkspaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "arn"))
    WorkspaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    WorkspaceSummary.struct_class = Types::WorkspaceSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "iotsitewise",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS IoT SiteWise",
        "serviceId" => "IoTSiteWise",
        "signatureVersion" => "v4",
        "signingName" => "iotsitewise",
        "uid" => "iotsitewise-2019-12-02",
      }

      api.add_operation(:associate_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAssets"
        o.http_method = "POST"
        o.http_request_uri = "/assets/{assetId}/associate"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:associate_time_series_to_asset_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTimeSeriesToAssetProperty"
        o.http_method = "POST"
        o.http_request_uri = "/timeseries/associate/"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: AssociateTimeSeriesToAssetPropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:batch_associate_data_segments_to_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateDataSegmentsToDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/data-segments/associate"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateDataSegmentsToDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateDataSegmentsToDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:batch_associate_project_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchAssociateProjectAssets"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{projectId}/assets/associate"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchAssociateProjectAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:batch_delete_dataset_data_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDatasetDataSegments"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/data-segments/batch-delete"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDatasetDataSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDatasetDataSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_disassociate_data_segments_from_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateDataSegmentsFromDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets/{datasetId}/data-segments/disassociate"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateDataSegmentsFromDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateDataSegmentsFromDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:batch_disassociate_project_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDisassociateProjectAssets"
        o.http_method = "POST"
        o.http_request_uri = "/projects/{projectId}/assets/disassociate"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDisassociateProjectAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_get_asset_property_aggregates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAssetPropertyAggregates"
        o.http_method = "POST"
        o.http_request_uri = "/properties/batch/aggregates"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyAggregatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:batch_get_asset_property_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAssetPropertyValue"
        o.http_method = "POST"
        o.http_request_uri = "/properties/batch/latest"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:batch_get_asset_property_value_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAssetPropertyValueHistory"
        o.http_method = "POST"
        o.http_request_uri = "/properties/batch/history"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAssetPropertyValueHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:batch_put_asset_property_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutAssetPropertyValue"
        o.http_method = "POST"
        o.http_request_uri = "/properties"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutAssetPropertyValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:cancel_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelEnrichmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/enrichment-jobs/{jobId}/cancel"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelEnrichmentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelEnrichmentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:cancel_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}/executions/{pipelineExecutionId}/cancel"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelPipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelPipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:cancel_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuery"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/queries/{queryId}/cancel"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/access-policies"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAsset"
        o.http_method = "POST"
        o.http_request_uri = "/assets"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssetModel"
        o.http_method = "POST"
        o.http_request_uri = "/asset-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_asset_model_composite_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssetModelCompositeModel"
        o.http_method = "POST"
        o.http_request_uri = "/asset-models/{assetModelId}/composite-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAssetModelCompositeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssetModelCompositeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_bulk_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBulkImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateBulkImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBulkImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_computation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComputationModel"
        o.http_method = "POST"
        o.http_request_uri = "/computation-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateComputationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComputationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/dashboards"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataset"
        o.http_method = "POST"
        o.http_request_uri = "/datasets"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_dataset_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatasetExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/dataset-export-jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateDatasetExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatasetExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnrichmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/enrichment-jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateEnrichmentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnrichmentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGateway"
        o.http_method = "POST"
        o.http_request_uri = "/20200301/gateways"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePortal"
        o.http_method = "POST"
        o.http_request_uri = "/portals"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/projects"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTask"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/tasks"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:create_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/access-policies/{accessPolicyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceName}/applications/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAsset"
        o.http_method = "DELETE"
        o.http_request_uri = "/assets/{assetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssetModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/asset-models/{assetModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:delete_asset_model_composite_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssetModelCompositeModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetModelCompositeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetModelCompositeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:delete_asset_model_interface_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssetModelInterfaceRelationship"
        o.http_method = "DELETE"
        o.http_request_uri = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAssetModelInterfaceRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssetModelInterfaceRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_computation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComputationModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/computation-models/{computationModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteComputationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComputationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDashboard"
        o.http_method = "DELETE"
        o.http_request_uri = "/dashboards/{dashboardId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataset"
        o.http_method = "DELETE"
        o.http_request_uri = "/datasets/{datasetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/20200301/gateways/{gatewayId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeletePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePortal"
        o.http_method = "DELETE"
        o.http_request_uri = "/portals/{portalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeletePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{projectId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTask"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceName}/tasks/{taskName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_time_series, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTimeSeries"
        o.http_method = "POST"
        o.http_request_uri = "/timeseries/delete/"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteTimeSeriesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:delete_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccessPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/access-policies/{accessPolicyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAction"
        o.http_method = "GET"
        o.http_request_uri = "/actions/{actionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/applications/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAsset"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_composite_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetCompositeModel"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/composite-models/{assetCompositeModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetCompositeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetCompositeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetModel"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_model_composite_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetModelCompositeModel"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetModelCompositeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetModelCompositeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_model_interface_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetModelInterfaceRelationship"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetModelInterfaceRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetModelInterfaceRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_asset_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetProperty"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/properties/{propertyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetPropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetPropertyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_bulk_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBulkImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeBulkImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBulkImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_computation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComputationModel"
        o.http_method = "GET"
        o.http_request_uri = "/computation-models/{computationModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeComputationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComputationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_computation_model_execution_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComputationModelExecutionSummary"
        o.http_method = "GET"
        o.http_request_uri = "/computation-models/{computationModelId}/execution-summary"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeComputationModelExecutionSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComputationModelExecutionSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDashboard"
        o.http_method = "GET"
        o.http_request_uri = "/dashboards/{dashboardId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataset"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_dataset_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDatasetExportJob"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/dataset-export-jobs/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDatasetExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDatasetExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_default_encryption_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDefaultEncryptionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/configuration/account/encryption"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeDefaultEncryptionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDefaultEncryptionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_enrichment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnrichmentJob"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/enrichment-jobs/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeEnrichmentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnrichmentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:describe_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExecution"
        o.http_method = "GET"
        o.http_request_uri = "/executions/{executionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGateway"
        o.http_method = "GET"
        o.http_request_uri = "/20200301/gateways/{gatewayId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_gateway_capability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayCapabilityConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayCapabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayCapabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingOptions"
        o.http_method = "GET"
        o.http_request_uri = "/logging"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipeline"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePipelineExecution"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}/executions/{pipelineExecutionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribePipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePortal"
        o.http_method = "GET"
        o.http_request_uri = "/portals/{portalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQuery"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/queries/{queryId}"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSearch"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/searches/{searchId}"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStorageConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/configuration/account/storage"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeStorageConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStorageConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:describe_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTask"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/tasks/{taskName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_time_series, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTimeSeries"
        o.http_method = "GET"
        o.http_request_uri = "/timeseries/describe/"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeTimeSeriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTimeSeriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:disassociate_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAssets"
        o.http_method = "POST"
        o.http_request_uri = "/assets/{assetId}/disassociate"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:disassociate_time_series_from_asset_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTimeSeriesFromAssetProperty"
        o.http_method = "POST"
        o.http_request_uri = "/timeseries/disassociate/"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: DisassociateTimeSeriesFromAssetPropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:execute_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteAction"
        o.http_method = "POST"
        o.http_request_uri = "/actions"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ExecuteActionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:execute_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteQuery"
        o.http_method = "POST"
        o.http_request_uri = "/queries/execution"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ExecuteQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: QueryTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_asset_property_aggregates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetPropertyAggregates"
        o.http_method = "GET"
        o.http_request_uri = "/properties/aggregates"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssetPropertyAggregatesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetPropertyAggregatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_asset_property_value, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetPropertyValue"
        o.http_method = "GET"
        o.http_request_uri = "/properties/latest"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssetPropertyValueRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetPropertyValueResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_asset_property_value_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssetPropertyValueHistory"
        o.http_method = "GET"
        o.http_request_uri = "/properties/history"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssetPropertyValueHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_capture_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCaptureData"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/get-capture-data"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetCaptureDataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCaptureDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_interpolated_asset_property_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInterpolatedAssetPropertyValues"
        o.http_method = "GET"
        o.http_request_uri = "/properties/interpolated"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetInterpolatedAssetPropertyValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInterpolatedAssetPropertyValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/queries/{queryId}/results"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_search_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSearchResults"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/searches/{searchId}/results"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSearchResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSearchResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:invoke_assistant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAssistant"
        o.http_method = "POST"
        o.http_request_uri = "/assistant/invocation"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: InvokeAssistantRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAssistantResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:list_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/access-policies"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActions"
        o.http_method = "GET"
        o.http_request_uri = "/actions"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_asset_model_composite_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetModelCompositeModels"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}/composite-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetModelCompositeModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetModelCompositeModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_asset_model_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetModelProperties"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}/properties"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetModelPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetModelPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_asset_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetModels"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_asset_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetProperties"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/properties"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_asset_relationships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetRelationships"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/assetRelationships"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetRelationshipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetRelationshipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssets"
        o.http_method = "GET"
        o.http_request_uri = "/assets"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associated_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedAssets"
        o.http_method = "GET"
        o.http_request_uri = "/assets/{assetId}/hierarchies"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bulk_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBulkImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListBulkImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBulkImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_composition_relationships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCompositionRelationships"
        o.http_method = "GET"
        o.http_request_uri = "/asset-models/{assetModelId}/composition-relationships"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListCompositionRelationshipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCompositionRelationshipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_computation_model_data_binding_usages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComputationModelDataBindingUsages"
        o.http_method = "POST"
        o.http_request_uri = "/computation-models/data-binding-usages"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListComputationModelDataBindingUsagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComputationModelDataBindingUsagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_computation_model_resolve_to_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComputationModelResolveToResources"
        o.http_method = "GET"
        o.http_request_uri = "/computation-models/{computationModelId}/resolve-to-resources"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListComputationModelResolveToResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComputationModelResolveToResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_computation_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComputationModels"
        o.http_method = "GET"
        o.http_request_uri = "/computation-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListComputationModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComputationModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDashboards"
        o.http_method = "GET"
        o.http_request_uri = "/dashboards"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDashboardsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDashboardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_data_segment_relationships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetDataSegmentRelationships"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/data-segment-relationships"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDatasetDataSegmentRelationshipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetDataSegmentRelationshipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_data_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetDataSegments"
        o.http_method = "GET"
        o.http_request_uri = "/datasets/{datasetId}/data-segments"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDatasetDataSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetDataSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dataset_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasetExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/dataset-export-jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDatasetExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_datasets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatasets"
        o.http_method = "GET"
        o.http_request_uri = "/datasets"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListDatasetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatasetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_enrichment_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnrichmentJobs"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/enrichment-jobs"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListEnrichmentJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnrichmentJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/executions"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGateways"
        o.http_method = "GET"
        o.http_request_uri = "/20200301/gateways"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGatewaysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_interface_relationships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInterfaceRelationships"
        o.http_method = "GET"
        o.http_request_uri = "/interface/{interfaceAssetModelId}/asset-models"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListInterfaceRelationshipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInterfaceRelationshipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipeline_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelineExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}/executions"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPipelineExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelineExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPipelines"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_portals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPortals"
        o.http_method = "GET"
        o.http_request_uri = "/portals"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListPortalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPortalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_project_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjectAssets"
        o.http_method = "GET"
        o.http_request_uri = "/projects/{projectId}/assets"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListProjectAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/projects"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueries"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/queries"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_searches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSearches"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/searches/list"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSearchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSearchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:list_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTasks"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceName}/tasks"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_time_series, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTimeSeries"
        o.http_method = "GET"
        o.http_request_uri = "/timeseries/"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTimeSeriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTimeSeriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkspaces"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: ListWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkspacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_asset_model_interface_relationship, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAssetModelInterfaceRelationship"
        o.http_method = "PUT"
        o.http_request_uri = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutAssetModelInterfaceRelationshipRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAssetModelInterfaceRelationshipResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:put_default_encryption_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDefaultEncryptionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/configuration/account/encryption"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutDefaultEncryptionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDefaultEncryptionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:put_logging_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLoggingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/logging"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutLoggingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLoggingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_storage_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutStorageConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/configuration/account/storage"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: PutStorageConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutStorageConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:start_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPipelineExecution"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}/executions"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartPipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:start_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQuery"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/queries"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:start_search, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSearch"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceName}/searches"
        o.endpoint_pattern = {
          "hostPrefix" => "data.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartSearchRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSearchResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/access-policies/{accessPolicyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAsset"
        o.http_method = "PUT"
        o.http_request_uri = "/assets/{assetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_asset_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssetModel"
        o.http_method = "PUT"
        o.http_request_uri = "/asset-models/{assetModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssetModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
      end)

      api.add_operation(:update_asset_model_composite_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssetModelCompositeModel"
        o.http_method = "PUT"
        o.http_request_uri = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetModelCompositeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssetModelCompositeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_asset_property, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssetProperty"
        o.http_method = "PUT"
        o.http_request_uri = "/assets/{assetId}/properties/{propertyId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAssetPropertyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_computation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComputationModel"
        o.http_method = "POST"
        o.http_request_uri = "/computation-models/{computationModelId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateComputationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComputationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDashboard"
        o.http_method = "PUT"
        o.http_request_uri = "/dashboards/{dashboardId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_dataset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataset"
        o.http_method = "PUT"
        o.http_request_uri = "/datasets/{datasetId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateDatasetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatasetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/20200301/gateways/{gatewayId}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_gateway_capability_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayCapabilityConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/20200301/gateways/{gatewayId}/capability"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayCapabilityConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayCapabilityConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceName}/pipelines/{pipelineName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdatePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_portal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePortal"
        o.http_method = "PUT"
        o.http_request_uri = "/portals/{portalId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdatePortalRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePortalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "PUT"
        o.http_request_uri = "/projects/{projectId}"
        o.endpoint_pattern = {
          "hostPrefix" => "monitor.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTask"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceName}/tasks/{taskName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
      end)

      api.add_operation(:update_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspace"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceName}"
        o.endpoint_pattern = {
          "hostPrefix" => "api.",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictingOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)
    end

  end
end
