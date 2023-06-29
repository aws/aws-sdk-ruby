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

    AccessControlConfigurationId = Shapes::StringShape.new(name: 'AccessControlConfigurationId')
    AccessControlConfigurationName = Shapes::StringShape.new(name: 'AccessControlConfigurationName')
    AccessControlConfigurationSummary = Shapes::StructureShape.new(name: 'AccessControlConfigurationSummary')
    AccessControlConfigurationSummaryList = Shapes::ListShape.new(name: 'AccessControlConfigurationSummaryList')
    AccessControlListConfiguration = Shapes::StructureShape.new(name: 'AccessControlListConfiguration')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AclConfiguration = Shapes::StructureShape.new(name: 'AclConfiguration')
    AdditionalResultAttribute = Shapes::StructureShape.new(name: 'AdditionalResultAttribute')
    AdditionalResultAttributeList = Shapes::ListShape.new(name: 'AdditionalResultAttributeList')
    AdditionalResultAttributeValue = Shapes::StructureShape.new(name: 'AdditionalResultAttributeValue')
    AdditionalResultAttributeValueType = Shapes::StringShape.new(name: 'AdditionalResultAttributeValueType')
    AlfrescoConfiguration = Shapes::StructureShape.new(name: 'AlfrescoConfiguration')
    AlfrescoEntity = Shapes::StringShape.new(name: 'AlfrescoEntity')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssociateEntitiesToExperienceFailedEntityList = Shapes::ListShape.new(name: 'AssociateEntitiesToExperienceFailedEntityList')
    AssociateEntitiesToExperienceRequest = Shapes::StructureShape.new(name: 'AssociateEntitiesToExperienceRequest')
    AssociateEntitiesToExperienceResponse = Shapes::StructureShape.new(name: 'AssociateEntitiesToExperienceResponse')
    AssociateEntityList = Shapes::ListShape.new(name: 'AssociateEntityList')
    AssociatePersonasToEntitiesRequest = Shapes::StructureShape.new(name: 'AssociatePersonasToEntitiesRequest')
    AssociatePersonasToEntitiesResponse = Shapes::StructureShape.new(name: 'AssociatePersonasToEntitiesResponse')
    AttributeFilter = Shapes::StructureShape.new(name: 'AttributeFilter')
    AttributeFilterList = Shapes::ListShape.new(name: 'AttributeFilterList')
    AttributeSuggestionsDescribeConfig = Shapes::StructureShape.new(name: 'AttributeSuggestionsDescribeConfig')
    AttributeSuggestionsGetConfig = Shapes::StructureShape.new(name: 'AttributeSuggestionsGetConfig')
    AttributeSuggestionsMode = Shapes::StringShape.new(name: 'AttributeSuggestionsMode')
    AttributeSuggestionsUpdateConfig = Shapes::StructureShape.new(name: 'AttributeSuggestionsUpdateConfig')
    AuthenticationConfiguration = Shapes::StructureShape.new(name: 'AuthenticationConfiguration')
    BasicAuthenticationConfiguration = Shapes::StructureShape.new(name: 'BasicAuthenticationConfiguration')
    BasicAuthenticationConfigurationList = Shapes::ListShape.new(name: 'BasicAuthenticationConfigurationList')
    BatchDeleteDocumentRequest = Shapes::StructureShape.new(name: 'BatchDeleteDocumentRequest')
    BatchDeleteDocumentResponse = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponse')
    BatchDeleteDocumentResponseFailedDocument = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponseFailedDocument')
    BatchDeleteDocumentResponseFailedDocuments = Shapes::ListShape.new(name: 'BatchDeleteDocumentResponseFailedDocuments')
    BatchDeleteFeaturedResultsSetError = Shapes::StructureShape.new(name: 'BatchDeleteFeaturedResultsSetError')
    BatchDeleteFeaturedResultsSetErrors = Shapes::ListShape.new(name: 'BatchDeleteFeaturedResultsSetErrors')
    BatchDeleteFeaturedResultsSetRequest = Shapes::StructureShape.new(name: 'BatchDeleteFeaturedResultsSetRequest')
    BatchDeleteFeaturedResultsSetResponse = Shapes::StructureShape.new(name: 'BatchDeleteFeaturedResultsSetResponse')
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
    BoxConfiguration = Shapes::StructureShape.new(name: 'BoxConfiguration')
    CapacityUnitsConfiguration = Shapes::StructureShape.new(name: 'CapacityUnitsConfiguration')
    ChangeDetectingColumns = Shapes::ListShape.new(name: 'ChangeDetectingColumns')
    ClaimRegex = Shapes::StringShape.new(name: 'ClaimRegex')
    ClearQuerySuggestionsRequest = Shapes::StructureShape.new(name: 'ClearQuerySuggestionsRequest')
    ClickFeedback = Shapes::StructureShape.new(name: 'ClickFeedback')
    ClickFeedbackList = Shapes::ListShape.new(name: 'ClickFeedbackList')
    ClientTokenName = Shapes::StringShape.new(name: 'ClientTokenName')
    ColumnConfiguration = Shapes::StructureShape.new(name: 'ColumnConfiguration')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ConditionOperator = Shapes::StringShape.new(name: 'ConditionOperator')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictingItem = Shapes::StructureShape.new(name: 'ConflictingItem')
    ConflictingItems = Shapes::ListShape.new(name: 'ConflictingItems')
    ConfluenceAttachmentConfiguration = Shapes::StructureShape.new(name: 'ConfluenceAttachmentConfiguration')
    ConfluenceAttachmentFieldMappingsList = Shapes::ListShape.new(name: 'ConfluenceAttachmentFieldMappingsList')
    ConfluenceAttachmentFieldName = Shapes::StringShape.new(name: 'ConfluenceAttachmentFieldName')
    ConfluenceAttachmentToIndexFieldMapping = Shapes::StructureShape.new(name: 'ConfluenceAttachmentToIndexFieldMapping')
    ConfluenceAuthenticationType = Shapes::StringShape.new(name: 'ConfluenceAuthenticationType')
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
    Content = Shapes::StringShape.new(name: 'Content')
    ContentSourceConfiguration = Shapes::StructureShape.new(name: 'ContentSourceConfiguration')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    Correction = Shapes::StructureShape.new(name: 'Correction')
    CorrectionList = Shapes::ListShape.new(name: 'CorrectionList')
    CrawlDepth = Shapes::IntegerShape.new(name: 'CrawlDepth')
    CreateAccessControlConfigurationRequest = Shapes::StructureShape.new(name: 'CreateAccessControlConfigurationRequest')
    CreateAccessControlConfigurationResponse = Shapes::StructureShape.new(name: 'CreateAccessControlConfigurationResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateExperienceRequest = Shapes::StructureShape.new(name: 'CreateExperienceRequest')
    CreateExperienceResponse = Shapes::StructureShape.new(name: 'CreateExperienceResponse')
    CreateFaqRequest = Shapes::StructureShape.new(name: 'CreateFaqRequest')
    CreateFaqResponse = Shapes::StructureShape.new(name: 'CreateFaqResponse')
    CreateFeaturedResultsSetRequest = Shapes::StructureShape.new(name: 'CreateFeaturedResultsSetRequest')
    CreateFeaturedResultsSetResponse = Shapes::StructureShape.new(name: 'CreateFeaturedResultsSetResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    CreateQuerySuggestionsBlockListRequest = Shapes::StructureShape.new(name: 'CreateQuerySuggestionsBlockListRequest')
    CreateQuerySuggestionsBlockListResponse = Shapes::StructureShape.new(name: 'CreateQuerySuggestionsBlockListResponse')
    CreateThesaurusRequest = Shapes::StructureShape.new(name: 'CreateThesaurusRequest')
    CreateThesaurusResponse = Shapes::StructureShape.new(name: 'CreateThesaurusResponse')
    CustomDocumentEnrichmentConfiguration = Shapes::StructureShape.new(name: 'CustomDocumentEnrichmentConfiguration')
    DataSourceConfiguration = Shapes::StructureShape.new(name: 'DataSourceConfiguration')
    DataSourceDateFieldFormat = Shapes::StringShape.new(name: 'DataSourceDateFieldFormat')
    DataSourceFieldName = Shapes::StringShape.new(name: 'DataSourceFieldName')
    DataSourceGroup = Shapes::StructureShape.new(name: 'DataSourceGroup')
    DataSourceGroups = Shapes::ListShape.new(name: 'DataSourceGroups')
    DataSourceId = Shapes::StringShape.new(name: 'DataSourceId')
    DataSourceIdList = Shapes::ListShape.new(name: 'DataSourceIdList')
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
    DeleteAccessControlConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteAccessControlConfigurationRequest')
    DeleteAccessControlConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteAccessControlConfigurationResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteExperienceRequest = Shapes::StructureShape.new(name: 'DeleteExperienceRequest')
    DeleteExperienceResponse = Shapes::StructureShape.new(name: 'DeleteExperienceResponse')
    DeleteFaqRequest = Shapes::StructureShape.new(name: 'DeleteFaqRequest')
    DeleteIndexRequest = Shapes::StructureShape.new(name: 'DeleteIndexRequest')
    DeletePrincipalMappingRequest = Shapes::StructureShape.new(name: 'DeletePrincipalMappingRequest')
    DeleteQuerySuggestionsBlockListRequest = Shapes::StructureShape.new(name: 'DeleteQuerySuggestionsBlockListRequest')
    DeleteThesaurusRequest = Shapes::StructureShape.new(name: 'DeleteThesaurusRequest')
    DescribeAccessControlConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAccessControlConfigurationRequest')
    DescribeAccessControlConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAccessControlConfigurationResponse')
    DescribeDataSourceRequest = Shapes::StructureShape.new(name: 'DescribeDataSourceRequest')
    DescribeDataSourceResponse = Shapes::StructureShape.new(name: 'DescribeDataSourceResponse')
    DescribeExperienceRequest = Shapes::StructureShape.new(name: 'DescribeExperienceRequest')
    DescribeExperienceResponse = Shapes::StructureShape.new(name: 'DescribeExperienceResponse')
    DescribeFaqRequest = Shapes::StructureShape.new(name: 'DescribeFaqRequest')
    DescribeFaqResponse = Shapes::StructureShape.new(name: 'DescribeFaqResponse')
    DescribeFeaturedResultsSetRequest = Shapes::StructureShape.new(name: 'DescribeFeaturedResultsSetRequest')
    DescribeFeaturedResultsSetResponse = Shapes::StructureShape.new(name: 'DescribeFeaturedResultsSetResponse')
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
    DisassociateEntitiesFromExperienceRequest = Shapes::StructureShape.new(name: 'DisassociateEntitiesFromExperienceRequest')
    DisassociateEntitiesFromExperienceResponse = Shapes::StructureShape.new(name: 'DisassociateEntitiesFromExperienceResponse')
    DisassociateEntityList = Shapes::ListShape.new(name: 'DisassociateEntityList')
    DisassociatePersonasFromEntitiesRequest = Shapes::StructureShape.new(name: 'DisassociatePersonasFromEntitiesRequest')
    DisassociatePersonasFromEntitiesResponse = Shapes::StructureShape.new(name: 'DisassociatePersonasFromEntitiesResponse')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentAttribute = Shapes::StructureShape.new(name: 'DocumentAttribute')
    DocumentAttributeCondition = Shapes::StructureShape.new(name: 'DocumentAttributeCondition')
    DocumentAttributeKey = Shapes::StringShape.new(name: 'DocumentAttributeKey')
    DocumentAttributeKeyList = Shapes::ListShape.new(name: 'DocumentAttributeKeyList')
    DocumentAttributeList = Shapes::ListShape.new(name: 'DocumentAttributeList')
    DocumentAttributeStringListValue = Shapes::ListShape.new(name: 'DocumentAttributeStringListValue')
    DocumentAttributeStringValue = Shapes::StringShape.new(name: 'DocumentAttributeStringValue')
    DocumentAttributeTarget = Shapes::StructureShape.new(name: 'DocumentAttributeTarget')
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
    DocumentTitle = Shapes::StringShape.new(name: 'DocumentTitle')
    DocumentsMetadataConfiguration = Shapes::StructureShape.new(name: 'DocumentsMetadataConfiguration')
    Domain = Shapes::StringShape.new(name: 'Domain')
    Duration = Shapes::StringShape.new(name: 'Duration')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    EndpointType = Shapes::StringShape.new(name: 'EndpointType')
    EnterpriseId = Shapes::StringShape.new(name: 'EnterpriseId')
    EntityConfiguration = Shapes::StructureShape.new(name: 'EntityConfiguration')
    EntityDisplayData = Shapes::StructureShape.new(name: 'EntityDisplayData')
    EntityFilter = Shapes::ListShape.new(name: 'EntityFilter')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityIdsList = Shapes::ListShape.new(name: 'EntityIdsList')
    EntityPersonaConfiguration = Shapes::StructureShape.new(name: 'EntityPersonaConfiguration')
    EntityPersonaConfigurationList = Shapes::ListShape.new(name: 'EntityPersonaConfigurationList')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExcludeMimeTypesList = Shapes::ListShape.new(name: 'ExcludeMimeTypesList')
    ExcludeSharedDrivesList = Shapes::ListShape.new(name: 'ExcludeSharedDrivesList')
    ExcludeUserAccountsList = Shapes::ListShape.new(name: 'ExcludeUserAccountsList')
    ExperienceConfiguration = Shapes::StructureShape.new(name: 'ExperienceConfiguration')
    ExperienceEndpoint = Shapes::StructureShape.new(name: 'ExperienceEndpoint')
    ExperienceEndpoints = Shapes::ListShape.new(name: 'ExperienceEndpoints')
    ExperienceEntitiesSummary = Shapes::StructureShape.new(name: 'ExperienceEntitiesSummary')
    ExperienceEntitiesSummaryList = Shapes::ListShape.new(name: 'ExperienceEntitiesSummaryList')
    ExperienceId = Shapes::StringShape.new(name: 'ExperienceId')
    ExperienceName = Shapes::StringShape.new(name: 'ExperienceName')
    ExperienceStatus = Shapes::StringShape.new(name: 'ExperienceStatus')
    ExperiencesSummary = Shapes::StructureShape.new(name: 'ExperiencesSummary')
    ExperiencesSummaryList = Shapes::ListShape.new(name: 'ExperiencesSummaryList')
    Facet = Shapes::StructureShape.new(name: 'Facet')
    FacetList = Shapes::ListShape.new(name: 'FacetList')
    FacetResult = Shapes::StructureShape.new(name: 'FacetResult')
    FacetResultList = Shapes::ListShape.new(name: 'FacetResultList')
    FailedEntity = Shapes::StructureShape.new(name: 'FailedEntity')
    FailedEntityList = Shapes::ListShape.new(name: 'FailedEntityList')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FaqFileFormat = Shapes::StringShape.new(name: 'FaqFileFormat')
    FaqId = Shapes::StringShape.new(name: 'FaqId')
    FaqIdsList = Shapes::ListShape.new(name: 'FaqIdsList')
    FaqName = Shapes::StringShape.new(name: 'FaqName')
    FaqStatistics = Shapes::StructureShape.new(name: 'FaqStatistics')
    FaqStatus = Shapes::StringShape.new(name: 'FaqStatus')
    FaqSummary = Shapes::StructureShape.new(name: 'FaqSummary')
    FaqSummaryItems = Shapes::ListShape.new(name: 'FaqSummaryItems')
    FeaturedDocument = Shapes::StructureShape.new(name: 'FeaturedDocument')
    FeaturedDocumentList = Shapes::ListShape.new(name: 'FeaturedDocumentList')
    FeaturedDocumentMissing = Shapes::StructureShape.new(name: 'FeaturedDocumentMissing')
    FeaturedDocumentMissingList = Shapes::ListShape.new(name: 'FeaturedDocumentMissingList')
    FeaturedDocumentWithMetadata = Shapes::StructureShape.new(name: 'FeaturedDocumentWithMetadata')
    FeaturedDocumentWithMetadataList = Shapes::ListShape.new(name: 'FeaturedDocumentWithMetadataList')
    FeaturedResultsConflictException = Shapes::StructureShape.new(name: 'FeaturedResultsConflictException')
    FeaturedResultsItem = Shapes::StructureShape.new(name: 'FeaturedResultsItem')
    FeaturedResultsItemList = Shapes::ListShape.new(name: 'FeaturedResultsItemList')
    FeaturedResultsSet = Shapes::StructureShape.new(name: 'FeaturedResultsSet')
    FeaturedResultsSetDescription = Shapes::StringShape.new(name: 'FeaturedResultsSetDescription')
    FeaturedResultsSetId = Shapes::StringShape.new(name: 'FeaturedResultsSetId')
    FeaturedResultsSetIdList = Shapes::ListShape.new(name: 'FeaturedResultsSetIdList')
    FeaturedResultsSetName = Shapes::StringShape.new(name: 'FeaturedResultsSetName')
    FeaturedResultsSetStatus = Shapes::StringShape.new(name: 'FeaturedResultsSetStatus')
    FeaturedResultsSetSummary = Shapes::StructureShape.new(name: 'FeaturedResultsSetSummary')
    FeaturedResultsSetSummaryItems = Shapes::ListShape.new(name: 'FeaturedResultsSetSummaryItems')
    FeedbackToken = Shapes::StringShape.new(name: 'FeedbackToken')
    FileSystemId = Shapes::StringShape.new(name: 'FileSystemId')
    FolderId = Shapes::StringShape.new(name: 'FolderId')
    FolderIdList = Shapes::ListShape.new(name: 'FolderIdList')
    FsxConfiguration = Shapes::StructureShape.new(name: 'FsxConfiguration')
    FsxFileSystemType = Shapes::StringShape.new(name: 'FsxFileSystemType')
    GetQuerySuggestionsRequest = Shapes::StructureShape.new(name: 'GetQuerySuggestionsRequest')
    GetQuerySuggestionsResponse = Shapes::StructureShape.new(name: 'GetQuerySuggestionsResponse')
    GetSnapshotsRequest = Shapes::StructureShape.new(name: 'GetSnapshotsRequest')
    GetSnapshotsResponse = Shapes::StructureShape.new(name: 'GetSnapshotsResponse')
    GitHubConfiguration = Shapes::StructureShape.new(name: 'GitHubConfiguration')
    GitHubDocumentCrawlProperties = Shapes::StructureShape.new(name: 'GitHubDocumentCrawlProperties')
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
    HookConfiguration = Shapes::StructureShape.new(name: 'HookConfiguration')
    Host = Shapes::StringShape.new(name: 'Host')
    IdentityAttributeName = Shapes::StringShape.new(name: 'IdentityAttributeName')
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
    InlineCustomDocumentEnrichmentConfiguration = Shapes::StructureShape.new(name: 'InlineCustomDocumentEnrichmentConfiguration')
    InlineCustomDocumentEnrichmentConfigurationList = Shapes::ListShape.new(name: 'InlineCustomDocumentEnrichmentConfigurationList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Interval = Shapes::StringShape.new(name: 'Interval')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IssueSubEntity = Shapes::StringShape.new(name: 'IssueSubEntity')
    IssueSubEntityFilter = Shapes::ListShape.new(name: 'IssueSubEntityFilter')
    IssueType = Shapes::ListShape.new(name: 'IssueType')
    Issuer = Shapes::StringShape.new(name: 'Issuer')
    JiraAccountUrl = Shapes::StringShape.new(name: 'JiraAccountUrl')
    JiraConfiguration = Shapes::StructureShape.new(name: 'JiraConfiguration')
    JiraStatus = Shapes::ListShape.new(name: 'JiraStatus')
    JsonTokenTypeConfiguration = Shapes::StructureShape.new(name: 'JsonTokenTypeConfiguration')
    JwtTokenTypeConfiguration = Shapes::StructureShape.new(name: 'JwtTokenTypeConfiguration')
    KeyLocation = Shapes::StringShape.new(name: 'KeyLocation')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListAccessControlConfigurationsRequest = Shapes::StructureShape.new(name: 'ListAccessControlConfigurationsRequest')
    ListAccessControlConfigurationsResponse = Shapes::StructureShape.new(name: 'ListAccessControlConfigurationsResponse')
    ListDataSourceSyncJobsRequest = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsRequest')
    ListDataSourceSyncJobsResponse = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListEntityPersonasRequest = Shapes::StructureShape.new(name: 'ListEntityPersonasRequest')
    ListEntityPersonasResponse = Shapes::StructureShape.new(name: 'ListEntityPersonasResponse')
    ListExperienceEntitiesRequest = Shapes::StructureShape.new(name: 'ListExperienceEntitiesRequest')
    ListExperienceEntitiesResponse = Shapes::StructureShape.new(name: 'ListExperienceEntitiesResponse')
    ListExperiencesRequest = Shapes::StructureShape.new(name: 'ListExperiencesRequest')
    ListExperiencesResponse = Shapes::StructureShape.new(name: 'ListExperiencesResponse')
    ListFaqsRequest = Shapes::StructureShape.new(name: 'ListFaqsRequest')
    ListFaqsResponse = Shapes::StructureShape.new(name: 'ListFaqsResponse')
    ListFeaturedResultsSetsRequest = Shapes::StructureShape.new(name: 'ListFeaturedResultsSetsRequest')
    ListFeaturedResultsSetsResponse = Shapes::StructureShape.new(name: 'ListFeaturedResultsSetsResponse')
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
    LookBackPeriod = Shapes::IntegerShape.new(name: 'LookBackPeriod')
    MaxContentSizePerPageInMegaBytes = Shapes::FloatShape.new(name: 'MaxContentSizePerPageInMegaBytes')
    MaxLinksPerPage = Shapes::IntegerShape.new(name: 'MaxLinksPerPage')
    MaxResultsIntegerForListAccessControlConfigurationsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListAccessControlConfigurationsRequest')
    MaxResultsIntegerForListDataSourceSyncJobsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourceSyncJobsRequest')
    MaxResultsIntegerForListDataSourcesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourcesRequest')
    MaxResultsIntegerForListEntityPersonasRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListEntityPersonasRequest')
    MaxResultsIntegerForListExperiencesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListExperiencesRequest')
    MaxResultsIntegerForListFaqsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListFaqsRequest')
    MaxResultsIntegerForListFeaturedResultsSetsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListFeaturedResultsSetsRequest')
    MaxResultsIntegerForListIndicesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListIndicesRequest')
    MaxResultsIntegerForListPrincipalsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPrincipalsRequest')
    MaxResultsIntegerForListQuerySuggestionsBlockLists = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListQuerySuggestionsBlockLists')
    MaxResultsIntegerForListThesauriRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListThesauriRequest')
    MaxUrlsPerMinuteCrawlRate = Shapes::IntegerShape.new(name: 'MaxUrlsPerMinuteCrawlRate')
    MemberGroup = Shapes::StructureShape.new(name: 'MemberGroup')
    MemberGroups = Shapes::ListShape.new(name: 'MemberGroups')
    MemberUser = Shapes::StructureShape.new(name: 'MemberUser')
    MemberUsers = Shapes::ListShape.new(name: 'MemberUsers')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    MinimumNumberOfQueryingUsers = Shapes::IntegerShape.new(name: 'MinimumNumberOfQueryingUsers')
    MinimumQueryCount = Shapes::IntegerShape.new(name: 'MinimumQueryCount')
    Mode = Shapes::StringShape.new(name: 'Mode')
    NameType = Shapes::StringShape.new(name: 'NameType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectBoolean = Shapes::BooleanShape.new(name: 'ObjectBoolean')
    OnPremiseConfiguration = Shapes::StructureShape.new(name: 'OnPremiseConfiguration')
    OneDriveConfiguration = Shapes::StructureShape.new(name: 'OneDriveConfiguration')
    OneDriveUser = Shapes::StringShape.new(name: 'OneDriveUser')
    OneDriveUserList = Shapes::ListShape.new(name: 'OneDriveUserList')
    OneDriveUsers = Shapes::StructureShape.new(name: 'OneDriveUsers')
    Order = Shapes::StringShape.new(name: 'Order')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    OrganizationName = Shapes::StringShape.new(name: 'OrganizationName')
    Persona = Shapes::StringShape.new(name: 'Persona')
    PersonasSummary = Shapes::StructureShape.new(name: 'PersonasSummary')
    PersonasSummaryList = Shapes::ListShape.new(name: 'PersonasSummaryList')
    Port = Shapes::IntegerShape.new(name: 'Port')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    PrincipalMappingStatus = Shapes::StringShape.new(name: 'PrincipalMappingStatus')
    PrincipalName = Shapes::StringShape.new(name: 'PrincipalName')
    PrincipalOrderingId = Shapes::IntegerShape.new(name: 'PrincipalOrderingId')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    PrivateChannelFilter = Shapes::ListShape.new(name: 'PrivateChannelFilter')
    Project = Shapes::ListShape.new(name: 'Project')
    ProxyConfiguration = Shapes::StructureShape.new(name: 'ProxyConfiguration')
    PublicChannelFilter = Shapes::ListShape.new(name: 'PublicChannelFilter')
    PutPrincipalMappingRequest = Shapes::StructureShape.new(name: 'PutPrincipalMappingRequest')
    QueryCapacityUnit = Shapes::IntegerShape.new(name: 'QueryCapacityUnit')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryIdentifiersEnclosingOption = Shapes::StringShape.new(name: 'QueryIdentifiersEnclosingOption')
    QueryRequest = Shapes::StructureShape.new(name: 'QueryRequest')
    QueryResult = Shapes::StructureShape.new(name: 'QueryResult')
    QueryResultFormat = Shapes::StringShape.new(name: 'QueryResultFormat')
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
    QueryTextList = Shapes::ListShape.new(name: 'QueryTextList')
    QuipConfiguration = Shapes::StructureShape.new(name: 'QuipConfiguration')
    ReadAccessType = Shapes::StringShape.new(name: 'ReadAccessType')
    Relevance = Shapes::StructureShape.new(name: 'Relevance')
    RelevanceFeedback = Shapes::StructureShape.new(name: 'RelevanceFeedback')
    RelevanceFeedbackList = Shapes::ListShape.new(name: 'RelevanceFeedbackList')
    RelevanceType = Shapes::StringShape.new(name: 'RelevanceType')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositoryNames = Shapes::ListShape.new(name: 'RepositoryNames')
    ResourceAlreadyExistException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    ResultId = Shapes::StringShape.new(name: 'ResultId')
    RetrieveRequest = Shapes::StructureShape.new(name: 'RetrieveRequest')
    RetrieveResult = Shapes::StructureShape.new(name: 'RetrieveResult')
    RetrieveResultItem = Shapes::StructureShape.new(name: 'RetrieveResultItem')
    RetrieveResultItemList = Shapes::ListShape.new(name: 'RetrieveResultItemList')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3DataSourceConfiguration = Shapes::StructureShape.new(name: 'S3DataSourceConfiguration')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    S3Path = Shapes::StructureShape.new(name: 'S3Path')
    SaaSConfiguration = Shapes::StructureShape.new(name: 'SaaSConfiguration')
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
    SharePointOnlineAuthenticationType = Shapes::StringShape.new(name: 'SharePointOnlineAuthenticationType')
    SharePointUrlList = Shapes::ListShape.new(name: 'SharePointUrlList')
    SharePointVersion = Shapes::StringShape.new(name: 'SharePointVersion')
    SharedDriveId = Shapes::StringShape.new(name: 'SharedDriveId')
    SinceCrawlDate = Shapes::StringShape.new(name: 'SinceCrawlDate')
    SiteId = Shapes::StringShape.new(name: 'SiteId')
    SiteMap = Shapes::StringShape.new(name: 'SiteMap')
    SiteMapsConfiguration = Shapes::StructureShape.new(name: 'SiteMapsConfiguration')
    SiteMapsList = Shapes::ListShape.new(name: 'SiteMapsList')
    SiteUrl = Shapes::StringShape.new(name: 'SiteUrl')
    SlackConfiguration = Shapes::StructureShape.new(name: 'SlackConfiguration')
    SlackEntity = Shapes::StringShape.new(name: 'SlackEntity')
    SlackEntityList = Shapes::ListShape.new(name: 'SlackEntityList')
    SnapshotsDataHeaderFields = Shapes::ListShape.new(name: 'SnapshotsDataHeaderFields')
    SnapshotsDataRecord = Shapes::ListShape.new(name: 'SnapshotsDataRecord')
    SnapshotsDataRecords = Shapes::ListShape.new(name: 'SnapshotsDataRecords')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SortingConfiguration = Shapes::StructureShape.new(name: 'SortingConfiguration')
    SourceDocument = Shapes::StructureShape.new(name: 'SourceDocument')
    SourceDocuments = Shapes::ListShape.new(name: 'SourceDocuments')
    SpellCorrectedQuery = Shapes::StructureShape.new(name: 'SpellCorrectedQuery')
    SpellCorrectedQueryList = Shapes::ListShape.new(name: 'SpellCorrectedQueryList')
    SpellCorrectionConfiguration = Shapes::StructureShape.new(name: 'SpellCorrectionConfiguration')
    SqlConfiguration = Shapes::StructureShape.new(name: 'SqlConfiguration')
    StartDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobRequest')
    StartDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobResponse')
    Status = Shapes::StructureShape.new(name: 'Status')
    StopDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobRequest')
    StorageCapacityUnit = Shapes::IntegerShape.new(name: 'StorageCapacityUnit')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubmitFeedbackRequest = Shapes::StructureShape.new(name: 'SubmitFeedbackRequest')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SuggestableConfig = Shapes::StructureShape.new(name: 'SuggestableConfig')
    SuggestableConfigList = Shapes::ListShape.new(name: 'SuggestableConfigList')
    SuggestedQueryText = Shapes::StringShape.new(name: 'SuggestedQueryText')
    Suggestion = Shapes::StructureShape.new(name: 'Suggestion')
    SuggestionHighlight = Shapes::StructureShape.new(name: 'SuggestionHighlight')
    SuggestionHighlightList = Shapes::ListShape.new(name: 'SuggestionHighlightList')
    SuggestionList = Shapes::ListShape.new(name: 'SuggestionList')
    SuggestionQueryText = Shapes::StringShape.new(name: 'SuggestionQueryText')
    SuggestionTextWithHighlights = Shapes::StructureShape.new(name: 'SuggestionTextWithHighlights')
    SuggestionType = Shapes::StringShape.new(name: 'SuggestionType')
    SuggestionTypes = Shapes::ListShape.new(name: 'SuggestionTypes')
    SuggestionValue = Shapes::StructureShape.new(name: 'SuggestionValue')
    TableCell = Shapes::StructureShape.new(name: 'TableCell')
    TableCellList = Shapes::ListShape.new(name: 'TableCellList')
    TableExcerpt = Shapes::StructureShape.new(name: 'TableExcerpt')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableRow = Shapes::StructureShape.new(name: 'TableRow')
    TableRowList = Shapes::ListShape.new(name: 'TableRowList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TeamId = Shapes::StringShape.new(name: 'TeamId')
    Template = Shapes::DocumentShape.new(name: 'Template', document: true)
    TemplateConfiguration = Shapes::StructureShape.new(name: 'TemplateConfiguration')
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
    TopDocumentAttributeValueCountPairsSize = Shapes::IntegerShape.new(name: 'TopDocumentAttributeValueCountPairsSize')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccessControlConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAccessControlConfigurationRequest')
    UpdateAccessControlConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAccessControlConfigurationResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateExperienceRequest = Shapes::StructureShape.new(name: 'UpdateExperienceRequest')
    UpdateFeaturedResultsSetRequest = Shapes::StructureShape.new(name: 'UpdateFeaturedResultsSetRequest')
    UpdateFeaturedResultsSetResponse = Shapes::StructureShape.new(name: 'UpdateFeaturedResultsSetResponse')
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
    UserIdentityConfiguration = Shapes::StructureShape.new(name: 'UserIdentityConfiguration')
    UserNameAttributeField = Shapes::StringShape.new(name: 'UserNameAttributeField')
    UserTokenConfiguration = Shapes::StructureShape.new(name: 'UserTokenConfiguration')
    UserTokenConfigurationList = Shapes::ListShape.new(name: 'UserTokenConfigurationList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueImportanceMap = Shapes::MapShape.new(name: 'ValueImportanceMap')
    ValueImportanceMapKey = Shapes::StringShape.new(name: 'ValueImportanceMapKey')
    VisitorId = Shapes::StringShape.new(name: 'VisitorId')
    VpcSecurityGroupId = Shapes::StringShape.new(name: 'VpcSecurityGroupId')
    Warning = Shapes::StructureShape.new(name: 'Warning')
    WarningCode = Shapes::StringShape.new(name: 'WarningCode')
    WarningList = Shapes::ListShape.new(name: 'WarningList')
    WarningMessage = Shapes::StringShape.new(name: 'WarningMessage')
    WebCrawlerConfiguration = Shapes::StructureShape.new(name: 'WebCrawlerConfiguration')
    WebCrawlerMode = Shapes::StringShape.new(name: 'WebCrawlerMode')
    WorkDocsConfiguration = Shapes::StructureShape.new(name: 'WorkDocsConfiguration')

    AccessControlConfigurationSummary.add_member(:id, Shapes::ShapeRef.new(shape: AccessControlConfigurationId, required: true, location_name: "Id"))
    AccessControlConfigurationSummary.struct_class = Types::AccessControlConfigurationSummary

    AccessControlConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: AccessControlConfigurationSummary)

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

    AlfrescoConfiguration.add_member(:site_url, Shapes::ShapeRef.new(shape: SiteUrl, required: true, location_name: "SiteUrl"))
    AlfrescoConfiguration.add_member(:site_id, Shapes::ShapeRef.new(shape: SiteId, required: true, location_name: "SiteId"))
    AlfrescoConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    AlfrescoConfiguration.add_member(:ssl_certificate_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "SslCertificateS3Path"))
    AlfrescoConfiguration.add_member(:crawl_system_folders, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlSystemFolders"))
    AlfrescoConfiguration.add_member(:crawl_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlComments"))
    AlfrescoConfiguration.add_member(:entity_filter, Shapes::ShapeRef.new(shape: EntityFilter, location_name: "EntityFilter"))
    AlfrescoConfiguration.add_member(:document_library_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "DocumentLibraryFieldMappings"))
    AlfrescoConfiguration.add_member(:blog_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "BlogFieldMappings"))
    AlfrescoConfiguration.add_member(:wiki_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "WikiFieldMappings"))
    AlfrescoConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    AlfrescoConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    AlfrescoConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    AlfrescoConfiguration.struct_class = Types::AlfrescoConfiguration

    AssociateEntitiesToExperienceFailedEntityList.member = Shapes::ShapeRef.new(shape: FailedEntity)

    AssociateEntitiesToExperienceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    AssociateEntitiesToExperienceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    AssociateEntitiesToExperienceRequest.add_member(:entity_list, Shapes::ShapeRef.new(shape: AssociateEntityList, required: true, location_name: "EntityList"))
    AssociateEntitiesToExperienceRequest.struct_class = Types::AssociateEntitiesToExperienceRequest

    AssociateEntitiesToExperienceResponse.add_member(:failed_entity_list, Shapes::ShapeRef.new(shape: AssociateEntitiesToExperienceFailedEntityList, location_name: "FailedEntityList"))
    AssociateEntitiesToExperienceResponse.struct_class = Types::AssociateEntitiesToExperienceResponse

    AssociateEntityList.member = Shapes::ShapeRef.new(shape: EntityConfiguration)

    AssociatePersonasToEntitiesRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    AssociatePersonasToEntitiesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    AssociatePersonasToEntitiesRequest.add_member(:personas, Shapes::ShapeRef.new(shape: EntityPersonaConfigurationList, required: true, location_name: "Personas"))
    AssociatePersonasToEntitiesRequest.struct_class = Types::AssociatePersonasToEntitiesRequest

    AssociatePersonasToEntitiesResponse.add_member(:failed_entity_list, Shapes::ShapeRef.new(shape: FailedEntityList, location_name: "FailedEntityList"))
    AssociatePersonasToEntitiesResponse.struct_class = Types::AssociatePersonasToEntitiesResponse

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

    AttributeSuggestionsDescribeConfig.add_member(:suggestable_config_list, Shapes::ShapeRef.new(shape: SuggestableConfigList, location_name: "SuggestableConfigList"))
    AttributeSuggestionsDescribeConfig.add_member(:attribute_suggestions_mode, Shapes::ShapeRef.new(shape: AttributeSuggestionsMode, location_name: "AttributeSuggestionsMode"))
    AttributeSuggestionsDescribeConfig.struct_class = Types::AttributeSuggestionsDescribeConfig

    AttributeSuggestionsGetConfig.add_member(:suggestion_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeKeyList, location_name: "SuggestionAttributes"))
    AttributeSuggestionsGetConfig.add_member(:additional_response_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeKeyList, location_name: "AdditionalResponseAttributes"))
    AttributeSuggestionsGetConfig.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "AttributeFilter"))
    AttributeSuggestionsGetConfig.add_member(:user_context, Shapes::ShapeRef.new(shape: UserContext, location_name: "UserContext"))
    AttributeSuggestionsGetConfig.struct_class = Types::AttributeSuggestionsGetConfig

    AttributeSuggestionsUpdateConfig.add_member(:suggestable_config_list, Shapes::ShapeRef.new(shape: SuggestableConfigList, location_name: "SuggestableConfigList"))
    AttributeSuggestionsUpdateConfig.add_member(:attribute_suggestions_mode, Shapes::ShapeRef.new(shape: AttributeSuggestionsMode, location_name: "AttributeSuggestionsMode"))
    AttributeSuggestionsUpdateConfig.struct_class = Types::AttributeSuggestionsUpdateConfig

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

    BatchDeleteFeaturedResultsSetError.add_member(:id, Shapes::ShapeRef.new(shape: FeaturedResultsSetId, required: true, location_name: "Id"))
    BatchDeleteFeaturedResultsSetError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "ErrorCode"))
    BatchDeleteFeaturedResultsSetError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "ErrorMessage"))
    BatchDeleteFeaturedResultsSetError.struct_class = Types::BatchDeleteFeaturedResultsSetError

    BatchDeleteFeaturedResultsSetErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteFeaturedResultsSetError)

    BatchDeleteFeaturedResultsSetRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    BatchDeleteFeaturedResultsSetRequest.add_member(:featured_results_set_ids, Shapes::ShapeRef.new(shape: FeaturedResultsSetIdList, required: true, location_name: "FeaturedResultsSetIds"))
    BatchDeleteFeaturedResultsSetRequest.struct_class = Types::BatchDeleteFeaturedResultsSetRequest

    BatchDeleteFeaturedResultsSetResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteFeaturedResultsSetErrors, required: true, location_name: "Errors"))
    BatchDeleteFeaturedResultsSetResponse.struct_class = Types::BatchDeleteFeaturedResultsSetResponse

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
    BatchPutDocumentRequest.add_member(:custom_document_enrichment_configuration, Shapes::ShapeRef.new(shape: CustomDocumentEnrichmentConfiguration, location_name: "CustomDocumentEnrichmentConfiguration"))
    BatchPutDocumentRequest.struct_class = Types::BatchPutDocumentRequest

    BatchPutDocumentResponse.add_member(:failed_documents, Shapes::ShapeRef.new(shape: BatchPutDocumentResponseFailedDocuments, location_name: "FailedDocuments"))
    BatchPutDocumentResponse.struct_class = Types::BatchPutDocumentResponse

    BatchPutDocumentResponseFailedDocument.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "Id"))
    BatchPutDocumentResponseFailedDocument.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    BatchPutDocumentResponseFailedDocument.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    BatchPutDocumentResponseFailedDocument.struct_class = Types::BatchPutDocumentResponseFailedDocument

    BatchPutDocumentResponseFailedDocuments.member = Shapes::ShapeRef.new(shape: BatchPutDocumentResponseFailedDocument)

    BoxConfiguration.add_member(:enterprise_id, Shapes::ShapeRef.new(shape: EnterpriseId, required: true, location_name: "EnterpriseId"))
    BoxConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    BoxConfiguration.add_member(:use_change_log, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseChangeLog"))
    BoxConfiguration.add_member(:crawl_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlComments"))
    BoxConfiguration.add_member(:crawl_tasks, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlTasks"))
    BoxConfiguration.add_member(:crawl_web_links, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlWebLinks"))
    BoxConfiguration.add_member(:file_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FileFieldMappings"))
    BoxConfiguration.add_member(:task_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "TaskFieldMappings"))
    BoxConfiguration.add_member(:comment_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "CommentFieldMappings"))
    BoxConfiguration.add_member(:web_link_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "WebLinkFieldMappings"))
    BoxConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    BoxConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    BoxConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    BoxConfiguration.struct_class = Types::BoxConfiguration

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

    ConflictingItem.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, location_name: "QueryText"))
    ConflictingItem.add_member(:set_name, Shapes::ShapeRef.new(shape: String, location_name: "SetName"))
    ConflictingItem.add_member(:set_id, Shapes::ShapeRef.new(shape: String, location_name: "SetId"))
    ConflictingItem.struct_class = Types::ConflictingItem

    ConflictingItems.member = Shapes::ShapeRef.new(shape: ConflictingItem)

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
    ConfluenceConfiguration.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "ProxyConfiguration"))
    ConfluenceConfiguration.add_member(:authentication_type, Shapes::ShapeRef.new(shape: ConfluenceAuthenticationType, location_name: "AuthenticationType"))
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

    ContentSourceConfiguration.add_member(:data_source_ids, Shapes::ShapeRef.new(shape: DataSourceIdList, location_name: "DataSourceIds"))
    ContentSourceConfiguration.add_member(:faq_ids, Shapes::ShapeRef.new(shape: FaqIdsList, location_name: "FaqIds"))
    ContentSourceConfiguration.add_member(:direct_put_content, Shapes::ShapeRef.new(shape: Boolean, location_name: "DirectPutContent"))
    ContentSourceConfiguration.struct_class = Types::ContentSourceConfiguration

    Correction.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    Correction.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    Correction.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "Term"))
    Correction.add_member(:corrected_term, Shapes::ShapeRef.new(shape: String, location_name: "CorrectedTerm"))
    Correction.struct_class = Types::Correction

    CorrectionList.member = Shapes::ShapeRef.new(shape: Correction)

    CreateAccessControlConfigurationRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateAccessControlConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessControlConfigurationName, required: true, location_name: "Name"))
    CreateAccessControlConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateAccessControlConfigurationRequest.add_member(:access_control_list, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "AccessControlList"))
    CreateAccessControlConfigurationRequest.add_member(:hierarchical_access_control_list, Shapes::ShapeRef.new(shape: HierarchicalPrincipalList, location_name: "HierarchicalAccessControlList"))
    CreateAccessControlConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateAccessControlConfigurationRequest.struct_class = Types::CreateAccessControlConfigurationRequest

    CreateAccessControlConfigurationResponse.add_member(:id, Shapes::ShapeRef.new(shape: AccessControlConfigurationId, required: true, location_name: "Id"))
    CreateAccessControlConfigurationResponse.struct_class = Types::CreateAccessControlConfigurationResponse

    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location_name: "Name"))
    CreateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "Type"))
    CreateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "Configuration"))
    CreateDataSourceRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDataSourceRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    CreateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateDataSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSourceRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    CreateDataSourceRequest.add_member(:custom_document_enrichment_configuration, Shapes::ShapeRef.new(shape: CustomDocumentEnrichmentConfiguration, location_name: "CustomDocumentEnrichmentConfiguration"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateExperienceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExperienceName, required: true, location_name: "Name"))
    CreateExperienceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateExperienceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateExperienceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ExperienceConfiguration, location_name: "Configuration"))
    CreateExperienceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateExperienceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateExperienceRequest.struct_class = Types::CreateExperienceRequest

    CreateExperienceResponse.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    CreateExperienceResponse.struct_class = Types::CreateExperienceResponse

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

    CreateFeaturedResultsSetRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    CreateFeaturedResultsSetRequest.add_member(:featured_results_set_name, Shapes::ShapeRef.new(shape: FeaturedResultsSetName, required: true, location_name: "FeaturedResultsSetName"))
    CreateFeaturedResultsSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: FeaturedResultsSetDescription, location_name: "Description"))
    CreateFeaturedResultsSetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenName, location_name: "ClientToken"))
    CreateFeaturedResultsSetRequest.add_member(:status, Shapes::ShapeRef.new(shape: FeaturedResultsSetStatus, location_name: "Status"))
    CreateFeaturedResultsSetRequest.add_member(:query_texts, Shapes::ShapeRef.new(shape: QueryTextList, location_name: "QueryTexts"))
    CreateFeaturedResultsSetRequest.add_member(:featured_documents, Shapes::ShapeRef.new(shape: FeaturedDocumentList, location_name: "FeaturedDocuments"))
    CreateFeaturedResultsSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFeaturedResultsSetRequest.struct_class = Types::CreateFeaturedResultsSetRequest

    CreateFeaturedResultsSetResponse.add_member(:featured_results_set, Shapes::ShapeRef.new(shape: FeaturedResultsSet, location_name: "FeaturedResultsSet"))
    CreateFeaturedResultsSetResponse.struct_class = Types::CreateFeaturedResultsSetResponse

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

    CustomDocumentEnrichmentConfiguration.add_member(:inline_configurations, Shapes::ShapeRef.new(shape: InlineCustomDocumentEnrichmentConfigurationList, location_name: "InlineConfigurations"))
    CustomDocumentEnrichmentConfiguration.add_member(:pre_extraction_hook_configuration, Shapes::ShapeRef.new(shape: HookConfiguration, location_name: "PreExtractionHookConfiguration"))
    CustomDocumentEnrichmentConfiguration.add_member(:post_extraction_hook_configuration, Shapes::ShapeRef.new(shape: HookConfiguration, location_name: "PostExtractionHookConfiguration"))
    CustomDocumentEnrichmentConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CustomDocumentEnrichmentConfiguration.struct_class = Types::CustomDocumentEnrichmentConfiguration

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
    DataSourceConfiguration.add_member(:fsx_configuration, Shapes::ShapeRef.new(shape: FsxConfiguration, location_name: "FsxConfiguration"))
    DataSourceConfiguration.add_member(:slack_configuration, Shapes::ShapeRef.new(shape: SlackConfiguration, location_name: "SlackConfiguration"))
    DataSourceConfiguration.add_member(:box_configuration, Shapes::ShapeRef.new(shape: BoxConfiguration, location_name: "BoxConfiguration"))
    DataSourceConfiguration.add_member(:quip_configuration, Shapes::ShapeRef.new(shape: QuipConfiguration, location_name: "QuipConfiguration"))
    DataSourceConfiguration.add_member(:jira_configuration, Shapes::ShapeRef.new(shape: JiraConfiguration, location_name: "JiraConfiguration"))
    DataSourceConfiguration.add_member(:git_hub_configuration, Shapes::ShapeRef.new(shape: GitHubConfiguration, location_name: "GitHubConfiguration"))
    DataSourceConfiguration.add_member(:alfresco_configuration, Shapes::ShapeRef.new(shape: AlfrescoConfiguration, deprecated: true, location_name: "AlfrescoConfiguration", metadata: {"deprecatedMessage"=>"Deprecated AlfrescoConfiguration in favor of TemplateConfiguration"}))
    DataSourceConfiguration.add_member(:template_configuration, Shapes::ShapeRef.new(shape: TemplateConfiguration, location_name: "TemplateConfiguration"))
    DataSourceConfiguration.struct_class = Types::DataSourceConfiguration

    DataSourceGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: PrincipalName, required: true, location_name: "GroupId"))
    DataSourceGroup.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "DataSourceId"))
    DataSourceGroup.struct_class = Types::DataSourceGroup

    DataSourceGroups.member = Shapes::ShapeRef.new(shape: DataSourceGroup)

    DataSourceIdList.member = Shapes::ShapeRef.new(shape: DataSourceId)

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

    DeleteAccessControlConfigurationRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteAccessControlConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: AccessControlConfigurationId, required: true, location_name: "Id"))
    DeleteAccessControlConfigurationRequest.struct_class = Types::DeleteAccessControlConfigurationRequest

    DeleteAccessControlConfigurationResponse.struct_class = Types::DeleteAccessControlConfigurationResponse

    DeleteDataSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    DeleteDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteExperienceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    DeleteExperienceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DeleteExperienceRequest.struct_class = Types::DeleteExperienceRequest

    DeleteExperienceResponse.struct_class = Types::DeleteExperienceResponse

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

    DescribeAccessControlConfigurationRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeAccessControlConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: AccessControlConfigurationId, required: true, location_name: "Id"))
    DescribeAccessControlConfigurationRequest.struct_class = Types::DescribeAccessControlConfigurationRequest

    DescribeAccessControlConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: AccessControlConfigurationName, required: true, location_name: "Name"))
    DescribeAccessControlConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeAccessControlConfigurationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeAccessControlConfigurationResponse.add_member(:access_control_list, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "AccessControlList"))
    DescribeAccessControlConfigurationResponse.add_member(:hierarchical_access_control_list, Shapes::ShapeRef.new(shape: HierarchicalPrincipalList, location_name: "HierarchicalAccessControlList"))
    DescribeAccessControlConfigurationResponse.struct_class = Types::DescribeAccessControlConfigurationResponse

    DescribeDataSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    DescribeDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeDataSourceRequest.struct_class = Types::DescribeDataSourceRequest

    DescribeDataSourceResponse.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "Id"))
    DescribeDataSourceResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribeDataSourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    DescribeDataSourceResponse.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "Type"))
    DescribeDataSourceResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "Configuration"))
    DescribeDataSourceResponse.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    DescribeDataSourceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeDataSourceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeDataSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "Status"))
    DescribeDataSourceResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    DescribeDataSourceResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeDataSourceResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeDataSourceResponse.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    DescribeDataSourceResponse.add_member(:custom_document_enrichment_configuration, Shapes::ShapeRef.new(shape: CustomDocumentEnrichmentConfiguration, location_name: "CustomDocumentEnrichmentConfiguration"))
    DescribeDataSourceResponse.struct_class = Types::DescribeDataSourceResponse

    DescribeExperienceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    DescribeExperienceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeExperienceRequest.struct_class = Types::DescribeExperienceRequest

    DescribeExperienceResponse.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, location_name: "Id"))
    DescribeExperienceResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "IndexId"))
    DescribeExperienceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ExperienceName, location_name: "Name"))
    DescribeExperienceResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: ExperienceEndpoints, location_name: "Endpoints"))
    DescribeExperienceResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: ExperienceConfiguration, location_name: "Configuration"))
    DescribeExperienceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DescribeExperienceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DescribeExperienceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeExperienceResponse.add_member(:status, Shapes::ShapeRef.new(shape: ExperienceStatus, location_name: "Status"))
    DescribeExperienceResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeExperienceResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeExperienceResponse.struct_class = Types::DescribeExperienceResponse

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

    DescribeFeaturedResultsSetRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DescribeFeaturedResultsSetRequest.add_member(:featured_results_set_id, Shapes::ShapeRef.new(shape: FeaturedResultsSetId, required: true, location_name: "FeaturedResultsSetId"))
    DescribeFeaturedResultsSetRequest.struct_class = Types::DescribeFeaturedResultsSetRequest

    DescribeFeaturedResultsSetResponse.add_member(:featured_results_set_id, Shapes::ShapeRef.new(shape: FeaturedResultsSetId, location_name: "FeaturedResultsSetId"))
    DescribeFeaturedResultsSetResponse.add_member(:featured_results_set_name, Shapes::ShapeRef.new(shape: FeaturedResultsSetName, location_name: "FeaturedResultsSetName"))
    DescribeFeaturedResultsSetResponse.add_member(:description, Shapes::ShapeRef.new(shape: FeaturedResultsSetDescription, location_name: "Description"))
    DescribeFeaturedResultsSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: FeaturedResultsSetStatus, location_name: "Status"))
    DescribeFeaturedResultsSetResponse.add_member(:query_texts, Shapes::ShapeRef.new(shape: QueryTextList, location_name: "QueryTexts"))
    DescribeFeaturedResultsSetResponse.add_member(:featured_documents_with_metadata, Shapes::ShapeRef.new(shape: FeaturedDocumentWithMetadataList, location_name: "FeaturedDocumentsWithMetadata"))
    DescribeFeaturedResultsSetResponse.add_member(:featured_documents_missing, Shapes::ShapeRef.new(shape: FeaturedDocumentMissingList, location_name: "FeaturedDocumentsMissing"))
    DescribeFeaturedResultsSetResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdatedTimestamp"))
    DescribeFeaturedResultsSetResponse.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreationTimestamp"))
    DescribeFeaturedResultsSetResponse.struct_class = Types::DescribeFeaturedResultsSetResponse

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
    DescribeQuerySuggestionsConfigResponse.add_member(:attribute_suggestions_config, Shapes::ShapeRef.new(shape: AttributeSuggestionsDescribeConfig, location_name: "AttributeSuggestionsConfig"))
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

    DisassociateEntitiesFromExperienceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    DisassociateEntitiesFromExperienceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DisassociateEntitiesFromExperienceRequest.add_member(:entity_list, Shapes::ShapeRef.new(shape: DisassociateEntityList, required: true, location_name: "EntityList"))
    DisassociateEntitiesFromExperienceRequest.struct_class = Types::DisassociateEntitiesFromExperienceRequest

    DisassociateEntitiesFromExperienceResponse.add_member(:failed_entity_list, Shapes::ShapeRef.new(shape: FailedEntityList, location_name: "FailedEntityList"))
    DisassociateEntitiesFromExperienceResponse.struct_class = Types::DisassociateEntitiesFromExperienceResponse

    DisassociateEntityList.member = Shapes::ShapeRef.new(shape: EntityConfiguration)

    DisassociatePersonasFromEntitiesRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    DisassociatePersonasFromEntitiesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    DisassociatePersonasFromEntitiesRequest.add_member(:entity_ids, Shapes::ShapeRef.new(shape: EntityIdsList, required: true, location_name: "EntityIds"))
    DisassociatePersonasFromEntitiesRequest.struct_class = Types::DisassociatePersonasFromEntitiesRequest

    DisassociatePersonasFromEntitiesResponse.add_member(:failed_entity_list, Shapes::ShapeRef.new(shape: FailedEntityList, location_name: "FailedEntityList"))
    DisassociatePersonasFromEntitiesResponse.struct_class = Types::DisassociatePersonasFromEntitiesResponse

    Document.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "Id"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    Document.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "Blob"))
    Document.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3Path, location_name: "S3Path"))
    Document.add_member(:attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "Attributes"))
    Document.add_member(:access_control_list, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "AccessControlList"))
    Document.add_member(:hierarchical_access_control_list, Shapes::ShapeRef.new(shape: HierarchicalPrincipalList, location_name: "HierarchicalAccessControlList"))
    Document.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    Document.add_member(:access_control_configuration_id, Shapes::ShapeRef.new(shape: AccessControlConfigurationId, location_name: "AccessControlConfigurationId"))
    Document.struct_class = Types::Document

    DocumentAttribute.add_member(:key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "Key"))
    DocumentAttribute.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, required: true, location_name: "Value"))
    DocumentAttribute.struct_class = Types::DocumentAttribute

    DocumentAttributeCondition.add_member(:condition_document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "ConditionDocumentAttributeKey"))
    DocumentAttributeCondition.add_member(:operator, Shapes::ShapeRef.new(shape: ConditionOperator, required: true, location_name: "Operator"))
    DocumentAttributeCondition.add_member(:condition_on_value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "ConditionOnValue"))
    DocumentAttributeCondition.struct_class = Types::DocumentAttributeCondition

    DocumentAttributeKeyList.member = Shapes::ShapeRef.new(shape: DocumentAttributeKey)

    DocumentAttributeList.member = Shapes::ShapeRef.new(shape: DocumentAttribute)

    DocumentAttributeStringListValue.member = Shapes::ShapeRef.new(shape: String)

    DocumentAttributeTarget.add_member(:target_document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: "TargetDocumentAttributeKey"))
    DocumentAttributeTarget.add_member(:target_document_attribute_value_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "TargetDocumentAttributeValueDeletion"))
    DocumentAttributeTarget.add_member(:target_document_attribute_value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "TargetDocumentAttributeValue"))
    DocumentAttributeTarget.struct_class = Types::DocumentAttributeTarget

    DocumentAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: DocumentAttributeStringValue, location_name: "StringValue"))
    DocumentAttributeValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: DocumentAttributeStringListValue, location_name: "StringListValue"))
    DocumentAttributeValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "LongValue"))
    DocumentAttributeValue.add_member(:date_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateValue"))
    DocumentAttributeValue.struct_class = Types::DocumentAttributeValue

    DocumentAttributeValueCountPair.add_member(:document_attribute_value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "DocumentAttributeValue"))
    DocumentAttributeValueCountPair.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    DocumentAttributeValueCountPair.add_member(:facet_results, Shapes::ShapeRef.new(shape: FacetResultList, location_name: "FacetResults"))
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

    EntityConfiguration.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EntityId"))
    EntityConfiguration.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    EntityConfiguration.struct_class = Types::EntityConfiguration

    EntityDisplayData.add_member(:user_name, Shapes::ShapeRef.new(shape: NameType, location_name: "UserName"))
    EntityDisplayData.add_member(:group_name, Shapes::ShapeRef.new(shape: NameType, location_name: "GroupName"))
    EntityDisplayData.add_member(:identified_user_name, Shapes::ShapeRef.new(shape: NameType, location_name: "IdentifiedUserName"))
    EntityDisplayData.add_member(:first_name, Shapes::ShapeRef.new(shape: NameType, location_name: "FirstName"))
    EntityDisplayData.add_member(:last_name, Shapes::ShapeRef.new(shape: NameType, location_name: "LastName"))
    EntityDisplayData.struct_class = Types::EntityDisplayData

    EntityFilter.member = Shapes::ShapeRef.new(shape: AlfrescoEntity)

    EntityIdsList.member = Shapes::ShapeRef.new(shape: EntityId)

    EntityPersonaConfiguration.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "EntityId"))
    EntityPersonaConfiguration.add_member(:persona, Shapes::ShapeRef.new(shape: Persona, required: true, location_name: "Persona"))
    EntityPersonaConfiguration.struct_class = Types::EntityPersonaConfiguration

    EntityPersonaConfigurationList.member = Shapes::ShapeRef.new(shape: EntityPersonaConfiguration)

    ExcludeMimeTypesList.member = Shapes::ShapeRef.new(shape: MimeType)

    ExcludeSharedDrivesList.member = Shapes::ShapeRef.new(shape: SharedDriveId)

    ExcludeUserAccountsList.member = Shapes::ShapeRef.new(shape: UserAccount)

    ExperienceConfiguration.add_member(:content_source_configuration, Shapes::ShapeRef.new(shape: ContentSourceConfiguration, location_name: "ContentSourceConfiguration"))
    ExperienceConfiguration.add_member(:user_identity_configuration, Shapes::ShapeRef.new(shape: UserIdentityConfiguration, location_name: "UserIdentityConfiguration"))
    ExperienceConfiguration.struct_class = Types::ExperienceConfiguration

    ExperienceEndpoint.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: EndpointType, location_name: "EndpointType"))
    ExperienceEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    ExperienceEndpoint.struct_class = Types::ExperienceEndpoint

    ExperienceEndpoints.member = Shapes::ShapeRef.new(shape: ExperienceEndpoint)

    ExperienceEntitiesSummary.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EntityId"))
    ExperienceEntitiesSummary.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    ExperienceEntitiesSummary.add_member(:display_data, Shapes::ShapeRef.new(shape: EntityDisplayData, location_name: "DisplayData"))
    ExperienceEntitiesSummary.struct_class = Types::ExperienceEntitiesSummary

    ExperienceEntitiesSummaryList.member = Shapes::ShapeRef.new(shape: ExperienceEntitiesSummary)

    ExperiencesSummary.add_member(:name, Shapes::ShapeRef.new(shape: ExperienceName, location_name: "Name"))
    ExperiencesSummary.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, location_name: "Id"))
    ExperiencesSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ExperiencesSummary.add_member(:status, Shapes::ShapeRef.new(shape: ExperienceStatus, location_name: "Status"))
    ExperiencesSummary.add_member(:endpoints, Shapes::ShapeRef.new(shape: ExperienceEndpoints, location_name: "Endpoints"))
    ExperiencesSummary.struct_class = Types::ExperiencesSummary

    ExperiencesSummaryList.member = Shapes::ShapeRef.new(shape: ExperiencesSummary)

    Facet.add_member(:document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: "DocumentAttributeKey"))
    Facet.add_member(:facets, Shapes::ShapeRef.new(shape: FacetList, location_name: "Facets"))
    Facet.add_member(:max_results, Shapes::ShapeRef.new(shape: TopDocumentAttributeValueCountPairsSize, location_name: "MaxResults"))
    Facet.struct_class = Types::Facet

    FacetList.member = Shapes::ShapeRef.new(shape: Facet)

    FacetResult.add_member(:document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: "DocumentAttributeKey"))
    FacetResult.add_member(:document_attribute_value_type, Shapes::ShapeRef.new(shape: DocumentAttributeValueType, location_name: "DocumentAttributeValueType"))
    FacetResult.add_member(:document_attribute_value_count_pairs, Shapes::ShapeRef.new(shape: DocumentAttributeValueCountPairList, location_name: "DocumentAttributeValueCountPairs"))
    FacetResult.struct_class = Types::FacetResult

    FacetResultList.member = Shapes::ShapeRef.new(shape: FacetResult)

    FailedEntity.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EntityId"))
    FailedEntity.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    FailedEntity.struct_class = Types::FailedEntity

    FailedEntityList.member = Shapes::ShapeRef.new(shape: FailedEntity)

    FaqIdsList.member = Shapes::ShapeRef.new(shape: FaqId)

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

    FeaturedDocument.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "Id"))
    FeaturedDocument.struct_class = Types::FeaturedDocument

    FeaturedDocumentList.member = Shapes::ShapeRef.new(shape: FeaturedDocument)

    FeaturedDocumentMissing.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "Id"))
    FeaturedDocumentMissing.struct_class = Types::FeaturedDocumentMissing

    FeaturedDocumentMissingList.member = Shapes::ShapeRef.new(shape: FeaturedDocumentMissing)

    FeaturedDocumentWithMetadata.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "Id"))
    FeaturedDocumentWithMetadata.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "Title"))
    FeaturedDocumentWithMetadata.add_member(:uri, Shapes::ShapeRef.new(shape: Url, location_name: "URI"))
    FeaturedDocumentWithMetadata.struct_class = Types::FeaturedDocumentWithMetadata

    FeaturedDocumentWithMetadataList.member = Shapes::ShapeRef.new(shape: FeaturedDocumentWithMetadata)

    FeaturedResultsConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    FeaturedResultsConflictException.add_member(:conflicting_items, Shapes::ShapeRef.new(shape: ConflictingItems, location_name: "ConflictingItems"))
    FeaturedResultsConflictException.struct_class = Types::FeaturedResultsConflictException

    FeaturedResultsItem.add_member(:id, Shapes::ShapeRef.new(shape: ResultId, location_name: "Id"))
    FeaturedResultsItem.add_member(:type, Shapes::ShapeRef.new(shape: QueryResultType, location_name: "Type"))
    FeaturedResultsItem.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AdditionalResultAttributeList, location_name: "AdditionalAttributes"))
    FeaturedResultsItem.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    FeaturedResultsItem.add_member(:document_title, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "DocumentTitle"))
    FeaturedResultsItem.add_member(:document_excerpt, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "DocumentExcerpt"))
    FeaturedResultsItem.add_member(:document_uri, Shapes::ShapeRef.new(shape: Url, location_name: "DocumentURI"))
    FeaturedResultsItem.add_member(:document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "DocumentAttributes"))
    FeaturedResultsItem.add_member(:feedback_token, Shapes::ShapeRef.new(shape: FeedbackToken, location_name: "FeedbackToken"))
    FeaturedResultsItem.struct_class = Types::FeaturedResultsItem

    FeaturedResultsItemList.member = Shapes::ShapeRef.new(shape: FeaturedResultsItem)

    FeaturedResultsSet.add_member(:featured_results_set_id, Shapes::ShapeRef.new(shape: FeaturedResultsSetId, location_name: "FeaturedResultsSetId"))
    FeaturedResultsSet.add_member(:featured_results_set_name, Shapes::ShapeRef.new(shape: FeaturedResultsSetName, location_name: "FeaturedResultsSetName"))
    FeaturedResultsSet.add_member(:description, Shapes::ShapeRef.new(shape: FeaturedResultsSetDescription, location_name: "Description"))
    FeaturedResultsSet.add_member(:status, Shapes::ShapeRef.new(shape: FeaturedResultsSetStatus, location_name: "Status"))
    FeaturedResultsSet.add_member(:query_texts, Shapes::ShapeRef.new(shape: QueryTextList, location_name: "QueryTexts"))
    FeaturedResultsSet.add_member(:featured_documents, Shapes::ShapeRef.new(shape: FeaturedDocumentList, location_name: "FeaturedDocuments"))
    FeaturedResultsSet.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdatedTimestamp"))
    FeaturedResultsSet.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreationTimestamp"))
    FeaturedResultsSet.struct_class = Types::FeaturedResultsSet

    FeaturedResultsSetIdList.member = Shapes::ShapeRef.new(shape: FeaturedResultsSetId)

    FeaturedResultsSetSummary.add_member(:featured_results_set_id, Shapes::ShapeRef.new(shape: FeaturedResultsSetId, location_name: "FeaturedResultsSetId"))
    FeaturedResultsSetSummary.add_member(:featured_results_set_name, Shapes::ShapeRef.new(shape: FeaturedResultsSetName, location_name: "FeaturedResultsSetName"))
    FeaturedResultsSetSummary.add_member(:status, Shapes::ShapeRef.new(shape: FeaturedResultsSetStatus, location_name: "Status"))
    FeaturedResultsSetSummary.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdatedTimestamp"))
    FeaturedResultsSetSummary.add_member(:creation_timestamp, Shapes::ShapeRef.new(shape: Long, location_name: "CreationTimestamp"))
    FeaturedResultsSetSummary.struct_class = Types::FeaturedResultsSetSummary

    FeaturedResultsSetSummaryItems.member = Shapes::ShapeRef.new(shape: FeaturedResultsSetSummary)

    FolderIdList.member = Shapes::ShapeRef.new(shape: FolderId)

    FsxConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: FileSystemId, required: true, location_name: "FileSystemId"))
    FsxConfiguration.add_member(:file_system_type, Shapes::ShapeRef.new(shape: FsxFileSystemType, required: true, location_name: "FileSystemType"))
    FsxConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, required: true, location_name: "VpcConfiguration"))
    FsxConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    FsxConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    FsxConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    FsxConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    FsxConfiguration.struct_class = Types::FsxConfiguration

    GetQuerySuggestionsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    GetQuerySuggestionsRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: SuggestionQueryText, required: true, location_name: "QueryText"))
    GetQuerySuggestionsRequest.add_member(:max_suggestions_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxSuggestionsCount"))
    GetQuerySuggestionsRequest.add_member(:suggestion_types, Shapes::ShapeRef.new(shape: SuggestionTypes, location_name: "SuggestionTypes"))
    GetQuerySuggestionsRequest.add_member(:attribute_suggestions_config, Shapes::ShapeRef.new(shape: AttributeSuggestionsGetConfig, location_name: "AttributeSuggestionsConfig"))
    GetQuerySuggestionsRequest.struct_class = Types::GetQuerySuggestionsRequest

    GetQuerySuggestionsResponse.add_member(:query_suggestions_id, Shapes::ShapeRef.new(shape: QuerySuggestionsId, location_name: "QuerySuggestionsId"))
    GetQuerySuggestionsResponse.add_member(:suggestions, Shapes::ShapeRef.new(shape: SuggestionList, location_name: "Suggestions"))
    GetQuerySuggestionsResponse.struct_class = Types::GetQuerySuggestionsResponse

    GetSnapshotsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    GetSnapshotsRequest.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, required: true, location_name: "Interval"))
    GetSnapshotsRequest.add_member(:metric_type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "MetricType"))
    GetSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetSnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    GetSnapshotsRequest.struct_class = Types::GetSnapshotsRequest

    GetSnapshotsResponse.add_member(:snap_shot_time_filter, Shapes::ShapeRef.new(shape: TimeRange, location_name: "SnapShotTimeFilter"))
    GetSnapshotsResponse.add_member(:snapshots_data_header, Shapes::ShapeRef.new(shape: SnapshotsDataHeaderFields, location_name: "SnapshotsDataHeader"))
    GetSnapshotsResponse.add_member(:snapshots_data, Shapes::ShapeRef.new(shape: SnapshotsDataRecords, location_name: "SnapshotsData"))
    GetSnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetSnapshotsResponse.struct_class = Types::GetSnapshotsResponse

    GitHubConfiguration.add_member(:saa_s_configuration, Shapes::ShapeRef.new(shape: SaaSConfiguration, location_name: "SaaSConfiguration"))
    GitHubConfiguration.add_member(:on_premise_configuration, Shapes::ShapeRef.new(shape: OnPremiseConfiguration, location_name: "OnPremiseConfiguration"))
    GitHubConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    GitHubConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    GitHubConfiguration.add_member(:use_change_log, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseChangeLog"))
    GitHubConfiguration.add_member(:git_hub_document_crawl_properties, Shapes::ShapeRef.new(shape: GitHubDocumentCrawlProperties, location_name: "GitHubDocumentCrawlProperties"))
    GitHubConfiguration.add_member(:repository_filter, Shapes::ShapeRef.new(shape: RepositoryNames, location_name: "RepositoryFilter"))
    GitHubConfiguration.add_member(:inclusion_folder_name_patterns, Shapes::ShapeRef.new(shape: StringList, location_name: "InclusionFolderNamePatterns"))
    GitHubConfiguration.add_member(:inclusion_file_type_patterns, Shapes::ShapeRef.new(shape: StringList, location_name: "InclusionFileTypePatterns"))
    GitHubConfiguration.add_member(:inclusion_file_name_patterns, Shapes::ShapeRef.new(shape: StringList, location_name: "InclusionFileNamePatterns"))
    GitHubConfiguration.add_member(:exclusion_folder_name_patterns, Shapes::ShapeRef.new(shape: StringList, location_name: "ExclusionFolderNamePatterns"))
    GitHubConfiguration.add_member(:exclusion_file_type_patterns, Shapes::ShapeRef.new(shape: StringList, location_name: "ExclusionFileTypePatterns"))
    GitHubConfiguration.add_member(:exclusion_file_name_patterns, Shapes::ShapeRef.new(shape: StringList, location_name: "ExclusionFileNamePatterns"))
    GitHubConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    GitHubConfiguration.add_member(:git_hub_repository_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubRepositoryConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_commit_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubCommitConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_issue_document_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubIssueDocumentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_issue_comment_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubIssueCommentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_issue_attachment_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubIssueAttachmentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_pull_request_comment_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubPullRequestCommentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_pull_request_document_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubPullRequestDocumentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_pull_request_document_attachment_configuration_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "GitHubPullRequestDocumentAttachmentConfigurationFieldMappings"))
    GitHubConfiguration.struct_class = Types::GitHubConfiguration

    GitHubDocumentCrawlProperties.add_member(:crawl_repository_documents, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlRepositoryDocuments"))
    GitHubDocumentCrawlProperties.add_member(:crawl_issue, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlIssue"))
    GitHubDocumentCrawlProperties.add_member(:crawl_issue_comment, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlIssueComment"))
    GitHubDocumentCrawlProperties.add_member(:crawl_issue_comment_attachment, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlIssueCommentAttachment"))
    GitHubDocumentCrawlProperties.add_member(:crawl_pull_request, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlPullRequest"))
    GitHubDocumentCrawlProperties.add_member(:crawl_pull_request_comment, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlPullRequestComment"))
    GitHubDocumentCrawlProperties.add_member(:crawl_pull_request_comment_attachment, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlPullRequestCommentAttachment"))
    GitHubDocumentCrawlProperties.struct_class = Types::GitHubDocumentCrawlProperties

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

    HookConfiguration.add_member(:invocation_condition, Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: "InvocationCondition"))
    HookConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, required: true, location_name: "LambdaArn"))
    HookConfiguration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "S3Bucket"))
    HookConfiguration.struct_class = Types::HookConfiguration

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

    InlineCustomDocumentEnrichmentConfiguration.add_member(:condition, Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: "Condition"))
    InlineCustomDocumentEnrichmentConfiguration.add_member(:target, Shapes::ShapeRef.new(shape: DocumentAttributeTarget, location_name: "Target"))
    InlineCustomDocumentEnrichmentConfiguration.add_member(:document_content_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "DocumentContentDeletion"))
    InlineCustomDocumentEnrichmentConfiguration.struct_class = Types::InlineCustomDocumentEnrichmentConfiguration

    InlineCustomDocumentEnrichmentConfigurationList.member = Shapes::ShapeRef.new(shape: InlineCustomDocumentEnrichmentConfiguration)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    IssueSubEntityFilter.member = Shapes::ShapeRef.new(shape: IssueSubEntity)

    IssueType.member = Shapes::ShapeRef.new(shape: String)

    JiraConfiguration.add_member(:jira_account_url, Shapes::ShapeRef.new(shape: JiraAccountUrl, required: true, location_name: "JiraAccountUrl"))
    JiraConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    JiraConfiguration.add_member(:use_change_log, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseChangeLog"))
    JiraConfiguration.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    JiraConfiguration.add_member(:issue_type, Shapes::ShapeRef.new(shape: IssueType, location_name: "IssueType"))
    JiraConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: JiraStatus, location_name: "Status"))
    JiraConfiguration.add_member(:issue_sub_entity_filter, Shapes::ShapeRef.new(shape: IssueSubEntityFilter, location_name: "IssueSubEntityFilter"))
    JiraConfiguration.add_member(:attachment_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "AttachmentFieldMappings"))
    JiraConfiguration.add_member(:comment_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "CommentFieldMappings"))
    JiraConfiguration.add_member(:issue_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "IssueFieldMappings"))
    JiraConfiguration.add_member(:project_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "ProjectFieldMappings"))
    JiraConfiguration.add_member(:work_log_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "WorkLogFieldMappings"))
    JiraConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    JiraConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    JiraConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    JiraConfiguration.struct_class = Types::JiraConfiguration

    JiraStatus.member = Shapes::ShapeRef.new(shape: String)

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

    ListAccessControlConfigurationsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListAccessControlConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAccessControlConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListAccessControlConfigurationsRequest, location_name: "MaxResults"))
    ListAccessControlConfigurationsRequest.struct_class = Types::ListAccessControlConfigurationsRequest

    ListAccessControlConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAccessControlConfigurationsResponse.add_member(:access_control_configurations, Shapes::ShapeRef.new(shape: AccessControlConfigurationSummaryList, required: true, location_name: "AccessControlConfigurations"))
    ListAccessControlConfigurationsResponse.struct_class = Types::ListAccessControlConfigurationsResponse

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

    ListEntityPersonasRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    ListEntityPersonasRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListEntityPersonasRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntityPersonasRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListEntityPersonasRequest, location_name: "MaxResults"))
    ListEntityPersonasRequest.struct_class = Types::ListEntityPersonasRequest

    ListEntityPersonasResponse.add_member(:summary_items, Shapes::ShapeRef.new(shape: PersonasSummaryList, location_name: "SummaryItems"))
    ListEntityPersonasResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntityPersonasResponse.struct_class = Types::ListEntityPersonasResponse

    ListExperienceEntitiesRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    ListExperienceEntitiesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListExperienceEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExperienceEntitiesRequest.struct_class = Types::ListExperienceEntitiesRequest

    ListExperienceEntitiesResponse.add_member(:summary_items, Shapes::ShapeRef.new(shape: ExperienceEntitiesSummaryList, location_name: "SummaryItems"))
    ListExperienceEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExperienceEntitiesResponse.struct_class = Types::ListExperienceEntitiesResponse

    ListExperiencesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListExperiencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExperiencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListExperiencesRequest, location_name: "MaxResults"))
    ListExperiencesRequest.struct_class = Types::ListExperiencesRequest

    ListExperiencesResponse.add_member(:summary_items, Shapes::ShapeRef.new(shape: ExperiencesSummaryList, location_name: "SummaryItems"))
    ListExperiencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExperiencesResponse.struct_class = Types::ListExperiencesResponse

    ListFaqsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListFaqsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFaqsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListFaqsRequest, location_name: "MaxResults"))
    ListFaqsRequest.struct_class = Types::ListFaqsRequest

    ListFaqsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFaqsResponse.add_member(:faq_summary_items, Shapes::ShapeRef.new(shape: FaqSummaryItems, location_name: "FaqSummaryItems"))
    ListFaqsResponse.struct_class = Types::ListFaqsResponse

    ListFeaturedResultsSetsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    ListFeaturedResultsSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFeaturedResultsSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListFeaturedResultsSetsRequest, location_name: "MaxResults"))
    ListFeaturedResultsSetsRequest.struct_class = Types::ListFeaturedResultsSetsRequest

    ListFeaturedResultsSetsResponse.add_member(:featured_results_set_summary_items, Shapes::ShapeRef.new(shape: FeaturedResultsSetSummaryItems, location_name: "FeaturedResultsSetSummaryItems"))
    ListFeaturedResultsSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFeaturedResultsSetsResponse.struct_class = Types::ListFeaturedResultsSetsResponse

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

    OnPremiseConfiguration.add_member(:host_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "HostUrl"))
    OnPremiseConfiguration.add_member(:organization_name, Shapes::ShapeRef.new(shape: OrganizationName, required: true, location_name: "OrganizationName"))
    OnPremiseConfiguration.add_member(:ssl_certificate_s3_path, Shapes::ShapeRef.new(shape: S3Path, required: true, location_name: "SslCertificateS3Path"))
    OnPremiseConfiguration.struct_class = Types::OnPremiseConfiguration

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

    PersonasSummary.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "EntityId"))
    PersonasSummary.add_member(:persona, Shapes::ShapeRef.new(shape: Persona, location_name: "Persona"))
    PersonasSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    PersonasSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    PersonasSummary.struct_class = Types::PersonasSummary

    PersonasSummaryList.member = Shapes::ShapeRef.new(shape: PersonasSummary)

    Principal.add_member(:name, Shapes::ShapeRef.new(shape: PrincipalName, required: true, location_name: "Name"))
    Principal.add_member(:type, Shapes::ShapeRef.new(shape: PrincipalType, required: true, location_name: "Type"))
    Principal.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "Access"))
    Principal.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    Principal.struct_class = Types::Principal

    PrincipalList.member = Shapes::ShapeRef.new(shape: Principal)

    PrivateChannelFilter.member = Shapes::ShapeRef.new(shape: String)

    Project.member = Shapes::ShapeRef.new(shape: String)

    ProxyConfiguration.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    ProxyConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    ProxyConfiguration.add_member(:credentials, Shapes::ShapeRef.new(shape: SecretArn, location_name: "Credentials"))
    ProxyConfiguration.struct_class = Types::ProxyConfiguration

    PublicChannelFilter.member = Shapes::ShapeRef.new(shape: String)

    PutPrincipalMappingRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    PutPrincipalMappingRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    PutPrincipalMappingRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, required: true, location_name: "GroupId"))
    PutPrincipalMappingRequest.add_member(:group_members, Shapes::ShapeRef.new(shape: GroupMembers, required: true, location_name: "GroupMembers"))
    PutPrincipalMappingRequest.add_member(:ordering_id, Shapes::ShapeRef.new(shape: PrincipalOrderingId, location_name: "OrderingId"))
    PutPrincipalMappingRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    PutPrincipalMappingRequest.struct_class = Types::PutPrincipalMappingRequest

    QueryRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    QueryRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, location_name: "QueryText"))
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
    QueryRequest.add_member(:spell_correction_configuration, Shapes::ShapeRef.new(shape: SpellCorrectionConfiguration, location_name: "SpellCorrectionConfiguration"))
    QueryRequest.struct_class = Types::QueryRequest

    QueryResult.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "QueryId"))
    QueryResult.add_member(:result_items, Shapes::ShapeRef.new(shape: QueryResultItemList, location_name: "ResultItems"))
    QueryResult.add_member(:facet_results, Shapes::ShapeRef.new(shape: FacetResultList, location_name: "FacetResults"))
    QueryResult.add_member(:total_number_of_results, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalNumberOfResults"))
    QueryResult.add_member(:warnings, Shapes::ShapeRef.new(shape: WarningList, location_name: "Warnings"))
    QueryResult.add_member(:spell_corrected_queries, Shapes::ShapeRef.new(shape: SpellCorrectedQueryList, location_name: "SpellCorrectedQueries"))
    QueryResult.add_member(:featured_results_items, Shapes::ShapeRef.new(shape: FeaturedResultsItemList, location_name: "FeaturedResultsItems"))
    QueryResult.struct_class = Types::QueryResult

    QueryResultItem.add_member(:id, Shapes::ShapeRef.new(shape: ResultId, location_name: "Id"))
    QueryResultItem.add_member(:type, Shapes::ShapeRef.new(shape: QueryResultType, location_name: "Type"))
    QueryResultItem.add_member(:format, Shapes::ShapeRef.new(shape: QueryResultFormat, location_name: "Format"))
    QueryResultItem.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: AdditionalResultAttributeList, location_name: "AdditionalAttributes"))
    QueryResultItem.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    QueryResultItem.add_member(:document_title, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "DocumentTitle"))
    QueryResultItem.add_member(:document_excerpt, Shapes::ShapeRef.new(shape: TextWithHighlights, location_name: "DocumentExcerpt"))
    QueryResultItem.add_member(:document_uri, Shapes::ShapeRef.new(shape: Url, location_name: "DocumentURI"))
    QueryResultItem.add_member(:document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "DocumentAttributes"))
    QueryResultItem.add_member(:score_attributes, Shapes::ShapeRef.new(shape: ScoreAttributes, location_name: "ScoreAttributes"))
    QueryResultItem.add_member(:feedback_token, Shapes::ShapeRef.new(shape: FeedbackToken, location_name: "FeedbackToken"))
    QueryResultItem.add_member(:table_excerpt, Shapes::ShapeRef.new(shape: TableExcerpt, location_name: "TableExcerpt"))
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

    QueryTextList.member = Shapes::ShapeRef.new(shape: QueryText)

    QuipConfiguration.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "Domain"))
    QuipConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    QuipConfiguration.add_member(:crawl_file_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlFileComments"))
    QuipConfiguration.add_member(:crawl_chat_rooms, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlChatRooms"))
    QuipConfiguration.add_member(:crawl_attachments, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlAttachments"))
    QuipConfiguration.add_member(:folder_ids, Shapes::ShapeRef.new(shape: FolderIdList, location_name: "FolderIds"))
    QuipConfiguration.add_member(:thread_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "ThreadFieldMappings"))
    QuipConfiguration.add_member(:message_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "MessageFieldMappings"))
    QuipConfiguration.add_member(:attachment_field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "AttachmentFieldMappings"))
    QuipConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    QuipConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    QuipConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    QuipConfiguration.struct_class = Types::QuipConfiguration

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

    RepositoryNames.member = Shapes::ShapeRef.new(shape: RepositoryName)

    ResourceAlreadyExistException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistException.struct_class = Types::ResourceAlreadyExistException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    RetrieveRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    RetrieveRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, required: true, location_name: "QueryText"))
    RetrieveRequest.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "AttributeFilter"))
    RetrieveRequest.add_member(:requested_document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeKeyList, location_name: "RequestedDocumentAttributes"))
    RetrieveRequest.add_member(:document_relevance_override_configurations, Shapes::ShapeRef.new(shape: DocumentRelevanceOverrideConfigurationList, location_name: "DocumentRelevanceOverrideConfigurations"))
    RetrieveRequest.add_member(:page_number, Shapes::ShapeRef.new(shape: Integer, location_name: "PageNumber"))
    RetrieveRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: Integer, location_name: "PageSize"))
    RetrieveRequest.add_member(:user_context, Shapes::ShapeRef.new(shape: UserContext, location_name: "UserContext"))
    RetrieveRequest.struct_class = Types::RetrieveRequest

    RetrieveResult.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, location_name: "QueryId"))
    RetrieveResult.add_member(:result_items, Shapes::ShapeRef.new(shape: RetrieveResultItemList, location_name: "ResultItems"))
    RetrieveResult.struct_class = Types::RetrieveResult

    RetrieveResultItem.add_member(:id, Shapes::ShapeRef.new(shape: ResultId, location_name: "Id"))
    RetrieveResultItem.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "DocumentId"))
    RetrieveResultItem.add_member(:document_title, Shapes::ShapeRef.new(shape: DocumentTitle, location_name: "DocumentTitle"))
    RetrieveResultItem.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "Content"))
    RetrieveResultItem.add_member(:document_uri, Shapes::ShapeRef.new(shape: Url, location_name: "DocumentURI"))
    RetrieveResultItem.add_member(:document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "DocumentAttributes"))
    RetrieveResultItem.struct_class = Types::RetrieveResultItem

    RetrieveResultItemList.member = Shapes::ShapeRef.new(shape: RetrieveResultItem)

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

    SaaSConfiguration.add_member(:organization_name, Shapes::ShapeRef.new(shape: OrganizationName, required: true, location_name: "OrganizationName"))
    SaaSConfiguration.add_member(:host_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "HostUrl"))
    SaaSConfiguration.struct_class = Types::SaaSConfiguration

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
    SharePointConfiguration.add_member(:authentication_type, Shapes::ShapeRef.new(shape: SharePointOnlineAuthenticationType, location_name: "AuthenticationType"))
    SharePointConfiguration.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "ProxyConfiguration"))
    SharePointConfiguration.struct_class = Types::SharePointConfiguration

    SharePointUrlList.member = Shapes::ShapeRef.new(shape: Url)

    SiteMapsConfiguration.add_member(:site_maps, Shapes::ShapeRef.new(shape: SiteMapsList, required: true, location_name: "SiteMaps"))
    SiteMapsConfiguration.struct_class = Types::SiteMapsConfiguration

    SiteMapsList.member = Shapes::ShapeRef.new(shape: SiteMap)

    SlackConfiguration.add_member(:team_id, Shapes::ShapeRef.new(shape: TeamId, required: true, location_name: "TeamId"))
    SlackConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "SecretArn"))
    SlackConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    SlackConfiguration.add_member(:slack_entity_list, Shapes::ShapeRef.new(shape: SlackEntityList, required: true, location_name: "SlackEntityList"))
    SlackConfiguration.add_member(:use_change_log, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseChangeLog"))
    SlackConfiguration.add_member(:crawl_bot_message, Shapes::ShapeRef.new(shape: Boolean, location_name: "CrawlBotMessage"))
    SlackConfiguration.add_member(:exclude_archived, Shapes::ShapeRef.new(shape: Boolean, location_name: "ExcludeArchived"))
    SlackConfiguration.add_member(:since_crawl_date, Shapes::ShapeRef.new(shape: SinceCrawlDate, required: true, location_name: "SinceCrawlDate"))
    SlackConfiguration.add_member(:look_back_period, Shapes::ShapeRef.new(shape: LookBackPeriod, location_name: "LookBackPeriod"))
    SlackConfiguration.add_member(:private_channel_filter, Shapes::ShapeRef.new(shape: PrivateChannelFilter, location_name: "PrivateChannelFilter"))
    SlackConfiguration.add_member(:public_channel_filter, Shapes::ShapeRef.new(shape: PublicChannelFilter, location_name: "PublicChannelFilter"))
    SlackConfiguration.add_member(:inclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "InclusionPatterns"))
    SlackConfiguration.add_member(:exclusion_patterns, Shapes::ShapeRef.new(shape: DataSourceInclusionsExclusionsStrings, location_name: "ExclusionPatterns"))
    SlackConfiguration.add_member(:field_mappings, Shapes::ShapeRef.new(shape: DataSourceToIndexFieldMappingList, location_name: "FieldMappings"))
    SlackConfiguration.struct_class = Types::SlackConfiguration

    SlackEntityList.member = Shapes::ShapeRef.new(shape: SlackEntity)

    SnapshotsDataHeaderFields.member = Shapes::ShapeRef.new(shape: String)

    SnapshotsDataRecord.member = Shapes::ShapeRef.new(shape: String)

    SnapshotsDataRecords.member = Shapes::ShapeRef.new(shape: SnapshotsDataRecord)

    SortingConfiguration.add_member(:document_attribute_key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "DocumentAttributeKey"))
    SortingConfiguration.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    SortingConfiguration.struct_class = Types::SortingConfiguration

    SourceDocument.add_member(:document_id, Shapes::ShapeRef.new(shape: String, location_name: "DocumentId"))
    SourceDocument.add_member(:suggestion_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeKeyList, location_name: "SuggestionAttributes"))
    SourceDocument.add_member(:additional_attributes, Shapes::ShapeRef.new(shape: DocumentAttributeList, location_name: "AdditionalAttributes"))
    SourceDocument.struct_class = Types::SourceDocument

    SourceDocuments.member = Shapes::ShapeRef.new(shape: SourceDocument)

    SpellCorrectedQuery.add_member(:suggested_query_text, Shapes::ShapeRef.new(shape: SuggestedQueryText, location_name: "SuggestedQueryText"))
    SpellCorrectedQuery.add_member(:corrections, Shapes::ShapeRef.new(shape: CorrectionList, location_name: "Corrections"))
    SpellCorrectedQuery.struct_class = Types::SpellCorrectedQuery

    SpellCorrectedQueryList.member = Shapes::ShapeRef.new(shape: SpellCorrectedQuery)

    SpellCorrectionConfiguration.add_member(:include_query_spell_check_suggestions, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "IncludeQuerySpellCheckSuggestions"))
    SpellCorrectionConfiguration.struct_class = Types::SpellCorrectionConfiguration

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

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubmitFeedbackRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    SubmitFeedbackRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    SubmitFeedbackRequest.add_member(:click_feedback_items, Shapes::ShapeRef.new(shape: ClickFeedbackList, location_name: "ClickFeedbackItems"))
    SubmitFeedbackRequest.add_member(:relevance_feedback_items, Shapes::ShapeRef.new(shape: RelevanceFeedbackList, location_name: "RelevanceFeedbackItems"))
    SubmitFeedbackRequest.struct_class = Types::SubmitFeedbackRequest

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    SuggestableConfig.add_member(:attribute_name, Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: "AttributeName"))
    SuggestableConfig.add_member(:suggestable, Shapes::ShapeRef.new(shape: ObjectBoolean, location_name: "Suggestable"))
    SuggestableConfig.struct_class = Types::SuggestableConfig

    SuggestableConfigList.member = Shapes::ShapeRef.new(shape: SuggestableConfig)

    Suggestion.add_member(:id, Shapes::ShapeRef.new(shape: ResultId, location_name: "Id"))
    Suggestion.add_member(:value, Shapes::ShapeRef.new(shape: SuggestionValue, location_name: "Value"))
    Suggestion.add_member(:source_documents, Shapes::ShapeRef.new(shape: SourceDocuments, location_name: "SourceDocuments"))
    Suggestion.struct_class = Types::Suggestion

    SuggestionHighlight.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "BeginOffset"))
    SuggestionHighlight.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "EndOffset"))
    SuggestionHighlight.struct_class = Types::SuggestionHighlight

    SuggestionHighlightList.member = Shapes::ShapeRef.new(shape: SuggestionHighlight)

    SuggestionList.member = Shapes::ShapeRef.new(shape: Suggestion)

    SuggestionTextWithHighlights.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    SuggestionTextWithHighlights.add_member(:highlights, Shapes::ShapeRef.new(shape: SuggestionHighlightList, location_name: "Highlights"))
    SuggestionTextWithHighlights.struct_class = Types::SuggestionTextWithHighlights

    SuggestionTypes.member = Shapes::ShapeRef.new(shape: SuggestionType)

    SuggestionValue.add_member(:text, Shapes::ShapeRef.new(shape: SuggestionTextWithHighlights, location_name: "Text"))
    SuggestionValue.struct_class = Types::SuggestionValue

    TableCell.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    TableCell.add_member(:top_answer, Shapes::ShapeRef.new(shape: Boolean, location_name: "TopAnswer"))
    TableCell.add_member(:highlighted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Highlighted"))
    TableCell.add_member(:header, Shapes::ShapeRef.new(shape: Boolean, location_name: "Header"))
    TableCell.struct_class = Types::TableCell

    TableCellList.member = Shapes::ShapeRef.new(shape: TableCell)

    TableExcerpt.add_member(:rows, Shapes::ShapeRef.new(shape: TableRowList, location_name: "Rows"))
    TableExcerpt.add_member(:total_number_of_rows, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalNumberOfRows"))
    TableExcerpt.struct_class = Types::TableExcerpt

    TableRow.add_member(:cells, Shapes::ShapeRef.new(shape: TableCellList, location_name: "Cells"))
    TableRow.struct_class = Types::TableRow

    TableRowList.member = Shapes::ShapeRef.new(shape: TableRow)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TemplateConfiguration.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    TemplateConfiguration.struct_class = Types::TemplateConfiguration

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

    UpdateAccessControlConfigurationRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateAccessControlConfigurationRequest.add_member(:id, Shapes::ShapeRef.new(shape: AccessControlConfigurationId, required: true, location_name: "Id"))
    UpdateAccessControlConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessControlConfigurationName, location_name: "Name"))
    UpdateAccessControlConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateAccessControlConfigurationRequest.add_member(:access_control_list, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "AccessControlList"))
    UpdateAccessControlConfigurationRequest.add_member(:hierarchical_access_control_list, Shapes::ShapeRef.new(shape: HierarchicalPrincipalList, location_name: "HierarchicalAccessControlList"))
    UpdateAccessControlConfigurationRequest.struct_class = Types::UpdateAccessControlConfigurationRequest

    UpdateAccessControlConfigurationResponse.struct_class = Types::UpdateAccessControlConfigurationResponse

    UpdateDataSourceRequest.add_member(:id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location_name: "Id"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "Name"))
    UpdateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "Configuration"))
    UpdateDataSourceRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "VpcConfiguration"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDataSourceRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: ScanSchedule, location_name: "Schedule"))
    UpdateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateDataSourceRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    UpdateDataSourceRequest.add_member(:custom_document_enrichment_configuration, Shapes::ShapeRef.new(shape: CustomDocumentEnrichmentConfiguration, location_name: "CustomDocumentEnrichmentConfiguration"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateExperienceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExperienceId, required: true, location_name: "Id"))
    UpdateExperienceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExperienceName, location_name: "Name"))
    UpdateExperienceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateExperienceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateExperienceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ExperienceConfiguration, location_name: "Configuration"))
    UpdateExperienceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateExperienceRequest.struct_class = Types::UpdateExperienceRequest

    UpdateFeaturedResultsSetRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "IndexId"))
    UpdateFeaturedResultsSetRequest.add_member(:featured_results_set_id, Shapes::ShapeRef.new(shape: FeaturedResultsSetId, required: true, location_name: "FeaturedResultsSetId"))
    UpdateFeaturedResultsSetRequest.add_member(:featured_results_set_name, Shapes::ShapeRef.new(shape: FeaturedResultsSetName, location_name: "FeaturedResultsSetName"))
    UpdateFeaturedResultsSetRequest.add_member(:description, Shapes::ShapeRef.new(shape: FeaturedResultsSetDescription, location_name: "Description"))
    UpdateFeaturedResultsSetRequest.add_member(:status, Shapes::ShapeRef.new(shape: FeaturedResultsSetStatus, location_name: "Status"))
    UpdateFeaturedResultsSetRequest.add_member(:query_texts, Shapes::ShapeRef.new(shape: QueryTextList, location_name: "QueryTexts"))
    UpdateFeaturedResultsSetRequest.add_member(:featured_documents, Shapes::ShapeRef.new(shape: FeaturedDocumentList, location_name: "FeaturedDocuments"))
    UpdateFeaturedResultsSetRequest.struct_class = Types::UpdateFeaturedResultsSetRequest

    UpdateFeaturedResultsSetResponse.add_member(:featured_results_set, Shapes::ShapeRef.new(shape: FeaturedResultsSet, location_name: "FeaturedResultsSet"))
    UpdateFeaturedResultsSetResponse.struct_class = Types::UpdateFeaturedResultsSetResponse

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
    UpdateQuerySuggestionsConfigRequest.add_member(:attribute_suggestions_config, Shapes::ShapeRef.new(shape: AttributeSuggestionsUpdateConfig, location_name: "AttributeSuggestionsConfig"))
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

    UserIdentityConfiguration.add_member(:identity_attribute_name, Shapes::ShapeRef.new(shape: IdentityAttributeName, location_name: "IdentityAttributeName"))
    UserIdentityConfiguration.struct_class = Types::UserIdentityConfiguration

    UserTokenConfiguration.add_member(:jwt_token_type_configuration, Shapes::ShapeRef.new(shape: JwtTokenTypeConfiguration, location_name: "JwtTokenTypeConfiguration"))
    UserTokenConfiguration.add_member(:json_token_type_configuration, Shapes::ShapeRef.new(shape: JsonTokenTypeConfiguration, location_name: "JsonTokenTypeConfiguration"))
    UserTokenConfiguration.struct_class = Types::UserTokenConfiguration

    UserTokenConfigurationList.member = Shapes::ShapeRef.new(shape: UserTokenConfiguration)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValueImportanceMap.key = Shapes::ShapeRef.new(shape: ValueImportanceMapKey)
    ValueImportanceMap.value = Shapes::ShapeRef.new(shape: Importance)

    Warning.add_member(:message, Shapes::ShapeRef.new(shape: WarningMessage, location_name: "Message"))
    Warning.add_member(:code, Shapes::ShapeRef.new(shape: WarningCode, location_name: "Code"))
    Warning.struct_class = Types::Warning

    WarningList.member = Shapes::ShapeRef.new(shape: Warning)

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

      api.add_operation(:associate_entities_to_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateEntitiesToExperience"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateEntitiesToExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateEntitiesToExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:associate_personas_to_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePersonasToEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociatePersonasToEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePersonasToEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

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

      api.add_operation(:batch_delete_featured_results_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteFeaturedResultsSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteFeaturedResultsSetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteFeaturedResultsSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:create_access_control_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessControlConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessControlConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessControlConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExperience"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:create_featured_results_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFeaturedResultsSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFeaturedResultsSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFeaturedResultsSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FeaturedResultsConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_access_control_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessControlConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessControlConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessControlConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:delete_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExperience"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExperienceResponse)
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

      api.add_operation(:describe_access_control_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccessControlConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccessControlConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccessControlConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExperience"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExperienceResponse)
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

      api.add_operation(:describe_featured_results_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFeaturedResultsSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFeaturedResultsSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFeaturedResultsSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:disassociate_entities_from_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateEntitiesFromExperience"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateEntitiesFromExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateEntitiesFromExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_personas_from_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePersonasFromEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePersonasFromEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePersonasFromEntitiesResponse)
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

      api.add_operation(:get_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_control_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessControlConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessControlConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessControlConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:list_entity_personas, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntityPersonas"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEntityPersonasRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntityPersonasResponse)
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

      api.add_operation(:list_experience_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperienceEntities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExperienceEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperienceEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperiences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListExperiencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExperiencesResponse)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_featured_results_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFeaturedResultsSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFeaturedResultsSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFeaturedResultsSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:retrieve, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Retrieve"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetrieveRequest)
        o.output = Shapes::ShapeRef.new(shape: RetrieveResult)
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

      api.add_operation(:update_access_control_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccessControlConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccessControlConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccessControlConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:update_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExperience"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_featured_results_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFeaturedResultsSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFeaturedResultsSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFeaturedResultsSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: FeaturedResultsConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
