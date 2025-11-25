# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudWatchLogs
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPolicy = Shapes::StringShape.new(name: 'AccessPolicy')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIds = Shapes::ListShape.new(name: 'AccountIds')
    AccountPolicies = Shapes::ListShape.new(name: 'AccountPolicies')
    AccountPolicy = Shapes::StructureShape.new(name: 'AccountPolicy')
    AccountPolicyDocument = Shapes::StringShape.new(name: 'AccountPolicyDocument')
    ActionStatus = Shapes::StringShape.new(name: 'ActionStatus')
    AddKeyEntries = Shapes::ListShape.new(name: 'AddKeyEntries')
    AddKeyEntry = Shapes::StructureShape.new(name: 'AddKeyEntry')
    AddKeyValue = Shapes::StringShape.new(name: 'AddKeyValue')
    AddKeys = Shapes::StructureShape.new(name: 'AddKeys')
    AllowedActionForAllowVendedLogsDeliveryForResource = Shapes::StringShape.new(name: 'AllowedActionForAllowVendedLogsDeliveryForResource')
    AllowedFieldDelimiters = Shapes::ListShape.new(name: 'AllowedFieldDelimiters')
    AllowedFields = Shapes::ListShape.new(name: 'AllowedFields')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Anomalies = Shapes::ListShape.new(name: 'Anomalies')
    Anomaly = Shapes::StructureShape.new(name: 'Anomaly')
    AnomalyDetector = Shapes::StructureShape.new(name: 'AnomalyDetector')
    AnomalyDetectorArn = Shapes::StringShape.new(name: 'AnomalyDetectorArn')
    AnomalyDetectorStatus = Shapes::StringShape.new(name: 'AnomalyDetectorStatus')
    AnomalyDetectors = Shapes::ListShape.new(name: 'AnomalyDetectors')
    AnomalyId = Shapes::StringShape.new(name: 'AnomalyId')
    AnomalyVisibilityTime = Shapes::IntegerShape.new(name: 'AnomalyVisibilityTime')
    ApplyOnTransformedLogs = Shapes::BooleanShape.new(name: 'ApplyOnTransformedLogs')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateKmsKeyRequest = Shapes::StructureShape.new(name: 'AssociateKmsKeyRequest')
    Baseline = Shapes::BooleanShape.new(name: 'Baseline')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CSV = Shapes::StructureShape.new(name: 'CSV')
    CancelExportTaskRequest = Shapes::StructureShape.new(name: 'CancelExportTaskRequest')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CollectionRetentionDays = Shapes::IntegerShape.new(name: 'CollectionRetentionDays')
    Column = Shapes::StringShape.new(name: 'Column')
    Columns = Shapes::ListShape.new(name: 'Columns')
    ConfigurationTemplate = Shapes::StructureShape.new(name: 'ConfigurationTemplate')
    ConfigurationTemplateDeliveryConfigValues = Shapes::StructureShape.new(name: 'ConfigurationTemplateDeliveryConfigValues')
    ConfigurationTemplates = Shapes::ListShape.new(name: 'ConfigurationTemplates')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CopyValue = Shapes::StructureShape.new(name: 'CopyValue')
    CopyValueEntries = Shapes::ListShape.new(name: 'CopyValueEntries')
    CopyValueEntry = Shapes::StructureShape.new(name: 'CopyValueEntry')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateDeliveryRequest = Shapes::StructureShape.new(name: 'CreateDeliveryRequest')
    CreateDeliveryResponse = Shapes::StructureShape.new(name: 'CreateDeliveryResponse')
    CreateExportTaskRequest = Shapes::StructureShape.new(name: 'CreateExportTaskRequest')
    CreateExportTaskResponse = Shapes::StructureShape.new(name: 'CreateExportTaskResponse')
    CreateLogAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'CreateLogAnomalyDetectorRequest')
    CreateLogAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'CreateLogAnomalyDetectorResponse')
    CreateLogGroupRequest = Shapes::StructureShape.new(name: 'CreateLogGroupRequest')
    CreateLogStreamRequest = Shapes::StructureShape.new(name: 'CreateLogStreamRequest')
    CreateScheduledQueryRequest = Shapes::StructureShape.new(name: 'CreateScheduledQueryRequest')
    CreateScheduledQueryResponse = Shapes::StructureShape.new(name: 'CreateScheduledQueryResponse')
    DashboardViewerPrincipals = Shapes::ListShape.new(name: 'DashboardViewerPrincipals')
    Data = Shapes::BlobShape.new(name: 'Data')
    DataAlreadyAcceptedException = Shapes::StructureShape.new(name: 'DataAlreadyAcceptedException')
    DataProtectionPolicyDocument = Shapes::StringShape.new(name: 'DataProtectionPolicyDocument')
    DataProtectionStatus = Shapes::StringShape.new(name: 'DataProtectionStatus')
    DateTimeConverter = Shapes::StructureShape.new(name: 'DateTimeConverter')
    Days = Shapes::IntegerShape.new(name: 'Days')
    DefaultValue = Shapes::FloatShape.new(name: 'DefaultValue')
    DeleteAccountPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAccountPolicyRequest')
    DeleteDataProtectionPolicyRequest = Shapes::StructureShape.new(name: 'DeleteDataProtectionPolicyRequest')
    DeleteDeliveryDestinationPolicyRequest = Shapes::StructureShape.new(name: 'DeleteDeliveryDestinationPolicyRequest')
    DeleteDeliveryDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDeliveryDestinationRequest')
    DeleteDeliveryRequest = Shapes::StructureShape.new(name: 'DeleteDeliveryRequest')
    DeleteDeliverySourceRequest = Shapes::StructureShape.new(name: 'DeleteDeliverySourceRequest')
    DeleteDestinationRequest = Shapes::StructureShape.new(name: 'DeleteDestinationRequest')
    DeleteIndexPolicyRequest = Shapes::StructureShape.new(name: 'DeleteIndexPolicyRequest')
    DeleteIndexPolicyResponse = Shapes::StructureShape.new(name: 'DeleteIndexPolicyResponse')
    DeleteIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteIntegrationResponse')
    DeleteKeys = Shapes::StructureShape.new(name: 'DeleteKeys')
    DeleteLogAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'DeleteLogAnomalyDetectorRequest')
    DeleteLogGroupRequest = Shapes::StructureShape.new(name: 'DeleteLogGroupRequest')
    DeleteLogStreamRequest = Shapes::StructureShape.new(name: 'DeleteLogStreamRequest')
    DeleteMetricFilterRequest = Shapes::StructureShape.new(name: 'DeleteMetricFilterRequest')
    DeleteQueryDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteQueryDefinitionRequest')
    DeleteQueryDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteQueryDefinitionResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteRetentionPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRetentionPolicyRequest')
    DeleteScheduledQueryRequest = Shapes::StructureShape.new(name: 'DeleteScheduledQueryRequest')
    DeleteScheduledQueryResponse = Shapes::StructureShape.new(name: 'DeleteScheduledQueryResponse')
    DeleteSubscriptionFilterRequest = Shapes::StructureShape.new(name: 'DeleteSubscriptionFilterRequest')
    DeleteTransformerRequest = Shapes::StructureShape.new(name: 'DeleteTransformerRequest')
    DeleteWithKeys = Shapes::ListShape.new(name: 'DeleteWithKeys')
    DeletionProtectionEnabled = Shapes::BooleanShape.new(name: 'DeletionProtectionEnabled')
    Delimiter = Shapes::StringShape.new(name: 'Delimiter')
    Deliveries = Shapes::ListShape.new(name: 'Deliveries')
    Delivery = Shapes::StructureShape.new(name: 'Delivery')
    DeliveryDestination = Shapes::StructureShape.new(name: 'DeliveryDestination')
    DeliveryDestinationConfiguration = Shapes::StructureShape.new(name: 'DeliveryDestinationConfiguration')
    DeliveryDestinationName = Shapes::StringShape.new(name: 'DeliveryDestinationName')
    DeliveryDestinationPolicy = Shapes::StringShape.new(name: 'DeliveryDestinationPolicy')
    DeliveryDestinationType = Shapes::StringShape.new(name: 'DeliveryDestinationType')
    DeliveryDestinationTypes = Shapes::ListShape.new(name: 'DeliveryDestinationTypes')
    DeliveryDestinations = Shapes::ListShape.new(name: 'DeliveryDestinations')
    DeliveryId = Shapes::StringShape.new(name: 'DeliveryId')
    DeliverySource = Shapes::StructureShape.new(name: 'DeliverySource')
    DeliverySourceName = Shapes::StringShape.new(name: 'DeliverySourceName')
    DeliverySources = Shapes::ListShape.new(name: 'DeliverySources')
    DeliverySuffixPath = Shapes::StringShape.new(name: 'DeliverySuffixPath')
    Descending = Shapes::BooleanShape.new(name: 'Descending')
    DescribeAccountPoliciesRequest = Shapes::StructureShape.new(name: 'DescribeAccountPoliciesRequest')
    DescribeAccountPoliciesResponse = Shapes::StructureShape.new(name: 'DescribeAccountPoliciesResponse')
    DescribeConfigurationTemplatesRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationTemplatesRequest')
    DescribeConfigurationTemplatesResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationTemplatesResponse')
    DescribeDeliveriesRequest = Shapes::StructureShape.new(name: 'DescribeDeliveriesRequest')
    DescribeDeliveriesResponse = Shapes::StructureShape.new(name: 'DescribeDeliveriesResponse')
    DescribeDeliveryDestinationsRequest = Shapes::StructureShape.new(name: 'DescribeDeliveryDestinationsRequest')
    DescribeDeliveryDestinationsResponse = Shapes::StructureShape.new(name: 'DescribeDeliveryDestinationsResponse')
    DescribeDeliverySourcesRequest = Shapes::StructureShape.new(name: 'DescribeDeliverySourcesRequest')
    DescribeDeliverySourcesResponse = Shapes::StructureShape.new(name: 'DescribeDeliverySourcesResponse')
    DescribeDestinationsRequest = Shapes::StructureShape.new(name: 'DescribeDestinationsRequest')
    DescribeDestinationsResponse = Shapes::StructureShape.new(name: 'DescribeDestinationsResponse')
    DescribeExportTasksRequest = Shapes::StructureShape.new(name: 'DescribeExportTasksRequest')
    DescribeExportTasksResponse = Shapes::StructureShape.new(name: 'DescribeExportTasksResponse')
    DescribeFieldIndexesLogGroupIdentifiers = Shapes::ListShape.new(name: 'DescribeFieldIndexesLogGroupIdentifiers')
    DescribeFieldIndexesRequest = Shapes::StructureShape.new(name: 'DescribeFieldIndexesRequest')
    DescribeFieldIndexesResponse = Shapes::StructureShape.new(name: 'DescribeFieldIndexesResponse')
    DescribeIndexPoliciesLogGroupIdentifiers = Shapes::ListShape.new(name: 'DescribeIndexPoliciesLogGroupIdentifiers')
    DescribeIndexPoliciesRequest = Shapes::StructureShape.new(name: 'DescribeIndexPoliciesRequest')
    DescribeIndexPoliciesResponse = Shapes::StructureShape.new(name: 'DescribeIndexPoliciesResponse')
    DescribeLimit = Shapes::IntegerShape.new(name: 'DescribeLimit')
    DescribeLogGroupsLogGroupIdentifiers = Shapes::ListShape.new(name: 'DescribeLogGroupsLogGroupIdentifiers')
    DescribeLogGroupsRequest = Shapes::StructureShape.new(name: 'DescribeLogGroupsRequest')
    DescribeLogGroupsResponse = Shapes::StructureShape.new(name: 'DescribeLogGroupsResponse')
    DescribeLogStreamsRequest = Shapes::StructureShape.new(name: 'DescribeLogStreamsRequest')
    DescribeLogStreamsResponse = Shapes::StructureShape.new(name: 'DescribeLogStreamsResponse')
    DescribeMetricFiltersRequest = Shapes::StructureShape.new(name: 'DescribeMetricFiltersRequest')
    DescribeMetricFiltersResponse = Shapes::StructureShape.new(name: 'DescribeMetricFiltersResponse')
    DescribeQueriesMaxResults = Shapes::IntegerShape.new(name: 'DescribeQueriesMaxResults')
    DescribeQueriesRequest = Shapes::StructureShape.new(name: 'DescribeQueriesRequest')
    DescribeQueriesResponse = Shapes::StructureShape.new(name: 'DescribeQueriesResponse')
    DescribeQueryDefinitionsRequest = Shapes::StructureShape.new(name: 'DescribeQueryDefinitionsRequest')
    DescribeQueryDefinitionsResponse = Shapes::StructureShape.new(name: 'DescribeQueryDefinitionsResponse')
    DescribeResourcePoliciesRequest = Shapes::StructureShape.new(name: 'DescribeResourcePoliciesRequest')
    DescribeResourcePoliciesResponse = Shapes::StructureShape.new(name: 'DescribeResourcePoliciesResponse')
    DescribeSubscriptionFiltersRequest = Shapes::StructureShape.new(name: 'DescribeSubscriptionFiltersRequest')
    DescribeSubscriptionFiltersResponse = Shapes::StructureShape.new(name: 'DescribeSubscriptionFiltersResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DestinationArn = Shapes::StringShape.new(name: 'DestinationArn')
    DestinationConfiguration = Shapes::StructureShape.new(name: 'DestinationConfiguration')
    DestinationField = Shapes::StringShape.new(name: 'DestinationField')
    DestinationName = Shapes::StringShape.new(name: 'DestinationName')
    Destinations = Shapes::ListShape.new(name: 'Destinations')
    DetectorKmsKeyArn = Shapes::StringShape.new(name: 'DetectorKmsKeyArn')
    DetectorName = Shapes::StringShape.new(name: 'DetectorName')
    Dimensions = Shapes::MapShape.new(name: 'Dimensions')
    DimensionsKey = Shapes::StringShape.new(name: 'DimensionsKey')
    DimensionsValue = Shapes::StringShape.new(name: 'DimensionsValue')
    DisassociateKmsKeyRequest = Shapes::StructureShape.new(name: 'DisassociateKmsKeyRequest')
    Distribution = Shapes::StringShape.new(name: 'Distribution')
    DynamicTokenPosition = Shapes::IntegerShape.new(name: 'DynamicTokenPosition')
    EmitSystemFields = Shapes::ListShape.new(name: 'EmitSystemFields')
    EncryptionKey = Shapes::StringShape.new(name: 'EncryptionKey')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityAttributes = Shapes::MapShape.new(name: 'EntityAttributes')
    EntityAttributesKey = Shapes::StringShape.new(name: 'EntityAttributesKey')
    EntityAttributesValue = Shapes::StringShape.new(name: 'EntityAttributesValue')
    EntityKeyAttributes = Shapes::MapShape.new(name: 'EntityKeyAttributes')
    EntityKeyAttributesKey = Shapes::StringShape.new(name: 'EntityKeyAttributesKey')
    EntityKeyAttributesValue = Shapes::StringShape.new(name: 'EntityKeyAttributesValue')
    EntityRejectionErrorType = Shapes::StringShape.new(name: 'EntityRejectionErrorType')
    Enumerations = Shapes::MapShape.new(name: 'Enumerations')
    EpochMillis = Shapes::IntegerShape.new(name: 'EpochMillis')
    EvaluationFrequency = Shapes::StringShape.new(name: 'EvaluationFrequency')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventMessage = Shapes::StringShape.new(name: 'EventMessage')
    EventNumber = Shapes::IntegerShape.new(name: 'EventNumber')
    EventSource = Shapes::StringShape.new(name: 'EventSource')
    EventsLimit = Shapes::IntegerShape.new(name: 'EventsLimit')
    ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
    ExecutionStatusList = Shapes::ListShape.new(name: 'ExecutionStatusList')
    ExpectedRevisionId = Shapes::StringShape.new(name: 'ExpectedRevisionId')
    ExportDestinationBucket = Shapes::StringShape.new(name: 'ExportDestinationBucket')
    ExportDestinationPrefix = Shapes::StringShape.new(name: 'ExportDestinationPrefix')
    ExportTask = Shapes::StructureShape.new(name: 'ExportTask')
    ExportTaskExecutionInfo = Shapes::StructureShape.new(name: 'ExportTaskExecutionInfo')
    ExportTaskId = Shapes::StringShape.new(name: 'ExportTaskId')
    ExportTaskName = Shapes::StringShape.new(name: 'ExportTaskName')
    ExportTaskStatus = Shapes::StructureShape.new(name: 'ExportTaskStatus')
    ExportTaskStatusCode = Shapes::StringShape.new(name: 'ExportTaskStatusCode')
    ExportTaskStatusMessage = Shapes::StringShape.new(name: 'ExportTaskStatusMessage')
    ExportTasks = Shapes::ListShape.new(name: 'ExportTasks')
    ExtractedValues = Shapes::MapShape.new(name: 'ExtractedValues')
    Field = Shapes::StringShape.new(name: 'Field')
    FieldDelimiter = Shapes::StringShape.new(name: 'FieldDelimiter')
    FieldHeader = Shapes::StringShape.new(name: 'FieldHeader')
    FieldIndex = Shapes::StructureShape.new(name: 'FieldIndex')
    FieldIndexName = Shapes::StringShape.new(name: 'FieldIndexName')
    FieldIndexes = Shapes::ListShape.new(name: 'FieldIndexes')
    FieldSelectionCriteria = Shapes::StringShape.new(name: 'FieldSelectionCriteria')
    FieldsData = Shapes::StructureShape.new(name: 'FieldsData')
    FilterCount = Shapes::IntegerShape.new(name: 'FilterCount')
    FilterLogEventsRequest = Shapes::StructureShape.new(name: 'FilterLogEventsRequest')
    FilterLogEventsResponse = Shapes::StructureShape.new(name: 'FilterLogEventsResponse')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterPattern = Shapes::StringShape.new(name: 'FilterPattern')
    FilteredLogEvent = Shapes::StructureShape.new(name: 'FilteredLogEvent')
    FilteredLogEvents = Shapes::ListShape.new(name: 'FilteredLogEvents')
    Flatten = Shapes::BooleanShape.new(name: 'Flatten')
    FlattenedElement = Shapes::StringShape.new(name: 'FlattenedElement')
    Force = Shapes::BooleanShape.new(name: 'Force')
    ForceUpdate = Shapes::BooleanShape.new(name: 'ForceUpdate')
    FromKey = Shapes::StringShape.new(name: 'FromKey')
    GetDataProtectionPolicyRequest = Shapes::StructureShape.new(name: 'GetDataProtectionPolicyRequest')
    GetDataProtectionPolicyResponse = Shapes::StructureShape.new(name: 'GetDataProtectionPolicyResponse')
    GetDeliveryDestinationPolicyRequest = Shapes::StructureShape.new(name: 'GetDeliveryDestinationPolicyRequest')
    GetDeliveryDestinationPolicyResponse = Shapes::StructureShape.new(name: 'GetDeliveryDestinationPolicyResponse')
    GetDeliveryDestinationRequest = Shapes::StructureShape.new(name: 'GetDeliveryDestinationRequest')
    GetDeliveryDestinationResponse = Shapes::StructureShape.new(name: 'GetDeliveryDestinationResponse')
    GetDeliveryRequest = Shapes::StructureShape.new(name: 'GetDeliveryRequest')
    GetDeliveryResponse = Shapes::StructureShape.new(name: 'GetDeliveryResponse')
    GetDeliverySourceRequest = Shapes::StructureShape.new(name: 'GetDeliverySourceRequest')
    GetDeliverySourceResponse = Shapes::StructureShape.new(name: 'GetDeliverySourceResponse')
    GetIntegrationRequest = Shapes::StructureShape.new(name: 'GetIntegrationRequest')
    GetIntegrationResponse = Shapes::StructureShape.new(name: 'GetIntegrationResponse')
    GetLogAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'GetLogAnomalyDetectorRequest')
    GetLogAnomalyDetectorResponse = Shapes::StructureShape.new(name: 'GetLogAnomalyDetectorResponse')
    GetLogEventsRequest = Shapes::StructureShape.new(name: 'GetLogEventsRequest')
    GetLogEventsResponse = Shapes::StructureShape.new(name: 'GetLogEventsResponse')
    GetLogGroupFieldsRequest = Shapes::StructureShape.new(name: 'GetLogGroupFieldsRequest')
    GetLogGroupFieldsResponse = Shapes::StructureShape.new(name: 'GetLogGroupFieldsResponse')
    GetLogObjectRequest = Shapes::StructureShape.new(name: 'GetLogObjectRequest')
    GetLogObjectResponse = Shapes::StructureShape.new(name: 'GetLogObjectResponse')
    GetLogObjectResponseStream = Shapes::StructureShape.new(name: 'GetLogObjectResponseStream')
    GetLogRecordRequest = Shapes::StructureShape.new(name: 'GetLogRecordRequest')
    GetLogRecordResponse = Shapes::StructureShape.new(name: 'GetLogRecordResponse')
    GetQueryResultsRequest = Shapes::StructureShape.new(name: 'GetQueryResultsRequest')
    GetQueryResultsResponse = Shapes::StructureShape.new(name: 'GetQueryResultsResponse')
    GetScheduledQueryHistoryMaxResults = Shapes::IntegerShape.new(name: 'GetScheduledQueryHistoryMaxResults')
    GetScheduledQueryHistoryRequest = Shapes::StructureShape.new(name: 'GetScheduledQueryHistoryRequest')
    GetScheduledQueryHistoryResponse = Shapes::StructureShape.new(name: 'GetScheduledQueryHistoryResponse')
    GetScheduledQueryRequest = Shapes::StructureShape.new(name: 'GetScheduledQueryRequest')
    GetScheduledQueryResponse = Shapes::StructureShape.new(name: 'GetScheduledQueryResponse')
    GetTransformerRequest = Shapes::StructureShape.new(name: 'GetTransformerRequest')
    GetTransformerResponse = Shapes::StructureShape.new(name: 'GetTransformerResponse')
    Grok = Shapes::StructureShape.new(name: 'Grok')
    GrokMatch = Shapes::StringShape.new(name: 'GrokMatch')
    Histogram = Shapes::MapShape.new(name: 'Histogram')
    IncludeLinkedAccounts = Shapes::BooleanShape.new(name: 'IncludeLinkedAccounts')
    IndexPolicies = Shapes::ListShape.new(name: 'IndexPolicies')
    IndexPolicy = Shapes::StructureShape.new(name: 'IndexPolicy')
    IndexSource = Shapes::StringShape.new(name: 'IndexSource')
    InferredTokenName = Shapes::StringShape.new(name: 'InferredTokenName')
    InheritedProperties = Shapes::ListShape.new(name: 'InheritedProperties')
    InheritedProperty = Shapes::StringShape.new(name: 'InheritedProperty')
    InputLogEvent = Shapes::StructureShape.new(name: 'InputLogEvent')
    InputLogEvents = Shapes::ListShape.new(name: 'InputLogEvents')
    InputLogStreamNames = Shapes::ListShape.new(name: 'InputLogStreamNames')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegrationDetails = Shapes::UnionShape.new(name: 'IntegrationDetails')
    IntegrationName = Shapes::StringShape.new(name: 'IntegrationName')
    IntegrationNamePrefix = Shapes::StringShape.new(name: 'IntegrationNamePrefix')
    IntegrationStatus = Shapes::StringShape.new(name: 'IntegrationStatus')
    IntegrationStatusMessage = Shapes::StringShape.new(name: 'IntegrationStatusMessage')
    IntegrationSummaries = Shapes::ListShape.new(name: 'IntegrationSummaries')
    IntegrationSummary = Shapes::StructureShape.new(name: 'IntegrationSummary')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    Interleaved = Shapes::BooleanShape.new(name: 'Interleaved')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternalStreamingException = Shapes::StructureShape.new(name: 'InternalStreamingException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidSequenceTokenException = Shapes::StructureShape.new(name: 'InvalidSequenceTokenException')
    IsSampled = Shapes::BooleanShape.new(name: 'IsSampled')
    Key = Shapes::StringShape.new(name: 'Key')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    KeyValueDelimiter = Shapes::StringShape.new(name: 'KeyValueDelimiter')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAnomaliesLimit = Shapes::IntegerShape.new(name: 'ListAnomaliesLimit')
    ListAnomaliesRequest = Shapes::StructureShape.new(name: 'ListAnomaliesRequest')
    ListAnomaliesResponse = Shapes::StructureShape.new(name: 'ListAnomaliesResponse')
    ListIntegrationsRequest = Shapes::StructureShape.new(name: 'ListIntegrationsRequest')
    ListIntegrationsResponse = Shapes::StructureShape.new(name: 'ListIntegrationsResponse')
    ListLimit = Shapes::IntegerShape.new(name: 'ListLimit')
    ListLogAnomalyDetectorsLimit = Shapes::IntegerShape.new(name: 'ListLogAnomalyDetectorsLimit')
    ListLogAnomalyDetectorsRequest = Shapes::StructureShape.new(name: 'ListLogAnomalyDetectorsRequest')
    ListLogAnomalyDetectorsResponse = Shapes::StructureShape.new(name: 'ListLogAnomalyDetectorsResponse')
    ListLogGroupsForQueryMaxResults = Shapes::IntegerShape.new(name: 'ListLogGroupsForQueryMaxResults')
    ListLogGroupsForQueryRequest = Shapes::StructureShape.new(name: 'ListLogGroupsForQueryRequest')
    ListLogGroupsForQueryResponse = Shapes::StructureShape.new(name: 'ListLogGroupsForQueryResponse')
    ListLogGroupsRequest = Shapes::StructureShape.new(name: 'ListLogGroupsRequest')
    ListLogGroupsResponse = Shapes::StructureShape.new(name: 'ListLogGroupsResponse')
    ListScheduledQueriesMaxResults = Shapes::IntegerShape.new(name: 'ListScheduledQueriesMaxResults')
    ListScheduledQueriesRequest = Shapes::StructureShape.new(name: 'ListScheduledQueriesRequest')
    ListScheduledQueriesResponse = Shapes::StructureShape.new(name: 'ListScheduledQueriesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTagsLogGroupRequest = Shapes::StructureShape.new(name: 'ListTagsLogGroupRequest')
    ListTagsLogGroupResponse = Shapes::StructureShape.new(name: 'ListTagsLogGroupResponse')
    ListToMap = Shapes::StructureShape.new(name: 'ListToMap')
    LiveTailSessionLogEvent = Shapes::StructureShape.new(name: 'LiveTailSessionLogEvent')
    LiveTailSessionMetadata = Shapes::StructureShape.new(name: 'LiveTailSessionMetadata')
    LiveTailSessionResults = Shapes::ListShape.new(name: 'LiveTailSessionResults')
    LiveTailSessionStart = Shapes::StructureShape.new(name: 'LiveTailSessionStart')
    LiveTailSessionUpdate = Shapes::StructureShape.new(name: 'LiveTailSessionUpdate')
    Locale = Shapes::StringShape.new(name: 'Locale')
    LogEvent = Shapes::StructureShape.new(name: 'LogEvent')
    LogEventIndex = Shapes::IntegerShape.new(name: 'LogEventIndex')
    LogGroup = Shapes::StructureShape.new(name: 'LogGroup')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    LogGroupArnList = Shapes::ListShape.new(name: 'LogGroupArnList')
    LogGroupClass = Shapes::StringShape.new(name: 'LogGroupClass')
    LogGroupField = Shapes::StructureShape.new(name: 'LogGroupField')
    LogGroupFieldList = Shapes::ListShape.new(name: 'LogGroupFieldList')
    LogGroupIdentifier = Shapes::StringShape.new(name: 'LogGroupIdentifier')
    LogGroupIdentifiers = Shapes::ListShape.new(name: 'LogGroupIdentifiers')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogGroupNamePattern = Shapes::StringShape.new(name: 'LogGroupNamePattern')
    LogGroupNameRegexPattern = Shapes::StringShape.new(name: 'LogGroupNameRegexPattern')
    LogGroupNames = Shapes::ListShape.new(name: 'LogGroupNames')
    LogGroupSummaries = Shapes::ListShape.new(name: 'LogGroupSummaries')
    LogGroupSummary = Shapes::StructureShape.new(name: 'LogGroupSummary')
    LogGroups = Shapes::ListShape.new(name: 'LogGroups')
    LogObjectPointer = Shapes::StringShape.new(name: 'LogObjectPointer')
    LogRecord = Shapes::MapShape.new(name: 'LogRecord')
    LogRecordPointer = Shapes::StringShape.new(name: 'LogRecordPointer')
    LogSamples = Shapes::ListShape.new(name: 'LogSamples')
    LogStream = Shapes::StructureShape.new(name: 'LogStream')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    LogStreamSearchedCompletely = Shapes::BooleanShape.new(name: 'LogStreamSearchedCompletely')
    LogStreams = Shapes::ListShape.new(name: 'LogStreams')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LogTypes = Shapes::ListShape.new(name: 'LogTypes')
    LowerCaseString = Shapes::StructureShape.new(name: 'LowerCaseString')
    LowerCaseStringWithKeys = Shapes::ListShape.new(name: 'LowerCaseStringWithKeys')
    MalformedQueryException = Shapes::StructureShape.new(name: 'MalformedQueryException')
    MappingVersion = Shapes::StringShape.new(name: 'MappingVersion')
    MatchPattern = Shapes::StringShape.new(name: 'MatchPattern')
    MatchPatterns = Shapes::ListShape.new(name: 'MatchPatterns')
    Message = Shapes::StringShape.new(name: 'Message')
    MetricFilter = Shapes::StructureShape.new(name: 'MetricFilter')
    MetricFilterMatchRecord = Shapes::StructureShape.new(name: 'MetricFilterMatchRecord')
    MetricFilterMatches = Shapes::ListShape.new(name: 'MetricFilterMatches')
    MetricFilters = Shapes::ListShape.new(name: 'MetricFilters')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricTransformation = Shapes::StructureShape.new(name: 'MetricTransformation')
    MetricTransformations = Shapes::ListShape.new(name: 'MetricTransformations')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    MoveKeyEntries = Shapes::ListShape.new(name: 'MoveKeyEntries')
    MoveKeyEntry = Shapes::StructureShape.new(name: 'MoveKeyEntry')
    MoveKeys = Shapes::StructureShape.new(name: 'MoveKeys')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonMatchValue = Shapes::StringShape.new(name: 'NonMatchValue')
    OCSFVersion = Shapes::StringShape.new(name: 'OCSFVersion')
    OpenSearchApplication = Shapes::StructureShape.new(name: 'OpenSearchApplication')
    OpenSearchApplicationEndpoint = Shapes::StringShape.new(name: 'OpenSearchApplicationEndpoint')
    OpenSearchApplicationId = Shapes::StringShape.new(name: 'OpenSearchApplicationId')
    OpenSearchCollection = Shapes::StructureShape.new(name: 'OpenSearchCollection')
    OpenSearchCollectionEndpoint = Shapes::StringShape.new(name: 'OpenSearchCollectionEndpoint')
    OpenSearchDataAccessPolicy = Shapes::StructureShape.new(name: 'OpenSearchDataAccessPolicy')
    OpenSearchDataSource = Shapes::StructureShape.new(name: 'OpenSearchDataSource')
    OpenSearchDataSourceName = Shapes::StringShape.new(name: 'OpenSearchDataSourceName')
    OpenSearchEncryptionPolicy = Shapes::StructureShape.new(name: 'OpenSearchEncryptionPolicy')
    OpenSearchIntegrationDetails = Shapes::StructureShape.new(name: 'OpenSearchIntegrationDetails')
    OpenSearchLifecyclePolicy = Shapes::StructureShape.new(name: 'OpenSearchLifecyclePolicy')
    OpenSearchNetworkPolicy = Shapes::StructureShape.new(name: 'OpenSearchNetworkPolicy')
    OpenSearchPolicyName = Shapes::StringShape.new(name: 'OpenSearchPolicyName')
    OpenSearchResourceConfig = Shapes::StructureShape.new(name: 'OpenSearchResourceConfig')
    OpenSearchResourceStatus = Shapes::StructureShape.new(name: 'OpenSearchResourceStatus')
    OpenSearchResourceStatusType = Shapes::StringShape.new(name: 'OpenSearchResourceStatusType')
    OpenSearchWorkspace = Shapes::StructureShape.new(name: 'OpenSearchWorkspace')
    OpenSearchWorkspaceId = Shapes::StringShape.new(name: 'OpenSearchWorkspaceId')
    OperationAbortedException = Shapes::StructureShape.new(name: 'OperationAbortedException')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    OutputFormats = Shapes::ListShape.new(name: 'OutputFormats')
    OutputLogEvent = Shapes::StructureShape.new(name: 'OutputLogEvent')
    OutputLogEvents = Shapes::ListShape.new(name: 'OutputLogEvents')
    OverwriteIfExists = Shapes::BooleanShape.new(name: 'OverwriteIfExists')
    ParseCloudfront = Shapes::StructureShape.new(name: 'ParseCloudfront')
    ParseJSON = Shapes::StructureShape.new(name: 'ParseJSON')
    ParseKeyValue = Shapes::StructureShape.new(name: 'ParseKeyValue')
    ParsePostgres = Shapes::StructureShape.new(name: 'ParsePostgres')
    ParseRoute53 = Shapes::StructureShape.new(name: 'ParseRoute53')
    ParseToOCSF = Shapes::StructureShape.new(name: 'ParseToOCSF')
    ParseVPC = Shapes::StructureShape.new(name: 'ParseVPC')
    ParseWAF = Shapes::StructureShape.new(name: 'ParseWAF')
    ParserFieldDelimiter = Shapes::StringShape.new(name: 'ParserFieldDelimiter')
    PatternId = Shapes::StringShape.new(name: 'PatternId')
    PatternRegex = Shapes::StringShape.new(name: 'PatternRegex')
    PatternString = Shapes::StringShape.new(name: 'PatternString')
    PatternToken = Shapes::StructureShape.new(name: 'PatternToken')
    PatternTokens = Shapes::ListShape.new(name: 'PatternTokens')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyScope = Shapes::StringShape.new(name: 'PolicyScope')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    Priority = Shapes::StringShape.new(name: 'Priority')
    Processor = Shapes::StructureShape.new(name: 'Processor')
    Processors = Shapes::ListShape.new(name: 'Processors')
    PutAccountPolicyRequest = Shapes::StructureShape.new(name: 'PutAccountPolicyRequest')
    PutAccountPolicyResponse = Shapes::StructureShape.new(name: 'PutAccountPolicyResponse')
    PutDataProtectionPolicyRequest = Shapes::StructureShape.new(name: 'PutDataProtectionPolicyRequest')
    PutDataProtectionPolicyResponse = Shapes::StructureShape.new(name: 'PutDataProtectionPolicyResponse')
    PutDeliveryDestinationPolicyRequest = Shapes::StructureShape.new(name: 'PutDeliveryDestinationPolicyRequest')
    PutDeliveryDestinationPolicyResponse = Shapes::StructureShape.new(name: 'PutDeliveryDestinationPolicyResponse')
    PutDeliveryDestinationRequest = Shapes::StructureShape.new(name: 'PutDeliveryDestinationRequest')
    PutDeliveryDestinationResponse = Shapes::StructureShape.new(name: 'PutDeliveryDestinationResponse')
    PutDeliverySourceRequest = Shapes::StructureShape.new(name: 'PutDeliverySourceRequest')
    PutDeliverySourceResponse = Shapes::StructureShape.new(name: 'PutDeliverySourceResponse')
    PutDestinationPolicyRequest = Shapes::StructureShape.new(name: 'PutDestinationPolicyRequest')
    PutDestinationRequest = Shapes::StructureShape.new(name: 'PutDestinationRequest')
    PutDestinationResponse = Shapes::StructureShape.new(name: 'PutDestinationResponse')
    PutIndexPolicyRequest = Shapes::StructureShape.new(name: 'PutIndexPolicyRequest')
    PutIndexPolicyResponse = Shapes::StructureShape.new(name: 'PutIndexPolicyResponse')
    PutIntegrationRequest = Shapes::StructureShape.new(name: 'PutIntegrationRequest')
    PutIntegrationResponse = Shapes::StructureShape.new(name: 'PutIntegrationResponse')
    PutLogEventsRequest = Shapes::StructureShape.new(name: 'PutLogEventsRequest')
    PutLogEventsResponse = Shapes::StructureShape.new(name: 'PutLogEventsResponse')
    PutLogGroupDeletionProtectionRequest = Shapes::StructureShape.new(name: 'PutLogGroupDeletionProtectionRequest')
    PutMetricFilterRequest = Shapes::StructureShape.new(name: 'PutMetricFilterRequest')
    PutQueryDefinitionRequest = Shapes::StructureShape.new(name: 'PutQueryDefinitionRequest')
    PutQueryDefinitionResponse = Shapes::StructureShape.new(name: 'PutQueryDefinitionResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    PutRetentionPolicyRequest = Shapes::StructureShape.new(name: 'PutRetentionPolicyRequest')
    PutSubscriptionFilterRequest = Shapes::StructureShape.new(name: 'PutSubscriptionFilterRequest')
    PutTransformerRequest = Shapes::StructureShape.new(name: 'PutTransformerRequest')
    QueryCharOffset = Shapes::IntegerShape.new(name: 'QueryCharOffset')
    QueryCompileError = Shapes::StructureShape.new(name: 'QueryCompileError')
    QueryCompileErrorLocation = Shapes::StructureShape.new(name: 'QueryCompileErrorLocation')
    QueryDefinition = Shapes::StructureShape.new(name: 'QueryDefinition')
    QueryDefinitionList = Shapes::ListShape.new(name: 'QueryDefinitionList')
    QueryDefinitionName = Shapes::StringShape.new(name: 'QueryDefinitionName')
    QueryDefinitionString = Shapes::StringShape.new(name: 'QueryDefinitionString')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryInfo = Shapes::StructureShape.new(name: 'QueryInfo')
    QueryInfoList = Shapes::ListShape.new(name: 'QueryInfoList')
    QueryLanguage = Shapes::StringShape.new(name: 'QueryLanguage')
    QueryListMaxResults = Shapes::IntegerShape.new(name: 'QueryListMaxResults')
    QueryResults = Shapes::ListShape.new(name: 'QueryResults')
    QueryStatistics = Shapes::StructureShape.new(name: 'QueryStatistics')
    QueryStatus = Shapes::StringShape.new(name: 'QueryStatus')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    QuoteCharacter = Shapes::StringShape.new(name: 'QuoteCharacter')
    RecordField = Shapes::StructureShape.new(name: 'RecordField')
    RecordFields = Shapes::ListShape.new(name: 'RecordFields')
    RejectedEntityInfo = Shapes::StructureShape.new(name: 'RejectedEntityInfo')
    RejectedLogEventsInfo = Shapes::StructureShape.new(name: 'RejectedLogEventsInfo')
    RenameKeyEntries = Shapes::ListShape.new(name: 'RenameKeyEntries')
    RenameKeyEntry = Shapes::StructureShape.new(name: 'RenameKeyEntry')
    RenameKeys = Shapes::StructureShape.new(name: 'RenameKeys')
    RenameTo = Shapes::StringShape.new(name: 'RenameTo')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceArns = Shapes::ListShape.new(name: 'ResourceArns')
    ResourceConfig = Shapes::UnionShape.new(name: 'ResourceConfig')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicies = Shapes::ListShape.new(name: 'ResourcePolicies')
    ResourcePolicy = Shapes::StructureShape.new(name: 'ResourcePolicy')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    ResultField = Shapes::StructureShape.new(name: 'ResultField')
    ResultRows = Shapes::ListShape.new(name: 'ResultRows')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3DeliveryConfiguration = Shapes::StructureShape.new(name: 'S3DeliveryConfiguration')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleTimezone = Shapes::StringShape.new(name: 'ScheduleTimezone')
    ScheduledQueryDescription = Shapes::StringShape.new(name: 'ScheduledQueryDescription')
    ScheduledQueryDestination = Shapes::StructureShape.new(name: 'ScheduledQueryDestination')
    ScheduledQueryDestinationList = Shapes::ListShape.new(name: 'ScheduledQueryDestinationList')
    ScheduledQueryDestinationType = Shapes::StringShape.new(name: 'ScheduledQueryDestinationType')
    ScheduledQueryIdentifier = Shapes::StringShape.new(name: 'ScheduledQueryIdentifier')
    ScheduledQueryLogGroupIdentifiers = Shapes::ListShape.new(name: 'ScheduledQueryLogGroupIdentifiers')
    ScheduledQueryName = Shapes::StringShape.new(name: 'ScheduledQueryName')
    ScheduledQueryState = Shapes::StringShape.new(name: 'ScheduledQueryState')
    ScheduledQuerySummary = Shapes::StructureShape.new(name: 'ScheduledQuerySummary')
    ScheduledQuerySummaryList = Shapes::ListShape.new(name: 'ScheduledQuerySummaryList')
    Scope = Shapes::StringShape.new(name: 'Scope')
    SearchedLogStream = Shapes::StructureShape.new(name: 'SearchedLogStream')
    SearchedLogStreams = Shapes::ListShape.new(name: 'SearchedLogStreams')
    SelectionCriteria = Shapes::StringShape.new(name: 'SelectionCriteria')
    SequenceToken = Shapes::StringShape.new(name: 'SequenceToken')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionStreamingException = Shapes::StructureShape.new(name: 'SessionStreamingException')
    SessionTimeoutException = Shapes::StructureShape.new(name: 'SessionTimeoutException')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceTimezone = Shapes::StringShape.new(name: 'SourceTimezone')
    SplitString = Shapes::StructureShape.new(name: 'SplitString')
    SplitStringDelimiter = Shapes::StringShape.new(name: 'SplitStringDelimiter')
    SplitStringEntries = Shapes::ListShape.new(name: 'SplitStringEntries')
    SplitStringEntry = Shapes::StructureShape.new(name: 'SplitStringEntry')
    StandardUnit = Shapes::StringShape.new(name: 'StandardUnit')
    StartFromHead = Shapes::BooleanShape.new(name: 'StartFromHead')
    StartLiveTailLogGroupIdentifiers = Shapes::ListShape.new(name: 'StartLiveTailLogGroupIdentifiers')
    StartLiveTailRequest = Shapes::StructureShape.new(name: 'StartLiveTailRequest')
    StartLiveTailResponse = Shapes::StructureShape.new(name: 'StartLiveTailResponse')
    StartLiveTailResponseStream = Shapes::StructureShape.new(name: 'StartLiveTailResponseStream')
    StartQueryRequest = Shapes::StructureShape.new(name: 'StartQueryRequest')
    StartQueryResponse = Shapes::StructureShape.new(name: 'StartQueryResponse')
    StartTimeOffset = Shapes::IntegerShape.new(name: 'StartTimeOffset')
    State = Shapes::StringShape.new(name: 'State')
    StatsValue = Shapes::FloatShape.new(name: 'StatsValue')
    StopQueryRequest = Shapes::StructureShape.new(name: 'StopQueryRequest')
    StopQueryResponse = Shapes::StructureShape.new(name: 'StopQueryResponse')
    StoredBytes = Shapes::IntegerShape.new(name: 'StoredBytes')
    String = Shapes::StringShape.new(name: 'String')
    SubscriptionFilter = Shapes::StructureShape.new(name: 'SubscriptionFilter')
    SubscriptionFilters = Shapes::ListShape.new(name: 'SubscriptionFilters')
    SubstituteString = Shapes::StructureShape.new(name: 'SubstituteString')
    SubstituteStringEntries = Shapes::ListShape.new(name: 'SubstituteStringEntries')
    SubstituteStringEntry = Shapes::StructureShape.new(name: 'SubstituteStringEntry')
    Success = Shapes::BooleanShape.new(name: 'Success')
    SuppressionPeriod = Shapes::StructureShape.new(name: 'SuppressionPeriod')
    SuppressionState = Shapes::StringShape.new(name: 'SuppressionState')
    SuppressionType = Shapes::StringShape.new(name: 'SuppressionType')
    SuppressionUnit = Shapes::StringShape.new(name: 'SuppressionUnit')
    SystemField = Shapes::StringShape.new(name: 'SystemField')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagLogGroupRequest = Shapes::StructureShape.new(name: 'TagLogGroupRequest')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Target = Shapes::StringShape.new(name: 'Target')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TargetFormat = Shapes::StringShape.new(name: 'TargetFormat')
    TargetTimezone = Shapes::StringShape.new(name: 'TargetTimezone')
    TestEventMessages = Shapes::ListShape.new(name: 'TestEventMessages')
    TestMetricFilterRequest = Shapes::StructureShape.new(name: 'TestMetricFilterRequest')
    TestMetricFilterResponse = Shapes::StructureShape.new(name: 'TestMetricFilterResponse')
    TestTransformerRequest = Shapes::StructureShape.new(name: 'TestTransformerRequest')
    TestTransformerResponse = Shapes::StructureShape.new(name: 'TestTransformerResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Time = Shapes::StringShape.new(name: 'Time')
    Timestamp = Shapes::IntegerShape.new(name: 'Timestamp')
    ToKey = Shapes::StringShape.new(name: 'ToKey')
    Token = Shapes::StringShape.new(name: 'Token')
    TokenString = Shapes::StringShape.new(name: 'TokenString')
    TokenValue = Shapes::IntegerShape.new(name: 'TokenValue')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TransformedEventMessage = Shapes::StringShape.new(name: 'TransformedEventMessage')
    TransformedLogRecord = Shapes::StructureShape.new(name: 'TransformedLogRecord')
    TransformedLogs = Shapes::ListShape.new(name: 'TransformedLogs')
    TriggerHistoryRecord = Shapes::StructureShape.new(name: 'TriggerHistoryRecord')
    TriggerHistoryRecordList = Shapes::ListShape.new(name: 'TriggerHistoryRecordList')
    TrimString = Shapes::StructureShape.new(name: 'TrimString')
    TrimStringWithKeys = Shapes::ListShape.new(name: 'TrimStringWithKeys')
    Type = Shapes::StringShape.new(name: 'Type')
    TypeConverter = Shapes::StructureShape.new(name: 'TypeConverter')
    TypeConverterEntries = Shapes::ListShape.new(name: 'TypeConverterEntries')
    TypeConverterEntry = Shapes::StructureShape.new(name: 'TypeConverterEntry')
    Unmask = Shapes::BooleanShape.new(name: 'Unmask')
    UnrecognizedClientException = Shapes::StructureShape.new(name: 'UnrecognizedClientException')
    UntagLogGroupRequest = Shapes::StructureShape.new(name: 'UntagLogGroupRequest')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAnomalyRequest = Shapes::StructureShape.new(name: 'UpdateAnomalyRequest')
    UpdateDeliveryConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateDeliveryConfigurationRequest')
    UpdateDeliveryConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateDeliveryConfigurationResponse')
    UpdateLogAnomalyDetectorRequest = Shapes::StructureShape.new(name: 'UpdateLogAnomalyDetectorRequest')
    UpdateScheduledQueryRequest = Shapes::StructureShape.new(name: 'UpdateScheduledQueryRequest')
    UpdateScheduledQueryResponse = Shapes::StructureShape.new(name: 'UpdateScheduledQueryResponse')
    UpperCaseString = Shapes::StructureShape.new(name: 'UpperCaseString')
    UpperCaseStringWithKeys = Shapes::ListShape.new(name: 'UpperCaseStringWithKeys')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    ValueKey = Shapes::StringShape.new(name: 'ValueKey')
    WithKey = Shapes::StringShape.new(name: 'WithKey')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIds.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountPolicies.member = Shapes::ShapeRef.new(shape: AccountPolicy)

    AccountPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    AccountPolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: AccountPolicyDocument, location_name: "policyDocument"))
    AccountPolicy.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    AccountPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "policyType"))
    AccountPolicy.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    AccountPolicy.add_member(:selection_criteria, Shapes::ShapeRef.new(shape: SelectionCriteria, location_name: "selectionCriteria"))
    AccountPolicy.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AccountPolicy.struct_class = Types::AccountPolicy

    AddKeyEntries.member = Shapes::ShapeRef.new(shape: AddKeyEntry)

    AddKeyEntry.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    AddKeyEntry.add_member(:value, Shapes::ShapeRef.new(shape: AddKeyValue, required: true, location_name: "value"))
    AddKeyEntry.add_member(:overwrite_if_exists, Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: "overwriteIfExists"))
    AddKeyEntry.struct_class = Types::AddKeyEntry

    AddKeys.add_member(:entries, Shapes::ShapeRef.new(shape: AddKeyEntries, required: true, location_name: "entries"))
    AddKeys.struct_class = Types::AddKeys

    AllowedFieldDelimiters.member = Shapes::ShapeRef.new(shape: FieldDelimiter)

    AllowedFields.member = Shapes::ShapeRef.new(shape: RecordField)

    Anomalies.member = Shapes::ShapeRef.new(shape: Anomaly)

    Anomaly.add_member(:anomaly_id, Shapes::ShapeRef.new(shape: AnomalyId, required: true, location_name: "anomalyId"))
    Anomaly.add_member(:pattern_id, Shapes::ShapeRef.new(shape: PatternId, required: true, location_name: "patternId"))
    Anomaly.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, required: true, location_name: "anomalyDetectorArn"))
    Anomaly.add_member(:pattern_string, Shapes::ShapeRef.new(shape: PatternString, required: true, location_name: "patternString"))
    Anomaly.add_member(:pattern_regex, Shapes::ShapeRef.new(shape: PatternRegex, location_name: "patternRegex"))
    Anomaly.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "priority"))
    Anomaly.add_member(:first_seen, Shapes::ShapeRef.new(shape: EpochMillis, required: true, location_name: "firstSeen"))
    Anomaly.add_member(:last_seen, Shapes::ShapeRef.new(shape: EpochMillis, required: true, location_name: "lastSeen"))
    Anomaly.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    Anomaly.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "active"))
    Anomaly.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    Anomaly.add_member(:histogram, Shapes::ShapeRef.new(shape: Histogram, required: true, location_name: "histogram"))
    Anomaly.add_member(:log_samples, Shapes::ShapeRef.new(shape: LogSamples, required: true, location_name: "logSamples"))
    Anomaly.add_member(:pattern_tokens, Shapes::ShapeRef.new(shape: PatternTokens, required: true, location_name: "patternTokens"))
    Anomaly.add_member(:log_group_arn_list, Shapes::ShapeRef.new(shape: LogGroupArnList, required: true, location_name: "logGroupArnList"))
    Anomaly.add_member(:suppressed, Shapes::ShapeRef.new(shape: Boolean, location_name: "suppressed"))
    Anomaly.add_member(:suppressed_date, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "suppressedDate"))
    Anomaly.add_member(:suppressed_until, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "suppressedUntil"))
    Anomaly.add_member(:is_pattern_level_suppression, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPatternLevelSuppression"))
    Anomaly.struct_class = Types::Anomaly

    AnomalyDetector.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: "anomalyDetectorArn"))
    AnomalyDetector.add_member(:detector_name, Shapes::ShapeRef.new(shape: DetectorName, location_name: "detectorName"))
    AnomalyDetector.add_member(:log_group_arn_list, Shapes::ShapeRef.new(shape: LogGroupArnList, location_name: "logGroupArnList"))
    AnomalyDetector.add_member(:evaluation_frequency, Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: "evaluationFrequency"))
    AnomalyDetector.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    AnomalyDetector.add_member(:anomaly_detector_status, Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: "anomalyDetectorStatus"))
    AnomalyDetector.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    AnomalyDetector.add_member(:creation_time_stamp, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "creationTimeStamp"))
    AnomalyDetector.add_member(:last_modified_time_stamp, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "lastModifiedTimeStamp"))
    AnomalyDetector.add_member(:anomaly_visibility_time, Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    AnomalyDetector.struct_class = Types::AnomalyDetector

    AnomalyDetectors.member = Shapes::ShapeRef.new(shape: AnomalyDetector)

    AssociateKmsKeyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    AssociateKmsKeyRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, required: true, location_name: "kmsKeyId"))
    AssociateKmsKeyRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "resourceIdentifier"))
    AssociateKmsKeyRequest.struct_class = Types::AssociateKmsKeyRequest

    CSV.add_member(:quote_character, Shapes::ShapeRef.new(shape: QuoteCharacter, location_name: "quoteCharacter"))
    CSV.add_member(:delimiter, Shapes::ShapeRef.new(shape: Delimiter, location_name: "delimiter"))
    CSV.add_member(:columns, Shapes::ShapeRef.new(shape: Columns, location_name: "columns"))
    CSV.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    CSV.struct_class = Types::CSV

    CancelExportTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, required: true, location_name: "taskId"))
    CancelExportTaskRequest.struct_class = Types::CancelExportTaskRequest

    Columns.member = Shapes::ShapeRef.new(shape: Column)

    ConfigurationTemplate.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    ConfigurationTemplate.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, location_name: "logType"))
    ConfigurationTemplate.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConfigurationTemplate.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    ConfigurationTemplate.add_member(:default_delivery_config_values, Shapes::ShapeRef.new(shape: ConfigurationTemplateDeliveryConfigValues, location_name: "defaultDeliveryConfigValues"))
    ConfigurationTemplate.add_member(:allowed_fields, Shapes::ShapeRef.new(shape: AllowedFields, location_name: "allowedFields"))
    ConfigurationTemplate.add_member(:allowed_output_formats, Shapes::ShapeRef.new(shape: OutputFormats, location_name: "allowedOutputFormats"))
    ConfigurationTemplate.add_member(:allowed_action_for_allow_vended_logs_delivery_for_resource, Shapes::ShapeRef.new(shape: AllowedActionForAllowVendedLogsDeliveryForResource, location_name: "allowedActionForAllowVendedLogsDeliveryForResource"))
    ConfigurationTemplate.add_member(:allowed_field_delimiters, Shapes::ShapeRef.new(shape: AllowedFieldDelimiters, location_name: "allowedFieldDelimiters"))
    ConfigurationTemplate.add_member(:allowed_suffix_path_fields, Shapes::ShapeRef.new(shape: RecordFields, location_name: "allowedSuffixPathFields"))
    ConfigurationTemplate.struct_class = Types::ConfigurationTemplate

    ConfigurationTemplateDeliveryConfigValues.add_member(:record_fields, Shapes::ShapeRef.new(shape: RecordFields, location_name: "recordFields"))
    ConfigurationTemplateDeliveryConfigValues.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: "fieldDelimiter"))
    ConfigurationTemplateDeliveryConfigValues.add_member(:s3_delivery_configuration, Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    ConfigurationTemplateDeliveryConfigValues.struct_class = Types::ConfigurationTemplateDeliveryConfigValues

    ConfigurationTemplates.member = Shapes::ShapeRef.new(shape: ConfigurationTemplate)

    ConflictException.struct_class = Types::ConflictException

    CopyValue.add_member(:entries, Shapes::ShapeRef.new(shape: CopyValueEntries, required: true, location_name: "entries"))
    CopyValue.struct_class = Types::CopyValue

    CopyValueEntries.member = Shapes::ShapeRef.new(shape: CopyValueEntry)

    CopyValueEntry.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    CopyValueEntry.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "target"))
    CopyValueEntry.add_member(:overwrite_if_exists, Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: "overwriteIfExists"))
    CopyValueEntry.struct_class = Types::CopyValueEntry

    CreateDeliveryRequest.add_member(:delivery_source_name, Shapes::ShapeRef.new(shape: DeliverySourceName, required: true, location_name: "deliverySourceName"))
    CreateDeliveryRequest.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "deliveryDestinationArn"))
    CreateDeliveryRequest.add_member(:record_fields, Shapes::ShapeRef.new(shape: RecordFields, location_name: "recordFields"))
    CreateDeliveryRequest.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: "fieldDelimiter"))
    CreateDeliveryRequest.add_member(:s3_delivery_configuration, Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    CreateDeliveryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDeliveryRequest.struct_class = Types::CreateDeliveryRequest

    CreateDeliveryResponse.add_member(:delivery, Shapes::ShapeRef.new(shape: Delivery, location_name: "delivery"))
    CreateDeliveryResponse.struct_class = Types::CreateDeliveryResponse

    CreateExportTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: ExportTaskName, location_name: "taskName"))
    CreateExportTaskRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CreateExportTaskRequest.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamNamePrefix"))
    CreateExportTaskRequest.add_member(:from, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "from"))
    CreateExportTaskRequest.add_member(:to, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "to"))
    CreateExportTaskRequest.add_member(:destination, Shapes::ShapeRef.new(shape: ExportDestinationBucket, required: true, location_name: "destination"))
    CreateExportTaskRequest.add_member(:destination_prefix, Shapes::ShapeRef.new(shape: ExportDestinationPrefix, location_name: "destinationPrefix"))
    CreateExportTaskRequest.struct_class = Types::CreateExportTaskRequest

    CreateExportTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, location_name: "taskId"))
    CreateExportTaskResponse.struct_class = Types::CreateExportTaskResponse

    CreateLogAnomalyDetectorRequest.add_member(:log_group_arn_list, Shapes::ShapeRef.new(shape: LogGroupArnList, required: true, location_name: "logGroupArnList"))
    CreateLogAnomalyDetectorRequest.add_member(:detector_name, Shapes::ShapeRef.new(shape: DetectorName, location_name: "detectorName"))
    CreateLogAnomalyDetectorRequest.add_member(:evaluation_frequency, Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: "evaluationFrequency"))
    CreateLogAnomalyDetectorRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    CreateLogAnomalyDetectorRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: DetectorKmsKeyArn, location_name: "kmsKeyId"))
    CreateLogAnomalyDetectorRequest.add_member(:anomaly_visibility_time, Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    CreateLogAnomalyDetectorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLogAnomalyDetectorRequest.struct_class = Types::CreateLogAnomalyDetectorRequest

    CreateLogAnomalyDetectorResponse.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: "anomalyDetectorArn"))
    CreateLogAnomalyDetectorResponse.struct_class = Types::CreateLogAnomalyDetectorResponse

    CreateLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CreateLogGroupRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateLogGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateLogGroupRequest.add_member(:log_group_class, Shapes::ShapeRef.new(shape: LogGroupClass, location_name: "logGroupClass"))
    CreateLogGroupRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled"))
    CreateLogGroupRequest.struct_class = Types::CreateLogGroupRequest

    CreateLogStreamRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CreateLogStreamRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    CreateLogStreamRequest.struct_class = Types::CreateLogStreamRequest

    CreateScheduledQueryRequest.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, required: true, location_name: "name"))
    CreateScheduledQueryRequest.add_member(:description, Shapes::ShapeRef.new(shape: ScheduledQueryDescription, location_name: "description"))
    CreateScheduledQueryRequest.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, required: true, location_name: "queryLanguage"))
    CreateScheduledQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "queryString"))
    CreateScheduledQueryRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: ScheduledQueryLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    CreateScheduledQueryRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "scheduleExpression"))
    CreateScheduledQueryRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: ScheduleTimezone, location_name: "timezone"))
    CreateScheduledQueryRequest.add_member(:start_time_offset, Shapes::ShapeRef.new(shape: StartTimeOffset, location_name: "startTimeOffset"))
    CreateScheduledQueryRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    CreateScheduledQueryRequest.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleStartTime"))
    CreateScheduledQueryRequest.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleEndTime"))
    CreateScheduledQueryRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRoleArn"))
    CreateScheduledQueryRequest.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    CreateScheduledQueryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateScheduledQueryRequest.struct_class = Types::CreateScheduledQueryRequest

    CreateScheduledQueryResponse.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "scheduledQueryArn"))
    CreateScheduledQueryResponse.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    CreateScheduledQueryResponse.struct_class = Types::CreateScheduledQueryResponse

    DashboardViewerPrincipals.member = Shapes::ShapeRef.new(shape: Arn)

    DataAlreadyAcceptedException.add_member(:expected_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "expectedSequenceToken"))
    DataAlreadyAcceptedException.struct_class = Types::DataAlreadyAcceptedException

    DateTimeConverter.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    DateTimeConverter.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "target"))
    DateTimeConverter.add_member(:target_format, Shapes::ShapeRef.new(shape: TargetFormat, location_name: "targetFormat"))
    DateTimeConverter.add_member(:match_patterns, Shapes::ShapeRef.new(shape: MatchPatterns, required: true, location_name: "matchPatterns"))
    DateTimeConverter.add_member(:source_timezone, Shapes::ShapeRef.new(shape: SourceTimezone, location_name: "sourceTimezone"))
    DateTimeConverter.add_member(:target_timezone, Shapes::ShapeRef.new(shape: TargetTimezone, location_name: "targetTimezone"))
    DateTimeConverter.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    DateTimeConverter.struct_class = Types::DateTimeConverter

    DeleteAccountPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    DeleteAccountPolicyRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    DeleteAccountPolicyRequest.struct_class = Types::DeleteAccountPolicyRequest

    DeleteDataProtectionPolicyRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    DeleteDataProtectionPolicyRequest.struct_class = Types::DeleteDataProtectionPolicyRequest

    DeleteDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, required: true, location_name: "deliveryDestinationName"))
    DeleteDeliveryDestinationPolicyRequest.struct_class = Types::DeleteDeliveryDestinationPolicyRequest

    DeleteDeliveryDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, required: true, location_name: "name"))
    DeleteDeliveryDestinationRequest.struct_class = Types::DeleteDeliveryDestinationRequest

    DeleteDeliveryRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeliveryId, required: true, location_name: "id"))
    DeleteDeliveryRequest.struct_class = Types::DeleteDeliveryRequest

    DeleteDeliverySourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeliverySourceName, required: true, location_name: "name"))
    DeleteDeliverySourceRequest.struct_class = Types::DeleteDeliverySourceRequest

    DeleteDestinationRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "destinationName"))
    DeleteDestinationRequest.struct_class = Types::DeleteDestinationRequest

    DeleteIndexPolicyRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    DeleteIndexPolicyRequest.struct_class = Types::DeleteIndexPolicyRequest

    DeleteIndexPolicyResponse.struct_class = Types::DeleteIndexPolicyResponse

    DeleteIntegrationRequest.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "integrationName"))
    DeleteIntegrationRequest.add_member(:force, Shapes::ShapeRef.new(shape: Force, location_name: "force"))
    DeleteIntegrationRequest.struct_class = Types::DeleteIntegrationRequest

    DeleteIntegrationResponse.struct_class = Types::DeleteIntegrationResponse

    DeleteKeys.add_member(:with_keys, Shapes::ShapeRef.new(shape: DeleteWithKeys, required: true, location_name: "withKeys"))
    DeleteKeys.struct_class = Types::DeleteKeys

    DeleteLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, required: true, location_name: "anomalyDetectorArn"))
    DeleteLogAnomalyDetectorRequest.struct_class = Types::DeleteLogAnomalyDetectorRequest

    DeleteLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteLogGroupRequest.struct_class = Types::DeleteLogGroupRequest

    DeleteLogStreamRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteLogStreamRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    DeleteLogStreamRequest.struct_class = Types::DeleteLogStreamRequest

    DeleteMetricFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteMetricFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    DeleteMetricFilterRequest.struct_class = Types::DeleteMetricFilterRequest

    DeleteQueryDefinitionRequest.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryDefinitionId"))
    DeleteQueryDefinitionRequest.struct_class = Types::DeleteQueryDefinitionRequest

    DeleteQueryDefinitionResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "success"))
    DeleteQueryDefinitionResponse.struct_class = Types::DeleteQueryDefinitionResponse

    DeleteResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    DeleteResourcePolicyRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: "expectedRevisionId"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteRetentionPolicyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteRetentionPolicyRequest.struct_class = Types::DeleteRetentionPolicyRequest

    DeleteScheduledQueryRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ScheduledQueryIdentifier, required: true, location_name: "identifier"))
    DeleteScheduledQueryRequest.struct_class = Types::DeleteScheduledQueryRequest

    DeleteScheduledQueryResponse.struct_class = Types::DeleteScheduledQueryResponse

    DeleteSubscriptionFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DeleteSubscriptionFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    DeleteSubscriptionFilterRequest.struct_class = Types::DeleteSubscriptionFilterRequest

    DeleteTransformerRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    DeleteTransformerRequest.struct_class = Types::DeleteTransformerRequest

    DeleteWithKeys.member = Shapes::ShapeRef.new(shape: WithKey)

    Deliveries.member = Shapes::ShapeRef.new(shape: Delivery)

    Delivery.add_member(:id, Shapes::ShapeRef.new(shape: DeliveryId, location_name: "id"))
    Delivery.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Delivery.add_member(:delivery_source_name, Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: "deliverySourceName"))
    Delivery.add_member(:delivery_destination_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "deliveryDestinationArn"))
    Delivery.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    Delivery.add_member(:record_fields, Shapes::ShapeRef.new(shape: RecordFields, location_name: "recordFields"))
    Delivery.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: "fieldDelimiter"))
    Delivery.add_member(:s3_delivery_configuration, Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    Delivery.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Delivery.struct_class = Types::Delivery

    DeliveryDestination.add_member(:name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, location_name: "name"))
    DeliveryDestination.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DeliveryDestination.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    DeliveryDestination.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "outputFormat"))
    DeliveryDestination.add_member(:delivery_destination_configuration, Shapes::ShapeRef.new(shape: DeliveryDestinationConfiguration, location_name: "deliveryDestinationConfiguration"))
    DeliveryDestination.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeliveryDestination.struct_class = Types::DeliveryDestination

    DeliveryDestinationConfiguration.add_member(:destination_resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "destinationResourceArn"))
    DeliveryDestinationConfiguration.struct_class = Types::DeliveryDestinationConfiguration

    DeliveryDestinationTypes.member = Shapes::ShapeRef.new(shape: DeliveryDestinationType)

    DeliveryDestinations.member = Shapes::ShapeRef.new(shape: DeliveryDestination)

    DeliverySource.add_member(:name, Shapes::ShapeRef.new(shape: DeliverySourceName, location_name: "name"))
    DeliverySource.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DeliverySource.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArns, location_name: "resourceArns"))
    DeliverySource.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    DeliverySource.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, location_name: "logType"))
    DeliverySource.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeliverySource.struct_class = Types::DeliverySource

    DeliverySources.member = Shapes::ShapeRef.new(shape: DeliverySource)

    DescribeAccountPoliciesRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    DescribeAccountPoliciesRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    DescribeAccountPoliciesRequest.add_member(:account_identifiers, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIdentifiers"))
    DescribeAccountPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeAccountPoliciesRequest.struct_class = Types::DescribeAccountPoliciesRequest

    DescribeAccountPoliciesResponse.add_member(:account_policies, Shapes::ShapeRef.new(shape: AccountPolicies, location_name: "accountPolicies"))
    DescribeAccountPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeAccountPoliciesResponse.struct_class = Types::DescribeAccountPoliciesResponse

    DescribeConfigurationTemplatesRequest.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    DescribeConfigurationTemplatesRequest.add_member(:log_types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "logTypes"))
    DescribeConfigurationTemplatesRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "resourceTypes"))
    DescribeConfigurationTemplatesRequest.add_member(:delivery_destination_types, Shapes::ShapeRef.new(shape: DeliveryDestinationTypes, location_name: "deliveryDestinationTypes"))
    DescribeConfigurationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConfigurationTemplatesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeConfigurationTemplatesRequest.struct_class = Types::DescribeConfigurationTemplatesRequest

    DescribeConfigurationTemplatesResponse.add_member(:configuration_templates, Shapes::ShapeRef.new(shape: ConfigurationTemplates, location_name: "configurationTemplates"))
    DescribeConfigurationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeConfigurationTemplatesResponse.struct_class = Types::DescribeConfigurationTemplatesResponse

    DescribeDeliveriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDeliveriesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeDeliveriesRequest.struct_class = Types::DescribeDeliveriesRequest

    DescribeDeliveriesResponse.add_member(:deliveries, Shapes::ShapeRef.new(shape: Deliveries, location_name: "deliveries"))
    DescribeDeliveriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDeliveriesResponse.struct_class = Types::DescribeDeliveriesResponse

    DescribeDeliveryDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDeliveryDestinationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeDeliveryDestinationsRequest.struct_class = Types::DescribeDeliveryDestinationsRequest

    DescribeDeliveryDestinationsResponse.add_member(:delivery_destinations, Shapes::ShapeRef.new(shape: DeliveryDestinations, location_name: "deliveryDestinations"))
    DescribeDeliveryDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDeliveryDestinationsResponse.struct_class = Types::DescribeDeliveryDestinationsResponse

    DescribeDeliverySourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDeliverySourcesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeDeliverySourcesRequest.struct_class = Types::DescribeDeliverySourcesRequest

    DescribeDeliverySourcesResponse.add_member(:delivery_sources, Shapes::ShapeRef.new(shape: DeliverySources, location_name: "deliverySources"))
    DescribeDeliverySourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDeliverySourcesResponse.struct_class = Types::DescribeDeliverySourcesResponse

    DescribeDestinationsRequest.add_member(:destination_name_prefix, Shapes::ShapeRef.new(shape: DestinationName, location_name: "DestinationNamePrefix"))
    DescribeDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDestinationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeDestinationsRequest.struct_class = Types::DescribeDestinationsRequest

    DescribeDestinationsResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: Destinations, location_name: "destinations"))
    DescribeDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeDestinationsResponse.struct_class = Types::DescribeDestinationsResponse

    DescribeExportTasksRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, location_name: "taskId"))
    DescribeExportTasksRequest.add_member(:status_code, Shapes::ShapeRef.new(shape: ExportTaskStatusCode, location_name: "statusCode"))
    DescribeExportTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportTasksRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeExportTasksRequest.struct_class = Types::DescribeExportTasksRequest

    DescribeExportTasksResponse.add_member(:export_tasks, Shapes::ShapeRef.new(shape: ExportTasks, location_name: "exportTasks"))
    DescribeExportTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeExportTasksResponse.struct_class = Types::DescribeExportTasksResponse

    DescribeFieldIndexesLogGroupIdentifiers.member = Shapes::ShapeRef.new(shape: LogGroupIdentifier)

    DescribeFieldIndexesRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: DescribeFieldIndexesLogGroupIdentifiers, required: true, location_name: "logGroupIdentifiers"))
    DescribeFieldIndexesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeFieldIndexesRequest.struct_class = Types::DescribeFieldIndexesRequest

    DescribeFieldIndexesResponse.add_member(:field_indexes, Shapes::ShapeRef.new(shape: FieldIndexes, location_name: "fieldIndexes"))
    DescribeFieldIndexesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeFieldIndexesResponse.struct_class = Types::DescribeFieldIndexesResponse

    DescribeIndexPoliciesLogGroupIdentifiers.member = Shapes::ShapeRef.new(shape: LogGroupIdentifier)

    DescribeIndexPoliciesRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: DescribeIndexPoliciesLogGroupIdentifiers, required: true, location_name: "logGroupIdentifiers"))
    DescribeIndexPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeIndexPoliciesRequest.struct_class = Types::DescribeIndexPoliciesRequest

    DescribeIndexPoliciesResponse.add_member(:index_policies, Shapes::ShapeRef.new(shape: IndexPolicies, location_name: "indexPolicies"))
    DescribeIndexPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeIndexPoliciesResponse.struct_class = Types::DescribeIndexPoliciesResponse

    DescribeLogGroupsLogGroupIdentifiers.member = Shapes::ShapeRef.new(shape: LogGroupIdentifier)

    DescribeLogGroupsRequest.add_member(:account_identifiers, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIdentifiers"))
    DescribeLogGroupsRequest.add_member(:log_group_name_prefix, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupNamePrefix"))
    DescribeLogGroupsRequest.add_member(:log_group_name_pattern, Shapes::ShapeRef.new(shape: LogGroupNamePattern, location_name: "logGroupNamePattern"))
    DescribeLogGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeLogGroupsRequest.add_member(:include_linked_accounts, Shapes::ShapeRef.new(shape: IncludeLinkedAccounts, location_name: "includeLinkedAccounts"))
    DescribeLogGroupsRequest.add_member(:log_group_class, Shapes::ShapeRef.new(shape: LogGroupClass, location_name: "logGroupClass"))
    DescribeLogGroupsRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: DescribeLogGroupsLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    DescribeLogGroupsRequest.struct_class = Types::DescribeLogGroupsRequest

    DescribeLogGroupsResponse.add_member(:log_groups, Shapes::ShapeRef.new(shape: LogGroups, location_name: "logGroups"))
    DescribeLogGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogGroupsResponse.struct_class = Types::DescribeLogGroupsResponse

    DescribeLogStreamsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    DescribeLogStreamsRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    DescribeLogStreamsRequest.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamNamePrefix"))
    DescribeLogStreamsRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    DescribeLogStreamsRequest.add_member(:descending, Shapes::ShapeRef.new(shape: Descending, location_name: "descending"))
    DescribeLogStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogStreamsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeLogStreamsRequest.struct_class = Types::DescribeLogStreamsRequest

    DescribeLogStreamsResponse.add_member(:log_streams, Shapes::ShapeRef.new(shape: LogStreams, location_name: "logStreams"))
    DescribeLogStreamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeLogStreamsResponse.struct_class = Types::DescribeLogStreamsResponse

    DescribeMetricFiltersRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    DescribeMetricFiltersRequest.add_member(:filter_name_prefix, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterNamePrefix"))
    DescribeMetricFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeMetricFiltersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeMetricFiltersRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "metricName"))
    DescribeMetricFiltersRequest.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, location_name: "metricNamespace"))
    DescribeMetricFiltersRequest.struct_class = Types::DescribeMetricFiltersRequest

    DescribeMetricFiltersResponse.add_member(:metric_filters, Shapes::ShapeRef.new(shape: MetricFilters, location_name: "metricFilters"))
    DescribeMetricFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeMetricFiltersResponse.struct_class = Types::DescribeMetricFiltersResponse

    DescribeQueriesRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    DescribeQueriesRequest.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "status"))
    DescribeQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeQueriesMaxResults, location_name: "maxResults"))
    DescribeQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueriesRequest.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    DescribeQueriesRequest.struct_class = Types::DescribeQueriesRequest

    DescribeQueriesResponse.add_member(:queries, Shapes::ShapeRef.new(shape: QueryInfoList, location_name: "queries"))
    DescribeQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueriesResponse.struct_class = Types::DescribeQueriesResponse

    DescribeQueryDefinitionsRequest.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    DescribeQueryDefinitionsRequest.add_member(:query_definition_name_prefix, Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: "queryDefinitionNamePrefix"))
    DescribeQueryDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryListMaxResults, location_name: "maxResults"))
    DescribeQueryDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueryDefinitionsRequest.struct_class = Types::DescribeQueryDefinitionsRequest

    DescribeQueryDefinitionsResponse.add_member(:query_definitions, Shapes::ShapeRef.new(shape: QueryDefinitionList, location_name: "queryDefinitions"))
    DescribeQueryDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeQueryDefinitionsResponse.struct_class = Types::DescribeQueryDefinitionsResponse

    DescribeResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeResourcePoliciesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeResourcePoliciesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    DescribeResourcePoliciesRequest.add_member(:policy_scope, Shapes::ShapeRef.new(shape: PolicyScope, location_name: "policyScope"))
    DescribeResourcePoliciesRequest.struct_class = Types::DescribeResourcePoliciesRequest

    DescribeResourcePoliciesResponse.add_member(:resource_policies, Shapes::ShapeRef.new(shape: ResourcePolicies, location_name: "resourcePolicies"))
    DescribeResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeResourcePoliciesResponse.struct_class = Types::DescribeResourcePoliciesResponse

    DescribeSubscriptionFiltersRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    DescribeSubscriptionFiltersRequest.add_member(:filter_name_prefix, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterNamePrefix"))
    DescribeSubscriptionFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeSubscriptionFiltersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeLimit, location_name: "limit"))
    DescribeSubscriptionFiltersRequest.struct_class = Types::DescribeSubscriptionFiltersRequest

    DescribeSubscriptionFiltersResponse.add_member(:subscription_filters, Shapes::ShapeRef.new(shape: SubscriptionFilters, location_name: "subscriptionFilters"))
    DescribeSubscriptionFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeSubscriptionFiltersResponse.struct_class = Types::DescribeSubscriptionFiltersResponse

    Destination.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, location_name: "destinationName"))
    Destination.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, location_name: "targetArn"))
    Destination.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    Destination.add_member(:access_policy, Shapes::ShapeRef.new(shape: AccessPolicy, location_name: "accessPolicy"))
    Destination.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Destination.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Destination.struct_class = Types::Destination

    DestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3Configuration, required: true, location_name: "s3Configuration"))
    DestinationConfiguration.struct_class = Types::DestinationConfiguration

    Destinations.member = Shapes::ShapeRef.new(shape: Destination)

    Dimensions.key = Shapes::ShapeRef.new(shape: DimensionsKey)
    Dimensions.value = Shapes::ShapeRef.new(shape: DimensionsValue)

    DisassociateKmsKeyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    DisassociateKmsKeyRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "resourceIdentifier"))
    DisassociateKmsKeyRequest.struct_class = Types::DisassociateKmsKeyRequest

    EmitSystemFields.member = Shapes::ShapeRef.new(shape: SystemField)

    Entity.add_member(:key_attributes, Shapes::ShapeRef.new(shape: EntityKeyAttributes, location_name: "keyAttributes"))
    Entity.add_member(:attributes, Shapes::ShapeRef.new(shape: EntityAttributes, location_name: "attributes"))
    Entity.struct_class = Types::Entity

    EntityAttributes.key = Shapes::ShapeRef.new(shape: EntityAttributesKey)
    EntityAttributes.value = Shapes::ShapeRef.new(shape: EntityAttributesValue)

    EntityKeyAttributes.key = Shapes::ShapeRef.new(shape: EntityKeyAttributesKey)
    EntityKeyAttributes.value = Shapes::ShapeRef.new(shape: EntityKeyAttributesValue)

    Enumerations.key = Shapes::ShapeRef.new(shape: TokenString)
    Enumerations.value = Shapes::ShapeRef.new(shape: TokenValue)

    ExecutionStatusList.member = Shapes::ShapeRef.new(shape: ExecutionStatus)

    ExportTask.add_member(:task_id, Shapes::ShapeRef.new(shape: ExportTaskId, location_name: "taskId"))
    ExportTask.add_member(:task_name, Shapes::ShapeRef.new(shape: ExportTaskName, location_name: "taskName"))
    ExportTask.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    ExportTask.add_member(:from, Shapes::ShapeRef.new(shape: Timestamp, location_name: "from"))
    ExportTask.add_member(:to, Shapes::ShapeRef.new(shape: Timestamp, location_name: "to"))
    ExportTask.add_member(:destination, Shapes::ShapeRef.new(shape: ExportDestinationBucket, location_name: "destination"))
    ExportTask.add_member(:destination_prefix, Shapes::ShapeRef.new(shape: ExportDestinationPrefix, location_name: "destinationPrefix"))
    ExportTask.add_member(:status, Shapes::ShapeRef.new(shape: ExportTaskStatus, location_name: "status"))
    ExportTask.add_member(:execution_info, Shapes::ShapeRef.new(shape: ExportTaskExecutionInfo, location_name: "executionInfo"))
    ExportTask.struct_class = Types::ExportTask

    ExportTaskExecutionInfo.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ExportTaskExecutionInfo.add_member(:completion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completionTime"))
    ExportTaskExecutionInfo.struct_class = Types::ExportTaskExecutionInfo

    ExportTaskStatus.add_member(:code, Shapes::ShapeRef.new(shape: ExportTaskStatusCode, location_name: "code"))
    ExportTaskStatus.add_member(:message, Shapes::ShapeRef.new(shape: ExportTaskStatusMessage, location_name: "message"))
    ExportTaskStatus.struct_class = Types::ExportTaskStatus

    ExportTasks.member = Shapes::ShapeRef.new(shape: ExportTask)

    ExtractedValues.key = Shapes::ShapeRef.new(shape: Token)
    ExtractedValues.value = Shapes::ShapeRef.new(shape: Value)

    FieldIndex.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    FieldIndex.add_member(:field_index_name, Shapes::ShapeRef.new(shape: FieldIndexName, location_name: "fieldIndexName"))
    FieldIndex.add_member(:last_scan_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastScanTime"))
    FieldIndex.add_member(:first_event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstEventTime"))
    FieldIndex.add_member(:last_event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastEventTime"))
    FieldIndex.struct_class = Types::FieldIndex

    FieldIndexes.member = Shapes::ShapeRef.new(shape: FieldIndex)

    FieldsData.add_member(:data, Shapes::ShapeRef.new(shape: Data, location_name: "data"))
    FieldsData.struct_class = Types::FieldsData

    FilterLogEventsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    FilterLogEventsRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    FilterLogEventsRequest.add_member(:log_stream_names, Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: "logStreamNames"))
    FilterLogEventsRequest.add_member(:log_stream_name_prefix, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamNamePrefix"))
    FilterLogEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    FilterLogEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    FilterLogEventsRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    FilterLogEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    FilterLogEventsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: EventsLimit, location_name: "limit"))
    FilterLogEventsRequest.add_member(:interleaved, Shapes::ShapeRef.new(shape: Interleaved, deprecated: true, location_name: "interleaved", metadata: {"deprecatedMessage" => "Starting on June 17, 2019, this parameter will be ignored and the value will be assumed to be true. The response from this operation will always interleave events from multiple log streams within a log group."}))
    FilterLogEventsRequest.add_member(:unmask, Shapes::ShapeRef.new(shape: Unmask, location_name: "unmask"))
    FilterLogEventsRequest.struct_class = Types::FilterLogEventsRequest

    FilterLogEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: FilteredLogEvents, location_name: "events"))
    FilterLogEventsResponse.add_member(:searched_log_streams, Shapes::ShapeRef.new(shape: SearchedLogStreams, location_name: "searchedLogStreams"))
    FilterLogEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    FilterLogEventsResponse.struct_class = Types::FilterLogEventsResponse

    FilteredLogEvent.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    FilteredLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    FilteredLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "message"))
    FilteredLogEvent.add_member(:ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ingestionTime"))
    FilteredLogEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    FilteredLogEvent.struct_class = Types::FilteredLogEvent

    FilteredLogEvents.member = Shapes::ShapeRef.new(shape: FilteredLogEvent)

    GetDataProtectionPolicyRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    GetDataProtectionPolicyRequest.struct_class = Types::GetDataProtectionPolicyRequest

    GetDataProtectionPolicyResponse.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetDataProtectionPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: DataProtectionPolicyDocument, location_name: "policyDocument"))
    GetDataProtectionPolicyResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    GetDataProtectionPolicyResponse.struct_class = Types::GetDataProtectionPolicyResponse

    GetDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, required: true, location_name: "deliveryDestinationName"))
    GetDeliveryDestinationPolicyRequest.struct_class = Types::GetDeliveryDestinationPolicyRequest

    GetDeliveryDestinationPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "policy"))
    GetDeliveryDestinationPolicyResponse.struct_class = Types::GetDeliveryDestinationPolicyResponse

    GetDeliveryDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, required: true, location_name: "name"))
    GetDeliveryDestinationRequest.struct_class = Types::GetDeliveryDestinationRequest

    GetDeliveryDestinationResponse.add_member(:delivery_destination, Shapes::ShapeRef.new(shape: DeliveryDestination, location_name: "deliveryDestination"))
    GetDeliveryDestinationResponse.struct_class = Types::GetDeliveryDestinationResponse

    GetDeliveryRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeliveryId, required: true, location_name: "id"))
    GetDeliveryRequest.struct_class = Types::GetDeliveryRequest

    GetDeliveryResponse.add_member(:delivery, Shapes::ShapeRef.new(shape: Delivery, location_name: "delivery"))
    GetDeliveryResponse.struct_class = Types::GetDeliveryResponse

    GetDeliverySourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeliverySourceName, required: true, location_name: "name"))
    GetDeliverySourceRequest.struct_class = Types::GetDeliverySourceRequest

    GetDeliverySourceResponse.add_member(:delivery_source, Shapes::ShapeRef.new(shape: DeliverySource, location_name: "deliverySource"))
    GetDeliverySourceResponse.struct_class = Types::GetDeliverySourceResponse

    GetIntegrationRequest.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "integrationName"))
    GetIntegrationRequest.struct_class = Types::GetIntegrationRequest

    GetIntegrationResponse.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, location_name: "integrationName"))
    GetIntegrationResponse.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    GetIntegrationResponse.add_member(:integration_status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "integrationStatus"))
    GetIntegrationResponse.add_member(:integration_details, Shapes::ShapeRef.new(shape: IntegrationDetails, location_name: "integrationDetails"))
    GetIntegrationResponse.struct_class = Types::GetIntegrationResponse

    GetLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, required: true, location_name: "anomalyDetectorArn"))
    GetLogAnomalyDetectorRequest.struct_class = Types::GetLogAnomalyDetectorRequest

    GetLogAnomalyDetectorResponse.add_member(:detector_name, Shapes::ShapeRef.new(shape: DetectorName, location_name: "detectorName"))
    GetLogAnomalyDetectorResponse.add_member(:log_group_arn_list, Shapes::ShapeRef.new(shape: LogGroupArnList, location_name: "logGroupArnList"))
    GetLogAnomalyDetectorResponse.add_member(:evaluation_frequency, Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: "evaluationFrequency"))
    GetLogAnomalyDetectorResponse.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    GetLogAnomalyDetectorResponse.add_member(:anomaly_detector_status, Shapes::ShapeRef.new(shape: AnomalyDetectorStatus, location_name: "anomalyDetectorStatus"))
    GetLogAnomalyDetectorResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    GetLogAnomalyDetectorResponse.add_member(:creation_time_stamp, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "creationTimeStamp"))
    GetLogAnomalyDetectorResponse.add_member(:last_modified_time_stamp, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "lastModifiedTimeStamp"))
    GetLogAnomalyDetectorResponse.add_member(:anomaly_visibility_time, Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    GetLogAnomalyDetectorResponse.struct_class = Types::GetLogAnomalyDetectorResponse

    GetLogEventsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    GetLogEventsRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetLogEventsRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    GetLogEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    GetLogEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetLogEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetLogEventsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: EventsLimit, location_name: "limit"))
    GetLogEventsRequest.add_member(:start_from_head, Shapes::ShapeRef.new(shape: StartFromHead, location_name: "startFromHead"))
    GetLogEventsRequest.add_member(:unmask, Shapes::ShapeRef.new(shape: Unmask, location_name: "unmask"))
    GetLogEventsRequest.struct_class = Types::GetLogEventsRequest

    GetLogEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: OutputLogEvents, location_name: "events"))
    GetLogEventsResponse.add_member(:next_forward_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextForwardToken"))
    GetLogEventsResponse.add_member(:next_backward_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextBackwardToken"))
    GetLogEventsResponse.struct_class = Types::GetLogEventsResponse

    GetLogGroupFieldsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    GetLogGroupFieldsRequest.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "time"))
    GetLogGroupFieldsRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetLogGroupFieldsRequest.struct_class = Types::GetLogGroupFieldsRequest

    GetLogGroupFieldsResponse.add_member(:log_group_fields, Shapes::ShapeRef.new(shape: LogGroupFieldList, location_name: "logGroupFields"))
    GetLogGroupFieldsResponse.struct_class = Types::GetLogGroupFieldsResponse

    GetLogObjectRequest.add_member(:unmask, Shapes::ShapeRef.new(shape: Unmask, location_name: "unmask"))
    GetLogObjectRequest.add_member(:log_object_pointer, Shapes::ShapeRef.new(shape: LogObjectPointer, required: true, location_name: "logObjectPointer"))
    GetLogObjectRequest.struct_class = Types::GetLogObjectRequest

    GetLogObjectResponse.add_member(:field_stream, Shapes::ShapeRef.new(shape: GetLogObjectResponseStream, eventstream: true, location_name: "fieldStream"))
    GetLogObjectResponse.struct_class = Types::GetLogObjectResponse

    GetLogObjectResponseStream.add_member(:fields, Shapes::ShapeRef.new(shape: FieldsData, event: true, location_name: "fields"))
    GetLogObjectResponseStream.add_member(:internal_streaming_exception, Shapes::ShapeRef.new(shape: InternalStreamingException, location_name: "InternalStreamingException"))
    GetLogObjectResponseStream.struct_class = Types::GetLogObjectResponseStream

    GetLogRecordRequest.add_member(:log_record_pointer, Shapes::ShapeRef.new(shape: LogRecordPointer, required: true, location_name: "logRecordPointer"))
    GetLogRecordRequest.add_member(:unmask, Shapes::ShapeRef.new(shape: Unmask, location_name: "unmask"))
    GetLogRecordRequest.struct_class = Types::GetLogRecordRequest

    GetLogRecordResponse.add_member(:log_record, Shapes::ShapeRef.new(shape: LogRecord, location_name: "logRecord"))
    GetLogRecordResponse.struct_class = Types::GetLogRecordResponse

    GetQueryResultsRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    GetQueryResultsRequest.struct_class = Types::GetQueryResultsRequest

    GetQueryResultsResponse.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    GetQueryResultsResponse.add_member(:results, Shapes::ShapeRef.new(shape: QueryResults, location_name: "results"))
    GetQueryResultsResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: QueryStatistics, location_name: "statistics"))
    GetQueryResultsResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "status"))
    GetQueryResultsResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: EncryptionKey, location_name: "encryptionKey"))
    GetQueryResultsResponse.struct_class = Types::GetQueryResultsResponse

    GetScheduledQueryHistoryRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ScheduledQueryIdentifier, required: true, location_name: "identifier"))
    GetScheduledQueryHistoryRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    GetScheduledQueryHistoryRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    GetScheduledQueryHistoryRequest.add_member(:execution_statuses, Shapes::ShapeRef.new(shape: ExecutionStatusList, location_name: "executionStatuses"))
    GetScheduledQueryHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetScheduledQueryHistoryMaxResults, location_name: "maxResults"))
    GetScheduledQueryHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetScheduledQueryHistoryRequest.struct_class = Types::GetScheduledQueryHistoryRequest

    GetScheduledQueryHistoryResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "name"))
    GetScheduledQueryHistoryResponse.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "scheduledQueryArn"))
    GetScheduledQueryHistoryResponse.add_member(:trigger_history, Shapes::ShapeRef.new(shape: TriggerHistoryRecordList, location_name: "triggerHistory"))
    GetScheduledQueryHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetScheduledQueryHistoryResponse.struct_class = Types::GetScheduledQueryHistoryResponse

    GetScheduledQueryRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ScheduledQueryIdentifier, required: true, location_name: "identifier"))
    GetScheduledQueryRequest.struct_class = Types::GetScheduledQueryRequest

    GetScheduledQueryResponse.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "scheduledQueryArn"))
    GetScheduledQueryResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "name"))
    GetScheduledQueryResponse.add_member(:description, Shapes::ShapeRef.new(shape: ScheduledQueryDescription, location_name: "description"))
    GetScheduledQueryResponse.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    GetScheduledQueryResponse.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "queryString"))
    GetScheduledQueryResponse.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: ScheduledQueryLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    GetScheduledQueryResponse.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "scheduleExpression"))
    GetScheduledQueryResponse.add_member(:timezone, Shapes::ShapeRef.new(shape: ScheduleTimezone, location_name: "timezone"))
    GetScheduledQueryResponse.add_member(:start_time_offset, Shapes::ShapeRef.new(shape: StartTimeOffset, location_name: "startTimeOffset"))
    GetScheduledQueryResponse.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    GetScheduledQueryResponse.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    GetScheduledQueryResponse.add_member(:last_triggered_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastTriggeredTime"))
    GetScheduledQueryResponse.add_member(:last_execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "lastExecutionStatus"))
    GetScheduledQueryResponse.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleStartTime"))
    GetScheduledQueryResponse.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleEndTime"))
    GetScheduledQueryResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    GetScheduledQueryResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetScheduledQueryResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    GetScheduledQueryResponse.struct_class = Types::GetScheduledQueryResponse

    GetTransformerRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    GetTransformerRequest.struct_class = Types::GetTransformerRequest

    GetTransformerResponse.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    GetTransformerResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetTransformerResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetTransformerResponse.add_member(:transformer_config, Shapes::ShapeRef.new(shape: Processors, location_name: "transformerConfig"))
    GetTransformerResponse.struct_class = Types::GetTransformerResponse

    Grok.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    Grok.add_member(:match, Shapes::ShapeRef.new(shape: GrokMatch, required: true, location_name: "match"))
    Grok.struct_class = Types::Grok

    Histogram.key = Shapes::ShapeRef.new(shape: Time)
    Histogram.value = Shapes::ShapeRef.new(shape: Count)

    IndexPolicies.member = Shapes::ShapeRef.new(shape: IndexPolicy)

    IndexPolicy.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    IndexPolicy.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    IndexPolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    IndexPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    IndexPolicy.add_member(:source, Shapes::ShapeRef.new(shape: IndexSource, location_name: "source"))
    IndexPolicy.struct_class = Types::IndexPolicy

    InheritedProperties.member = Shapes::ShapeRef.new(shape: InheritedProperty)

    InputLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    InputLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, required: true, location_name: "message"))
    InputLogEvent.struct_class = Types::InputLogEvent

    InputLogEvents.member = Shapes::ShapeRef.new(shape: InputLogEvent)

    InputLogStreamNames.member = Shapes::ShapeRef.new(shape: LogStreamName)

    IntegrationDetails.add_member(:open_search_integration_details, Shapes::ShapeRef.new(shape: OpenSearchIntegrationDetails, location_name: "openSearchIntegrationDetails"))
    IntegrationDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationDetails.add_member_subclass(:open_search_integration_details, Types::IntegrationDetails::OpenSearchIntegrationDetails)
    IntegrationDetails.add_member_subclass(:unknown, Types::IntegrationDetails::Unknown)
    IntegrationDetails.struct_class = Types::IntegrationDetails

    IntegrationSummaries.member = Shapes::ShapeRef.new(shape: IntegrationSummary)

    IntegrationSummary.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, location_name: "integrationName"))
    IntegrationSummary.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    IntegrationSummary.add_member(:integration_status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "integrationStatus"))
    IntegrationSummary.struct_class = Types::IntegrationSummary

    InternalServerException.struct_class = Types::InternalServerException

    InternalStreamingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    InternalStreamingException.struct_class = Types::InternalStreamingException

    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidSequenceTokenException.add_member(:expected_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "expectedSequenceToken"))
    InvalidSequenceTokenException.struct_class = Types::InvalidSequenceTokenException

    LimitExceededException.struct_class = Types::LimitExceededException

    ListAnomaliesRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, location_name: "anomalyDetectorArn"))
    ListAnomaliesRequest.add_member(:suppression_state, Shapes::ShapeRef.new(shape: SuppressionState, location_name: "suppressionState"))
    ListAnomaliesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListAnomaliesLimit, location_name: "limit"))
    ListAnomaliesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAnomaliesRequest.struct_class = Types::ListAnomaliesRequest

    ListAnomaliesResponse.add_member(:anomalies, Shapes::ShapeRef.new(shape: Anomalies, location_name: "anomalies"))
    ListAnomaliesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAnomaliesResponse.struct_class = Types::ListAnomaliesResponse

    ListIntegrationsRequest.add_member(:integration_name_prefix, Shapes::ShapeRef.new(shape: IntegrationNamePrefix, location_name: "integrationNamePrefix"))
    ListIntegrationsRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, location_name: "integrationType"))
    ListIntegrationsRequest.add_member(:integration_status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "integrationStatus"))
    ListIntegrationsRequest.struct_class = Types::ListIntegrationsRequest

    ListIntegrationsResponse.add_member(:integration_summaries, Shapes::ShapeRef.new(shape: IntegrationSummaries, location_name: "integrationSummaries"))
    ListIntegrationsResponse.struct_class = Types::ListIntegrationsResponse

    ListLogAnomalyDetectorsRequest.add_member(:filter_log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, location_name: "filterLogGroupArn"))
    ListLogAnomalyDetectorsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListLogAnomalyDetectorsLimit, location_name: "limit"))
    ListLogAnomalyDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogAnomalyDetectorsRequest.struct_class = Types::ListLogAnomalyDetectorsRequest

    ListLogAnomalyDetectorsResponse.add_member(:anomaly_detectors, Shapes::ShapeRef.new(shape: AnomalyDetectors, location_name: "anomalyDetectors"))
    ListLogAnomalyDetectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogAnomalyDetectorsResponse.struct_class = Types::ListLogAnomalyDetectorsResponse

    ListLogGroupsForQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    ListLogGroupsForQueryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogGroupsForQueryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLogGroupsForQueryMaxResults, location_name: "maxResults"))
    ListLogGroupsForQueryRequest.struct_class = Types::ListLogGroupsForQueryRequest

    ListLogGroupsForQueryResponse.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: LogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    ListLogGroupsForQueryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogGroupsForQueryResponse.struct_class = Types::ListLogGroupsForQueryResponse

    ListLogGroupsRequest.add_member(:log_group_name_pattern, Shapes::ShapeRef.new(shape: LogGroupNameRegexPattern, location_name: "logGroupNamePattern"))
    ListLogGroupsRequest.add_member(:log_group_class, Shapes::ShapeRef.new(shape: LogGroupClass, location_name: "logGroupClass"))
    ListLogGroupsRequest.add_member(:include_linked_accounts, Shapes::ShapeRef.new(shape: IncludeLinkedAccounts, location_name: "includeLinkedAccounts"))
    ListLogGroupsRequest.add_member(:account_identifiers, Shapes::ShapeRef.new(shape: AccountIds, location_name: "accountIdentifiers"))
    ListLogGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: ListLimit, location_name: "limit"))
    ListLogGroupsRequest.struct_class = Types::ListLogGroupsRequest

    ListLogGroupsResponse.add_member(:log_groups, Shapes::ShapeRef.new(shape: LogGroupSummaries, location_name: "logGroups"))
    ListLogGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogGroupsResponse.struct_class = Types::ListLogGroupsResponse

    ListScheduledQueriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListScheduledQueriesMaxResults, location_name: "maxResults"))
    ListScheduledQueriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScheduledQueriesRequest.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    ListScheduledQueriesRequest.struct_class = Types::ListScheduledQueriesRequest

    ListScheduledQueriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListScheduledQueriesResponse.add_member(:scheduled_queries, Shapes::ShapeRef.new(shape: ScheduledQuerySummaryList, location_name: "scheduledQueries"))
    ListScheduledQueriesResponse.struct_class = Types::ListScheduledQueriesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTagsLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    ListTagsLogGroupRequest.struct_class = Types::ListTagsLogGroupRequest

    ListTagsLogGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsLogGroupResponse.struct_class = Types::ListTagsLogGroupResponse

    ListToMap.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    ListToMap.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    ListToMap.add_member(:value_key, Shapes::ShapeRef.new(shape: ValueKey, location_name: "valueKey"))
    ListToMap.add_member(:target, Shapes::ShapeRef.new(shape: Target, location_name: "target"))
    ListToMap.add_member(:flatten, Shapes::ShapeRef.new(shape: Flatten, location_name: "flatten"))
    ListToMap.add_member(:flattened_element, Shapes::ShapeRef.new(shape: FlattenedElement, location_name: "flattenedElement"))
    ListToMap.struct_class = Types::ListToMap

    LiveTailSessionLogEvent.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    LiveTailSessionLogEvent.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    LiveTailSessionLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "message"))
    LiveTailSessionLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    LiveTailSessionLogEvent.add_member(:ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ingestionTime"))
    LiveTailSessionLogEvent.struct_class = Types::LiveTailSessionLogEvent

    LiveTailSessionMetadata.add_member(:sampled, Shapes::ShapeRef.new(shape: IsSampled, location_name: "sampled"))
    LiveTailSessionMetadata.struct_class = Types::LiveTailSessionMetadata

    LiveTailSessionResults.member = Shapes::ShapeRef.new(shape: LiveTailSessionLogEvent)

    LiveTailSessionStart.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "requestId"))
    LiveTailSessionStart.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    LiveTailSessionStart.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: StartLiveTailLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    LiveTailSessionStart.add_member(:log_stream_names, Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: "logStreamNames"))
    LiveTailSessionStart.add_member(:log_stream_name_prefixes, Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: "logStreamNamePrefixes"))
    LiveTailSessionStart.add_member(:log_event_filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "logEventFilterPattern"))
    LiveTailSessionStart.struct_class = Types::LiveTailSessionStart

    LiveTailSessionUpdate.add_member(:session_metadata, Shapes::ShapeRef.new(shape: LiveTailSessionMetadata, location_name: "sessionMetadata"))
    LiveTailSessionUpdate.add_member(:session_results, Shapes::ShapeRef.new(shape: LiveTailSessionResults, location_name: "sessionResults"))
    LiveTailSessionUpdate.struct_class = Types::LiveTailSessionUpdate

    LogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    LogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "message"))
    LogEvent.struct_class = Types::LogEvent

    LogGroup.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    LogGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    LogGroup.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: Days, location_name: "retentionInDays"))
    LogGroup.add_member(:metric_filter_count, Shapes::ShapeRef.new(shape: FilterCount, location_name: "metricFilterCount"))
    LogGroup.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LogGroup.add_member(:stored_bytes, Shapes::ShapeRef.new(shape: StoredBytes, location_name: "storedBytes"))
    LogGroup.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    LogGroup.add_member(:data_protection_status, Shapes::ShapeRef.new(shape: DataProtectionStatus, location_name: "dataProtectionStatus"))
    LogGroup.add_member(:inherited_properties, Shapes::ShapeRef.new(shape: InheritedProperties, location_name: "inheritedProperties"))
    LogGroup.add_member(:log_group_class, Shapes::ShapeRef.new(shape: LogGroupClass, location_name: "logGroupClass"))
    LogGroup.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "logGroupArn"))
    LogGroup.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "deletionProtectionEnabled"))
    LogGroup.struct_class = Types::LogGroup

    LogGroupArnList.member = Shapes::ShapeRef.new(shape: LogGroupArn)

    LogGroupField.add_member(:name, Shapes::ShapeRef.new(shape: Field, location_name: "name"))
    LogGroupField.add_member(:percent, Shapes::ShapeRef.new(shape: Percentage, location_name: "percent"))
    LogGroupField.struct_class = Types::LogGroupField

    LogGroupFieldList.member = Shapes::ShapeRef.new(shape: LogGroupField)

    LogGroupIdentifiers.member = Shapes::ShapeRef.new(shape: LogGroupIdentifier)

    LogGroupNames.member = Shapes::ShapeRef.new(shape: LogGroupName)

    LogGroupSummaries.member = Shapes::ShapeRef.new(shape: LogGroupSummary)

    LogGroupSummary.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    LogGroupSummary.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "logGroupArn"))
    LogGroupSummary.add_member(:log_group_class, Shapes::ShapeRef.new(shape: LogGroupClass, location_name: "logGroupClass"))
    LogGroupSummary.struct_class = Types::LogGroupSummary

    LogGroups.member = Shapes::ShapeRef.new(shape: LogGroup)

    LogRecord.key = Shapes::ShapeRef.new(shape: Field)
    LogRecord.value = Shapes::ShapeRef.new(shape: Value)

    LogSamples.member = Shapes::ShapeRef.new(shape: LogEvent)

    LogStream.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    LogStream.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    LogStream.add_member(:first_event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstEventTimestamp"))
    LogStream.add_member(:last_event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastEventTimestamp"))
    LogStream.add_member(:last_ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastIngestionTime"))
    LogStream.add_member(:upload_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "uploadSequenceToken"))
    LogStream.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    LogStream.add_member(:stored_bytes, Shapes::ShapeRef.new(shape: StoredBytes, deprecated: true, location_name: "storedBytes", metadata: {"deprecatedMessage" => "Starting on June 17, 2019, this parameter will be deprecated for log streams, and will be reported as zero. This change applies only to log streams. The storedBytes parameter for log groups is not affected."}))
    LogStream.struct_class = Types::LogStream

    LogStreams.member = Shapes::ShapeRef.new(shape: LogStream)

    LogTypes.member = Shapes::ShapeRef.new(shape: LogType)

    LowerCaseString.add_member(:with_keys, Shapes::ShapeRef.new(shape: LowerCaseStringWithKeys, required: true, location_name: "withKeys"))
    LowerCaseString.struct_class = Types::LowerCaseString

    LowerCaseStringWithKeys.member = Shapes::ShapeRef.new(shape: WithKey)

    MalformedQueryException.add_member(:query_compile_error, Shapes::ShapeRef.new(shape: QueryCompileError, location_name: "queryCompileError"))
    MalformedQueryException.struct_class = Types::MalformedQueryException

    MatchPatterns.member = Shapes::ShapeRef.new(shape: MatchPattern)

    MetricFilter.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterName"))
    MetricFilter.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    MetricFilter.add_member(:metric_transformations, Shapes::ShapeRef.new(shape: MetricTransformations, location_name: "metricTransformations"))
    MetricFilter.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    MetricFilter.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    MetricFilter.add_member(:apply_on_transformed_logs, Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs"))
    MetricFilter.add_member(:field_selection_criteria, Shapes::ShapeRef.new(shape: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    MetricFilter.add_member(:emit_system_field_dimensions, Shapes::ShapeRef.new(shape: EmitSystemFields, location_name: "emitSystemFieldDimensions"))
    MetricFilter.struct_class = Types::MetricFilter

    MetricFilterMatchRecord.add_member(:event_number, Shapes::ShapeRef.new(shape: EventNumber, location_name: "eventNumber"))
    MetricFilterMatchRecord.add_member(:event_message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "eventMessage"))
    MetricFilterMatchRecord.add_member(:extracted_values, Shapes::ShapeRef.new(shape: ExtractedValues, location_name: "extractedValues"))
    MetricFilterMatchRecord.struct_class = Types::MetricFilterMatchRecord

    MetricFilterMatches.member = Shapes::ShapeRef.new(shape: MetricFilterMatchRecord)

    MetricFilters.member = Shapes::ShapeRef.new(shape: MetricFilter)

    MetricTransformation.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "metricName"))
    MetricTransformation.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "metricNamespace"))
    MetricTransformation.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricValue, required: true, location_name: "metricValue"))
    MetricTransformation.add_member(:default_value, Shapes::ShapeRef.new(shape: DefaultValue, location_name: "defaultValue"))
    MetricTransformation.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "dimensions"))
    MetricTransformation.add_member(:unit, Shapes::ShapeRef.new(shape: StandardUnit, location_name: "unit"))
    MetricTransformation.struct_class = Types::MetricTransformation

    MetricTransformations.member = Shapes::ShapeRef.new(shape: MetricTransformation)

    MoveKeyEntries.member = Shapes::ShapeRef.new(shape: MoveKeyEntry)

    MoveKeyEntry.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    MoveKeyEntry.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "target"))
    MoveKeyEntry.add_member(:overwrite_if_exists, Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: "overwriteIfExists"))
    MoveKeyEntry.struct_class = Types::MoveKeyEntry

    MoveKeys.add_member(:entries, Shapes::ShapeRef.new(shape: MoveKeyEntries, required: true, location_name: "entries"))
    MoveKeys.struct_class = Types::MoveKeys

    OpenSearchApplication.add_member(:application_endpoint, Shapes::ShapeRef.new(shape: OpenSearchApplicationEndpoint, location_name: "applicationEndpoint"))
    OpenSearchApplication.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "applicationArn"))
    OpenSearchApplication.add_member(:application_id, Shapes::ShapeRef.new(shape: OpenSearchApplicationId, location_name: "applicationId"))
    OpenSearchApplication.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchApplication.struct_class = Types::OpenSearchApplication

    OpenSearchCollection.add_member(:collection_endpoint, Shapes::ShapeRef.new(shape: OpenSearchCollectionEndpoint, location_name: "collectionEndpoint"))
    OpenSearchCollection.add_member(:collection_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "collectionArn"))
    OpenSearchCollection.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchCollection.struct_class = Types::OpenSearchCollection

    OpenSearchDataAccessPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchDataAccessPolicy.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchDataAccessPolicy.struct_class = Types::OpenSearchDataAccessPolicy

    OpenSearchDataSource.add_member(:data_source_name, Shapes::ShapeRef.new(shape: OpenSearchDataSourceName, location_name: "dataSourceName"))
    OpenSearchDataSource.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchDataSource.struct_class = Types::OpenSearchDataSource

    OpenSearchEncryptionPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchEncryptionPolicy.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchEncryptionPolicy.struct_class = Types::OpenSearchEncryptionPolicy

    OpenSearchIntegrationDetails.add_member(:data_source, Shapes::ShapeRef.new(shape: OpenSearchDataSource, location_name: "dataSource"))
    OpenSearchIntegrationDetails.add_member(:application, Shapes::ShapeRef.new(shape: OpenSearchApplication, location_name: "application"))
    OpenSearchIntegrationDetails.add_member(:collection, Shapes::ShapeRef.new(shape: OpenSearchCollection, location_name: "collection"))
    OpenSearchIntegrationDetails.add_member(:workspace, Shapes::ShapeRef.new(shape: OpenSearchWorkspace, location_name: "workspace"))
    OpenSearchIntegrationDetails.add_member(:encryption_policy, Shapes::ShapeRef.new(shape: OpenSearchEncryptionPolicy, location_name: "encryptionPolicy"))
    OpenSearchIntegrationDetails.add_member(:network_policy, Shapes::ShapeRef.new(shape: OpenSearchNetworkPolicy, location_name: "networkPolicy"))
    OpenSearchIntegrationDetails.add_member(:access_policy, Shapes::ShapeRef.new(shape: OpenSearchDataAccessPolicy, location_name: "accessPolicy"))
    OpenSearchIntegrationDetails.add_member(:lifecycle_policy, Shapes::ShapeRef.new(shape: OpenSearchLifecyclePolicy, location_name: "lifecyclePolicy"))
    OpenSearchIntegrationDetails.struct_class = Types::OpenSearchIntegrationDetails

    OpenSearchLifecyclePolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchLifecyclePolicy.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchLifecyclePolicy.struct_class = Types::OpenSearchLifecyclePolicy

    OpenSearchNetworkPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: OpenSearchPolicyName, location_name: "policyName"))
    OpenSearchNetworkPolicy.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchNetworkPolicy.struct_class = Types::OpenSearchNetworkPolicy

    OpenSearchResourceConfig.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "kmsKeyArn"))
    OpenSearchResourceConfig.add_member(:data_source_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "dataSourceRoleArn"))
    OpenSearchResourceConfig.add_member(:dashboard_viewer_principals, Shapes::ShapeRef.new(shape: DashboardViewerPrincipals, required: true, location_name: "dashboardViewerPrincipals"))
    OpenSearchResourceConfig.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "applicationArn"))
    OpenSearchResourceConfig.add_member(:retention_days, Shapes::ShapeRef.new(shape: CollectionRetentionDays, required: true, location_name: "retentionDays"))
    OpenSearchResourceConfig.struct_class = Types::OpenSearchResourceConfig

    OpenSearchResourceStatus.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatusType, location_name: "status"))
    OpenSearchResourceStatus.add_member(:status_message, Shapes::ShapeRef.new(shape: IntegrationStatusMessage, location_name: "statusMessage"))
    OpenSearchResourceStatus.struct_class = Types::OpenSearchResourceStatus

    OpenSearchWorkspace.add_member(:workspace_id, Shapes::ShapeRef.new(shape: OpenSearchWorkspaceId, location_name: "workspaceId"))
    OpenSearchWorkspace.add_member(:status, Shapes::ShapeRef.new(shape: OpenSearchResourceStatus, location_name: "status"))
    OpenSearchWorkspace.struct_class = Types::OpenSearchWorkspace

    OperationAbortedException.struct_class = Types::OperationAbortedException

    OutputFormats.member = Shapes::ShapeRef.new(shape: OutputFormat)

    OutputLogEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    OutputLogEvent.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "message"))
    OutputLogEvent.add_member(:ingestion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ingestionTime"))
    OutputLogEvent.struct_class = Types::OutputLogEvent

    OutputLogEvents.member = Shapes::ShapeRef.new(shape: OutputLogEvent)

    ParseCloudfront.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseCloudfront.struct_class = Types::ParseCloudfront

    ParseJSON.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseJSON.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationField, location_name: "destination"))
    ParseJSON.struct_class = Types::ParseJSON

    ParseKeyValue.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseKeyValue.add_member(:destination, Shapes::ShapeRef.new(shape: DestinationField, location_name: "destination"))
    ParseKeyValue.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: ParserFieldDelimiter, location_name: "fieldDelimiter"))
    ParseKeyValue.add_member(:key_value_delimiter, Shapes::ShapeRef.new(shape: KeyValueDelimiter, location_name: "keyValueDelimiter"))
    ParseKeyValue.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    ParseKeyValue.add_member(:non_match_value, Shapes::ShapeRef.new(shape: NonMatchValue, location_name: "nonMatchValue"))
    ParseKeyValue.add_member(:overwrite_if_exists, Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: "overwriteIfExists"))
    ParseKeyValue.struct_class = Types::ParseKeyValue

    ParsePostgres.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParsePostgres.struct_class = Types::ParsePostgres

    ParseRoute53.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseRoute53.struct_class = Types::ParseRoute53

    ParseToOCSF.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseToOCSF.add_member(:event_source, Shapes::ShapeRef.new(shape: EventSource, required: true, location_name: "eventSource"))
    ParseToOCSF.add_member(:ocsf_version, Shapes::ShapeRef.new(shape: OCSFVersion, required: true, location_name: "ocsfVersion"))
    ParseToOCSF.add_member(:mapping_version, Shapes::ShapeRef.new(shape: MappingVersion, location_name: "mappingVersion"))
    ParseToOCSF.struct_class = Types::ParseToOCSF

    ParseVPC.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseVPC.struct_class = Types::ParseVPC

    ParseWAF.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    ParseWAF.struct_class = Types::ParseWAF

    PatternToken.add_member(:dynamic_token_position, Shapes::ShapeRef.new(shape: DynamicTokenPosition, location_name: "dynamicTokenPosition"))
    PatternToken.add_member(:is_dynamic, Shapes::ShapeRef.new(shape: Boolean, location_name: "isDynamic"))
    PatternToken.add_member(:token_string, Shapes::ShapeRef.new(shape: TokenString, location_name: "tokenString"))
    PatternToken.add_member(:enumerations, Shapes::ShapeRef.new(shape: Enumerations, location_name: "enumerations"))
    PatternToken.add_member(:inferred_token_name, Shapes::ShapeRef.new(shape: InferredTokenName, location_name: "inferredTokenName"))
    PatternToken.struct_class = Types::PatternToken

    PatternTokens.member = Shapes::ShapeRef.new(shape: PatternToken)

    Policy.add_member(:delivery_destination_policy, Shapes::ShapeRef.new(shape: DeliveryDestinationPolicy, location_name: "deliveryDestinationPolicy"))
    Policy.struct_class = Types::Policy

    Processor.add_member(:add_keys, Shapes::ShapeRef.new(shape: AddKeys, location_name: "addKeys"))
    Processor.add_member(:copy_value, Shapes::ShapeRef.new(shape: CopyValue, location_name: "copyValue"))
    Processor.add_member(:csv, Shapes::ShapeRef.new(shape: CSV, location_name: "csv"))
    Processor.add_member(:date_time_converter, Shapes::ShapeRef.new(shape: DateTimeConverter, location_name: "dateTimeConverter"))
    Processor.add_member(:delete_keys, Shapes::ShapeRef.new(shape: DeleteKeys, location_name: "deleteKeys"))
    Processor.add_member(:grok, Shapes::ShapeRef.new(shape: Grok, location_name: "grok"))
    Processor.add_member(:list_to_map, Shapes::ShapeRef.new(shape: ListToMap, location_name: "listToMap"))
    Processor.add_member(:lower_case_string, Shapes::ShapeRef.new(shape: LowerCaseString, location_name: "lowerCaseString"))
    Processor.add_member(:move_keys, Shapes::ShapeRef.new(shape: MoveKeys, location_name: "moveKeys"))
    Processor.add_member(:parse_cloudfront, Shapes::ShapeRef.new(shape: ParseCloudfront, location_name: "parseCloudfront"))
    Processor.add_member(:parse_json, Shapes::ShapeRef.new(shape: ParseJSON, location_name: "parseJSON"))
    Processor.add_member(:parse_key_value, Shapes::ShapeRef.new(shape: ParseKeyValue, location_name: "parseKeyValue"))
    Processor.add_member(:parse_route_53, Shapes::ShapeRef.new(shape: ParseRoute53, location_name: "parseRoute53"))
    Processor.add_member(:parse_to_ocsf, Shapes::ShapeRef.new(shape: ParseToOCSF, location_name: "parseToOCSF"))
    Processor.add_member(:parse_postgres, Shapes::ShapeRef.new(shape: ParsePostgres, location_name: "parsePostgres"))
    Processor.add_member(:parse_vpc, Shapes::ShapeRef.new(shape: ParseVPC, location_name: "parseVPC"))
    Processor.add_member(:parse_waf, Shapes::ShapeRef.new(shape: ParseWAF, location_name: "parseWAF"))
    Processor.add_member(:rename_keys, Shapes::ShapeRef.new(shape: RenameKeys, location_name: "renameKeys"))
    Processor.add_member(:split_string, Shapes::ShapeRef.new(shape: SplitString, location_name: "splitString"))
    Processor.add_member(:substitute_string, Shapes::ShapeRef.new(shape: SubstituteString, location_name: "substituteString"))
    Processor.add_member(:trim_string, Shapes::ShapeRef.new(shape: TrimString, location_name: "trimString"))
    Processor.add_member(:type_converter, Shapes::ShapeRef.new(shape: TypeConverter, location_name: "typeConverter"))
    Processor.add_member(:upper_case_string, Shapes::ShapeRef.new(shape: UpperCaseString, location_name: "upperCaseString"))
    Processor.struct_class = Types::Processor

    Processors.member = Shapes::ShapeRef.new(shape: Processor)

    PutAccountPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "policyName"))
    PutAccountPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: AccountPolicyDocument, required: true, location_name: "policyDocument"))
    PutAccountPolicyRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    PutAccountPolicyRequest.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    PutAccountPolicyRequest.add_member(:selection_criteria, Shapes::ShapeRef.new(shape: SelectionCriteria, location_name: "selectionCriteria"))
    PutAccountPolicyRequest.struct_class = Types::PutAccountPolicyRequest

    PutAccountPolicyResponse.add_member(:account_policy, Shapes::ShapeRef.new(shape: AccountPolicy, location_name: "accountPolicy"))
    PutAccountPolicyResponse.struct_class = Types::PutAccountPolicyResponse

    PutDataProtectionPolicyRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    PutDataProtectionPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: DataProtectionPolicyDocument, required: true, location_name: "policyDocument"))
    PutDataProtectionPolicyRequest.struct_class = Types::PutDataProtectionPolicyRequest

    PutDataProtectionPolicyResponse.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, location_name: "logGroupIdentifier"))
    PutDataProtectionPolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: DataProtectionPolicyDocument, location_name: "policyDocument"))
    PutDataProtectionPolicyResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    PutDataProtectionPolicyResponse.struct_class = Types::PutDataProtectionPolicyResponse

    PutDeliveryDestinationPolicyRequest.add_member(:delivery_destination_name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, required: true, location_name: "deliveryDestinationName"))
    PutDeliveryDestinationPolicyRequest.add_member(:delivery_destination_policy, Shapes::ShapeRef.new(shape: DeliveryDestinationPolicy, required: true, location_name: "deliveryDestinationPolicy"))
    PutDeliveryDestinationPolicyRequest.struct_class = Types::PutDeliveryDestinationPolicyRequest

    PutDeliveryDestinationPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "policy"))
    PutDeliveryDestinationPolicyResponse.struct_class = Types::PutDeliveryDestinationPolicyResponse

    PutDeliveryDestinationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeliveryDestinationName, required: true, location_name: "name"))
    PutDeliveryDestinationRequest.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "outputFormat"))
    PutDeliveryDestinationRequest.add_member(:delivery_destination_configuration, Shapes::ShapeRef.new(shape: DeliveryDestinationConfiguration, location_name: "deliveryDestinationConfiguration"))
    PutDeliveryDestinationRequest.add_member(:delivery_destination_type, Shapes::ShapeRef.new(shape: DeliveryDestinationType, location_name: "deliveryDestinationType"))
    PutDeliveryDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutDeliveryDestinationRequest.struct_class = Types::PutDeliveryDestinationRequest

    PutDeliveryDestinationResponse.add_member(:delivery_destination, Shapes::ShapeRef.new(shape: DeliveryDestination, location_name: "deliveryDestination"))
    PutDeliveryDestinationResponse.struct_class = Types::PutDeliveryDestinationResponse

    PutDeliverySourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DeliverySourceName, required: true, location_name: "name"))
    PutDeliverySourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "resourceArn"))
    PutDeliverySourceRequest.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, required: true, location_name: "logType"))
    PutDeliverySourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutDeliverySourceRequest.struct_class = Types::PutDeliverySourceRequest

    PutDeliverySourceResponse.add_member(:delivery_source, Shapes::ShapeRef.new(shape: DeliverySource, location_name: "deliverySource"))
    PutDeliverySourceResponse.struct_class = Types::PutDeliverySourceResponse

    PutDestinationPolicyRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "destinationName"))
    PutDestinationPolicyRequest.add_member(:access_policy, Shapes::ShapeRef.new(shape: AccessPolicy, required: true, location_name: "accessPolicy"))
    PutDestinationPolicyRequest.add_member(:force_update, Shapes::ShapeRef.new(shape: ForceUpdate, location_name: "forceUpdate"))
    PutDestinationPolicyRequest.struct_class = Types::PutDestinationPolicyRequest

    PutDestinationRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: DestinationName, required: true, location_name: "destinationName"))
    PutDestinationRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "targetArn"))
    PutDestinationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PutDestinationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PutDestinationRequest.struct_class = Types::PutDestinationRequest

    PutDestinationResponse.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    PutDestinationResponse.struct_class = Types::PutDestinationResponse

    PutIndexPolicyRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    PutIndexPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    PutIndexPolicyRequest.struct_class = Types::PutIndexPolicyRequest

    PutIndexPolicyResponse.add_member(:index_policy, Shapes::ShapeRef.new(shape: IndexPolicy, location_name: "indexPolicy"))
    PutIndexPolicyResponse.struct_class = Types::PutIndexPolicyResponse

    PutIntegrationRequest.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "integrationName"))
    PutIntegrationRequest.add_member(:resource_config, Shapes::ShapeRef.new(shape: ResourceConfig, required: true, location_name: "resourceConfig"))
    PutIntegrationRequest.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    PutIntegrationRequest.struct_class = Types::PutIntegrationRequest

    PutIntegrationResponse.add_member(:integration_name, Shapes::ShapeRef.new(shape: IntegrationName, location_name: "integrationName"))
    PutIntegrationResponse.add_member(:integration_status, Shapes::ShapeRef.new(shape: IntegrationStatus, location_name: "integrationStatus"))
    PutIntegrationResponse.struct_class = Types::PutIntegrationResponse

    PutLogEventsRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutLogEventsRequest.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, required: true, location_name: "logStreamName"))
    PutLogEventsRequest.add_member(:log_events, Shapes::ShapeRef.new(shape: InputLogEvents, required: true, location_name: "logEvents"))
    PutLogEventsRequest.add_member(:sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "sequenceToken"))
    PutLogEventsRequest.add_member(:entity, Shapes::ShapeRef.new(shape: Entity, location_name: "entity"))
    PutLogEventsRequest.struct_class = Types::PutLogEventsRequest

    PutLogEventsResponse.add_member(:next_sequence_token, Shapes::ShapeRef.new(shape: SequenceToken, location_name: "nextSequenceToken"))
    PutLogEventsResponse.add_member(:rejected_log_events_info, Shapes::ShapeRef.new(shape: RejectedLogEventsInfo, location_name: "rejectedLogEventsInfo"))
    PutLogEventsResponse.add_member(:rejected_entity_info, Shapes::ShapeRef.new(shape: RejectedEntityInfo, location_name: "rejectedEntityInfo"))
    PutLogEventsResponse.struct_class = Types::PutLogEventsResponse

    PutLogGroupDeletionProtectionRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    PutLogGroupDeletionProtectionRequest.add_member(:deletion_protection_enabled, Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, required: true, location_name: "deletionProtectionEnabled"))
    PutLogGroupDeletionProtectionRequest.struct_class = Types::PutLogGroupDeletionProtectionRequest

    PutMetricFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutMetricFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    PutMetricFilterRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, required: true, location_name: "filterPattern"))
    PutMetricFilterRequest.add_member(:metric_transformations, Shapes::ShapeRef.new(shape: MetricTransformations, required: true, location_name: "metricTransformations"))
    PutMetricFilterRequest.add_member(:apply_on_transformed_logs, Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs"))
    PutMetricFilterRequest.add_member(:field_selection_criteria, Shapes::ShapeRef.new(shape: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    PutMetricFilterRequest.add_member(:emit_system_field_dimensions, Shapes::ShapeRef.new(shape: EmitSystemFields, location_name: "emitSystemFieldDimensions"))
    PutMetricFilterRequest.struct_class = Types::PutMetricFilterRequest

    PutQueryDefinitionRequest.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    PutQueryDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: QueryDefinitionName, required: true, location_name: "name"))
    PutQueryDefinitionRequest.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryDefinitionId"))
    PutQueryDefinitionRequest.add_member(:log_group_names, Shapes::ShapeRef.new(shape: LogGroupNames, location_name: "logGroupNames"))
    PutQueryDefinitionRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryDefinitionString, required: true, location_name: "queryString"))
    PutQueryDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutQueryDefinitionRequest.struct_class = Types::PutQueryDefinitionRequest

    PutQueryDefinitionResponse.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryDefinitionId"))
    PutQueryDefinitionResponse.struct_class = Types::PutQueryDefinitionResponse

    PutResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    PutResourcePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    PutResourcePolicyRequest.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: "expectedRevisionId"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy"))
    PutResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: "revisionId"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    PutRetentionPolicyRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutRetentionPolicyRequest.add_member(:retention_in_days, Shapes::ShapeRef.new(shape: Days, required: true, location_name: "retentionInDays"))
    PutRetentionPolicyRequest.struct_class = Types::PutRetentionPolicyRequest

    PutSubscriptionFilterRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    PutSubscriptionFilterRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, required: true, location_name: "filterName"))
    PutSubscriptionFilterRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, required: true, location_name: "filterPattern"))
    PutSubscriptionFilterRequest.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, required: true, location_name: "destinationArn"))
    PutSubscriptionFilterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    PutSubscriptionFilterRequest.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "distribution"))
    PutSubscriptionFilterRequest.add_member(:apply_on_transformed_logs, Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs"))
    PutSubscriptionFilterRequest.add_member(:field_selection_criteria, Shapes::ShapeRef.new(shape: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    PutSubscriptionFilterRequest.add_member(:emit_system_fields, Shapes::ShapeRef.new(shape: EmitSystemFields, location_name: "emitSystemFields"))
    PutSubscriptionFilterRequest.struct_class = Types::PutSubscriptionFilterRequest

    PutTransformerRequest.add_member(:log_group_identifier, Shapes::ShapeRef.new(shape: LogGroupIdentifier, required: true, location_name: "logGroupIdentifier"))
    PutTransformerRequest.add_member(:transformer_config, Shapes::ShapeRef.new(shape: Processors, required: true, location_name: "transformerConfig"))
    PutTransformerRequest.struct_class = Types::PutTransformerRequest

    QueryCompileError.add_member(:location, Shapes::ShapeRef.new(shape: QueryCompileErrorLocation, location_name: "location"))
    QueryCompileError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    QueryCompileError.struct_class = Types::QueryCompileError

    QueryCompileErrorLocation.add_member(:start_char_offset, Shapes::ShapeRef.new(shape: QueryCharOffset, location_name: "startCharOffset"))
    QueryCompileErrorLocation.add_member(:end_char_offset, Shapes::ShapeRef.new(shape: QueryCharOffset, location_name: "endCharOffset"))
    QueryCompileErrorLocation.struct_class = Types::QueryCompileErrorLocation

    QueryDefinition.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    QueryDefinition.add_member(:query_definition_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryDefinitionId"))
    QueryDefinition.add_member(:name, Shapes::ShapeRef.new(shape: QueryDefinitionName, location_name: "name"))
    QueryDefinition.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryDefinitionString, location_name: "queryString"))
    QueryDefinition.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    QueryDefinition.add_member(:log_group_names, Shapes::ShapeRef.new(shape: LogGroupNames, location_name: "logGroupNames"))
    QueryDefinition.struct_class = Types::QueryDefinition

    QueryDefinitionList.member = Shapes::ShapeRef.new(shape: QueryDefinition)

    QueryInfo.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    QueryInfo.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryId"))
    QueryInfo.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "queryString"))
    QueryInfo.add_member(:status, Shapes::ShapeRef.new(shape: QueryStatus, location_name: "status"))
    QueryInfo.add_member(:create_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createTime"))
    QueryInfo.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    QueryInfo.struct_class = Types::QueryInfo

    QueryInfoList.member = Shapes::ShapeRef.new(shape: QueryInfo)

    QueryResults.member = Shapes::ShapeRef.new(shape: ResultRows)

    QueryStatistics.add_member(:records_matched, Shapes::ShapeRef.new(shape: StatsValue, location_name: "recordsMatched"))
    QueryStatistics.add_member(:records_scanned, Shapes::ShapeRef.new(shape: StatsValue, location_name: "recordsScanned"))
    QueryStatistics.add_member(:estimated_records_skipped, Shapes::ShapeRef.new(shape: StatsValue, location_name: "estimatedRecordsSkipped"))
    QueryStatistics.add_member(:bytes_scanned, Shapes::ShapeRef.new(shape: StatsValue, location_name: "bytesScanned"))
    QueryStatistics.add_member(:estimated_bytes_skipped, Shapes::ShapeRef.new(shape: StatsValue, location_name: "estimatedBytesSkipped"))
    QueryStatistics.add_member(:log_groups_scanned, Shapes::ShapeRef.new(shape: StatsValue, location_name: "logGroupsScanned"))
    QueryStatistics.struct_class = Types::QueryStatistics

    RecordField.add_member(:name, Shapes::ShapeRef.new(shape: FieldHeader, location_name: "name"))
    RecordField.add_member(:mandatory, Shapes::ShapeRef.new(shape: Boolean, location_name: "mandatory"))
    RecordField.struct_class = Types::RecordField

    RecordFields.member = Shapes::ShapeRef.new(shape: FieldHeader)

    RejectedEntityInfo.add_member(:error_type, Shapes::ShapeRef.new(shape: EntityRejectionErrorType, required: true, location_name: "errorType"))
    RejectedEntityInfo.struct_class = Types::RejectedEntityInfo

    RejectedLogEventsInfo.add_member(:too_new_log_event_start_index, Shapes::ShapeRef.new(shape: LogEventIndex, location_name: "tooNewLogEventStartIndex"))
    RejectedLogEventsInfo.add_member(:too_old_log_event_end_index, Shapes::ShapeRef.new(shape: LogEventIndex, location_name: "tooOldLogEventEndIndex"))
    RejectedLogEventsInfo.add_member(:expired_log_event_end_index, Shapes::ShapeRef.new(shape: LogEventIndex, location_name: "expiredLogEventEndIndex"))
    RejectedLogEventsInfo.struct_class = Types::RejectedLogEventsInfo

    RenameKeyEntries.member = Shapes::ShapeRef.new(shape: RenameKeyEntry)

    RenameKeyEntry.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    RenameKeyEntry.add_member(:rename_to, Shapes::ShapeRef.new(shape: RenameTo, required: true, location_name: "renameTo"))
    RenameKeyEntry.add_member(:overwrite_if_exists, Shapes::ShapeRef.new(shape: OverwriteIfExists, location_name: "overwriteIfExists"))
    RenameKeyEntry.struct_class = Types::RenameKeyEntry

    RenameKeys.add_member(:entries, Shapes::ShapeRef.new(shape: RenameKeyEntries, required: true, location_name: "entries"))
    RenameKeys.struct_class = Types::RenameKeys

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceArns.member = Shapes::ShapeRef.new(shape: Arn)

    ResourceConfig.add_member(:open_search_resource_config, Shapes::ShapeRef.new(shape: OpenSearchResourceConfig, location_name: "openSearchResourceConfig"))
    ResourceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceConfig.add_member_subclass(:open_search_resource_config, Types::ResourceConfig::OpenSearchResourceConfig)
    ResourceConfig.add_member_subclass(:unknown, Types::ResourceConfig::Unknown)
    ResourceConfig.struct_class = Types::ResourceConfig

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicies.member = Shapes::ShapeRef.new(shape: ResourcePolicy)

    ResourcePolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, location_name: "policyName"))
    ResourcePolicy.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "policyDocument"))
    ResourcePolicy.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    ResourcePolicy.add_member(:policy_scope, Shapes::ShapeRef.new(shape: PolicyScope, location_name: "policyScope"))
    ResourcePolicy.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    ResourcePolicy.add_member(:revision_id, Shapes::ShapeRef.new(shape: ExpectedRevisionId, location_name: "revisionId"))
    ResourcePolicy.struct_class = Types::ResourcePolicy

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResultField.add_member(:field, Shapes::ShapeRef.new(shape: Field, location_name: "field"))
    ResultField.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "value"))
    ResultField.struct_class = Types::ResultField

    ResultRows.member = Shapes::ShapeRef.new(shape: ResultField)

    S3Configuration.add_member(:destination_identifier, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "destinationIdentifier"))
    S3Configuration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    S3Configuration.struct_class = Types::S3Configuration

    S3DeliveryConfiguration.add_member(:suffix_path, Shapes::ShapeRef.new(shape: DeliverySuffixPath, location_name: "suffixPath"))
    S3DeliveryConfiguration.add_member(:enable_hive_compatible_path, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableHiveCompatiblePath", metadata: {"box" => true}))
    S3DeliveryConfiguration.struct_class = Types::S3DeliveryConfiguration

    ScheduledQueryDestination.add_member(:destination_type, Shapes::ShapeRef.new(shape: ScheduledQueryDestinationType, location_name: "destinationType"))
    ScheduledQueryDestination.add_member(:destination_identifier, Shapes::ShapeRef.new(shape: String, location_name: "destinationIdentifier"))
    ScheduledQueryDestination.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "status"))
    ScheduledQueryDestination.add_member(:processed_identifier, Shapes::ShapeRef.new(shape: String, location_name: "processedIdentifier"))
    ScheduledQueryDestination.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    ScheduledQueryDestination.struct_class = Types::ScheduledQueryDestination

    ScheduledQueryDestinationList.member = Shapes::ShapeRef.new(shape: ScheduledQueryDestination)

    ScheduledQueryLogGroupIdentifiers.member = Shapes::ShapeRef.new(shape: LogGroupIdentifier)

    ScheduledQuerySummary.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "scheduledQueryArn"))
    ScheduledQuerySummary.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "name"))
    ScheduledQuerySummary.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    ScheduledQuerySummary.add_member(:last_triggered_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastTriggeredTime"))
    ScheduledQuerySummary.add_member(:last_execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "lastExecutionStatus"))
    ScheduledQuerySummary.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "scheduleExpression"))
    ScheduledQuerySummary.add_member(:timezone, Shapes::ShapeRef.new(shape: ScheduleTimezone, location_name: "timezone"))
    ScheduledQuerySummary.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    ScheduledQuerySummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ScheduledQuerySummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    ScheduledQuerySummary.struct_class = Types::ScheduledQuerySummary

    ScheduledQuerySummaryList.member = Shapes::ShapeRef.new(shape: ScheduledQuerySummary)

    SearchedLogStream.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    SearchedLogStream.add_member(:searched_completely, Shapes::ShapeRef.new(shape: LogStreamSearchedCompletely, location_name: "searchedCompletely"))
    SearchedLogStream.struct_class = Types::SearchedLogStream

    SearchedLogStreams.member = Shapes::ShapeRef.new(shape: SearchedLogStream)

    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SessionStreamingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    SessionStreamingException.struct_class = Types::SessionStreamingException

    SessionTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    SessionTimeoutException.struct_class = Types::SessionTimeoutException

    SplitString.add_member(:entries, Shapes::ShapeRef.new(shape: SplitStringEntries, required: true, location_name: "entries"))
    SplitString.struct_class = Types::SplitString

    SplitStringEntries.member = Shapes::ShapeRef.new(shape: SplitStringEntry)

    SplitStringEntry.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    SplitStringEntry.add_member(:delimiter, Shapes::ShapeRef.new(shape: SplitStringDelimiter, required: true, location_name: "delimiter"))
    SplitStringEntry.struct_class = Types::SplitStringEntry

    StartLiveTailLogGroupIdentifiers.member = Shapes::ShapeRef.new(shape: LogGroupIdentifier)

    StartLiveTailRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: StartLiveTailLogGroupIdentifiers, required: true, location_name: "logGroupIdentifiers"))
    StartLiveTailRequest.add_member(:log_stream_names, Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: "logStreamNames"))
    StartLiveTailRequest.add_member(:log_stream_name_prefixes, Shapes::ShapeRef.new(shape: InputLogStreamNames, location_name: "logStreamNamePrefixes"))
    StartLiveTailRequest.add_member(:log_event_filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "logEventFilterPattern"))
    StartLiveTailRequest.struct_class = Types::StartLiveTailRequest

    StartLiveTailResponse.add_member(:response_stream, Shapes::ShapeRef.new(shape: StartLiveTailResponseStream, eventstream: true, location_name: "responseStream"))
    StartLiveTailResponse.struct_class = Types::StartLiveTailResponse

    StartLiveTailResponseStream.add_member(:session_start, Shapes::ShapeRef.new(shape: LiveTailSessionStart, event: true, location_name: "sessionStart"))
    StartLiveTailResponseStream.add_member(:session_update, Shapes::ShapeRef.new(shape: LiveTailSessionUpdate, event: true, location_name: "sessionUpdate"))
    StartLiveTailResponseStream.add_member(:session_timeout_exception, Shapes::ShapeRef.new(shape: SessionTimeoutException, location_name: "SessionTimeoutException"))
    StartLiveTailResponseStream.add_member(:session_streaming_exception, Shapes::ShapeRef.new(shape: SessionStreamingException, location_name: "SessionStreamingException"))
    StartLiveTailResponseStream.struct_class = Types::StartLiveTailResponseStream

    StartQueryRequest.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    StartQueryRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    StartQueryRequest.add_member(:log_group_names, Shapes::ShapeRef.new(shape: LogGroupNames, location_name: "logGroupNames"))
    StartQueryRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: LogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    StartQueryRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    StartQueryRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    StartQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "queryString"))
    StartQueryRequest.add_member(:limit, Shapes::ShapeRef.new(shape: EventsLimit, location_name: "limit"))
    StartQueryRequest.struct_class = Types::StartQueryRequest

    StartQueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryId"))
    StartQueryResponse.struct_class = Types::StartQueryResponse

    StopQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "queryId"))
    StopQueryRequest.struct_class = Types::StopQueryRequest

    StopQueryResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "success"))
    StopQueryResponse.struct_class = Types::StopQueryResponse

    SubscriptionFilter.add_member(:filter_name, Shapes::ShapeRef.new(shape: FilterName, location_name: "filterName"))
    SubscriptionFilter.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    SubscriptionFilter.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    SubscriptionFilter.add_member(:destination_arn, Shapes::ShapeRef.new(shape: DestinationArn, location_name: "destinationArn"))
    SubscriptionFilter.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    SubscriptionFilter.add_member(:distribution, Shapes::ShapeRef.new(shape: Distribution, location_name: "distribution"))
    SubscriptionFilter.add_member(:apply_on_transformed_logs, Shapes::ShapeRef.new(shape: ApplyOnTransformedLogs, location_name: "applyOnTransformedLogs"))
    SubscriptionFilter.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    SubscriptionFilter.add_member(:field_selection_criteria, Shapes::ShapeRef.new(shape: FieldSelectionCriteria, location_name: "fieldSelectionCriteria"))
    SubscriptionFilter.add_member(:emit_system_fields, Shapes::ShapeRef.new(shape: EmitSystemFields, location_name: "emitSystemFields"))
    SubscriptionFilter.struct_class = Types::SubscriptionFilter

    SubscriptionFilters.member = Shapes::ShapeRef.new(shape: SubscriptionFilter)

    SubstituteString.add_member(:entries, Shapes::ShapeRef.new(shape: SubstituteStringEntries, required: true, location_name: "entries"))
    SubstituteString.struct_class = Types::SubstituteString

    SubstituteStringEntries.member = Shapes::ShapeRef.new(shape: SubstituteStringEntry)

    SubstituteStringEntry.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    SubstituteStringEntry.add_member(:from, Shapes::ShapeRef.new(shape: FromKey, required: true, location_name: "from"))
    SubstituteStringEntry.add_member(:to, Shapes::ShapeRef.new(shape: ToKey, required: true, location_name: "to"))
    SubstituteStringEntry.struct_class = Types::SubstituteStringEntry

    SuppressionPeriod.add_member(:value, Shapes::ShapeRef.new(shape: Integer, location_name: "value"))
    SuppressionPeriod.add_member(:suppression_unit, Shapes::ShapeRef.new(shape: SuppressionUnit, location_name: "suppressionUnit"))
    SuppressionPeriod.struct_class = Types::SuppressionPeriod

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    TagLogGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagLogGroupRequest.struct_class = Types::TagLogGroupRequest

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TestEventMessages.member = Shapes::ShapeRef.new(shape: EventMessage)

    TestMetricFilterRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, required: true, location_name: "filterPattern"))
    TestMetricFilterRequest.add_member(:log_event_messages, Shapes::ShapeRef.new(shape: TestEventMessages, required: true, location_name: "logEventMessages"))
    TestMetricFilterRequest.struct_class = Types::TestMetricFilterRequest

    TestMetricFilterResponse.add_member(:matches, Shapes::ShapeRef.new(shape: MetricFilterMatches, location_name: "matches"))
    TestMetricFilterResponse.struct_class = Types::TestMetricFilterResponse

    TestTransformerRequest.add_member(:transformer_config, Shapes::ShapeRef.new(shape: Processors, required: true, location_name: "transformerConfig"))
    TestTransformerRequest.add_member(:log_event_messages, Shapes::ShapeRef.new(shape: TestEventMessages, required: true, location_name: "logEventMessages"))
    TestTransformerRequest.struct_class = Types::TestTransformerRequest

    TestTransformerResponse.add_member(:transformed_logs, Shapes::ShapeRef.new(shape: TransformedLogs, location_name: "transformedLogs"))
    TestTransformerResponse.struct_class = Types::TestTransformerResponse

    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TransformedLogRecord.add_member(:event_number, Shapes::ShapeRef.new(shape: EventNumber, location_name: "eventNumber"))
    TransformedLogRecord.add_member(:event_message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "eventMessage"))
    TransformedLogRecord.add_member(:transformed_event_message, Shapes::ShapeRef.new(shape: TransformedEventMessage, location_name: "transformedEventMessage"))
    TransformedLogRecord.struct_class = Types::TransformedLogRecord

    TransformedLogs.member = Shapes::ShapeRef.new(shape: TransformedLogRecord)

    TriggerHistoryRecord.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "queryId"))
    TriggerHistoryRecord.add_member(:execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "executionStatus"))
    TriggerHistoryRecord.add_member(:triggered_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "triggeredTimestamp"))
    TriggerHistoryRecord.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    TriggerHistoryRecord.add_member(:destinations, Shapes::ShapeRef.new(shape: ScheduledQueryDestinationList, location_name: "destinations"))
    TriggerHistoryRecord.struct_class = Types::TriggerHistoryRecord

    TriggerHistoryRecordList.member = Shapes::ShapeRef.new(shape: TriggerHistoryRecord)

    TrimString.add_member(:with_keys, Shapes::ShapeRef.new(shape: TrimStringWithKeys, required: true, location_name: "withKeys"))
    TrimString.struct_class = Types::TrimString

    TrimStringWithKeys.member = Shapes::ShapeRef.new(shape: WithKey)

    TypeConverter.add_member(:entries, Shapes::ShapeRef.new(shape: TypeConverterEntries, required: true, location_name: "entries"))
    TypeConverter.struct_class = Types::TypeConverter

    TypeConverterEntries.member = Shapes::ShapeRef.new(shape: TypeConverterEntry)

    TypeConverterEntry.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "key"))
    TypeConverterEntry.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    TypeConverterEntry.struct_class = Types::TypeConverterEntry

    UnrecognizedClientException.struct_class = Types::UnrecognizedClientException

    UntagLogGroupRequest.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    UntagLogGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    UntagLogGroupRequest.struct_class = Types::UntagLogGroupRequest

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAnomalyRequest.add_member(:anomaly_id, Shapes::ShapeRef.new(shape: AnomalyId, location_name: "anomalyId"))
    UpdateAnomalyRequest.add_member(:pattern_id, Shapes::ShapeRef.new(shape: PatternId, location_name: "patternId"))
    UpdateAnomalyRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, required: true, location_name: "anomalyDetectorArn"))
    UpdateAnomalyRequest.add_member(:suppression_type, Shapes::ShapeRef.new(shape: SuppressionType, location_name: "suppressionType"))
    UpdateAnomalyRequest.add_member(:suppression_period, Shapes::ShapeRef.new(shape: SuppressionPeriod, location_name: "suppressionPeriod"))
    UpdateAnomalyRequest.add_member(:baseline, Shapes::ShapeRef.new(shape: Baseline, location_name: "baseline"))
    UpdateAnomalyRequest.struct_class = Types::UpdateAnomalyRequest

    UpdateDeliveryConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: DeliveryId, required: true, location_name: "id"))
    UpdateDeliveryConfigurationRequest.add_member(:record_fields, Shapes::ShapeRef.new(shape: RecordFields, location_name: "recordFields"))
    UpdateDeliveryConfigurationRequest.add_member(:field_delimiter, Shapes::ShapeRef.new(shape: FieldDelimiter, location_name: "fieldDelimiter"))
    UpdateDeliveryConfigurationRequest.add_member(:s3_delivery_configuration, Shapes::ShapeRef.new(shape: S3DeliveryConfiguration, location_name: "s3DeliveryConfiguration"))
    UpdateDeliveryConfigurationRequest.struct_class = Types::UpdateDeliveryConfigurationRequest

    UpdateDeliveryConfigurationResponse.struct_class = Types::UpdateDeliveryConfigurationResponse

    UpdateLogAnomalyDetectorRequest.add_member(:anomaly_detector_arn, Shapes::ShapeRef.new(shape: AnomalyDetectorArn, required: true, location_name: "anomalyDetectorArn"))
    UpdateLogAnomalyDetectorRequest.add_member(:evaluation_frequency, Shapes::ShapeRef.new(shape: EvaluationFrequency, location_name: "evaluationFrequency"))
    UpdateLogAnomalyDetectorRequest.add_member(:filter_pattern, Shapes::ShapeRef.new(shape: FilterPattern, location_name: "filterPattern"))
    UpdateLogAnomalyDetectorRequest.add_member(:anomaly_visibility_time, Shapes::ShapeRef.new(shape: AnomalyVisibilityTime, location_name: "anomalyVisibilityTime"))
    UpdateLogAnomalyDetectorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    UpdateLogAnomalyDetectorRequest.struct_class = Types::UpdateLogAnomalyDetectorRequest

    UpdateScheduledQueryRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ScheduledQueryIdentifier, required: true, location_name: "identifier"))
    UpdateScheduledQueryRequest.add_member(:description, Shapes::ShapeRef.new(shape: ScheduledQueryDescription, location_name: "description"))
    UpdateScheduledQueryRequest.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, required: true, location_name: "queryLanguage"))
    UpdateScheduledQueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "queryString"))
    UpdateScheduledQueryRequest.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: ScheduledQueryLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    UpdateScheduledQueryRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "scheduleExpression"))
    UpdateScheduledQueryRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: ScheduleTimezone, location_name: "timezone"))
    UpdateScheduledQueryRequest.add_member(:start_time_offset, Shapes::ShapeRef.new(shape: StartTimeOffset, location_name: "startTimeOffset"))
    UpdateScheduledQueryRequest.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    UpdateScheduledQueryRequest.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleStartTime"))
    UpdateScheduledQueryRequest.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleEndTime"))
    UpdateScheduledQueryRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRoleArn"))
    UpdateScheduledQueryRequest.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    UpdateScheduledQueryRequest.struct_class = Types::UpdateScheduledQueryRequest

    UpdateScheduledQueryResponse.add_member(:scheduled_query_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "scheduledQueryArn"))
    UpdateScheduledQueryResponse.add_member(:name, Shapes::ShapeRef.new(shape: ScheduledQueryName, location_name: "name"))
    UpdateScheduledQueryResponse.add_member(:description, Shapes::ShapeRef.new(shape: ScheduledQueryDescription, location_name: "description"))
    UpdateScheduledQueryResponse.add_member(:query_language, Shapes::ShapeRef.new(shape: QueryLanguage, location_name: "queryLanguage"))
    UpdateScheduledQueryResponse.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, location_name: "queryString"))
    UpdateScheduledQueryResponse.add_member(:log_group_identifiers, Shapes::ShapeRef.new(shape: ScheduledQueryLogGroupIdentifiers, location_name: "logGroupIdentifiers"))
    UpdateScheduledQueryResponse.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "scheduleExpression"))
    UpdateScheduledQueryResponse.add_member(:timezone, Shapes::ShapeRef.new(shape: ScheduleTimezone, location_name: "timezone"))
    UpdateScheduledQueryResponse.add_member(:start_time_offset, Shapes::ShapeRef.new(shape: StartTimeOffset, location_name: "startTimeOffset"))
    UpdateScheduledQueryResponse.add_member(:destination_configuration, Shapes::ShapeRef.new(shape: DestinationConfiguration, location_name: "destinationConfiguration"))
    UpdateScheduledQueryResponse.add_member(:state, Shapes::ShapeRef.new(shape: ScheduledQueryState, location_name: "state"))
    UpdateScheduledQueryResponse.add_member(:last_triggered_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastTriggeredTime"))
    UpdateScheduledQueryResponse.add_member(:last_execution_status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "lastExecutionStatus"))
    UpdateScheduledQueryResponse.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleStartTime"))
    UpdateScheduledQueryResponse.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduleEndTime"))
    UpdateScheduledQueryResponse.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRoleArn"))
    UpdateScheduledQueryResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    UpdateScheduledQueryResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTime"))
    UpdateScheduledQueryResponse.struct_class = Types::UpdateScheduledQueryResponse

    UpperCaseString.add_member(:with_keys, Shapes::ShapeRef.new(shape: UpperCaseStringWithKeys, required: true, location_name: "withKeys"))
    UpperCaseString.struct_class = Types::UpperCaseString

    UpperCaseStringWithKeys.member = Shapes::ShapeRef.new(shape: WithKey)

    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-03-28"

      api.metadata = {
        "apiVersion" => "2014-03-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "logs",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon CloudWatch Logs",
        "serviceId" => "CloudWatch Logs",
        "signatureVersion" => "v4",
        "targetPrefix" => "Logs_20140328",
        "uid" => "logs-2014-03-28",
      }

      api.add_operation(:associate_kms_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateKmsKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateKmsKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:cancel_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_delivery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDelivery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeliveryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeliveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExportTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExportTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:create_log_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLogAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_log_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLogStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLogStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduledQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_account_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
      end)

      api.add_operation(:delete_data_protection_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataProtectionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataProtectionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_delivery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDelivery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeliveryRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_delivery_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeliveryDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeliveryDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_delivery_destination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeliveryDestinationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeliveryDestinationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_delivery_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeliverySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeliverySourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_index_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndexPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIndexPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_log_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
      end)

      api.add_operation(:delete_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_log_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLogStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLogStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_metric_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMetricFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMetricFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_query_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduledQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_subscription_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:describe_account_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_configuration_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_deliveries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeliveries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeliveriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeliveriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_delivery_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeliveryDestinations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeliveryDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeliveryDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_delivery_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeliverySources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeliverySourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeliverySourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDestinations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_export_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExportTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExportTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExportTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_field_indexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFieldIndexes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFieldIndexesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFieldIndexesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_index_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIndexPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIndexPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIndexPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_log_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLogGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLogGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLogGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_log_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLogStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLogStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLogStreamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_metric_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetricFilters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMetricFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMetricFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_query_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQueryDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueryDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueryDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_subscription_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSubscriptionFilters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSubscriptionFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSubscriptionFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disassociate_kms_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateKmsKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateKmsKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:filter_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FilterLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FilterLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: FilterLogEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_data_protection_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataProtectionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataProtectionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataProtectionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_delivery, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDelivery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeliveryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeliveryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_delivery_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeliveryDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeliveryDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeliveryDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_delivery_destination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeliveryDestinationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeliveryDestinationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeliveryDestinationPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_delivery_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeliverySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeliverySourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeliverySourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_log_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogAnomalyDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
      end)

      api.add_operation(:get_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_forward_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_log_group_fields, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogGroupFields"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogGroupFieldsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogGroupFieldsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_log_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogObject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "streaming-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetLogObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:get_log_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_query_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueryResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueryResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueryResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetScheduledQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_scheduled_query_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScheduledQueryHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetScheduledQueryHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetScheduledQueryHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTransformerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:list_anomalies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnomalies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAnomaliesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnomaliesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_log_anomaly_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogAnomalyDetectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLogAnomalyDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogAnomalyDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_log_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLogGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_log_groups_for_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogGroupsForQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListLogGroupsForQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogGroupsForQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scheduled_queries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduledQueries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListScheduledQueriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduledQueriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_tags_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: ListTagsLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsLogGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_account_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccountPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:put_data_protection_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDataProtectionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDataProtectionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDataProtectionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_delivery_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDeliveryDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDeliveryDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDeliveryDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_delivery_destination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDeliveryDestinationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDeliveryDestinationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDeliveryDestinationPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_delivery_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDeliverySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDeliverySourceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDeliverySourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_destination_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDestinationPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDestinationPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_index_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutIndexPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutIndexPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutIndexPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_log_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLogEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLogEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutLogEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSequenceTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DataAlreadyAcceptedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnrecognizedClientException)
      end)

      api.add_operation(:put_log_group_deletion_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLogGroupDeletionProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLogGroupDeletionProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:put_metric_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetricFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMetricFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:put_query_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutQueryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutQueryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutQueryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:put_subscription_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSubscriptionFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSubscriptionFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:put_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:start_live_tail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLiveTail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_pattern = {
          "hostPrefix" => "streaming-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartLiveTailRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLiveTailResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:start_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedQueryException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:stop_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: StopQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:tag_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: TagLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:test_metric_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestMetricFilter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestMetricFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: TestMetricFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:test_transformer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestTransformer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestTransformerRequest)
        o.output = Shapes::ShapeRef.new(shape: TestTransformerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:untag_log_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagLogGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: UntagLogGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_anomaly, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnomaly"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnomalyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
      end)

      api.add_operation(:update_delivery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeliveryConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeliveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeliveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_log_anomaly_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLogAnomalyDetector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLogAnomalyDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationAbortedException)
      end)

      api.add_operation(:update_scheduled_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScheduledQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduledQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduledQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
