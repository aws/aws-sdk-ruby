# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    AuthenticationConfiguration = Shapes::StructureShape.new(name: 'AuthenticationConfiguration')
    BasicAuthenticationConfiguration = Shapes::StructureShape.new(name: 'BasicAuthenticationConfiguration')
    BasicAuthenticationConfigurationList = Shapes::ListShape.new(name: 'BasicAuthenticationConfigurationList')
    BatchDeleteDocumentRequest = Shapes::StructureShape.new(name: 'BatchDeleteDocumentRequest')
    BatchDeleteDocumentResponse = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponse')
    BatchDeleteDocumentResponseFailedDocument = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponseFailedDocument')
    BatchDeleteDocumentResponseFailedDocuments = Shapes::ListShape.new(name: 'BatchDeleteDocumentResponseFailedDocuments')
    BatchGetDocumentStatusRequest = Shapes::StructureShape.new(name: 'BatchGetDocumentStatusRequest')
    BatchGetDocumentStatusResponse = Shapes::StructureShape.new(name: 'BatchGetDocumentStatusResponse')
    BatchGetDocumentStatusResponseError = Shapes::StructureShape.new(name: 'BatchGetDocumentStatusResponseError')
    BatchGetDocumentStatusResponseErrors = Shapes::ListShape.new(name: 'BatchGetDocumentStatusResponseErrors')
    BatchPutDocumentRequest = Shapes::StructureShape.new(name: 'BatchPutDocumentRequest')
    BatchPutDocumentResponse = Shapes::StructureShape.new(name: 'BatchPutDocumentResponse')
    BatchPutDocumentResponseFailedDocument = Shapes::StructureShape.new(name: 'BatchPutDocumentResponseFailedDocument')
    BatchPutDocumentResponseFailedDocuments = Shapes::ListShape.new(name: 'BatchPutDocumentResponseFailedDocuments')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CapacityUnitsConfiguration = Shapes::StructureShape.new(name: 'CapacityUnitsConfiguration')
    ChangeDetectingColumns = Shapes::ListShape.new(name: 'ChangeDetectingColumns')
    ClaimRegex = Shapes::StringShape.new(name: 'ClaimRegex')
    ClearQuerySuggestionsRequest = Shapes::StructureShape.new(name: 'ClearQuerySuggestionsRequest')
    ClickFeedback = Shapes::StructureShape.new(name: 'ClickFeedback')
    ClickFeedbackList = Shapes::ListShape.new(name: 'ClickFeedbackList')
    ClientTokenName = Shapes::StringShape.new(name: 'ClientTokenName')
    ColumnConfiguration = Shapes::StructureShape.new(name: 'ColumnConfiguration')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConfluenceAttachmentConfiguration = Shapes::StructureShape.new(name: 'ConfluenceAttachmentConfiguration')
    ConfluenceAttachmentFieldMappingsList = Shapes::ListShape.new(name: 'ConfluenceAttachmentFieldMappingsList')
    ConfluenceAttachmentFieldName = Shapes::StringShape.new(name: 'ConfluenceAttachmentFieldName')
    ConfluenceAttachmentToIndexFieldMapping = Shapes::StructureShape.new(name: 'ConfluenceAttachmentToIndexFieldMapping')
    ConfluenceBlogConfiguration = Shapes::StructureShape.new(name: 'ConfluenceBlogConfiguration')
    ConfluenceBlogFieldMappingsList = Shapes::ListShape.new(name: 'ConfluenceBlogFieldMappingsList')
    ConfluenceBlogFieldName = Shapes::StringShape.new(name: 'ConfluenceBlogFieldName')
    ConfluenceBlogToIndexFieldMapping = Shapes::StructureShape.new(name: 'ConfluenceBlogToIndexFieldMapping')
    ConfluenceConfiguration = Shapes::StructureShape.new(name: 'ConfluenceConfiguration')
    ConfluencePageConfiguration = Shapes::StructureShape.new(name: 'ConfluencePageConfiguration')
    ConfluencePageFieldMappingsList = Shapes::ListShape.new(name: 'ConfluencePageFieldMappingsList')
    ConfluencePageFieldName = Shapes::StringShape.new(name: 'ConfluencePageFieldName')
    ConfluencePageToIndexFieldMapping = Shapes::StructureShape.new(name: 'ConfluencePageToIndexFieldMapping')
    ConfluenceSpaceConfiguration = Shapes::StructureShape.new(name: 'ConfluenceSpaceConfiguration')
    ConfluenceSpaceFieldMappingsList = Shapes::ListShape.new(name: 'ConfluenceSpaceFieldMappingsList')
    ConfluenceSpaceFieldName = Shapes::StringShape.new(name: 'ConfluenceSpaceFieldName')
    ConfluenceSpaceIdentifier = Shapes::StringShape.new(name: 'ConfluenceSpaceIdentifier')
    ConfluenceSpaceList = Shapes::ListShape.new(name: 'ConfluenceSpaceList')
    ConfluenceSpaceToIndexFieldMapping = Shapes::StructureShape.new(name: 'ConfluenceSpaceToIndexFieldMapping')
    ConfluenceVersion = Shapes::StringShape.new(name: 'ConfluenceVersion')
    ConnectionConfiguration = Shapes::StructureShape.new(name: 'ConnectionConfiguration')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CrawlDepth = Shapes::IntegerShape.new(name: 'CrawlDepth')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateFaqRequest = Shapes::StructureShape.new(name: 'CreateFaqRequest')
    CreateFaqResponse = Shapes::StructureShape.new(name: 'CreateFaqResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    CreateQuerySuggestionsBlockListRequest = Shapes::StructureShape.new(name: 'CreateQuerySuggestionsBlockListRequest')
    CreateQuerySuggestionsBlockListResponse = Shapes::StructureShape.new(name: 'CreateQuerySuggestionsBlockListResponse')
    CreateThesaurusRequest = Shapes::StructureShape.new(name: 'CreateThesaurusRequest')
    CreateThesaurusResponse = Shapes::StructureShape.new(name: 'CreateThesaurusResponse')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceDateFieldFormat = Shapes::StringShape.new(name: 'DataSourceDateFieldFormat')
    DataSourceFieldName = Shapes::StringShape.new(name: 'DataSourceFieldName')
    DataSourceGroup = Shapes::StructureShape.new(name: 'DataSourceGroup')
    DataSourceGroups = Shapes::ListShape.new(name: 'DataSourceGroups')
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
    DeletePrincipalMappingRequest = Shapes::StructureShape.new(name: 'DeletePrincipalMappingRequest')
    DeleteQuerySuggestionsBlockListRequest = Shapes::StructureShape.new(name: 'DeleteQuerySuggestionsBlockListRequest')
    DeleteThesaurusRequest = Shapes::StructureShape.new(name: 'DeleteThesaurusRequest')
    DescribeDataSourceRequest = Shapes::StructureShape.new(name: 'DescribeDataSourceRequest')
    DescribeDataSourceResponse = Shapes::StructureShape.new(name: 'DescribeDataSourceResponse')
    DescribeFaqRequest = Shapes::StructureShape.new(name: 'DescribeFaqRequest')
    DescribeFaqResponse = Shapes::StructureShape.new(name: 'DescribeFaqResponse')
    DescribeIndexRequest = Shapes::StructureShape.new(name: 'DescribeIndexRequest')
    DescribeIndexResponse = Shapes::StructureShape.new(name: 'DescribeIndexResponse')
    DescribePrincipalMappingRequest = Shapes::StructureShape.new(name: 'DescribePrincipalMappingRequest')
    DescribePrincipalMappingResponse = Shapes::StructureShape.new(name: 'DescribePrincipalMappingResponse')
    DescribeQuerySuggestionsBlockListRequest = Shapes::StructureShape.new(name: 'DescribeQuerySuggestionsBlockListRequest')
    DescribeQuerySuggestionsBlockListResponse = Shapes::StructureShape.new(name: 'DescribeQuerySuggestionsBlockListResponse')
    DescribeQuerySuggestionsConfigRequest = Shapes::StructureShape.new(name: 'DescribeQuerySuggestionsConfigRequest')
    DescribeQuerySuggestionsConfigResponse = Shapes::StructureShape.new(name: 'DescribeQuerySuggestionsConfigResponse')
    DescribeThesaurusRequest = Shapes::StructureShape.new(name: 'DescribeThesaurusRequest')
    DescribeThesaurusResponse = Shapes::StructureShape.new(name: 'DescribeThesaurusResponse')
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
    DocumentInfo = Shapes::StructureShape.new(name: 'DocumentInfo')
    DocumentInfoList = Shapes::ListShape.new(name: 'DocumentInfoList')
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    DocumentMetadataBoolean = Shapes::BooleanShape.new(name: 'DocumentMetadataBoolean')
    DocumentMetadataConfiguration = Shapes::StructureShape.new(name: 'DocumentMetadataConfiguration')
    DocumentMetadataConfigurationList = Shapes::ListShape.new(name: 'DocumentMetadataConfigurationList')
    DocumentMetadataConfigurationName = Shapes::StringShape.new(name: 'DocumentMetadataConfigurationName')
    DocumentRelevanceConfiguration = Shapes::StructureShape.new(name: 'DocumentRelevanceConfiguration')
    DocumentRelevanceOverrideConfigurationList = Shapes::ListShape.new(name: 'DocumentRelevanceOverrideConfigurationList')
    DocumentStatus = Shapes::StringShape.new(name: 'DocumentStatus')
    DocumentStatusList = Shapes::ListShape.new(name: 'DocumentStatusList')
    DocumentsMetadataConfiguration = Shapes::StructureShape.new(name: 'DocumentsMetadataConfiguration')
    Duration = Shapes::StringShape.new(name: 'Duration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExcludeMimeTypesList = Shapes::ListShape.new(name: 'ExcludeMimeTypesList')
    ExcludeSharedDrivesList = Shapes::ListShape.new(name: 'ExcludeSharedDrivesList')
    ExcludeUserAccountsList = Shapes::ListShape.new(name: 'ExcludeUserAccountsList')
    Facet = Shapes::StructureShape.new(name: 'Facet')
    FacetList = Shapes::ListShape.new(name: 'FacetList')
    FacetResult = Shapes::StructureShape.new(name: 'FacetResult')
    FacetResultList = Shapes::ListShape.new(name: 'FacetResultList')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FaqFileFormat = Shapes::StringShape.new(name: 'FaqFileFormat')
    FaqId = Shapes::StringShape.new(name: 'FaqId')
    FaqName = Shapes::StringShape.new(name: 'FaqName')
    FaqStatistics = Shapes::StructureShape.new(name: 'FaqStatistics')
    FaqStatus = Shapes::StringShape.new(name: 'FaqStatus')
    FaqSummary = Shapes::StructureShape.new(name: 'FaqSummary')
    FaqSummaryItems = Shapes::ListShape.new(name: 'FaqSummaryItems')
    FeedbackToken = Shapes::StringShape.new(name: 'FeedbackToken')
    GetQuerySuggestionsRequest = Shapes::StructureShape.new(name: 'GetQuerySuggestionsRequest')
    GetQuerySuggestionsResponse = Shapes::StructureShape.new(name: 'GetQuerySuggestionsResponse')
    GoogleDriveConfiguration = Shapes::StructureShape.new(name: 'GoogleDriveConfiguration')
    GroupAttributeField = Shapes::StringShape.new(name: 'GroupAttributeField')
    GroupId = Shapes::StringShape.new(name: 'GroupId')
    GroupMembers = Shapes::StructureShape.new(name: 'GroupMembers')
    GroupOrderingIdSummaries = Shapes::ListShape.new(name: 'GroupOrderingIdSummaries')
    GroupOrderingIdSummary = Shapes::StructureShape.new(name: 'GroupOrderingIdSummary')
    GroupSummary = Shapes::StructureShape.new(name: 'GroupSummary')
    Groups = Shapes::ListShape.new(name: 'Groups')
    HierarchicalPrincipal = Shapes::StructureShape.new(name: 'HierarchicalPrincipal')
    HierarchicalPrincipalList = Shapes::ListShape.new(name: 'HierarchicalPrincipalList')
    Highlight = Shapes::StructureShape.new(name: 'Highlight')
    HighlightList = Shapes::ListShape.new(name: 'HighlightList')
    HighlightType = Shapes::StringShape.new(name: 'HighlightType')
    Host = Shapes::StringShape.new(name: 'Host')
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
    Issuer = Shapes::StringShape.new(name: 'Issuer')
    JsonTokenTypeConfiguration = Shapes::StructureShape.new(name: 'JsonTokenTypeConfiguration')
    JwtTokenTypeConfiguration = Shapes::StructureShape.new(name: 'JwtTokenTypeConfiguration')
    KeyLocation = Shapes::StringShape.new(name: 'KeyLocation')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListDataSourceSyncJobsRequest = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsRequest')
    ListDataSourceSyncJobsResponse = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListFaqsRequest = Shapes::StructureShape.new(name: 'ListFaqsRequest')
    ListFaqsResponse = Shapes::StructureShape.new(name: 'ListFaqsResponse')
    ListGroupsOlderThanOrderingIdRequest = Shapes::StructureShape.new(name: 'ListGroupsOlderThanOrderingIdRequest')
    ListGroupsOlderThanOrderingIdResponse = Shapes::StructureShape.new(name: 'ListGroupsOlderThanOrderingIdResponse')
    ListIndicesRequest = Shapes::StructureShape.new(name: 'ListIndicesRequest')
    ListIndicesResponse = Shapes::StructureShape.new(name: 'ListIndicesResponse')
    ListOfGroupSummaries = Shapes::ListShape.new(name: 'ListOfGroupSummaries')
    ListQuerySuggestionsBlockListsRequest = Shapes::StructureShape.new(name: 'ListQuerySuggestionsBlockListsRequest')
    ListQuerySuggestionsBlockListsResponse = Shapes::StructureShape.new(name: 'ListQuerySuggestionsBlockListsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListThesauriRequest = Shapes::StructureShape.new(name: 'ListThesauriRequest')
    ListThesauriResponse = Shapes::StructureShape.new(name: 'ListThesauriResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxContentSizePerPageInMegaBytes = Shapes::FloatShape.new(name: 'MaxContentSizePerPageInMegaBytes')
    MaxLinksPerPage = Shapes::IntegerShape.new(name: 'MaxLinksPerPage')
    MaxResultsIntegerForListDataSourceSyncJobsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourceSyncJobsRequest')
    MaxResultsIntegerForListDataSourcesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourcesRequest')
    MaxResultsIntegerForListFaqsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListFaqsRequest')
    MaxResultsIntegerForListIndicesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListIndicesRequest')
    MaxResultsIntegerForListPrincipalsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPrincipalsRequest')
    MaxResultsIntegerForListQuerySuggestionsBlockLists = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListQuerySuggestionsBlockLists')
    MaxResultsIntegerForListThesauriRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListThesauriRequest')
    MaxUrlsPerMinuteCrawlRate = Shapes::IntegerShape.new(name: 'MaxUrlsPerMinuteCrawlRate')
    MemberGroup = Shapes::StructureShape.new(name: 'MemberGroup')
    MemberGroups = Shapes::ListShape.new(name: 'MemberGroups')
    MemberUser = Shapes::StructureShape.new(name: 'MemberUser')
    MemberUsers = Shapes::ListShape.new(name: 'MemberUsers')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    MinimumNumberOfQueryingUsers = Shapes::IntegerShape.new(name: 'MinimumNumberOfQueryingUsers')
    MinimumQueryCount = Shapes::IntegerShape.new(name: 'MinimumQueryCount')
    Mode = Shapes::StringShape.new(name: 'Mode')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectBoolean = Shapes::BooleanShape.new(name: 'ObjectBoolean')
    OneDriveConfiguration = Shapes::StructureShape.new(name: 'OneDriveConfiguration')
    OneDriveUser = Shapes::StringShape.new(name: 'OneDriveUser')
    OneDriveUserList = Shapes::ListShape.new(name: 'OneDriveUserList')
    OneDriveUsers = Shapes::StructureShape.new(name: 'OneDriveUsers')
    Order = Shapes::StringShape.new(name: 'Order')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    Port = Shapes::IntegerShape.new(name: 'Port')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    PrincipalMappingStatus = Shapes::StringShape.new(name: 'PrincipalMappingStatus')
    PrincipalName = Shapes::StringShape.new(name: 'PrincipalName')
    PrincipalOrderingId = Shapes::IntegerShape.new(name: 'PrincipalOrderingId')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    ProxyConfiguration = Shapes::StructureShape.new(name: 'ProxyConfiguration')
    PutPrincipalMappingRequest = Shapes::StructureShape.new(name: 'PutPrincipalMappingRequest')
    QueryCapacityUnit = Shapes::IntegerShape.new(name: 'QueryCapacityUnit')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryIdentifiersEnclosingOption = Shapes::StringShape.new(name: 'QueryIdentifiersEnclosingOption')
    QueryRequest = Shapes::StructureShape.new(name: 'QueryRequest')
    QueryResult = Shapes::StructureShape.new(name: 'QueryResult')
    QueryResultItem = Shapes::StructureShape.new(name: 'QueryResultItem')
    QueryResultItemList = Shapes::ListShape.new(name: 'QueryResultItemList')
    QueryResultType = Shapes::StringShape.new(name: 'QueryResultType')
    QuerySuggestionsBlockListId = Shapes::StringShape.new(name: 'QuerySuggestionsBlockListId')
    QuerySuggestionsBlockListName = Shapes::StringShape.new(name: 'QuerySuggestionsBlockListName')
    QuerySuggestionsBlockListStatus = Shapes::StringShape.new(name: 'QuerySuggestionsBlockListStatus')
    QuerySuggestionsBlockListSummary = Shapes::StructureShape.new(name: 'QuerySuggestionsBlockListSummary')
    QuerySuggestionsBlockListSummaryItems = Shapes::ListShape.new(name: 'QuerySuggestionsBlockListSummaryItems')
    QuerySuggestionsId = Shapes::StringShape.new(name: 'QuerySuggestionsId')
    QuerySuggestionsStatus = Shapes::StringShape.new(name: 'QuerySuggestionsStatus')
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
    SeedUrl = Shapes::StringShape.new(name: 'SeedUrl')
    SeedUrlConfiguration = Shapes::StructureShape.new(name: 'SeedUrlConfiguration')
    SeedUrlList = Shapes::ListShape.new(name: 'SeedUrlList')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceNowAuthenticationType = Shapes::StringShape.new(name: 'ServiceNowAuthenticationType')
    ServiceNowBuildVersionType = Shapes::StringShape.new(name: 'ServiceNowBuildVersionType')
    ServiceNowConfiguration = Shapes::StructureShape.new(name: 'ServiceNowConfiguration')
    ServiceNowHostUrl = Shapes::StringShape.new(name: 'ServiceNowHostUrl')
    ServiceNowKnowledgeArticleConfiguration = Shapes::StructureShape.new(name: 'ServiceNowKnowledgeArticleConfiguration')
    ServiceNowKnowledgeArticleFilterQuery = Shapes::StringShape.new(name: 'ServiceNowKnowledgeArticleFilterQuery')
    ServiceNowServiceCatalogConfiguration = Shapes::StructureShape.new(name: 'ServiceNowServiceCatalogConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharePointConfiguration = Shapes::StructureShape.new(name: 'SharePointConfiguration')
    SharePointUrlList = Shapes::ListShape.new(name: 'SharePointUrlList')
    SharePointVersion = Shapes::StringShape.new(name: 'SharePointVersion')
    SharedDriveId = Shapes::StringShape.new(name: 'SharedDriveId')
    SiteMap = Shapes::StringShape.new(name: 'SiteMap')
    SiteMapsConfiguration = Shapes::StructureShape.new(name: 'SiteMapsConfiguration')
    SiteMapsList = Shapes::ListShape.new(name: 'SiteMapsList')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SortingConfiguration = Shapes::StructureShape.new(name: 'SortingConfiguration')
    SqlConfiguration = Shapes::StructureShape.new(name: 'SqlConfiguration')
    StartDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobRequest')
    StartDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobResponse')
    Status = Shapes::StructureShape.new(name: 'Status')
    StopDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobRequest')
    StorageCapacityUnit = Shapes::IntegerShape.new(name: 'StorageCapacityUnit')
    String = Shapes::StringShape.new(name: 'String')
    SubmitFeedbackRequest = Shapes::StructureShape.new(name: 'SubmitFeedbackRequest')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    Suggestion = Shapes::StructureShape.new(name: 'Suggestion')
    SuggestionHighlight = Shapes::StructureShape.new(name: 'SuggestionHighlight')
    SuggestionHighlightList = Shapes::ListShape.new(name: 'SuggestionHighlightList')
    SuggestionList = Shapes::ListShape.new(name: 'SuggestionList')
    SuggestionQueryText = Shapes::StringShape.new(name: 'SuggestionQueryText')
    SuggestionTextWithHighlights = Shapes::StructureShape.new(name: 'SuggestionTextWithHighlights')
    SuggestionValue = Shapes::StructureShape.new(name: 'SuggestionValue')
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
    ThesaurusId = Shapes::StringShape.new(name: 'ThesaurusId')
    ThesaurusName = Shapes::StringShape.new(name: 'ThesaurusName')
    ThesaurusStatus = Shapes::StringShape.new(name: 'ThesaurusStatus')
    ThesaurusSummary = Shapes::StructureShape.new(name: 'ThesaurusSummary')
    ThesaurusSummaryItems = Shapes::ListShape.new(name: 'ThesaurusSummaryItems')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StructureShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Title = Shapes::StringShape.new(name: 'Title')
    Token = Shapes::StringShape.new(name: 'Token')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateIndexRequest = Shapes::StructureShape.new(name: 'UpdateIndexRequest')
    UpdateQuerySuggestionsBlockListRequest = Shapes::StructureShape.new(name: 'UpdateQuerySuggestionsBlockListRequest')
    UpdateQuerySuggestionsConfigRequest = Shapes::StructureShape.new(name: 'UpdateQuerySuggestionsConfigRequest')
    UpdateThesaurusRequest = Shapes::StructureShape.new(name: 'UpdateThesaurusRequest')
    Url = Shapes::StringShape.new(name: 'Url')
    Urls = Shapes::StructureShape.new(name: 'Urls')
    UserAccount = Shapes::StringShape.new(name: 'UserAccount')
    UserContext = Shapes::StructureShape.new(name: 'UserContext')
    UserContextPolicy = Shapes::StringShape.new(name: 'UserContextPolicy')
    UserGroupResolutionConfiguration = Shapes::StructureShape.new(name: 'UserGroupResolutionConfiguration')
    UserGroupResolutionMode = Shapes::StringShape.new(name: 'UserGroupResolutionMode')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserNameAttributeField = Shapes::StringShape.new(name: 'UserNameAttributeField')
    UserTokenConfiguration = Shapes::StructureShape.new(name: 'UserTokenConfiguration')
    UserTokenConfigurationList = Shapes::ListShape.new(name: 'UserTokenConfigurationList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueImportanceMap = Shapes::MapShape.new(name: 'ValueImportanceMap')
    ValueImportanceMapKey = Shapes::StringShape.new(name: 'ValueImportanceMapKey')
    VisitorId = Shapes::StringShape.new(name: 'VisitorId')
    VpcSecurityGroupId = Shapes::StringShape.new(name: 'VpcSecurityGroupId')
    WebCrawlerConfiguration = Shapes::StructureShape.new(name: 'WebCrawlerConfiguration')
    WebCrawlerMode = Shapes::StringShape.new(name: 'WebCrawlerMode')
    WorkDocsConfiguration = Shapes::StructureShape.new(name: 'WorkDocsConfiguration')

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

    AuthenticationConfiguration.add_member(:basic_authentication, Shapes::ShapeRef.new(shape: BasicAuthenticationConfigurationList, location_name: "BasicAuthentication"))
    AuthenticationConfiguration.struct_class = Types::AuthenticationConfiguration

    BasicAuthenticationConfiguration.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    BasicAuthenticationConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    BasicAuthenticationConfiguration.add_member(:credentials, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "Credentials"))
    BasicAuthenticationConfiguration.struct_class = Types::BasicAuthenticationConfiguration

    BasicAuthenticationConfigurationList.member = Shapes::ShapeRef.new(shape: BasicAuthenticationConfiguration)

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

    BatchGetDocumentStatusRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    BatchGetDocumentStatusRequest.add_member(:document_info_list, Shapes::ShapeRef.new(shape: DocumentInfoList, required: true, location_name: "DocumentInfoList"))
    BatchGetDocumentStatusRequest.struct_class = Types::BatchGetDocumentStatusRequest

    BatchGetDocumentStatusResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchGetDocumentStatusResponseErrors, location_name: "Errors"))
    BatchGetDocumentStatusResponse.add_member(:document_status_list, Shapes::ShapeRef.new(shape: DocumentStatusList, location_name: "DocumentStatusList"))
    BatchGetDocumentStatusResponse.struct_class = Types::BatchGetDocumentStatusResponse

    BatchGetDocumentStatusResponseError.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    BatchGetDocumentStatusResponseError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchGetDocumentStatusResponseError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    BatchGetDocumentStatusResponseError.struct_class = Types::BatchGetDocumentStatusResponseError

    BatchGetDocumentStatusResponseErrors.member = Shapes::ShapeRef.new(shape: BatchGetDocumentStatusResponseError)

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

    ClearQuerySuggestionsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ClearQuerySuggestionsRequest.struct_class = Types::ClearQuerySuggestionsRequest

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

    ConfluenceAttachmentConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    ConfluenceAttachmentConfiguration.add_member(:attachment_field_mappings, Shapes::ShapeRef.new(shape: ConfluenceAttachmentFieldMappingsList, location_name: "AttachmentFieldMappings"))
    ConfluenceAttachmentConfiguration.struct_class = Types::ConfluenceAttachmentConfiguration

    ConfluenceAttachmentFieldMappingsList.member = Shapes::ShapeRef.new(shape: ConfluenceAttachmentToIndexFieldMapping)

    ConfluenceAttachmentToIndexFieldMapping.add_member(:data_source_field_name, Shapes::ShapeRef.new(shape: ConfluenceAttachmentFieldName, location_name: "DataSourceFieldName"))
    ConfluenceAttachmentToIndexFieldMapping.add_member(:date_field_format, Shapes::ShapeRef.new(shape: DataSourceDateFieldFormat, location_name: "DateFieldFormat"))
    ConfluenceAttachmentToIndexFieldMapping.add_member(:index_field_name, Shapes::ShapeRef.new(shape: IndexFieldName, location_name: "IndexFieldName"))
    ConfluenceAttachmentToIndexFieldMapping.struct_class = Types::ConfluenceAttachmentToIndexFieldMapping

    ConfluenceBlogConfiguration.add_member(:blog_field_mappings, Shapes::ShapeRef.new(shape: ConfluenceBlogFieldMappingsList, location_name: "BlogFieldMappings"))
    ConfluenceBlogConfiguration.struct_class = Types::ConfluenceBlogConfiguration

    ConfluenceBlogFieldMappingsList.member = Shapes::ShapeRef.new(shape: ConfluenceBlogToIndexFieldMapping)

    ConfluenceBlogToIndexFieldMapping.add_member(:data_source_field_name, Shapes::ShapeRef.new(shape: ConfluenceBlogFieldName, location_name: "DataSourceFieldName"))
    ConfluenceBlogToIndexFieldMapping.add_member(:date_field_format, Shapes::ShapeRef.new(shape: DataSourceDateFieldFormat, location_name: "DateFieldFormat"))
    ConfluenceBlogToIndexFieldMapping.add_member(:index_field_name, Shapes::ShapeRef.new(shape: IndexFieldName, location_name: "IndexFieldName"))
    ConfluenceBlogToIndexFieldMapping.struct_class = Types::ConfluenceBlogToIndexFieldMapping

    ConfluenceConfiguration.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "ServerUrl"))
    ConfluenceConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    ConfluenceConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: ConfluenceVersion, required: true, location_name: "Version"))
    ConfluenceConfiguration.add_member(:space_configuration, Shapes::ShapeRef.new(shape: ConfluenceSpaceConfiguration, location_name: "SpaceConfiguration"))
    ConfluenceConfiguration.add_member(:page_configuration, Shapes::ShapeRef.new(shape: ConfluencePageConfiguration, location_name: "PageConfiguration"))
    ConfluenceConfiguration.add_member(:blog_configuration, Shapes::ShapeRef.new(shape: ConfluenceBlogConfiguration, location_name: "BlogConfiguration"))
    ConfluenceConfiguration.add_member(:attachment_configuration, Shapes::ShapeRef.new(shape: ConfluenceAttachmentConfiguration, location_name: "AttachmentConfiguration"))
    ConfluenceConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    ConfluenceConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    ConfluenceConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    ConfluenceConfiguration.struct_class = Types::ConfluenceConfiguration

    ConfluencePageConfiguration.add_member(:page_field_mappings, Shapes::ShapeRef.new(shape: ConfluencePageFieldMappingsList, location_name: "PageFieldMappings"))
    ConfluencePageConfiguration.struct_class = Types::ConfluencePageConfiguration

    ConfluencePageFieldMappingsList.member = Shapes::ShapeRef.new(shape: ConfluencePageToIndexFieldMapping)

    ConfluencePageToIndexFieldMapping.add_member(:data_source_field_name, Shapes::ShapeRef.new(shape: ConfluencePageFieldName, location_name: "DataSourceFieldName"))
    ConfluencePageToIndexFieldMapping.add_member(:date_field_format, Shapes::ShapeRef.new(shape: DataSourceDateFieldFormat, location_name: "DateFieldFormat"))
    ConfluencePageToIndexFieldMapping.add_member(:index_field_name, Shapes::ShapeRef.new(shape: IndexFieldName, location_name: "IndexFieldName"))
    ConfluencePageToIndexFieldMapping.struct_class = Types::ConfluencePageToIndexFieldMapping

    ConfluenceSpaceConfiguration.add_member(:crawl_personal_spaces, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlPersonalSpaces"))
    ConfluenceSpaceConfiguration.add_member(:crawl_archived_spaces, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlArchivedSpaces"))
    ConfluenceSpaceConfiguration.add_member(:include_spaces, Shapes::ShapeRef.new(shape: ConfluenceSpaceList, location_name: "IncludeSpaces"))
    ConfluenceSpaceConfiguration.add_member(:exclude_spaces, Shapes::ShapeRef.new(shape: ConfluenceSpaceList, location_name: "ExcludeSpaces"))
    ConfluenceSpaceConfiguration.add_member(:space_field_mappings, Shapes::ShapeRef.new(shape: ConfluenceSpaceFieldMappingsList, location_name: "SpaceFieldMappings"))
    ConfluenceSpaceConfiguration.struct_class = Types::ConfluenceSpaceConfiguration

    ConfluenceSpaceFieldMappingsList.member = Shapes::ShapeRef.new(shape: ConfluenceSpaceToIndexFieldMapping)

    ConfluenceSpaceList.member = Shapes::ShapeRef.new(shape: ConfluenceSpaceIdentifier)

    ConfluenceSpaceToIndexFieldMapping.add_member(:data_source_field_name, Shapes::ShapeRef.new(shape: ConfluenceSpaceFieldName, location_name: "DataSourceFieldName"))
    ConfluenceSpaceToIndexFieldMapping.add_member(:date_field_format, Shapes::ShapeRef.new(shape: DataSourceDateFieldFormat, location_name: "DateFieldFormat"))
    ConfluenceSpaceToIndexFieldMapping.add_member(:index_field_name, Shapes::ShapeRef.new(shape: IndexFieldName, location_name: "IndexFieldName"))
    ConfluenceSpaceToIndexFieldMapping.struct_class = Types::ConfluenceSpaceToIndexFieldMapping

    ConnectionConfiguration.add_member(:database_host, Shapes::ShapeRef.new(shape: DatabaseHost, required: true, location_name: "DatabaseHost"))
    ConnectionConfiguration.add_member(:database_port, Shapes::ShapeRef.new(shape: DatabasePort, required: true, location_name: "DatabasePort"))
    ConnectionConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: DatabaseName, required: true, location_name: "DatabaseName"))
    ConnectionConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    ConnectionConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    ConnectionConfiguration.struct_class = Types::ConnectionConfiguration

    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location_name: "Name"))
    CreateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "Type"))
    CreateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "Configuration"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDataSourceRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    CreateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateDataSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSourceRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
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
    CreateFaqRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateFaqRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
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
    CreateIndexRequest.add_member(:user_token_configurations, Shapes::ShapeRef.new(shape: UserTokenConfigurationList, location_name: "UserTokenConfigurations"))
    CreateIndexRequest.add_member(:user_context_policy, Shapes::ShapeRef.new(shape: UserContextPolicy, location_name: "UserContextPolicy"))
    CreateIndexRequest.add_member(:user_group_resolution_configuration, Shapes::ShapeRef.new(shape: UserGroupResolutionConfiguration, location_name: "UserGroupResolutionConfiguration"))
    CreateIndexRequest.struct_class = Types::CreateIndexRequest

    CreateIndexResponse.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, location_name: "Id"))
    CreateIndexResponse.struct_class = Types::CreateIndexResponse

    CreateQuerySuggestionsBlockListRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateQuerySuggestionsBlockListRequest.add_member(:name, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListName, required: true, location_name: "Name"))
    CreateQuerySuggestionsBlockListRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateQuerySuggestionsBlockListRequest.add_member(:source_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "SourceS3Path"))
    CreateQuerySuggestionsBlockListRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateQuerySuggestionsBlockListRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateQuerySuggestionsBlockListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateQuerySuggestionsBlockListRequest.struct_class = Types::CreateQuerySuggestionsBlockListRequest

    CreateQuerySuggestionsBlockListResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListId, location_name: "Id"))
    CreateQuerySuggestionsBlockListResponse.struct_class = Types::CreateQuerySuggestionsBlockListResponse

    CreateThesaurusRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateThesaurusRequest.add_member(:name, Shapes::ShapeRef.new(shape: ThesaurusName, required: true, location_name: "Name"))
    CreateThesaurusRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateThesaurusRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateThesaurusRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateThesaurusRequest.add_member(:source_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "SourceS3Path"))
    CreateThesaurusRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateThesaurusRequest.struct_class = Types::CreateThesaurusRequest

    CreateThesaurusResponse.add_member(:id, Shapes::ShapeRef.new(shape: ThesaurusId, location_name: "Id"))
    CreateThesaurusResponse.struct_class = Types::CreateThesaurusResponse

    DataSourceConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DataSourceConfiguration, location_name: "S3Configuration"))
    DataSourceConfiguration.add_member(:share_point_configuration, Shapes::ShapeRef.new(shape: SharePointConfiguration, location_name: "SharePointConfiguration"))
    DataSourceConfiguration.add_member(:database_configuration, Shapes::ShapeRef.new(shape: DatabaseConfiguration, location_name: "DatabaseConfiguration"))
    DataSourceConfiguration.add_member(:salesforce_configuration, Shapes::ShapeRef.new(shape: SalesforceConfiguration, location_name: "SalesforceConfiguration"))
    DataSourceConfiguration.add_member(:one_drive_configuration, Shapes::ShapeRef.new(shape: OneDriveConfiguration, location_name: "OneDriveConfiguration"))
    DataSourceConfiguration.add_member(:service_now_configuration, Shapes::ShapeRef.new(shape: ServiceNowConfiguration, location_name: "ServiceNowConfiguration"))
    DataSourceConfiguration.add_member(:confluence_configuration, Shapes::ShapeRef.new(shape: ConfluenceConfiguration, location_name: "ConfluenceConfiguration"))
    DataSourceConfiguration.add_member(:google_drive_configuration, Shapes::ShapeRef.new(shape: GoogleDriveConfiguration, location_name: "GoogleDriveConfiguration"))
    DataSourceConfiguration.add_member(:web_crawler_configuration, Shapes::ShapeRef.new(shape: WebCrawlerConfiguration, location_name: "WebCrawlerConfiguration"))
    DataSourceConfiguration.add_member(:work_docs_configuration, Shapes::ShapeRef.new(shape: WorkDocsConfiguration, location_name: "WorkDocsConfiguration"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DataSourceGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: PrincipalName, required: true, location_name: "GroupId"))
    DataSourceGroup.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "DataSourceId"))
    DataSourceGroup.struct_class = Types::DataSourceGroup

    DataSourceGroups.member = Shapes::ShapeRef.new(shape: DataSourceGroup)

    DataSourceInclusionsExclusionsStrings.member = Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStringsMember)

    DataSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    DataSourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "Id"))
    DataSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "Type"))
    DataSourceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DataSourceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DataSourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    DataSourceSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
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
    DataSourceSyncJobMetricTarget.add_member(:data_source_sync_job_id, Shapes::ShapeRef.new(shape: DataSourceSyncJobId, location_name: "DataSourceSyncJobId"))
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

    DeletePrincipalMappingRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeletePrincipalMappingRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    DeletePrincipalMappingRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, required: true, location_name: "GroupId"))
    DeletePrincipalMappingRequest.add_member(:ordering_id, Shapes::ShapeRef.new(shape: PrincipalOrderingId, location_name: "OrderingId"))
    DeletePrincipalMappingRequest.struct_class = Types::DeletePrincipalMappingRequest

    DeleteQuerySuggestionsBlockListRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteQuerySuggestionsBlockListRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListId, required: true, location_name: "Id"))
    DeleteQuerySuggestionsBlockListRequest.struct_class = Types::DeleteQuerySuggestionsBlockListRequest

    DeleteThesaurusRequest.add_member(:id, Shapes::ShapeRef.new(shape: ThesaurusId, required: true, location_name: "Id"))
    DeleteThesaurusRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteThesaurusRequest.struct_class = Types::DeleteThesaurusRequest

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
    DescribeDataSourceResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
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
    DescribeFaqResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
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
    DescribeIndexResponse.add_member(:user_token_configurations, Shapes::ShapeRef.new(shape: UserTokenConfigurationList, location_name: "UserTokenConfigurations"))
    DescribeIndexResponse.add_member(:user_context_policy, Shapes::ShapeRef.new(shape: UserContextPolicy, location_name: "UserContextPolicy"))
    DescribeIndexResponse.add_member(:user_group_resolution_configuration, Shapes::ShapeRef.new(shape: UserGroupResolutionConfiguration, location_name: "UserGroupResolutionConfiguration"))
    DescribeIndexResponse.struct_class = Types::DescribeIndexResponse

    DescribePrincipalMappingRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribePrincipalMappingRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    DescribePrincipalMappingRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, required: true, location_name: "GroupId"))
    DescribePrincipalMappingRequest.struct_class = Types::DescribePrincipalMappingRequest

    DescribePrincipalMappingResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribePrincipalMappingResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    DescribePrincipalMappingResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "GroupId"))
    DescribePrincipalMappingResponse.add_member(:group_ordering_id_summaries, Shapes::ShapeRef.new(shape: GroupOrderingIdSummaries, location_name: "GroupOrderingIdSummaries"))
    DescribePrincipalMappingResponse.struct_class = Types::DescribePrincipalMappingResponse

    DescribeQuerySuggestionsBlockListRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeQuerySuggestionsBlockListRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListId, required: true, location_name: "Id"))
    DescribeQuerySuggestionsBlockListRequest.struct_class = Types::DescribeQuerySuggestionsBlockListRequest

    DescribeQuerySuggestionsBlockListResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:id, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListId, location_name: "Id"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:name, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListName, location_name: "Name"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:status, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListStatus, location_name: "Status"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:source_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "SourceS3Path"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:file_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "FileSizeBytes"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeQuerySuggestionsBlockListResponse.struct_class = Types::DescribeQuerySuggestionsBlockListResponse

    DescribeQuerySuggestionsConfigRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeQuerySuggestionsConfigRequest.struct_class = Types::DescribeQuerySuggestionsConfigRequest

    DescribeQuerySuggestionsConfigResponse.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    DescribeQuerySuggestionsConfigResponse.add_member(:status, Shapes::ShapeRef.new(shape: QuerySuggestionsStatus, location_name: "Status"))
    DescribeQuerySuggestionsConfigResponse.add_member(:query_log_look_back_window_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "QueryLogLookBackWindowInDays"))
    DescribeQuerySuggestionsConfigResponse.add_member(:include_queries_without_user_information, Shapes::ShapeRef.new(shape: ObjectBoolean, location_name: "IncludeQueriesWithoutUserInformation"))
    DescribeQuerySuggestionsConfigResponse.add_member(:minimum_number_of_querying_users, Shapes::ShapeRef.new(shape: MinimumNumberOfQueryingUsers, location_name: "MinimumNumberOfQueryingUsers"))
    DescribeQuerySuggestionsConfigResponse.add_member(:minimum_query_count, Shapes::ShapeRef.new(shape: MinimumQueryCount, location_name: "MinimumQueryCount"))
    DescribeQuerySuggestionsConfigResponse.add_member(:last_suggestions_build_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastSuggestionsBuildTime"))
    DescribeQuerySuggestionsConfigResponse.add_member(:last_clear_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastClearTime"))
    DescribeQuerySuggestionsConfigResponse.add_member(:total_suggestions_count, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalSuggestionsCount"))
    DescribeQuerySuggestionsConfigResponse.struct_class = Types::DescribeQuerySuggestionsConfigResponse

    DescribeThesaurusRequest.add_member(:id, Shapes::ShapeRef.new(shape: ThesaurusId, required: true, location_name: "Id"))
    DescribeThesaurusRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeThesaurusRequest.struct_class = Types::DescribeThesaurusRequest

    DescribeThesaurusResponse.add_member(:id, Shapes::ShapeRef.new(shape: ThesaurusId, location_name: "Id"))
    DescribeThesaurusResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribeThesaurusResponse.add_member(:name, Shapes::ShapeRef.new(shape: ThesaurusName, location_name: "Name"))
    DescribeThesaurusResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeThesaurusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ThesaurusStatus, location_name: "Status"))
    DescribeThesaurusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeThesaurusResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeThesaurusResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeThesaurusResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeThesaurusResponse.add_member(:source_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "SourceS3Path"))
    DescribeThesaurusResponse.add_member(:file_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "FileSizeBytes"))
    DescribeThesaurusResponse.add_member(:term_count, Shapes::ShapeRef.new(shape: Long, location_name: "TermCount"))
    DescribeThesaurusResponse.add_member(:synonym_rule_count, Shapes::ShapeRef.new(shape: Long, location_name: "SynonymRuleCount"))
    DescribeThesaurusResponse.struct_class = Types::DescribeThesaurusResponse

    Document.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "Id"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    Document.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    Document.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "S3Path"))
    Document.add_member(:attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "Attributes"))
    Document.add_member(:access_control_list, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "AccessControlList"))
    Document.add_member(:hierarchical_access_control_list, Shapes::ShapeRef.new(shape: HierarchicalPrincipalList, location_name: "HierarchicalAccessControlList"))
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

    DocumentInfo.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "DocumentId"))
    DocumentInfo.add_member(:attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "Attributes"))
    DocumentInfo.struct_class = Types::DocumentInfo

    DocumentInfoList.member = Shapes::ShapeRef.new(shape: DocumentInfo)

    DocumentList.member = Shapes::ShapeRef.new(shape: Document)

    DocumentMetadataConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationName, required: true, location_name: "Name"))
    DocumentMetadataConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: DocumentAttributeValueType, required: true, location_name: "Type"))
    DocumentMetadataConfiguration.add_member(:relevance, Shapes::ShapeRef.new(shape: Relevance, location_name: "Relevance"))
    DocumentMetadataConfiguration.add_member(:search, Shapes::ShapeRef.new(shape: Search, location_name: "Search"))
    DocumentMetadataConfiguration.struct_class = Types::DocumentMetadataConfiguration

    DocumentMetadataConfigurationList.member = Shapes::ShapeRef.new(shape: DocumentMetadataConfiguration)

    DocumentRelevanceConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationName, required: true, location_name: "Name"))
    DocumentRelevanceConfiguration.add_member(:relevance, Shapes::ShapeRef.new(shape: Relevance, required: true, location_name: "Relevance"))
    DocumentRelevanceConfiguration.struct_class = Types::DocumentRelevanceConfiguration

    DocumentRelevanceOverrideConfigurationList.member = Shapes::ShapeRef.new(shape: DocumentRelevanceConfiguration)

    DocumentStatusList.member = Shapes::ShapeRef.new(shape: Status)

    DocumentsMetadataConfiguration.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "S3Prefix"))
    DocumentsMetadataConfiguration.struct_class = Types::DocumentsMetadataConfiguration

    ExcludeMimeTypesList.member = Shapes::ShapeRef.new(shape: MimeType)

    ExcludeSharedDrivesList.member = Shapes::ShapeRef.new(shape: SharedDriveId)

    ExcludeUserAccountsList.member = Shapes::ShapeRef.new(shape: UserAccount)

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
    FaqSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    FaqSummary.struct_class = Types::FaqSummary

    FaqSummaryItems.member = Shapes::ShapeRef.new(shape: FaqSummary)

    GetQuerySuggestionsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    GetQuerySuggestionsRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: SuggestionQueryText, required: true, location_name: "QueryText"))
    GetQuerySuggestionsRequest.add_member(:max_suggestions_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSuggestionsCount"))
    GetQuerySuggestionsRequest.struct_class = Types::GetQuerySuggestionsRequest

    GetQuerySuggestionsResponse.add_member(:query_suggestions_id, Shapes::ShapeRef.new(shape: QuerySuggestionsId, location_name: "QuerySuggestionsId"))
    GetQuerySuggestionsResponse.add_member(:suggestions, Shapes::ShapeRef.new(shape: SuggestionList, location_name: "Suggestions"))
    GetQuerySuggestionsResponse.struct_class = Types::GetQuerySuggestionsResponse

    GoogleDriveConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    GoogleDriveConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    GoogleDriveConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    GoogleDriveConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    GoogleDriveConfiguration.add_member(:exclude_mime_types, Shapes::ShapeRef.new(shape: ExcludeMimeTypesList, location_name: "ExcludeMimeTypes"))
    GoogleDriveConfiguration.add_member(:exclude_user_accounts, Shapes::ShapeRef.new(shape: ExcludeUserAccountsList, location_name: "ExcludeUserAccounts"))
    GoogleDriveConfiguration.add_member(:exclude_shared_drives, Shapes::ShapeRef.new(shape: ExcludeSharedDrivesList, location_name: "ExcludeSharedDrives"))
    GoogleDriveConfiguration.struct_class = Types::GoogleDriveConfiguration

    GroupMembers.add_member(:member_groups, Shapes::ShapeRef.new(shape: MemberGroups, location_name: "MemberGroups"))
    GroupMembers.add_member(:member_users, Shapes::ShapeRef.new(shape: MemberUsers, location_name: "MemberUsers"))
    GroupMembers.add_member(:s3_pathfor_group_members, Shapes::ShapeRef.new(shape: S3Path, location_name: "S3PathforGroupMembers"))
    GroupMembers.struct_class = Types::GroupMembers

    GroupOrderingIdSummaries.member = Shapes::ShapeRef.new(shape: GroupOrderingIdSummary)

    GroupOrderingIdSummary.add_member(:status, Shapes::ShapeRef.new(shape: PrincipalMappingStatus, location_name: "Status"))
    GroupOrderingIdSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedAt"))
    GroupOrderingIdSummary.add_member(:received_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReceivedAt"))
    GroupOrderingIdSummary.add_member(:ordering_id, Shapes::ShapeRef.new(shape: PrincipalOrderingId, location_name: "OrderingId"))
    GroupOrderingIdSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GroupOrderingIdSummary.struct_class = Types::GroupOrderingIdSummary

    GroupSummary.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "GroupId"))
    GroupSummary.add_member(:ordering_id, Shapes::ShapeRef.new(shape: PrincipalOrderingId, location_name: "OrderingId"))
    GroupSummary.struct_class = Types::GroupSummary

    Groups.member = Shapes::ShapeRef.new(shape: PrincipalName)

    HierarchicalPrincipal.add_member(:principal_list, Shapes::ShapeRef.new(shape: PrincipalList, required: true, location_name: "PrincipalList"))
    HierarchicalPrincipal.struct_class = Types::HierarchicalPrincipal

    HierarchicalPrincipalList.member = Shapes::ShapeRef.new(shape: HierarchicalPrincipal)

    Highlight.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "BeginOffset"))
    Highlight.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "EndOffset"))
    Highlight.add_member(:top_answer, Shapes::ShapeRef.new(shape: Boolean, location_name: "TopAnswer"))
    Highlight.add_member(:type, Shapes::ShapeRef.new(shape: HighlightType, location_name: "Type"))
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

    JsonTokenTypeConfiguration.add_member(:user_name_attribute_field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UserNameAttributeField"))
    JsonTokenTypeConfiguration.add_member(:group_attribute_field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "GroupAttributeField"))
    JsonTokenTypeConfiguration.struct_class = Types::JsonTokenTypeConfiguration

    JwtTokenTypeConfiguration.add_member(:key_location, Shapes::ShapeRef.new(shape: KeyLocation, required: true, location_name: "KeyLocation"))
    JwtTokenTypeConfiguration.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "URL"))
    JwtTokenTypeConfiguration.add_member(:secret_manager_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "SecretManagerArn"))
    JwtTokenTypeConfiguration.add_member(:user_name_attribute_field, Shapes::ShapeRef.new(shape: UserNameAttributeField, location_name: "UserNameAttributeField"))
    JwtTokenTypeConfiguration.add_member(:group_attribute_field, Shapes::ShapeRef.new(shape: GroupAttributeField, location_name: "GroupAttributeField"))
    JwtTokenTypeConfiguration.add_member(:issuer, Shapes::ShapeRef.new(shape: Issuer, location_name: "Issuer"))
    JwtTokenTypeConfiguration.add_member(:claim_regex, Shapes::ShapeRef.new(shape: ClaimRegex, location_name: "ClaimRegex"))
    JwtTokenTypeConfiguration.struct_class = Types::JwtTokenTypeConfiguration

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

    ListGroupsOlderThanOrderingIdRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListGroupsOlderThanOrderingIdRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    ListGroupsOlderThanOrderingIdRequest.add_member(:ordering_id, Shapes::ShapeRef.new(shape: PrincipalOrderingId, required: true, location_name: "OrderingId"))
    ListGroupsOlderThanOrderingIdRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsOlderThanOrderingIdRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPrincipalsRequest, location_name: "MaxResults"))
    ListGroupsOlderThanOrderingIdRequest.struct_class = Types::ListGroupsOlderThanOrderingIdRequest

    ListGroupsOlderThanOrderingIdResponse.add_member(:groups_summaries, Shapes::ShapeRef.new(shape: ListOfGroupSummaries, location_name: "GroupsSummaries"))
    ListGroupsOlderThanOrderingIdResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsOlderThanOrderingIdResponse.struct_class = Types::ListGroupsOlderThanOrderingIdResponse

    ListIndicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIndicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListIndicesRequest, location_name: "MaxResults"))
    ListIndicesRequest.struct_class = Types::ListIndicesRequest

    ListIndicesResponse.add_member(:index_configuration_summary_items, Shapes::ShapeRef.new(shape: IndexConfigurationSummaryList, location_name: "IndexConfigurationSummaryItems"))
    ListIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListIndicesResponse.struct_class = Types::ListIndicesResponse

    ListOfGroupSummaries.member = Shapes::ShapeRef.new(shape: GroupSummary)

    ListQuerySuggestionsBlockListsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListQuerySuggestionsBlockListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQuerySuggestionsBlockListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListQuerySuggestionsBlockLists, location_name: "MaxResults"))
    ListQuerySuggestionsBlockListsRequest.struct_class = Types::ListQuerySuggestionsBlockListsRequest

    ListQuerySuggestionsBlockListsResponse.add_member(:block_list_summary_items, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListSummaryItems, location_name: "BlockListSummaryItems"))
    ListQuerySuggestionsBlockListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListQuerySuggestionsBlockListsResponse.struct_class = Types::ListQuerySuggestionsBlockListsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListThesauriRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListThesauriRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListThesauriRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListThesauriRequest, location_name: "MaxResults"))
    ListThesauriRequest.struct_class = Types::ListThesauriRequest

    ListThesauriResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListThesauriResponse.add_member(:thesaurus_summary_items, Shapes::ShapeRef.new(shape: ThesaurusSummaryItems, location_name: "ThesaurusSummaryItems"))
    ListThesauriResponse.struct_class = Types::ListThesauriResponse

    MemberGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, required: true, location_name: "GroupId"))
    MemberGroup.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    MemberGroup.struct_class = Types::MemberGroup

    MemberGroups.member = Shapes::ShapeRef.new(shape: MemberGroup)

    MemberUser.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    MemberUser.struct_class = Types::MemberUser

    MemberUsers.member = Shapes::ShapeRef.new(shape: MemberUser)

    OneDriveConfiguration.add_member(:tenant_domain, Shapes::ShapeRef.new(shape: TenantDomain, required: true, location_name: "TenantDomain"))
    OneDriveConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    OneDriveConfiguration.add_member(:one_drive_users, Shapes::ShapeRef.new(shape: OneDriveUsers, required: true, location_name: "OneDriveUsers"))
    OneDriveConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    OneDriveConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    OneDriveConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    OneDriveConfiguration.add_member(:disable_local_groups, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableLocalGroups"))
    OneDriveConfiguration.struct_class = Types::OneDriveConfiguration

    OneDriveUserList.member = Shapes::ShapeRef.new(shape: OneDriveUser)

    OneDriveUsers.add_member(:one_drive_user_list, Shapes::ShapeRef.new(shape: OneDriveUserList, location_name: "OneDriveUserList"))
    OneDriveUsers.add_member(:one_drive_user_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "OneDriveUserS3Path"))
    OneDriveUsers.struct_class = Types::OneDriveUsers

    Principal.add_member(:name, Shapes::ShapeRef.new(shape: PrincipalName, required: true, location_name: "Name"))
    Principal.add_member(:type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "Type"))
    Principal.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "Access"))
    Principal.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    Principal.struct_class = Types::Principal

    PrincipalList.member = Shapes::ShapeRef.new(shape: Principal)

    ProxyConfiguration.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    ProxyConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    ProxyConfiguration.add_member(:credentials, Shapes::ShapeRef.new(shape: SecretArn, location_name: "Credentials"))
    ProxyConfiguration.struct_class = Types::ProxyConfiguration

    PutPrincipalMappingRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    PutPrincipalMappingRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    PutPrincipalMappingRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, required: true, location_name: "GroupId"))
    PutPrincipalMappingRequest.add_member(:group_members, Shapes::ShapeRef.new(shape: GroupMembers, required: true, location_name: "GroupMembers"))
    PutPrincipalMappingRequest.add_member(:ordering_id, Shapes::ShapeRef.new(shape: PrincipalOrderingId, location_name: "OrderingId"))
    PutPrincipalMappingRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutPrincipalMappingRequest.struct_class = Types::PutPrincipalMappingRequest

    QueryRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    QueryRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, required: true, location_name: "QueryText"))
    QueryRequest.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "AttributeFilter"))
    QueryRequest.add_member(:facets, Shapes::ShapeRef.new(shape: FacetList, location_name: "Facets"))
    QueryRequest.add_member(:requested_document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeKeyList, location_name: "RequestedDocumentAttributes"))
    QueryRequest.add_member(:query_result_type_filter, Shapes::ShapeRef.new(shape: QueryResultType, location_name: "QueryResultTypeFilter"))
    QueryRequest.add_member(:document_relevance_override_configurations, Shapes::ShapeRef.new(shape: DocumentRelevanceOverrideConfigurationList, location_name: "DocumentRelevanceOverrideConfigurations"))
    QueryRequest.add_member(:page_number, Shapes::ShapeRef.new(shape: Integer, location_name: "PageNumber"))
    QueryRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: Integer, location_name: "PageSize"))
    QueryRequest.add_member(:sorting_configuration, Shapes::ShapeRef.new(shape: SortingConfiguration, location_name: "SortingConfiguration"))
    QueryRequest.add_member(:user_context, Shapes::ShapeRef.new(shape: UserContext, location_name: "UserContext"))
    QueryRequest.add_member(:visitor_id, Shapes::ShapeRef.new(shape: VisitorId, location_name: "VisitorId"))
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
    QueryResultItem.add_member(:feedback_token, Shapes::ShapeRef.new(shape: FeedbackToken, location_name: "FeedbackToken"))
    QueryResultItem.struct_class = Types::QueryResultItem

    QueryResultItemList.member = Shapes::ShapeRef.new(shape: QueryResultItem)

    QuerySuggestionsBlockListSummary.add_member(:id, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListId, location_name: "Id"))
    QuerySuggestionsBlockListSummary.add_member(:name, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListName, location_name: "Name"))
    QuerySuggestionsBlockListSummary.add_member(:status, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListStatus, location_name: "Status"))
    QuerySuggestionsBlockListSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    QuerySuggestionsBlockListSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    QuerySuggestionsBlockListSummary.add_member(:item_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ItemCount"))
    QuerySuggestionsBlockListSummary.struct_class = Types::QuerySuggestionsBlockListSummary

    QuerySuggestionsBlockListSummaryItems.member = Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListSummary)

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
    S3DataSourceConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
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

    SeedUrlConfiguration.add_member(:seed_urls, Shapes::ShapeRef.new(shape: SeedUrlList, required: true, location_name: "SeedUrls"))
    SeedUrlConfiguration.add_member(:web_crawler_mode, Shapes::ShapeRef.new(shape: WebCrawlerMode, location_name: "WebCrawlerMode"))
    SeedUrlConfiguration.struct_class = Types::SeedUrlConfiguration

    SeedUrlList.member = Shapes::ShapeRef.new(shape: SeedUrl)

    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceNowConfiguration.add_member(:host_url, Shapes::ShapeRef.new(shape: ServiceNowHostUrl, required: true, location_name: "HostUrl"))
    ServiceNowConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    ServiceNowConfiguration.add_member(:service_now_build_version, Shapes::ShapeRef.new(shape: ServiceNowBuildVersionType, required: true, location_name: "ServiceNowBuildVersion"))
    ServiceNowConfiguration.add_member(:knowledge_article_configuration, Shapes::ShapeRef.new(shape: ServiceNowKnowledgeArticleConfiguration, location_name: "KnowledgeArticleConfiguration"))
    ServiceNowConfiguration.add_member(:service_catalog_configuration, Shapes::ShapeRef.new(shape: ServiceNowServiceCatalogConfiguration, location_name: "ServiceCatalogConfiguration"))
    ServiceNowConfiguration.add_member(:authentication_type, Shapes::ShapeRef.new(shape: ServiceNowAuthenticationType, location_name: "AuthenticationType"))
    ServiceNowConfiguration.struct_class = Types::ServiceNowConfiguration

    ServiceNowKnowledgeArticleConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:include_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "IncludeAttachmentFilePatterns"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:exclude_attachment_file_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExcludeAttachmentFilePatterns"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:document_data_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, required: true, location_name: "DocumentDataFieldName"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:document_title_field_name, Shapes::ShapeRef.new(shape: DataSourceFieldName, location_name: "DocumentTitleFieldName"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:filter_query, Shapes::ShapeRef.new(shape: ServiceNowKnowledgeArticleFilterQuery, location_name: "FilterQuery"))
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
    SharePointConfiguration.add_member(:disable_local_groups, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableLocalGroups"))
    SharePointConfiguration.add_member(:ssl_certificate_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "SslCertificateS3Path"))
    SharePointConfiguration.struct_class = Types::SharePointConfiguration

    SharePointUrlList.member = Shapes::ShapeRef.new(shape: Url)

    SiteMapsConfiguration.add_member(:site_maps, Shapes::ShapeRef.new(shape: SiteMapsList, required: true, location_name: "SiteMaps"))
    SiteMapsConfiguration.struct_class = Types::SiteMapsConfiguration

    SiteMapsList.member = Shapes::ShapeRef.new(shape: SiteMap)

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

    Status.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    Status.add_member(:document_status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "DocumentStatus"))
    Status.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "FailureCode"))
    Status.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    Status.struct_class = Types::Status

    StopDataSourceSyncJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    StopDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    StopDataSourceSyncJobRequest.struct_class = Types::StopDataSourceSyncJobRequest

    SubmitFeedbackRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    SubmitFeedbackRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    SubmitFeedbackRequest.add_member(:click_feedback_items, Shapes::ShapeRef.new(shape: ClickFeedbackList, location_name: "ClickFeedbackItems"))
    SubmitFeedbackRequest.add_member(:relevance_feedback_items, Shapes::ShapeRef.new(shape: RelevanceFeedbackList, location_name: "RelevanceFeedbackItems"))
    SubmitFeedbackRequest.struct_class = Types::SubmitFeedbackRequest

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    Suggestion.add_member(:id, Shapes::ShapeRef.new(shape: ResultId, location_name: "Id"))
    Suggestion.add_member(:value, Shapes::ShapeRef.new(shape: SuggestionValue, location_name: "Value"))
    Suggestion.struct_class = Types::Suggestion

    SuggestionHighlight.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    SuggestionHighlight.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    SuggestionHighlight.struct_class = Types::SuggestionHighlight

    SuggestionHighlightList.member = Shapes::ShapeRef.new(shape: SuggestionHighlight)

    SuggestionList.member = Shapes::ShapeRef.new(shape: Suggestion)

    SuggestionTextWithHighlights.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    SuggestionTextWithHighlights.add_member(:highlights, Shapes::ShapeRef.new(shape: SuggestionHighlightList, location_name: "Highlights"))
    SuggestionTextWithHighlights.struct_class = Types::SuggestionTextWithHighlights

    SuggestionValue.add_member(:text, Shapes::ShapeRef.new(shape: SuggestionTextWithHighlights, location_name: "Text"))
    SuggestionValue.struct_class = Types::SuggestionValue

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

    ThesaurusSummary.add_member(:id, Shapes::ShapeRef.new(shape: ThesaurusId, location_name: "Id"))
    ThesaurusSummary.add_member(:name, Shapes::ShapeRef.new(shape: ThesaurusName, location_name: "Name"))
    ThesaurusSummary.add_member(:status, Shapes::ShapeRef.new(shape: ThesaurusStatus, location_name: "Status"))
    ThesaurusSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ThesaurusSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ThesaurusSummary.struct_class = Types::ThesaurusSummary

    ThesaurusSummaryItems.member = Shapes::ShapeRef.new(shape: ThesaurusSummary)

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
    UpdateDataSourceRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateIndexRequest.add_member(:id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "Id"))
    UpdateIndexRequest.add_member(:name, Shapes::ShapeRef.new(shape: IndexName, location_name: "Name"))
    UpdateIndexRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateIndexRequest.add_member(:document_metadata_configuration_updates, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationList, location_name: "DocumentMetadataConfigurationUpdates"))
    UpdateIndexRequest.add_member(:capacity_units, Shapes::ShapeRef.new(shape: CapacityUnitsConfiguration, location_name: "CapacityUnits"))
    UpdateIndexRequest.add_member(:user_token_configurations, Shapes::ShapeRef.new(shape: UserTokenConfigurationList, location_name: "UserTokenConfigurations"))
    UpdateIndexRequest.add_member(:user_context_policy, Shapes::ShapeRef.new(shape: UserContextPolicy, location_name: "UserContextPolicy"))
    UpdateIndexRequest.add_member(:user_group_resolution_configuration, Shapes::ShapeRef.new(shape: UserGroupResolutionConfiguration, location_name: "UserGroupResolutionConfiguration"))
    UpdateIndexRequest.struct_class = Types::UpdateIndexRequest

    UpdateQuerySuggestionsBlockListRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:id, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListId, required: true, location_name: "Id"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:name, Shapes::ShapeRef.new(shape: QuerySuggestionsBlockListName, location_name: "Name"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:source_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "SourceS3Path"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateQuerySuggestionsBlockListRequest.struct_class = Types::UpdateQuerySuggestionsBlockListRequest

    UpdateQuerySuggestionsConfigRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateQuerySuggestionsConfigRequest.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "Mode"))
    UpdateQuerySuggestionsConfigRequest.add_member(:query_log_look_back_window_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "QueryLogLookBackWindowInDays"))
    UpdateQuerySuggestionsConfigRequest.add_member(:include_queries_without_user_information, Shapes::ShapeRef.new(shape: ObjectBoolean, location_name: "IncludeQueriesWithoutUserInformation"))
    UpdateQuerySuggestionsConfigRequest.add_member(:minimum_number_of_querying_users, Shapes::ShapeRef.new(shape: MinimumNumberOfQueryingUsers, location_name: "MinimumNumberOfQueryingUsers"))
    UpdateQuerySuggestionsConfigRequest.add_member(:minimum_query_count, Shapes::ShapeRef.new(shape: MinimumQueryCount, location_name: "MinimumQueryCount"))
    UpdateQuerySuggestionsConfigRequest.struct_class = Types::UpdateQuerySuggestionsConfigRequest

    UpdateThesaurusRequest.add_member(:id, Shapes::ShapeRef.new(shape: ThesaurusId, required: true, location_name: "Id"))
    UpdateThesaurusRequest.add_member(:name, Shapes::ShapeRef.new(shape: ThesaurusName, location_name: "Name"))
    UpdateThesaurusRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateThesaurusRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateThesaurusRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateThesaurusRequest.add_member(:source_s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "SourceS3Path"))
    UpdateThesaurusRequest.struct_class = Types::UpdateThesaurusRequest

    Urls.add_member(:seed_url_configuration, Shapes::ShapeRef.new(shape: SeedUrlConfiguration, location_name: "SeedUrlConfiguration"))
    Urls.add_member(:site_maps_configuration, Shapes::ShapeRef.new(shape: SiteMapsConfiguration, location_name: "SiteMapsConfiguration"))
    Urls.struct_class = Types::Urls

    UserContext.add_member(:token, Shapes::ShapeRef.new(shape: Token, location_name: "Token"))
    UserContext.add_member(:user_id, Shapes::ShapeRef.new(shape: PrincipalName, location_name: "UserId"))
    UserContext.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "Groups"))
    UserContext.add_member(:data_source_groups, Shapes::ShapeRef.new(shape: DataSourceGroups, location_name: "DataSourceGroups"))
    UserContext.struct_class = Types::UserContext

    UserGroupResolutionConfiguration.add_member(:user_group_resolution_mode, Shapes::ShapeRef.new(shape: UserGroupResolutionMode, required: true, location_name: "UserGroupResolutionMode"))
    UserGroupResolutionConfiguration.struct_class = Types::UserGroupResolutionConfiguration

    UserTokenConfiguration.add_member(:jwt_token_type_configuration, Shapes::ShapeRef.new(shape: JwtTokenTypeConfiguration, location_name: "JwtTokenTypeConfiguration"))
    UserTokenConfiguration.add_member(:json_token_type_configuration, Shapes::ShapeRef.new(shape: JsonTokenTypeConfiguration, location_name: "JsonTokenTypeConfiguration"))
    UserTokenConfiguration.struct_class = Types::UserTokenConfiguration

    UserTokenConfigurationList.member = Shapes::ShapeRef.new(shape: UserTokenConfiguration)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValueImportanceMap.key = Shapes::ShapeRef.new(shape: ValueImportanceMapKey)
    ValueImportanceMap.value = Shapes::ShapeRef.new(shape: Importance)

    WebCrawlerConfiguration.add_member(:urls, Shapes::ShapeRef.new(shape: Urls, required: true, location_name: "Urls"))
    WebCrawlerConfiguration.add_member(:crawl_depth, Shapes::ShapeRef.new(shape: CrawlDepth, location_name: "CrawlDepth"))
    WebCrawlerConfiguration.add_member(:max_links_per_page, Shapes::ShapeRef.new(shape: MaxLinksPerPage, location_name: "MaxLinksPerPage"))
    WebCrawlerConfiguration.add_member(:max_content_size_per_page_in_mega_bytes, Shapes::ShapeRef.new(shape: MaxContentSizePerPageInMegaBytes, location_name: "MaxContentSizePerPageInMegaBytes"))
    WebCrawlerConfiguration.add_member(:max_urls_per_minute_crawl_rate, Shapes::ShapeRef.new(shape: MaxUrlsPerMinuteCrawlRate, location_name: "MaxUrlsPerMinuteCrawlRate"))
    WebCrawlerConfiguration.add_member(:url_inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "UrlInclusionPatterns"))
    WebCrawlerConfiguration.add_member(:url_exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "UrlExclusionPatterns"))
    WebCrawlerConfiguration.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "ProxyConfiguration"))
    WebCrawlerConfiguration.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: "AuthenticationConfiguration"))
    WebCrawlerConfiguration.struct_class = Types::WebCrawlerConfiguration

    WorkDocsConfiguration.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    WorkDocsConfiguration.add_member(:crawl_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlComments"))
    WorkDocsConfiguration.add_member(:use_change_log, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseChangeLog"))
    WorkDocsConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    WorkDocsConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    WorkDocsConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    WorkDocsConfiguration.struct_class = Types::WorkDocsConfiguration


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

      api.add_operation(:batch_get_document_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetDocumentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetDocumentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetDocumentStatusResponse)
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

      api.add_operation(:clear_query_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClearQuerySuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ClearQuerySuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:create_query_suggestions_block_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuerySuggestionsBlockList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateQuerySuggestionsBlockListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuerySuggestionsBlockListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_thesaurus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThesaurus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateThesaurusRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThesaurusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:delete_principal_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrincipalMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePrincipalMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_query_suggestions_block_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQuerySuggestionsBlockList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQuerySuggestionsBlockListRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_thesaurus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThesaurus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteThesaurusRequest)
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

      api.add_operation(:describe_principal_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePrincipalMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePrincipalMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePrincipalMappingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_query_suggestions_block_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQuerySuggestionsBlockList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQuerySuggestionsBlockListRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQuerySuggestionsBlockListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_query_suggestions_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQuerySuggestionsConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeQuerySuggestionsConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQuerySuggestionsConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_thesaurus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThesaurus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeThesaurusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThesaurusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_query_suggestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQuerySuggestions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQuerySuggestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQuerySuggestionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:list_groups_older_than_ordering_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupsOlderThanOrderingId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsOlderThanOrderingIdRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsOlderThanOrderingIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:list_query_suggestions_block_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQuerySuggestionsBlockLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQuerySuggestionsBlockListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQuerySuggestionsBlockListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:list_thesauri, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThesauri"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListThesauriRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThesauriResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_principal_mapping, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPrincipalMapping"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPrincipalMappingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:update_query_suggestions_block_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQuerySuggestionsBlockList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateQuerySuggestionsBlockListRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_query_suggestions_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQuerySuggestionsConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateQuerySuggestionsConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_thesaurus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThesaurus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateThesaurusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
