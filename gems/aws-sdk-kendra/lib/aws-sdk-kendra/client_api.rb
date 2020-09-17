# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kendra
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControlListConfiguration = Shapes::StructureShape.new(name: 'AccessControlListConfiguration')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AclConfiguration = Shapes::StructureShape.new(name: 'AclConfiguration')
    AdditionalResultAttribute = Shapes::StructureShape.new(name: 'AdditionalResultAttribute')
    AdditionalResultAttributeList = Shapes::ListShape.new(name: 'AdditionalResultAttributeList')
    AdditionalResultAttributeValue = Shapes::StructureShape.new(name: 'AdditionalResultAttributeValue')
    AdditionalResultAttributeValueType = Shapes::StringShape.new(name: 'AdditionalResultAttributeValueType')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AttributeFilter = Shapes::StructureShape.new(name: 'AttributeFilter')
    AttributeFilterList = Shapes::ListShape.new(name: 'AttributeFilterList')
    BatchDeleteDocumentRequest = Shapes::StructureShape.new(name: 'BatchDeleteDocumentRequest')
    BatchDeleteDocumentResponse = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponse')
    BatchDeleteDocumentResponseFailedDocument = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponseFailedDocument')
    BatchDeleteDocumentResponseFailedDocuments = Shapes::ListShape.new(name: 'BatchDeleteDocumentResponseFailedDocuments')
    BatchPutDocumentRequest = Shapes::StructureShape.new(name: 'BatchPutDocumentRequest')
    BatchPutDocumentResponse = Shapes::StructureShape.new(name: 'BatchPutDocumentResponse')
    BatchPutDocumentResponseFailedDocument = Shapes::StructureShape.new(name: 'BatchPutDocumentResponseFailedDocument')
    BatchPutDocumentResponseFailedDocuments = Shapes::ListShape.new(name: 'BatchPutDocumentResponseFailedDocuments')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CapacityUnitsConfiguration = Shapes::StructureShape.new(name: 'CapacityUnitsConfiguration')
    ChangeDetectingColumns = Shapes::ListShape.new(name: 'ChangeDetectingColumns')
    ClickFeedback = Shapes::StructureShape.new(name: 'ClickFeedback')
    ClickFeedbackList = Shapes::ListShape.new(name: 'ClickFeedbackList')
    ClientTokenName = Shapes::StringShape.new(name: 'ClientTokenName')
    ColumnConfiguration = Shapes::StructureShape.new(name: 'ColumnConfiguration')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionConfiguration = Shapes::StructureShape.new(name: 'ConnectionConfiguration')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateFaqRequest = Shapes::StructureShape.new(name: 'CreateFaqRequest')
    CreateFaqResponse = Shapes::StructureShape.new(name: 'CreateFaqResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceDateFieldFormat = Shapes::StringShape.new(name: 'DataSourceDateFieldFormat')
    DataSourceFieldName = Shapes::StringShape.new(name: 'DataSourceFieldName')
    DataSourceId = Shapes::StringShape.new(name: 'DataSourceId')
    DataSourceInclusionsExclusionsStrings = Shapes::ListShape.new(name: 'DataSourceInclusionsExclusionsStrings')
    DataSourceInclusionsExclusionsStringsMember = Shapes::StringShape.new(name: 'DataSourceInclusionsExclusionsStringsMember')
    DataSourceName = Shapes::StringShape.new(name: 'DataSourceName')
    DataSourceStatus = Shapes::StringShape.new(name: 'DataSourceStatus')
    DataSourceSummary = Shapes::StructureShape.new(name: 'DataSourceSummary')
    DataSourceSummaryList = Shapes::ListShape.new(name: 'DataSourceSummaryList')
    DataSourceSyncJob = Shapes::StructureShape.new(name: 'DataSourceSyncJob')
    DataSourceSyncJobHistoryList = Shapes::ListShape.new(name: 'DataSourceSyncJobHistoryList')
    DataSourceSyncJobId = Shapes::StringShape.new(name: 'DataSourceSyncJobId')
    DataSourceSyncJobMetricTarget = Shapes::StructureShape.new(name: 'DataSourceSyncJobMetricTarget')
    DataSourceSyncJobMetrics = Shapes::StructureShape.new(name: 'DataSourceSyncJobMetrics')
    DataSourceSyncJobStatus = Shapes::StringShape.new(name: 'DataSourceSyncJobStatus')
    DataSourceToIndexFieldMapping = Shapes::StructureShape.new(name: 'DataSourceToIndexFieldMapping')
    DataSourceToIndexFieldMappingList = Shapes::ListShape.new(name: 'DataSourceToIndexFieldMappingList')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DataSourceVpcConfiguration = Shapes::StructureShape.new(name: 'DataSourceVpcConfiguration')
    DatabaseConfiguration = Shapes::StructureShape.new(name: 'DatabaseConfiguration')
    DatabaseEngineType = Shapes::StringShape.new(name: 'DatabaseEngineType')
    DatabaseHost = Shapes::StringShape.new(name: 'DatabaseHost')
    DatabaseName = Shapes::StringShape.new(name: 'DatabaseName')
    DatabasePort = Shapes::IntegerShape.new(name: 'DatabasePort')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteFaqRequest = Shapes::StructureShape.new(name: 'DeleteFaqRequest')
    DeleteIndexRequest = Shapes::StructureShape.new(name: 'DeleteIndexRequest')
    DescribeDataSourceRequest = Shapes::StructureShape.new(name: 'DescribeDataSourceRequest')
    DescribeDataSourceResponse = Shapes::StructureShape.new(name: 'DescribeDataSourceResponse')
    DescribeFaqRequest = Shapes::StructureShape.new(name: 'DescribeFaqRequest')
    DescribeFaqResponse = Shapes::StructureShape.new(name: 'DescribeFaqResponse')
    DescribeIndexRequest = Shapes::StructureShape.new(name: 'DescribeIndexRequest')
    DescribeIndexResponse = Shapes::StructureShape.new(name: 'DescribeIndexResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentAttribute = Shapes::StructureShape.new(name: 'DocumentAttribute')
    DocumentAttributeKey = Shapes::StringShape.new(name: 'DocumentAttributeKey')
    DocumentAttributeKeyList = Shapes::ListShape.new(name: 'DocumentAttributeKeyList')
    DocumentAttributeList = Shapes::ListShape.new(name: 'DocumentAttributeList')
    DocumentAttributeStringListValue = Shapes::ListShape.new(name: 'DocumentAttributeStringListValue')
    DocumentAttributeStringValue = Shapes::StringShape.new(name: 'DocumentAttributeStringValue')
    DocumentAttributeValue = Shapes::StructureShape.new(name: 'DocumentAttributeValue')
    DocumentAttributeValueCountPair = Shapes::StructureShape.new(name: 'DocumentAttributeValueCountPair')
    DocumentAttributeValueCountPairList = Shapes::ListShape.new(name: 'DocumentAttributeValueCountPairList')
    DocumentAttributeValueType = Shapes::StringShape.new(name: 'DocumentAttributeValueType')
    DocumentId = Shapes::StringShape.new(name: 'DocumentId')
    DocumentIdList = Shapes::ListShape.new(name: 'DocumentIdList')
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    DocumentMetadataBoolean = Shapes::BooleanShape.new(name: 'DocumentMetadataBoolean')
    DocumentMetadataConfiguration = Shapes::StructureShape.new(name: 'DocumentMetadataConfiguration')
    DocumentMetadataConfigurationList = Shapes::ListShape.new(name: 'DocumentMetadataConfigurationList')
    DocumentMetadataConfigurationName = Shapes::StringShape.new(name: 'DocumentMetadataConfigurationName')
    DocumentsMetadataConfiguration = Shapes::StructureShape.new(name: 'DocumentsMetadataConfiguration')
    Duration = Shapes::StringShape.new(name: 'Duration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Facet = Shapes::StructureShape.new(name: 'Facet')
    FacetList = Shapes::ListShape.new(name: 'FacetList')
    FacetResult = Shapes::StructureShape.new(name: 'FacetResult')
    FacetResultList = Shapes::ListShape.new(name: 'FacetResultList')
    FaqFileFormat = Shapes::StringShape.new(name: 'FaqFileFormat')
    FaqId = Shapes::StringShape.new(name: 'FaqId')
    FaqName = Shapes::StringShape.new(name: 'FaqName')
    FaqStatistics = Shapes::StructureShape.new(name: 'FaqStatistics')
    FaqStatus = Shapes::StringShape.new(name: 'FaqStatus')
    FaqSummary = Shapes::StructureShape.new(name: 'FaqSummary')
    FaqSummaryItems = Shapes::ListShape.new(name: 'FaqSummaryItems')
    Highlight = Shapes::StructureShape.new(name: 'Highlight')
    HighlightList = Shapes::ListShape.new(name: 'HighlightList')
    Importance = Shapes::IntegerShape.new(name: 'Importance')
    IndexConfigurationSummary = Shapes::StructureShape.new(name: 'IndexConfigurationSummary')
    IndexConfigurationSummaryList = Shapes::ListShape.new(name: 'IndexConfigurationSummaryList')
    IndexEdition = Shapes::StringShape.new(name: 'IndexEdition')
    IndexFieldName = Shapes::StringShape.new(name: 'IndexFieldName')
    IndexId = Shapes::StringShape.new(name: 'IndexId')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexStatistics = Shapes::StructureShape.new(name: 'IndexStatistics')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    IndexedQuestionAnswersCount = Shapes::IntegerShape.new(name: 'IndexedQuestionAnswersCount')
    IndexedTextBytes = Shapes::IntegerShape.new(name: 'IndexedTextBytes')
    IndexedTextDocumentsCount = Shapes::IntegerShape.new(name: 'IndexedTextDocumentsCount')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListDataSourceSyncJobsRequest = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsRequest')
    ListDataSourceSyncJobsResponse = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListFaqsRequest = Shapes::StructureShape.new(name: 'ListFaqsRequest')
    ListFaqsResponse = Shapes::StructureShape.new(name: 'ListFaqsResponse')
    ListIndicesRequest = Shapes::StructureShape.new(name: 'ListIndicesRequest')
    ListIndicesResponse = Shapes::StructureShape.new(name: 'ListIndicesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResultsIntegerForListDataSourceSyncJobsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourceSyncJobsRequest')
    MaxResultsIntegerForListDataSourcesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourcesRequest')
    MaxResultsIntegerForListFaqsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListFaqsRequest')
    MaxResultsIntegerForListIndicesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListIndicesRequest')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OneDriveConfiguration = Shapes::StructureShape.new(name: 'OneDriveConfiguration')
    OneDriveUser = Shapes::StringShape.new(name: 'OneDriveUser')
    OneDriveUserList = Shapes::ListShape.new(name: 'OneDriveUserList')
    OneDriveUsers = Shapes::StructureShape.new(name: 'OneDriveUsers')
    Order = Shapes::StringShape.new(name: 'Order')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    PrincipalName = Shapes::StringShape.new(name: 'PrincipalName')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    QueryCapacityUnit = Shapes::IntegerShape.new(name: 'QueryCapacityUnit')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryIdentifiersEnclosingOption = Shapes::StringShape.new(name: 'QueryIdentifiersEnclosingOption')
    QueryRequest = Shapes::StructureShape.new(name: 'QueryRequest')
    QueryResult = Shapes::StructureShape.new(name: 'QueryResult')
    QueryResultItem = Shapes::StructureShape.new(name: 'QueryResultItem')
    QueryResultItemList = Shapes::ListShape.new(name: 'QueryResultItemList')
    QueryResultType = Shapes::StringShape.new(name: 'QueryResultType')
    QueryText = Shapes::StringShape.new(name: 'QueryText')
    ReadAccessType = Shapes::StringShape.new(name: 'ReadAccessType')
    Relevance = Shapes::StructureShape.new(name: 'Relevance')
    RelevanceFeedback = Shapes::StructureShape.new(name: 'RelevanceFeedback')
    RelevanceFeedbackList = Shapes::ListShape.new(name: 'RelevanceFeedbackList')
    RelevanceType = Shapes::StringShape.new(name: 'RelevanceType')
    ResourceAlreadyExistException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    ResultId = Shapes::StringShape.new(name: 'ResultId')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3DataSourceConfiguration = Shapes::StructureShape.new(name: 'S3DataSourceConfiguration')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3Path = Shapes::StructureShape.new(name: 'S3Path')
    SalesforceChatterFeedConfiguration = Shapes::StructureShape.new(name: 'SalesforceChatterFeedConfiguration')
    SalesforceChatterFeedIncludeFilterType = Shapes::StringShape.new(name: 'SalesforceChatterFeedIncludeFilterType')
    SalesforceChatterFeedIncludeFilterTypes = Shapes::ListShape.new(name: 'SalesforceChatterFeedIncludeFilterTypes')
    SalesforceConfiguration = Shapes::StructureShape.new(name: 'SalesforceConfiguration')
    SalesforceCustomKnowledgeArticleTypeConfiguration = Shapes::StructureShape.new(name: 'SalesforceCustomKnowledgeArticleTypeConfiguration')
    SalesforceCustomKnowledgeArticleTypeConfigurationList = Shapes::ListShape.new(name: 'SalesforceCustomKnowledgeArticleTypeConfigurationList')
    SalesforceCustomKnowledgeArticleTypeName = Shapes::StringShape.new(name: 'SalesforceCustomKnowledgeArticleTypeName')
    SalesforceKnowledgeArticleConfiguration = Shapes::StructureShape.new(name: 'SalesforceKnowledgeArticleConfiguration')
    SalesforceKnowledgeArticleState = Shapes::StringShape.new(name: 'SalesforceKnowledgeArticleState')
    SalesforceKnowledgeArticleStateList = Shapes::ListShape.new(name: 'SalesforceKnowledgeArticleStateList')
    SalesforceStandardKnowledgeArticleTypeConfiguration = Shapes::StructureShape.new(name: 'SalesforceStandardKnowledgeArticleTypeConfiguration')
    SalesforceStandardObjectAttachmentConfiguration = Shapes::StructureShape.new(name: 'SalesforceStandardObjectAttachmentConfiguration')
    SalesforceStandardObjectConfiguration = Shapes::StructureShape.new(name: 'SalesforceStandardObjectConfiguration')
    SalesforceStandardObjectConfigurationList = Shapes::ListShape.new(name: 'SalesforceStandardObjectConfigurationList')
    SalesforceStandardObjectName = Shapes::StringShape.new(name: 'SalesforceStandardObjectName')
    ScanSchedule = Shapes::StringShape.new(name: 'ScanSchedule')
    ScoreAttributes = Shapes::StructureShape.new(name: 'ScoreAttributes')
    ScoreConfidence = Shapes::StringShape.new(name: 'ScoreConfidence')
    Search = Shapes::StructureShape.new(name: 'Search')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceNowBuildVersionType = Shapes::StringShape.new(name: 'ServiceNowBuildVersionType')
    ServiceNowConfiguration = Shapes::StructureShape.new(name: 'ServiceNowConfiguration')
    ServiceNowHostUrl = Shapes::StringShape.new(name: 'ServiceNowHostUrl')
    ServiceNowKnowledgeArticleConfiguration = Shapes::StructureShape.new(name: 'ServiceNowKnowledgeArticleConfiguration')
    ServiceNowServiceCatalogConfiguration = Shapes::StructureShape.new(name: 'ServiceNowServiceCatalogConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharePointConfiguration = Shapes::StructureShape.new(name: 'SharePointConfiguration')
    SharePointUrlList = Shapes::ListShape.new(name: 'SharePointUrlList')
    SharePointVersion = Shapes::StringShape.new(name: 'SharePointVersion')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SortingConfiguration = Shapes::StructureShape.new(name: 'SortingConfiguration')
    SqlConfiguration = Shapes::StructureShape.new(name: 'SqlConfiguration')
    StartDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobRequest')
    StartDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobResponse')
    StopDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobRequest')
    StorageCapacityUnit = Shapes::IntegerShape.new(name: 'StorageCapacityUnit')
    String = Shapes::StringShape.new(name: 'String')
    SubmitFeedbackRequest = Shapes::StructureShape.new(name: 'SubmitFeedbackRequest')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    TableName = Shapes::StringShape.new(name: 'TableName')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TenantDomain = Shapes::StringShape.new(name: 'TenantDomain')
    TextDocumentStatistics = Shapes::StructureShape.new(name: 'TextDocumentStatistics')
    TextWithHighlights = Shapes::StructureShape.new(name: 'TextWithHighlights')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Title = Shapes::StringShape.new(name: 'Title')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateIndexRequest = Shapes::StructureShape.new(name: 'UpdateIndexRequest')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueImportanceMap = Shapes::MapShape.new(name: 'ValueImportanceMap')
    ValueImportanceMapKey = Shapes::StringShape.new(name: 'ValueImportanceMapKey')
    VpcSecurityGroupId = Shapes::StringShape.new(name: 'VpcSecurityGroupId')

    AccessControlListConfiguration.add_member(:key_path, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "KeyPath"))
    AccessControlListConfiguration.struct_class = Types::AccessControlListConfiguration

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AclConfiguration.add_member(:allowed_groups_column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "AllowedGroupsColumnName"))
    AclConfiguration.struct_class = Types::AclConfiguration

    AdditionalResultAttribute.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    AdditionalResultAttribute.add_member(:value_type, Shapes::ShapeRef.new(shape: AdditionalResultAttributeValueType, required: true, location_name: "ValueType"))
    AdditionalResultAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AdditionalResultAttributeValue, required: true, location_name: "Value"))
    AdditionalResultAttribute.struct_class = Types::AdditionalResultAttribute

    AdditionalResultAttributeList.member = Shapes::ShapeRef.new(shape: AdditionalResultAttribute)

    AdditionalResultAttributeValue.add_member(:text_with_highlights_value, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "TextWithHighlightsValue"))
    AdditionalResultAttributeValue.struct_class = Types::AdditionalResultAttributeValue

    AttributeFilter.add_member(:and_all_filters, Shapes::ShapeRef.new(shape: AttributeFilterList, location_name: "AndAllFilters"))
    AttributeFilter.add_member(:or_all_filters, Shapes::ShapeRef.new(shape: AttributeFilterList, location_name: "OrAllFilters"))
    AttributeFilter.add_member(:not_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "NotFilter"))
    AttributeFilter.add_member(:equals_to, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "EqualsTo"))
    AttributeFilter.add_member(:contains_all, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "ContainsAll"))
    AttributeFilter.add_member(:contains_any, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "ContainsAny"))
    AttributeFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "GreaterThan"))
    AttributeFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "GreaterThanOrEquals"))
    AttributeFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "LessThan"))
    AttributeFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "LessThanOrEquals"))
    AttributeFilter.struct_class = Types::AttributeFilter

    AttributeFilterList.member = Shapes::ShapeRef.new(shape: AttributeFilter)

    BatchDeleteDocumentRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    BatchDeleteDocumentRequest.add_member(:document_id_list, Shapes::ShapeRef.new(shape: DocumentIdList, required: true, location_name: "DocumentIdList"))
    BatchDeleteDocumentRequest.add_member(:data_source_sync_job_metric_target, Shapes::ShapeRef.new(shape: DataSourceSyncJobMetricTarget, location_name: "DataSourceSyncJobMetricTarget"))
    BatchDeleteDocumentRequest.struct_class = Types::BatchDeleteDocumentRequest

    BatchDeleteDocumentResponse.add_member(:failed_documents, Shapes::ShapeRef.new(shape: BatchDeleteDocumentResponseFailedDocuments, location_name: "FailedDocuments"))
    BatchDeleteDocumentResponse.struct_class = Types::BatchDeleteDocumentResponse

    BatchDeleteDocumentResponseFailedDocument.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "Id"))
    BatchDeleteDocumentResponseFailedDocument.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchDeleteDocumentResponseFailedDocument.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    BatchDeleteDocumentResponseFailedDocument.struct_class = Types::BatchDeleteDocumentResponseFailedDocument

    BatchDeleteDocumentResponseFailedDocuments.member = Shapes::ShapeRef.new(shape: BatchDeleteDocumentResponseFailedDocument)

    BatchPutDocumentRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    BatchPutDocumentRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    BatchPutDocumentRequest.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, required: true, location_name: "Documents"))
    BatchPutDocumentRequest.struct_class = Types::BatchPutDocumentRequest

    BatchPutDocumentResponse.add_member(:failed_documents, Shapes::ShapeRef.new(shape: BatchPutDocumentResponseFailedDocuments, location_name: "FailedDocuments"))
    BatchPutDocumentResponse.struct_class = Types::BatchPutDocumentResponse

    BatchPutDocumentResponseFailedDocument.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "Id"))
    BatchPutDocumentResponseFailedDocument.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchPutDocumentResponseFailedDocument.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    BatchPutDocumentResponseFailedDocument.struct_class = Types::BatchPutDocumentResponseFailedDocument

    BatchPutDocumentResponseFailedDocuments.member = Shapes::ShapeRef.new(shape: BatchPutDocumentResponseFailedDocument)

    CapacityUnitsConfiguration.add_member(:storage_capacity_units, Shapes::ShapeRef.new(shape: StorageCapacityUnit, required: true, location_name: "StorageCapacityUnits"))
    CapacityUnitsConfiguration.add_member(:query_capacity_units, Shapes::ShapeRef.new(shape: QueryCapacityUnit, required: true, location_name: "QueryCapacityUnits"))
    CapacityUnitsConfiguration.struct_class = Types::CapacityUnitsConfiguration

    ChangeDetectingColumns.member = Shapes::ShapeRef.new(shape: ColumnName)

    ClickFeedback.add_member(:result_id, Shapes::ShapeRef.new(shape: ResultId, required: true, location_name: "ResultId"))
    ClickFeedback.add_member(:click_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ClickTime"))
    ClickFeedback.struct_class = Types::ClickFeedback

    ClickFeedbackList.member = Shapes::ShapeRef.new(shape: ClickFeedback)

    ColumnConfiguration.add_member(:document_id_column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "DocumentIdColumnName"))
    ColumnConfiguration.add_member(:document_data_column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "DocumentDataColumnName"))
    ColumnConfiguration.add_member(:document_title_column_name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "DocumentTitleColumnName"))
    ColumnConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    ColumnConfiguration.add_member(:change_detecting_columns, Shapes::ShapeRef.new(shape: ChangeDetectingColumns, required: true, location_name: "ChangeDetectingColumns"))
    ColumnConfiguration.struct_class = Types::ColumnConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionConfiguration.add_member(:database_host, Shapes::ShapeRef.new(shape: DatabaseHost, required: true, location_name: "DatabaseHost"))
    ConnectionConfiguration.add_member(:database_port, Shapes::ShapeRef.new(shape: DatabasePort, required: true, location_name: "DatabasePort"))
    ConnectionConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    ConnectionConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    ConnectionConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    ConnectionConfiguration.struct_class = Types::ConnectionConfiguration

    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location_name: "Name"))
    CreateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "Type"))
    CreateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "Configuration"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDataSourceRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    CreateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateDataSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateFaqRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateFaqRequest.add_member(:name, Shapes::ShapeRef.new(shape: FaqName, required: true, location_name: "Name"))
    CreateFaqRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateFaqRequest.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "S3Path"))
    CreateFaqRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateFaqRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFaqRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FaqFileFormat, location_name: "FileFormat"))
    CreateFaqRequest.struct_class = Types::CreateFaqRequest

    CreateFaqResponse.add_member(:id, Shapes::ShapeRef.new(shape: FaqId, location_name: "Id"))
    CreateFaqResponse.struct_class = Types::CreateFaqResponse

    CreateIndexRequest.add_member(:name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "Name"))
    CreateIndexRequest.add_member(:edition, Shapes::ShapeRef.new(shape: IndexEdition, location_name: "Edition"))
    CreateIndexRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateIndexRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    CreateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateIndexRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateIndexRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateIndexRequest.struct_class = Types::CreateIndexRequest

    CreateIndexResponse.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, location_name: "Id"))
    CreateIndexResponse.struct_class = Types::CreateIndexResponse

    DataSourceConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DataSourceConfiguration, location_name: "S3Configuration"))
    DataSourceConfiguration.add_member(:share_point_configuration, Shapes::ShapeRef.new(shape: SharePointConfiguration, location_name: "SharePointConfiguration"))
    DataSourceConfiguration.add_member(:database_configuration, Shapes::ShapeRef.new(shape: DatabaseConfiguration, location_name: "DatabaseConfiguration"))
    DataSourceConfiguration.add_member(:salesforce_configuration, Shapes::ShapeRef.new(shape: SalesforceConfiguration, location_name: "SalesforceConfiguration"))
    DataSourceConfiguration.add_member(:one_drive_configuration, Shapes::ShapeRef.new(shape: OneDriveConfiguration, location_name: "OneDriveConfiguration"))
    DataSourceConfiguration.add_member(:service_now_configuration, Shapes::ShapeRef.new(shape: ServiceNowConfiguration, location_name: "ServiceNowConfiguration"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DataSourceInclusionsExclusionsStrings.member = Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStringsMember)

    DataSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    DataSourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "Id"))
    DataSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "Type"))
    DataSourceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DataSourceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DataSourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    DataSourceSummary.struct_class = Types::DataSourceSummary

    DataSourceSummaryList.member = Shapes::ShapeRef.new(shape: DataSourceSummary)

    DataSourceSyncJob.add_member(:execution_id, Shapes::ShapeRef.new(shape: String, location_name: "ExecutionId"))
    DataSourceSyncJob.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DataSourceSyncJob.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DataSourceSyncJob.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location_name: "Status"))
    DataSourceSyncJob.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DataSourceSyncJob.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    DataSourceSyncJob.add_member(:data_source_error_code, Shapes::ShapeRef.new(shape: String, location_name: "DataSourceErrorCode"))
    DataSourceSyncJob.add_member(:metrics, Shapes::ShapeRef.new(shape: DataSourceSyncJobMetrics, location_name: "Metrics"))
    DataSourceSyncJob.struct_class = Types::DataSourceSyncJob

    DataSourceSyncJobHistoryList.member = Shapes::ShapeRef.new(shape: DataSourceSyncJob)

    DataSourceSyncJobMetricTarget.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "DataSourceId"))
    DataSourceSyncJobMetricTarget.add_member(:data_source_sync_job_id, Shapes::ShapeRef.new(shape: DataSourceSyncJobId, required: true, location_name: "DataSourceSyncJobId"))
    DataSourceSyncJobMetricTarget.struct_class = Types::DataSourceSyncJobMetricTarget

    DataSourceSyncJobMetrics.add_member(:documents_added, Shapes::ShapeRef.new(shape: MetricValue, location_name: "DocumentsAdded"))
    DataSourceSyncJobMetrics.add_member(:documents_modified, Shapes::ShapeRef.new(shape: MetricValue, location_name: "DocumentsModified"))
    DataSourceSyncJobMetrics.add_member(:documents_deleted, Shapes::ShapeRef.new(shape: MetricValue, location_name: "DocumentsDeleted"))
    DataSourceSyncJobMetrics.add_member(:documents_failed, Shapes::ShapeRef.new(shape: MetricValue, location_name: "DocumentsFailed"))
    DataSourceSyncJobMetrics.add_member(:documents_scanned, Shapes::ShapeRef.new(shape: MetricValue, location_name: "DocumentsScanned"))
    DataSourceSyncJobMetrics.struct_class = Types::DataSourceSyncJobMetrics

    DataSourceToIndexFieldMapping.add_member(:data_source_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DataSourceFieldName"))
    DataSourceToIndexFieldMapping.add_member(:date_field_format, Shapes::ShapeRef.new(shape: DataSourceDateFieldFormat, location_name: "DateFieldFormat"))
    DataSourceToIndexFieldMapping.add_member(:index_field_name, Shapes::ShapeRef.new(shape: IndexFieldName, required: true, location_name: "IndexFieldName"))
    DataSourceToIndexFieldMapping.struct_class = Types::DataSourceToIndexFieldMapping

    DataSourceToIndexFieldMappingList.member = Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMapping)

    DataSourceVpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    DataSourceVpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIds"))
    DataSourceVpcConfiguration.struct_class = Types::DataSourceVpcConfiguration

    DatabaseConfiguration.add_member(:database_engine_type, Shapes::ShapeRef.new(shape: DatabaseEngineType, required: true, location_name: "DatabaseEngineType"))
    DatabaseConfiguration.add_member(:connection_configuration, Shapes::ShapeRef.new(shape: ConnectionConfiguration, required: true, location_name: "ConnectionConfiguration"))
    DatabaseConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    DatabaseConfiguration.add_member(:column_configuration, Shapes::ShapeRef.new(shape: ColumnConfiguration, required: true, location_name: "ColumnConfiguration"))
    DatabaseConfiguration.add_member(:acl_configuration, Shapes::ShapeRef.new(shape: AclConfiguration, location_name: "AclConfiguration"))
    DatabaseConfiguration.add_member(:sql_configuration, Shapes::ShapeRef.new(shape: SqlConfiguration, location_name: "SqlConfiguration"))
    DatabaseConfiguration.struct_class = Types::DatabaseConfiguration

    DeleteDataSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    DeleteDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteFaqRequest.add_member(:id, Shapes::ShapeRef.new(shape: FaqId, required: true, location_name: "Id"))
    DeleteFaqRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteFaqRequest.struct_class = Types::DeleteFaqRequest

    DeleteIndexRequest.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "Id"))
    DeleteIndexRequest.struct_class = Types::DeleteIndexRequest

    DescribeDataSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    DescribeDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeDataSourceRequest.struct_class = Types::DescribeDataSourceRequest

    DescribeDataSourceResponse.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "Id"))
    DescribeDataSourceResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribeDataSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    DescribeDataSourceResponse.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "Type"))
    DescribeDataSourceResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "Configuration"))
    DescribeDataSourceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeDataSourceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeDataSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    DescribeDataSourceResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    DescribeDataSourceResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeDataSourceResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeDataSourceResponse.struct_class = Types::DescribeDataSourceResponse

    DescribeFaqRequest.add_member(:id, Shapes::ShapeRef.new(shape: FaqId, required: true, location_name: "Id"))
    DescribeFaqRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeFaqRequest.struct_class = Types::DescribeFaqRequest

    DescribeFaqResponse.add_member(:id, Shapes::ShapeRef.new(shape: FaqId, location_name: "Id"))
    DescribeFaqResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribeFaqResponse.add_member(:name, Shapes::ShapeRef.new(shape: FaqName, location_name: "Name"))
    DescribeFaqResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeFaqResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeFaqResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeFaqResponse.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "S3Path"))
    DescribeFaqResponse.add_member(:status, Shapes::ShapeRef.new(shape: FaqStatus, location_name: "Status"))
    DescribeFaqResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeFaqResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeFaqResponse.add_member(:file_format, Shapes::ShapeRef.new(shape: FaqFileFormat, location_name: "FileFormat"))
    DescribeFaqResponse.struct_class = Types::DescribeFaqResponse

    DescribeIndexRequest.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "Id"))
    DescribeIndexRequest.struct_class = Types::DescribeIndexRequest

    DescribeIndexResponse.add_member(:name, Shapes::ShapeRef.new(shape: IndexName, location_name: "Name"))
    DescribeIndexResponse.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, location_name: "Id"))
    DescribeIndexResponse.add_member(:edition, Shapes::ShapeRef.new(shape: IndexEdition, location_name: "Edition"))
    DescribeIndexResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeIndexResponse.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    DescribeIndexResponse.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "Status"))
    DescribeIndexResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeIndexResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeIndexResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeIndexResponse.add_member(:document_metadata_configurations, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationList, location_name: "DocumentMetadataConfigurations"))
    DescribeIndexResponse.add_member(:index_statistics, Shapes::ShapeRef.new(shape: IndexStatistics, location_name: "IndexStatistics"))
    DescribeIndexResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeIndexResponse.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: "CapacityUnits"))
    DescribeIndexResponse.struct_class = Types::DescribeIndexResponse

    Document.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "Id"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    Document.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    Document.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "S3Path"))
    Document.add_member(:attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "Attributes"))
    Document.add_member(:access_control_list, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "AccessControlList"))
    Document.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Document.struct_class = Types::Document

    DocumentAttribute.add_member(:key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "Key"))
    DocumentAttribute.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, required: true, location_name: "Value"))
    DocumentAttribute.struct_class = Types::DocumentAttribute

    DocumentAttributeKeyList.member = Shapes::ShapeRef.new(shape: DocumentAttributeKey)

    DocumentAttributeList.member = Shapes::ShapeRef.new(shape: DocumentAttribute)

    DocumentAttributeStringListValue.member = Shapes::ShapeRef.new(shape: String)

    DocumentAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: DocumentAttributeStringValue, location_name: "StringValue"))
    DocumentAttributeValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: DocumentAttributeStringListValue, location_name: "StringListValue"))
    DocumentAttributeValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "LongValue"))
    DocumentAttributeValue.add_member(:date_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateValue"))
    DocumentAttributeValue.struct_class = Types::DocumentAttributeValue

    DocumentAttributeValueCountPair.add_member(:document_attribute_value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "DocumentAttributeValue"))
    DocumentAttributeValueCountPair.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    DocumentAttributeValueCountPair.struct_class = Types::DocumentAttributeValueCountPair

    DocumentAttributeValueCountPairList.member = Shapes::ShapeRef.new(shape: DocumentAttributeValueCountPair)

    DocumentIdList.member = Shapes::ShapeRef.new(shape: DocumentId)

    DocumentList.member = Shapes::ShapeRef.new(shape: Document)

    DocumentMetadataConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationName, required: true, location_name: "Name"))
    DocumentMetadataConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: DocumentAttributeValueType, required: true, location_name: "Type"))
    DocumentMetadataConfiguration.add_member(:relevance, Shapes::ShapeRef.new(shape: Relevance, location_name: "Relevance"))
    DocumentMetadataConfiguration.add_member(:search, Shapes::ShapeRef.new(shape: Search, location_name: "Search"))
    DocumentMetadataConfiguration.struct_class = Types::DocumentMetadataConfiguration

    DocumentMetadataConfigurationList.member = Shapes::ShapeRef.new(shape: DocumentMetadataConfiguration)

    DocumentsMetadataConfiguration.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "S3Prefix"))
    DocumentsMetadataConfiguration.struct_class = Types::DocumentsMetadataConfiguration

    Facet.add_member(:document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: "DocumentAttributeKey"))
    Facet.struct_class = Types::Facet

    FacetList.member = Shapes::ShapeRef.new(shape: Facet)

    FacetResult.add_member(:document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: "DocumentAttributeKey"))
    FacetResult.add_member(:document_attribute_value_type, Shapes::ShapeRef.new(shape: DocumentAttributeValueType, location_name: "DocumentAttributeValueType"))
    FacetResult.add_member(:document_attribute_value_count_pairs, Shapes::ShapeRef.new(shape: DocumentAttributeValueCountPairList, location_name: "DocumentAttributeValueCountPairs"))
    FacetResult.struct_class = Types::FacetResult

    FacetResultList.member = Shapes::ShapeRef.new(shape: FacetResult)

    FaqStatistics.add_member(:indexed_question_answers_count, Shapes::ShapeRef.new(shape: IndexedQuestionAnswersCount, required: true, location_name: "IndexedQuestionAnswersCount"))
    FaqStatistics.struct_class = Types::FaqStatistics

    FaqSummary.add_member(:id, Shapes::ShapeRef.new(shape: FaqId, location_name: "Id"))
    FaqSummary.add_member(:name, Shapes::ShapeRef.new(shape: FaqName, location_name: "Name"))
    FaqSummary.add_member(:status, Shapes::ShapeRef.new(shape: FaqStatus, location_name: "Status"))
    FaqSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    FaqSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    FaqSummary.add_member(:file_format, Shapes::ShapeRef.new(shape: FaqFileFormat, location_name: "FileFormat"))
    FaqSummary.struct_class = Types::FaqSummary

    FaqSummaryItems.member = Shapes::ShapeRef.new(shape: FaqSummary)

    Highlight.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "BeginOffset"))
    Highlight.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "EndOffset"))
    Highlight.add_member(:top_answer, Shapes::ShapeRef.new(shape: Boolean, location_name: "TopAnswer"))
    Highlight.struct_class = Types::Highlight

    HighlightList.member = Shapes::ShapeRef.new(shape: Highlight)

    IndexConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: IndexName, location_name: "Name"))
    IndexConfigurationSummary.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, location_name: "Id"))
    IndexConfigurationSummary.add_member(:edition, Shapes::ShapeRef.new(shape: IndexEdition, location_name: "Edition"))
    IndexConfigurationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    IndexConfigurationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    IndexConfigurationSummary.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, required: true, location_name: "Status"))
    IndexConfigurationSummary.struct_class = Types::IndexConfigurationSummary

    IndexConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: IndexConfigurationSummary)

    IndexStatistics.add_member(:faq_statistics, Shapes::ShapeRef.new(shape: FaqStatistics, required: true, location_name: "FaqStatistics"))
    IndexStatistics.add_member(:text_document_statistics, Shapes::ShapeRef.new(shape: TextDocumentStatistics, required: true, location_name: "TextDocumentStatistics"))
    IndexStatistics.struct_class = Types::IndexStatistics

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDataSourceSyncJobsRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    ListDataSourceSyncJobsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListDataSourceSyncJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataSourceSyncJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSourceSyncJobsRequest, location_name: "MaxResults"))
    ListDataSourceSyncJobsRequest.add_member(:start_time_filter, Shapes::ShapeRef.new(shape: TimeRange, location_name: "StartTimeFilter"))
    ListDataSourceSyncJobsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location_name: "StatusFilter"))
    ListDataSourceSyncJobsRequest.struct_class = Types::ListDataSourceSyncJobsRequest

    ListDataSourceSyncJobsResponse.add_member(:history, Shapes::ShapeRef.new(shape: DataSourceSyncJobHistoryList, location_name: "History"))
    ListDataSourceSyncJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataSourceSyncJobsResponse.struct_class = Types::ListDataSourceSyncJobsResponse

    ListDataSourcesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSourcesRequest, location_name: "MaxResults"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:summary_items, Shapes::ShapeRef.new(shape: DataSourceSummaryList, location_name: "SummaryItems"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListFaqsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListFaqsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFaqsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListFaqsRequest, location_name: "MaxResults"))
    ListFaqsRequest.struct_class = Types::ListFaqsRequest

    ListFaqsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFaqsResponse.add_member(:faq_summary_items, Shapes::ShapeRef.new(shape: FaqSummaryItems, location_name: "FaqSummaryItems"))
    ListFaqsResponse.struct_class = Types::ListFaqsResponse

    ListIndicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIndicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListIndicesRequest, location_name: "MaxResults"))
    ListIndicesRequest.struct_class = Types::ListIndicesRequest

    ListIndicesResponse.add_member(:index_configuration_summary_items, Shapes::ShapeRef.new(shape: IndexConfigurationSummaryList, location_name: "IndexConfigurationSummaryItems"))
    ListIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIndicesResponse.struct_class = Types::ListIndicesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OneDriveConfiguration.add_member(:tenant_domain, Shapes::ShapeRef.new(shape: TenantDomain, required: true, location_name: "TenantDomain"))
    OneDriveConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    OneDriveConfiguration.add_member(:one_drive_users, Shapes::ShapeRef.new(shape: OneDriveUsers, required: true, location_name: "OneDriveUsers"))
    OneDriveConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    OneDriveConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    OneDriveConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    OneDriveConfiguration.struct_class = Types::OneDriveConfiguration

    OneDriveUserList.member = Shapes::ShapeRef.new(shape: OneDriveUser)

    OneDriveUsers.add_member(:one_drive_user_list, Shapes::ShapeRef.new(shape: OneDriveUserList, location_name: "OneDriveUserList"))
    OneDriveUsers.add_member(:one_drive_user_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "OneDriveUserS3Path"))
    OneDriveUsers.struct_class = Types::OneDriveUsers

    Principal.add_member(:name, Shapes::ShapeRef.new(shape: PrincipalName, required: true, location_name: "Name"))
    Principal.add_member(:type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "Type"))
    Principal.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "Access"))
    Principal.struct_class = Types::Principal

    PrincipalList.member = Shapes::ShapeRef.new(shape: Principal)

    QueryRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    QueryRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, required: true, location_name: "QueryText"))
    QueryRequest.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "AttributeFilter"))
    QueryRequest.add_member(:facets, Shapes::ShapeRef.new(shape: FacetList, location_name: "Facets"))
    QueryRequest.add_member(:requested_document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeKeyList, location_name: "RequestedDocumentAttributes"))
    QueryRequest.add_member(:query_result_type_filter, Shapes::ShapeRef.new(shape: QueryResultType, location_name: "QueryResultTypeFilter"))
    QueryRequest.add_member(:page_number, Shapes::ShapeRef.new(shape: Integer, location_name: "PageNumber"))
    QueryRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: Integer, location_name: "PageSize"))
    QueryRequest.add_member(:sorting_configuration, Shapes::ShapeRef.new(shape: SortingConfiguration, location_name: "SortingConfiguration"))
    QueryRequest.struct_class = Types::QueryRequest

    QueryResult.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "QueryId"))
    QueryResult.add_member(:result_items, Shapes::ShapeRef.new(shape: QueryResultItemList, location_name: "ResultItems"))
    QueryResult.add_member(:facet_results, Shapes::ShapeRef.new(shape: FacetResultList, location_name: "FacetResults"))
    QueryResult.add_member(:total_number_of_results, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalNumberOfResults"))
    QueryResult.struct_class = Types::QueryResult

    QueryResultItem.add_member(:id, Shapes::ShapeRef.new(shape: ResultId, location_name: "Id"))
    QueryResultItem.add_member(:type, Shapes::ShapeRef.new(shape: QueryResultType, location_name: "Type"))
    QueryResultItem.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AdditionalResultAttributeList, location_name: "AdditionalAttributes"))
    QueryResultItem.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    QueryResultItem.add_member(:document_title, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "DocumentTitle"))
    QueryResultItem.add_member(:document_excerpt, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "DocumentExcerpt"))
    QueryResultItem.add_member(:document_uri, Shapes::ShapeRef.new(shape: Url, location_name: "DocumentURI"))
    QueryResultItem.add_member(:document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "DocumentAttributes"))
    QueryResultItem.add_member(:score_attributes, Shapes::ShapeRef.new(shape: ScoreAttributes, location_name: "ScoreAttributes"))
    QueryResultItem.struct_class = Types::QueryResultItem

    QueryResultItemList.member = Shapes::ShapeRef.new(shape: QueryResultItem)

    Relevance.add_member(:freshness, Shapes::ShapeRef.new(shape: DocumentMetadataBoolean, location_name: "Freshness"))
    Relevance.add_member(:importance, Shapes::ShapeRef.new(shape: Importance, location_name: "Importance"))
    Relevance.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration"))
    Relevance.add_member(:rank_order, Shapes::ShapeRef.new(shape: Order, location_name: "RankOrder"))
    Relevance.add_member(:value_importance_map, Shapes::ShapeRef.new(shape: ValueImportanceMap, location_name: "ValueImportanceMap"))
    Relevance.struct_class = Types::Relevance

    RelevanceFeedback.add_member(:result_id, Shapes::ShapeRef.new(shape: ResultId, required: true, location_name: "ResultId"))
    RelevanceFeedback.add_member(:relevance_value, Shapes::ShapeRef.new(shape: RelevanceType, required: true, location_name: "RelevanceValue"))
    RelevanceFeedback.struct_class = Types::RelevanceFeedback

    RelevanceFeedbackList.member = Shapes::ShapeRef.new(shape: RelevanceFeedback)

    ResourceAlreadyExistException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistException.struct_class = Types::ResourceAlreadyExistException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    S3DataSourceConfiguration.add_member(:bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "BucketName"))
    S3DataSourceConfiguration.add_member(:inclusion_prefixes, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPrefixes"))
    S3DataSourceConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    S3DataSourceConfiguration.add_member(:documents_metadata_configuration, Shapes::ShapeRef.new(shape: DocumentsMetadataConfiguration, location_name: "DocumentsMetadataConfiguration"))
    S3DataSourceConfiguration.add_member(:access_control_list_configuration, Shapes::ShapeRef.new(shape: AccessControlListConfiguration, location_name: "AccessControlListConfiguration"))
    S3DataSourceConfiguration.struct_class = Types::S3DataSourceConfiguration

    S3Path.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "Bucket"))
    S3Path.add_member(:key, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "Key"))
    S3Path.struct_class = Types::S3Path

    SalesforceChatterFeedConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    SalesforceChatterFeedConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    SalesforceChatterFeedConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SalesforceChatterFeedConfiguration.add_member(:include_filter_types, Shapes::ShapeRef.new(shape: SalesforceChatterFeedIncludeFilterTypes, location_name: "IncludeFilterTypes"))
    SalesforceChatterFeedConfiguration.struct_class = Types::SalesforceChatterFeedConfiguration

    SalesforceChatterFeedIncludeFilterTypes.member = Shapes::ShapeRef.new(shape: SalesforceChatterFeedIncludeFilterType)

    SalesforceConfiguration.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "ServerUrl"))
    SalesforceConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    SalesforceConfiguration.add_member(:standard_object_configurations, Shapes::ShapeRef.new(shape: SalesforceStandardObjectConfigurationList, location_name: "StandardObjectConfigurations"))
    SalesforceConfiguration.add_member(:knowledge_article_configuration, Shapes::ShapeRef.new(shape: SalesforceKnowledgeArticleConfiguration, location_name: "KnowledgeArticleConfiguration"))
    SalesforceConfiguration.add_member(:chatter_feed_configuration, Shapes::ShapeRef.new(shape: SalesforceChatterFeedConfiguration, location_name: "ChatterFeedConfiguration"))
    SalesforceConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    SalesforceConfiguration.add_member(:standard_object_attachment_configuration, Shapes::ShapeRef.new(shape: SalesforceStandardObjectAttachmentConfiguration, location_name: "StandardObjectAttachmentConfiguration"))
    SalesforceConfiguration.add_member(:include_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "IncludeAttachmentFilePatterns"))
    SalesforceConfiguration.add_member(:exclude_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExcludeAttachmentFilePatterns"))
    SalesforceConfiguration.struct_class = Types::SalesforceConfiguration

    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SalesforceCustomKnowledgeArticleTypeName, required: true, location_name: "Name"))
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SalesforceCustomKnowledgeArticleTypeConfiguration.struct_class = Types::SalesforceCustomKnowledgeArticleTypeConfiguration

    SalesforceCustomKnowledgeArticleTypeConfigurationList.member = Shapes::ShapeRef.new(shape: SalesforceCustomKnowledgeArticleTypeConfiguration)

    SalesforceKnowledgeArticleConfiguration.add_member(:included_states, Shapes::ShapeRef.new(shape: SalesforceKnowledgeArticleStateList, required: true, location_name: "IncludedStates"))
    SalesforceKnowledgeArticleConfiguration.add_member(:standard_knowledge_article_type_configuration, Shapes::ShapeRef.new(shape: SalesforceStandardKnowledgeArticleTypeConfiguration, location_name: "StandardKnowledgeArticleTypeConfiguration"))
    SalesforceKnowledgeArticleConfiguration.add_member(:custom_knowledge_article_type_configurations, Shapes::ShapeRef.new(shape: SalesforceCustomKnowledgeArticleTypeConfigurationList, location_name: "CustomKnowledgeArticleTypeConfigurations"))
    SalesforceKnowledgeArticleConfiguration.struct_class = Types::SalesforceKnowledgeArticleConfiguration

    SalesforceKnowledgeArticleStateList.member = Shapes::ShapeRef.new(shape: SalesforceKnowledgeArticleState)

    SalesforceStandardKnowledgeArticleTypeConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    SalesforceStandardKnowledgeArticleTypeConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    SalesforceStandardKnowledgeArticleTypeConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SalesforceStandardKnowledgeArticleTypeConfiguration.struct_class = Types::SalesforceStandardKnowledgeArticleTypeConfiguration

    SalesforceStandardObjectAttachmentConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    SalesforceStandardObjectAttachmentConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SalesforceStandardObjectAttachmentConfiguration.struct_class = Types::SalesforceStandardObjectAttachmentConfiguration

    SalesforceStandardObjectConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: SalesforceStandardObjectName, required: true, location_name: "Name"))
    SalesforceStandardObjectConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    SalesforceStandardObjectConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    SalesforceStandardObjectConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SalesforceStandardObjectConfiguration.struct_class = Types::SalesforceStandardObjectConfiguration

    SalesforceStandardObjectConfigurationList.member = Shapes::ShapeRef.new(shape: SalesforceStandardObjectConfiguration)

    ScoreAttributes.add_member(:score_confidence, Shapes::ShapeRef.new(shape: ScoreConfidence, location_name: "ScoreConfidence"))
    ScoreAttributes.struct_class = Types::ScoreAttributes

    Search.add_member(:facetable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Facetable"))
    Search.add_member(:searchable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Searchable"))
    Search.add_member(:displayable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Displayable"))
    Search.add_member(:sortable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Sortable"))
    Search.struct_class = Types::Search

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupId)

    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceNowConfiguration.add_member(:host_url, Shapes::ShapeRef.new(shape: ServiceNowHostUrl, required: true, location_name: "HostUrl"))
    ServiceNowConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    ServiceNowConfiguration.add_member(:service_now_build_version, Shapes::ShapeRef.new(shape: ServiceNowBuildVersionType, required: true, location_name: "ServiceNowBuildVersion"))
    ServiceNowConfiguration.add_member(:knowledge_article_configuration, Shapes::ShapeRef.new(shape: ServiceNowKnowledgeArticleConfiguration, location_name: "KnowledgeArticleConfiguration"))
    ServiceNowConfiguration.add_member(:service_catalog_configuration, Shapes::ShapeRef.new(shape: ServiceNowServiceCatalogConfiguration, location_name: "ServiceCatalogConfiguration"))
    ServiceNowConfiguration.struct_class = Types::ServiceNowConfiguration

    ServiceNowKnowledgeArticleConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:include_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "IncludeAttachmentFilePatterns"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:exclude_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExcludeAttachmentFilePatterns"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    ServiceNowKnowledgeArticleConfiguration.struct_class = Types::ServiceNowKnowledgeArticleConfiguration

    ServiceNowServiceCatalogConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    ServiceNowServiceCatalogConfiguration.add_member(:include_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "IncludeAttachmentFilePatterns"))
    ServiceNowServiceCatalogConfiguration.add_member(:exclude_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExcludeAttachmentFilePatterns"))
    ServiceNowServiceCatalogConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    ServiceNowServiceCatalogConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    ServiceNowServiceCatalogConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    ServiceNowServiceCatalogConfiguration.struct_class = Types::ServiceNowServiceCatalogConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SharePointConfiguration.add_member(:share_point_version, Shapes::ShapeRef.new(shape: SharePointVersion, required: true, location_name: "SharePointVersion"))
    SharePointConfiguration.add_member(:urls, Shapes::ShapeRef.new(shape: SharePointUrlList, required: true, location_name: "Urls"))
    SharePointConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    SharePointConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    SharePointConfiguration.add_member(:use_change_log, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseChangeLog"))
    SharePointConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    SharePointConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    SharePointConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    SharePointConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SharePointConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    SharePointConfiguration.struct_class = Types::SharePointConfiguration

    SharePointUrlList.member = Shapes::ShapeRef.new(shape: Url)

    SortingConfiguration.add_member(:document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "DocumentAttributeKey"))
    SortingConfiguration.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    SortingConfiguration.struct_class = Types::SortingConfiguration

    SqlConfiguration.add_member(:query_identifiers_enclosing_option, Shapes::ShapeRef.new(shape: QueryIdentifiersEnclosingOption, location_name: "QueryIdentifiersEnclosingOption"))
    SqlConfiguration.struct_class = Types::SqlConfiguration

    StartDataSourceSyncJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    StartDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    StartDataSourceSyncJobRequest.struct_class = Types::StartDataSourceSyncJobRequest

    StartDataSourceSyncJobResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: String, location_name: "ExecutionId"))
    StartDataSourceSyncJobResponse.struct_class = Types::StartDataSourceSyncJobResponse

    StopDataSourceSyncJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    StopDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    StopDataSourceSyncJobRequest.struct_class = Types::StopDataSourceSyncJobRequest

    SubmitFeedbackRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    SubmitFeedbackRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    SubmitFeedbackRequest.add_member(:click_feedback_items, Shapes::ShapeRef.new(shape: ClickFeedbackList, location_name: "ClickFeedbackItems"))
    SubmitFeedbackRequest.add_member(:relevance_feedback_items, Shapes::ShapeRef.new(shape: RelevanceFeedbackList, location_name: "RelevanceFeedbackItems"))
    SubmitFeedbackRequest.struct_class = Types::SubmitFeedbackRequest

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TextDocumentStatistics.add_member(:indexed_text_documents_count, Shapes::ShapeRef.new(shape: IndexedTextDocumentsCount, required: true, location_name: "IndexedTextDocumentsCount"))
    TextDocumentStatistics.add_member(:indexed_text_bytes, Shapes::ShapeRef.new(shape: IndexedTextBytes, required: true, location_name: "IndexedTextBytes"))
    TextDocumentStatistics.struct_class = Types::TextDocumentStatistics

    TextWithHighlights.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    TextWithHighlights.add_member(:highlights, Shapes::ShapeRef.new(shape: HighlightList, location_name: "Highlights"))
    TextWithHighlights.struct_class = Types::TextWithHighlights

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    TimeRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    TimeRange.struct_class = Types::TimeRange

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDataSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    UpdateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "Configuration"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDataSourceRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    UpdateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateIndexRequest.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "Id"))
    UpdateIndexRequest.add_member(:name, Shapes::ShapeRef.new(shape: IndexName, location_name: "Name"))
    UpdateIndexRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateIndexRequest.add_member(:document_metadata_configuration_updates, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationList, location_name: "DocumentMetadataConfigurationUpdates"))
    UpdateIndexRequest.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: "CapacityUnits"))
    UpdateIndexRequest.struct_class = Types::UpdateIndexRequest

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValueImportanceMap.key = Shapes::ShapeRef.new(shape: ValueImportanceMapKey)
    ValueImportanceMap.value = Shapes::ShapeRef.new(shape: Importance)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-02-03"

      api.metadata = {
        "apiVersion" => "2019-02-03",
        "endpointPrefix" => "kendra",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "kendra",
        "serviceFullName" => "AWSKendraFrontendService",
        "serviceId" => "kendra",
        "signatureVersion" => "v4",
        "signingName" => "kendra",
        "targetPrefix" => "AWSKendraFrontendService",
        "uid" => "kendra-2019-02-03",
      }

      api.add_operation(:batch_delete_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:batch_put_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchPutDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_faq, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFaq"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFaqRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFaqResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIndex"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_faq, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFaq"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFaqRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndex"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_faq, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFaq"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFaqRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFaqResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIndex"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_data_source_sync_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSourceSyncJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourceSyncJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourceSyncJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_faqs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFaqs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFaqsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFaqsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_indices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIndicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIndicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Query"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: QueryRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_data_source_sync_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataSourceSyncJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDataSourceSyncJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataSourceSyncJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_data_source_sync_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDataSourceSyncJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDataSourceSyncJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:submit_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIndex"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
