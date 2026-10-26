# frozen_string_literal: true

# This is generated code!

module Aws::Kendra
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessControlConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#AccessControlConfigurationId", name: "AccessControlConfigurationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    AccessControlConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#AccessControlConfigurationName", name: "AccessControlConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    AccessControlConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AccessControlConfigurationSummary", name: "AccessControlConfigurationSummary")
    AccessControlConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#AccessControlConfigurationSummaryList", name: "AccessControlConfigurationSummaryList")
    AccessControlListConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AccessControlListConfiguration", name: "AccessControlListConfiguration")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AclConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AclConfiguration", name: "AclConfiguration")
    AdditionalResultAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AdditionalResultAttribute", name: "AdditionalResultAttribute")
    AdditionalResultAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#AdditionalResultAttributeList", name: "AdditionalResultAttributeList")
    AdditionalResultAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AdditionalResultAttributeValue", name: "AdditionalResultAttributeValue")
    AdditionalResultAttributeValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#AdditionalResultAttributeValueType", name: "AdditionalResultAttributeValueType")
    AlfrescoConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AlfrescoConfiguration", name: "AlfrescoConfiguration")
    AlfrescoEntity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#AlfrescoEntity", name: "AlfrescoEntity")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AssociateEntitiesToExperienceFailedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#AssociateEntitiesToExperienceFailedEntityList", name: "AssociateEntitiesToExperienceFailedEntityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    AssociateEntitiesToExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AssociateEntitiesToExperienceRequest", name: "AssociateEntitiesToExperienceRequest")
    AssociateEntitiesToExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AssociateEntitiesToExperienceResponse", name: "AssociateEntitiesToExperienceResponse")
    AssociateEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#AssociateEntityList", name: "AssociateEntityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    AssociatePersonasToEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AssociatePersonasToEntitiesRequest", name: "AssociatePersonasToEntitiesRequest")
    AssociatePersonasToEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AssociatePersonasToEntitiesResponse", name: "AssociatePersonasToEntitiesResponse")
    AttributeFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AttributeFilter", name: "AttributeFilter")
    AttributeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#AttributeFilterList", name: "AttributeFilterList")
    AttributeSuggestionsDescribeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AttributeSuggestionsDescribeConfig", name: "AttributeSuggestionsDescribeConfig")
    AttributeSuggestionsGetConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AttributeSuggestionsGetConfig", name: "AttributeSuggestionsGetConfig")
    AttributeSuggestionsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#AttributeSuggestionsMode", name: "AttributeSuggestionsMode")
    AttributeSuggestionsUpdateConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AttributeSuggestionsUpdateConfig", name: "AttributeSuggestionsUpdateConfig")
    AuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#AuthenticationConfiguration", name: "AuthenticationConfiguration")
    BasicAuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BasicAuthenticationConfiguration", name: "BasicAuthenticationConfiguration")
    BasicAuthenticationConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#BasicAuthenticationConfigurationList", name: "BasicAuthenticationConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    BatchDeleteDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchDeleteDocumentRequest", name: "BatchDeleteDocumentRequest")
    BatchDeleteDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchDeleteDocumentResponse", name: "BatchDeleteDocumentResponse")
    BatchDeleteDocumentResponseFailedDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchDeleteDocumentResponseFailedDocument", name: "BatchDeleteDocumentResponseFailedDocument")
    BatchDeleteDocumentResponseFailedDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#BatchDeleteDocumentResponseFailedDocuments", name: "BatchDeleteDocumentResponseFailedDocuments")
    BatchDeleteFeaturedResultsSetError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchDeleteFeaturedResultsSetError", name: "BatchDeleteFeaturedResultsSetError")
    BatchDeleteFeaturedResultsSetErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#BatchDeleteFeaturedResultsSetErrors", name: "BatchDeleteFeaturedResultsSetErrors")
    BatchDeleteFeaturedResultsSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchDeleteFeaturedResultsSetRequest", name: "BatchDeleteFeaturedResultsSetRequest")
    BatchDeleteFeaturedResultsSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchDeleteFeaturedResultsSetResponse", name: "BatchDeleteFeaturedResultsSetResponse")
    BatchGetDocumentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchGetDocumentStatusRequest", name: "BatchGetDocumentStatusRequest")
    BatchGetDocumentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchGetDocumentStatusResponse", name: "BatchGetDocumentStatusResponse")
    BatchGetDocumentStatusResponseError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchGetDocumentStatusResponseError", name: "BatchGetDocumentStatusResponseError")
    BatchGetDocumentStatusResponseErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#BatchGetDocumentStatusResponseErrors", name: "BatchGetDocumentStatusResponseErrors")
    BatchPutDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchPutDocumentRequest", name: "BatchPutDocumentRequest")
    BatchPutDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchPutDocumentResponse", name: "BatchPutDocumentResponse")
    BatchPutDocumentResponseFailedDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BatchPutDocumentResponseFailedDocument", name: "BatchPutDocumentResponseFailedDocument")
    BatchPutDocumentResponseFailedDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#BatchPutDocumentResponseFailedDocuments", name: "BatchPutDocumentResponseFailedDocuments")
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.kendra#Blob", name: "Blob")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kendra#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BoxConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#BoxConfiguration", name: "BoxConfiguration")
    CapacityUnitsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CapacityUnitsConfiguration", name: "CapacityUnitsConfiguration")
    ChangeDetectingColumns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ChangeDetectingColumns", name: "ChangeDetectingColumns", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ClaimRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ClaimRegex", name: "ClaimRegex", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\P{C}*$"})
    ClearQuerySuggestionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ClearQuerySuggestionsRequest", name: "ClearQuerySuggestionsRequest")
    ClickFeedback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ClickFeedback", name: "ClickFeedback")
    ClickFeedbackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ClickFeedbackList", name: "ClickFeedbackList")
    ClientTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ClientTokenName", name: "ClientTokenName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CollapseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CollapseConfiguration", name: "CollapseConfiguration")
    CollapsedResultDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CollapsedResultDetail", name: "CollapsedResultDetail")
    ColumnConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ColumnConfiguration", name: "ColumnConfiguration")
    ColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ColumnName", name: "ColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    ConditionOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConditionOperator", name: "ConditionOperator")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictingItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConflictingItem", name: "ConflictingItem")
    ConflictingItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ConflictingItems", name: "ConflictingItems")
    ConfluenceAttachmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceAttachmentConfiguration", name: "ConfluenceAttachmentConfiguration")
    ConfluenceAttachmentFieldMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ConfluenceAttachmentFieldMappingsList", name: "ConfluenceAttachmentFieldMappingsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}})
    ConfluenceAttachmentFieldName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConfluenceAttachmentFieldName", name: "ConfluenceAttachmentFieldName")
    ConfluenceAttachmentToIndexFieldMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceAttachmentToIndexFieldMapping", name: "ConfluenceAttachmentToIndexFieldMapping")
    ConfluenceAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConfluenceAuthenticationType", name: "ConfluenceAuthenticationType")
    ConfluenceBlogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceBlogConfiguration", name: "ConfluenceBlogConfiguration")
    ConfluenceBlogFieldMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ConfluenceBlogFieldMappingsList", name: "ConfluenceBlogFieldMappingsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}})
    ConfluenceBlogFieldName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConfluenceBlogFieldName", name: "ConfluenceBlogFieldName")
    ConfluenceBlogToIndexFieldMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceBlogToIndexFieldMapping", name: "ConfluenceBlogToIndexFieldMapping")
    ConfluenceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceConfiguration", name: "ConfluenceConfiguration")
    ConfluencePageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluencePageConfiguration", name: "ConfluencePageConfiguration")
    ConfluencePageFieldMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ConfluencePageFieldMappingsList", name: "ConfluencePageFieldMappingsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 12}})
    ConfluencePageFieldName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConfluencePageFieldName", name: "ConfluencePageFieldName")
    ConfluencePageToIndexFieldMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluencePageToIndexFieldMapping", name: "ConfluencePageToIndexFieldMapping")
    ConfluenceSpaceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceSpaceConfiguration", name: "ConfluenceSpaceConfiguration")
    ConfluenceSpaceFieldMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ConfluenceSpaceFieldMappingsList", name: "ConfluenceSpaceFieldMappingsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ConfluenceSpaceFieldName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConfluenceSpaceFieldName", name: "ConfluenceSpaceFieldName")
    ConfluenceSpaceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ConfluenceSpaceIdentifier", name: "ConfluenceSpaceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\P{C}*$"})
    ConfluenceSpaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ConfluenceSpaceList", name: "ConfluenceSpaceList", traits: {"smithy.api#length" => {"min" => 1}})
    ConfluenceSpaceToIndexFieldMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConfluenceSpaceToIndexFieldMapping", name: "ConfluenceSpaceToIndexFieldMapping")
    ConfluenceVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ConfluenceVersion", name: "ConfluenceVersion")
    ConnectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ConnectionConfiguration", name: "ConnectionConfiguration")
    Content = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Content", name: "Content")
    ContentSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ContentSourceConfiguration", name: "ContentSourceConfiguration")
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ContentType", name: "ContentType")
    Correction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Correction", name: "Correction")
    CorrectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#CorrectionList", name: "CorrectionList")
    CrawlDepth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#CrawlDepth", name: "CrawlDepth", traits: {"smithy.api#range" => {"min" => 0, "max" => 10}})
    CreateAccessControlConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateAccessControlConfigurationRequest", name: "CreateAccessControlConfigurationRequest")
    CreateAccessControlConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateAccessControlConfigurationResponse", name: "CreateAccessControlConfigurationResponse")
    CreateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateDataSourceRequest", name: "CreateDataSourceRequest")
    CreateDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateDataSourceResponse", name: "CreateDataSourceResponse")
    CreateExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateExperienceRequest", name: "CreateExperienceRequest")
    CreateExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateExperienceResponse", name: "CreateExperienceResponse")
    CreateFaqRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateFaqRequest", name: "CreateFaqRequest")
    CreateFaqResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateFaqResponse", name: "CreateFaqResponse")
    CreateFeaturedResultsSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateFeaturedResultsSetRequest", name: "CreateFeaturedResultsSetRequest")
    CreateFeaturedResultsSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateFeaturedResultsSetResponse", name: "CreateFeaturedResultsSetResponse")
    CreateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateIndexRequest", name: "CreateIndexRequest")
    CreateIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateIndexResponse", name: "CreateIndexResponse")
    CreateQuerySuggestionsBlockListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateQuerySuggestionsBlockListRequest", name: "CreateQuerySuggestionsBlockListRequest")
    CreateQuerySuggestionsBlockListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateQuerySuggestionsBlockListResponse", name: "CreateQuerySuggestionsBlockListResponse")
    CreateThesaurusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateThesaurusRequest", name: "CreateThesaurusRequest")
    CreateThesaurusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CreateThesaurusResponse", name: "CreateThesaurusResponse")
    CustomDocumentEnrichmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#CustomDocumentEnrichmentConfiguration", name: "CustomDocumentEnrichmentConfiguration")
    DataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceConfiguration", name: "DataSourceConfiguration")
    DataSourceDateFieldFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DataSourceDateFieldFormat", name: "DataSourceDateFieldFormat", traits: {"smithy.api#length" => {"min" => 4, "max" => 40}, "smithy.api#pattern" => "^(?!\\s).*(?<!\\s)$"})
    DataSourceFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DataSourceFieldName", name: "DataSourceFieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_.]*$"})
    DataSourceGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceGroup", name: "DataSourceGroup")
    DataSourceGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DataSourceGroups", name: "DataSourceGroups", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DataSourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DataSourceId", name: "DataSourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataSourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DataSourceIdList", name: "DataSourceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DataSourceInclusionsExclusionsStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DataSourceInclusionsExclusionsStrings", name: "DataSourceInclusionsExclusionsStrings", traits: {"smithy.api#length" => {"min" => 0, "max" => 250}})
    DataSourceInclusionsExclusionsStringsMember = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DataSourceInclusionsExclusionsStringsMember", name: "DataSourceInclusionsExclusionsStringsMember", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    DataSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DataSourceName", name: "DataSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataSourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#DataSourceStatus", name: "DataSourceStatus")
    DataSourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceSummary", name: "DataSourceSummary")
    DataSourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DataSourceSummaryList", name: "DataSourceSummaryList")
    DataSourceSyncJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceSyncJob", name: "DataSourceSyncJob")
    DataSourceSyncJobHistoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DataSourceSyncJobHistoryList", name: "DataSourceSyncJobHistoryList")
    DataSourceSyncJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DataSourceSyncJobId", name: "DataSourceSyncJobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataSourceSyncJobMetricTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceSyncJobMetricTarget", name: "DataSourceSyncJobMetricTarget")
    DataSourceSyncJobMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceSyncJobMetrics", name: "DataSourceSyncJobMetrics")
    DataSourceSyncJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#DataSourceSyncJobStatus", name: "DataSourceSyncJobStatus")
    DataSourceToIndexFieldMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceToIndexFieldMapping", name: "DataSourceToIndexFieldMapping")
    DataSourceToIndexFieldMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DataSourceToIndexFieldMappingList", name: "DataSourceToIndexFieldMappingList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#DataSourceType", name: "DataSourceType")
    DataSourceVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DataSourceVpcConfiguration", name: "DataSourceVpcConfiguration")
    DatabaseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DatabaseConfiguration", name: "DatabaseConfiguration")
    DatabaseEngineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#DatabaseEngineType", name: "DatabaseEngineType")
    DatabaseHost = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DatabaseHost", name: "DatabaseHost", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}})
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    DatabasePort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#DatabasePort", name: "DatabasePort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    DeleteAccessControlConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteAccessControlConfigurationRequest", name: "DeleteAccessControlConfigurationRequest")
    DeleteAccessControlConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteAccessControlConfigurationResponse", name: "DeleteAccessControlConfigurationResponse")
    DeleteDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteDataSourceRequest", name: "DeleteDataSourceRequest")
    DeleteExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteExperienceRequest", name: "DeleteExperienceRequest")
    DeleteExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteExperienceResponse", name: "DeleteExperienceResponse")
    DeleteFaqRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteFaqRequest", name: "DeleteFaqRequest")
    DeleteIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteIndexRequest", name: "DeleteIndexRequest")
    DeletePrincipalMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeletePrincipalMappingRequest", name: "DeletePrincipalMappingRequest")
    DeleteQuerySuggestionsBlockListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteQuerySuggestionsBlockListRequest", name: "DeleteQuerySuggestionsBlockListRequest")
    DeleteThesaurusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DeleteThesaurusRequest", name: "DeleteThesaurusRequest")
    DescribeAccessControlConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeAccessControlConfigurationRequest", name: "DescribeAccessControlConfigurationRequest")
    DescribeAccessControlConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeAccessControlConfigurationResponse", name: "DescribeAccessControlConfigurationResponse")
    DescribeDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeDataSourceRequest", name: "DescribeDataSourceRequest")
    DescribeDataSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeDataSourceResponse", name: "DescribeDataSourceResponse")
    DescribeExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeExperienceRequest", name: "DescribeExperienceRequest")
    DescribeExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeExperienceResponse", name: "DescribeExperienceResponse")
    DescribeFaqRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeFaqRequest", name: "DescribeFaqRequest")
    DescribeFaqResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeFaqResponse", name: "DescribeFaqResponse")
    DescribeFeaturedResultsSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeFeaturedResultsSetRequest", name: "DescribeFeaturedResultsSetRequest")
    DescribeFeaturedResultsSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeFeaturedResultsSetResponse", name: "DescribeFeaturedResultsSetResponse")
    DescribeIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeIndexRequest", name: "DescribeIndexRequest")
    DescribeIndexResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeIndexResponse", name: "DescribeIndexResponse")
    DescribePrincipalMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribePrincipalMappingRequest", name: "DescribePrincipalMappingRequest")
    DescribePrincipalMappingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribePrincipalMappingResponse", name: "DescribePrincipalMappingResponse")
    DescribeQuerySuggestionsBlockListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeQuerySuggestionsBlockListRequest", name: "DescribeQuerySuggestionsBlockListRequest")
    DescribeQuerySuggestionsBlockListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeQuerySuggestionsBlockListResponse", name: "DescribeQuerySuggestionsBlockListResponse")
    DescribeQuerySuggestionsConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeQuerySuggestionsConfigRequest", name: "DescribeQuerySuggestionsConfigRequest")
    DescribeQuerySuggestionsConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeQuerySuggestionsConfigResponse", name: "DescribeQuerySuggestionsConfigResponse")
    DescribeThesaurusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeThesaurusRequest", name: "DescribeThesaurusRequest")
    DescribeThesaurusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DescribeThesaurusResponse", name: "DescribeThesaurusResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    DisassociateEntitiesFromExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DisassociateEntitiesFromExperienceRequest", name: "DisassociateEntitiesFromExperienceRequest")
    DisassociateEntitiesFromExperienceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DisassociateEntitiesFromExperienceResponse", name: "DisassociateEntitiesFromExperienceResponse")
    DisassociateEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DisassociateEntityList", name: "DisassociateEntityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    DisassociatePersonasFromEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DisassociatePersonasFromEntitiesRequest", name: "DisassociatePersonasFromEntitiesRequest")
    DisassociatePersonasFromEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DisassociatePersonasFromEntitiesResponse", name: "DisassociatePersonasFromEntitiesResponse")
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Document", name: "Document")
    DocumentAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentAttribute", name: "DocumentAttribute")
    DocumentAttributeCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentAttributeCondition", name: "DocumentAttributeCondition")
    DocumentAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DocumentAttributeKey", name: "DocumentAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z0-9_-]*$"})
    DocumentAttributeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentAttributeKeyList", name: "DocumentAttributeKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DocumentAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentAttributeList", name: "DocumentAttributeList")
    DocumentAttributeStringListValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentAttributeStringListValue", name: "DocumentAttributeStringListValue")
    DocumentAttributeStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DocumentAttributeStringValue", name: "DocumentAttributeStringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DocumentAttributeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentAttributeTarget", name: "DocumentAttributeTarget")
    DocumentAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentAttributeValue", name: "DocumentAttributeValue")
    DocumentAttributeValueCountPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentAttributeValueCountPair", name: "DocumentAttributeValueCountPair")
    DocumentAttributeValueCountPairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentAttributeValueCountPairList", name: "DocumentAttributeValueCountPairList")
    DocumentAttributeValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#DocumentAttributeValueType", name: "DocumentAttributeValueType")
    DocumentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DocumentId", name: "DocumentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    DocumentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentIdList", name: "DocumentIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DocumentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentInfo", name: "DocumentInfo")
    DocumentInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentInfoList", name: "DocumentInfoList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentList", name: "DocumentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    DocumentMetadataBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kendra#DocumentMetadataBoolean", name: "DocumentMetadataBoolean")
    DocumentMetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentMetadataConfiguration", name: "DocumentMetadataConfiguration")
    DocumentMetadataConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentMetadataConfigurationList", name: "DocumentMetadataConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    DocumentMetadataConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DocumentMetadataConfigurationName", name: "DocumentMetadataConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    DocumentRelevanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentRelevanceConfiguration", name: "DocumentRelevanceConfiguration")
    DocumentRelevanceOverrideConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentRelevanceOverrideConfigurationList", name: "DocumentRelevanceOverrideConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    DocumentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#DocumentStatus", name: "DocumentStatus")
    DocumentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#DocumentStatusList", name: "DocumentStatusList")
    DocumentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#DocumentTitle", name: "DocumentTitle")
    DocumentsMetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#DocumentsMetadataConfiguration", name: "DocumentsMetadataConfiguration")
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Domain", name: "Domain", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(?!-)[A-Za-z0-9-].*(?<!-)$"})
    Duration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Duration", name: "Duration", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[0-9]+[s]$"})
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#EndpointType", name: "EndpointType")
    EnterpriseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#EnterpriseId", name: "EnterpriseId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z0-9]*$"})
    EntityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#EntityConfiguration", name: "EntityConfiguration")
    EntityDisplayData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#EntityDisplayData", name: "EntityDisplayData")
    EntityFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#EntityFilter", name: "EntityFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    EntityIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#EntityIdsList", name: "EntityIdsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    EntityPersonaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#EntityPersonaConfiguration", name: "EntityPersonaConfiguration")
    EntityPersonaConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#EntityPersonaConfigurationList", name: "EntityPersonaConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#EntityType", name: "EntityType")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    ExcludeMimeTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExcludeMimeTypesList", name: "ExcludeMimeTypesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 30}})
    ExcludeSharedDrivesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExcludeSharedDrivesList", name: "ExcludeSharedDrivesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ExcludeUserAccountsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExcludeUserAccountsList", name: "ExcludeUserAccountsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ExpandConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ExpandConfiguration", name: "ExpandConfiguration")
    ExpandedResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ExpandedResultItem", name: "ExpandedResultItem")
    ExpandedResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExpandedResultList", name: "ExpandedResultList")
    ExperienceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ExperienceConfiguration", name: "ExperienceConfiguration")
    ExperienceEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ExperienceEndpoint", name: "ExperienceEndpoint")
    ExperienceEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExperienceEndpoints", name: "ExperienceEndpoints", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ExperienceEntitiesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ExperienceEntitiesSummary", name: "ExperienceEntitiesSummary")
    ExperienceEntitiesSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExperienceEntitiesSummaryList", name: "ExperienceEntitiesSummaryList")
    ExperienceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ExperienceId", name: "ExperienceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ExperienceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ExperienceName", name: "ExperienceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ExperienceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ExperienceStatus", name: "ExperienceStatus")
    ExperiencesSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ExperiencesSummary", name: "ExperiencesSummary")
    ExperiencesSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ExperiencesSummaryList", name: "ExperiencesSummaryList")
    Facet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Facet", name: "Facet")
    FacetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FacetList", name: "FacetList")
    FacetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FacetResult", name: "FacetResult")
    FacetResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FacetResultList", name: "FacetResultList")
    FailedEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FailedEntity", name: "FailedEntity")
    FailedEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FailedEntityList", name: "FailedEntityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FailureReason", name: "FailureReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    FaqFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#FaqFileFormat", name: "FaqFileFormat")
    FaqId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FaqId", name: "FaqId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    FaqIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FaqIdsList", name: "FaqIdsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FaqName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FaqName", name: "FaqName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    FaqStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FaqStatistics", name: "FaqStatistics")
    FaqStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#FaqStatus", name: "FaqStatus")
    FaqSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FaqSummary", name: "FaqSummary")
    FaqSummaryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FaqSummaryItems", name: "FaqSummaryItems")
    FeaturedDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedDocument", name: "FeaturedDocument")
    FeaturedDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FeaturedDocumentList", name: "FeaturedDocumentList")
    FeaturedDocumentMissing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedDocumentMissing", name: "FeaturedDocumentMissing")
    FeaturedDocumentMissingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FeaturedDocumentMissingList", name: "FeaturedDocumentMissingList")
    FeaturedDocumentWithMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedDocumentWithMetadata", name: "FeaturedDocumentWithMetadata")
    FeaturedDocumentWithMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FeaturedDocumentWithMetadataList", name: "FeaturedDocumentWithMetadataList")
    FeaturedResultsConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedResultsConflictException", name: "FeaturedResultsConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    FeaturedResultsItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedResultsItem", name: "FeaturedResultsItem")
    FeaturedResultsItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FeaturedResultsItemList", name: "FeaturedResultsItemList")
    FeaturedResultsSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedResultsSet", name: "FeaturedResultsSet")
    FeaturedResultsSetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetDescription", name: "FeaturedResultsSetDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    FeaturedResultsSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetId", name: "FeaturedResultsSetId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z-0-9]*$"})
    FeaturedResultsSetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetIdList", name: "FeaturedResultsSetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    FeaturedResultsSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetName", name: "FeaturedResultsSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][ a-zA-Z0-9_-]*$"})
    FeaturedResultsSetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetStatus", name: "FeaturedResultsSetStatus")
    FeaturedResultsSetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetSummary", name: "FeaturedResultsSetSummary")
    FeaturedResultsSetSummaryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FeaturedResultsSetSummaryItems", name: "FeaturedResultsSetSummaryItems")
    FeedbackToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FeedbackToken", name: "FeedbackToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*.\\P{C}*$"})
    FileSystemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FileSystemId", name: "FileSystemId", traits: {"smithy.api#length" => {"min" => 11, "max" => 21}, "smithy.api#pattern" => "^(fs-[0-9a-f]{8,})$"})
    FolderId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#FolderId", name: "FolderId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    FolderIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#FolderIdList", name: "FolderIdList")
    FsxConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#FsxConfiguration", name: "FsxConfiguration")
    FsxFileSystemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#FsxFileSystemType", name: "FsxFileSystemType")
    GetQuerySuggestionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GetQuerySuggestionsRequest", name: "GetQuerySuggestionsRequest")
    GetQuerySuggestionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GetQuerySuggestionsResponse", name: "GetQuerySuggestionsResponse")
    GetSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GetSnapshotsRequest", name: "GetSnapshotsRequest")
    GetSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GetSnapshotsResponse", name: "GetSnapshotsResponse")
    GitHubConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GitHubConfiguration", name: "GitHubConfiguration")
    GitHubDocumentCrawlProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GitHubDocumentCrawlProperties", name: "GitHubDocumentCrawlProperties")
    GoogleDriveConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GoogleDriveConfiguration", name: "GoogleDriveConfiguration")
    GroupAttributeField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#GroupAttributeField", name: "GroupAttributeField", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\P{C}*$"})
    GroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#GroupId", name: "GroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    GroupMembers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GroupMembers", name: "GroupMembers")
    GroupOrderingIdSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#GroupOrderingIdSummaries", name: "GroupOrderingIdSummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GroupOrderingIdSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GroupOrderingIdSummary", name: "GroupOrderingIdSummary")
    GroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#GroupSummary", name: "GroupSummary")
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#Groups", name: "Groups", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    HierarchicalPrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#HierarchicalPrincipal", name: "HierarchicalPrincipal")
    HierarchicalPrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#HierarchicalPrincipalList", name: "HierarchicalPrincipalList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    Highlight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Highlight", name: "Highlight")
    HighlightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#HighlightList", name: "HighlightList")
    HighlightType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#HighlightType", name: "HighlightType")
    HookConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#HookConfiguration", name: "HookConfiguration")
    Host = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Host", name: "Host", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^([^\\s]*)$"})
    IdentityAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#IdentityAttributeName", name: "IdentityAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    Importance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#Importance", name: "Importance", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    IndexConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#IndexConfigurationSummary", name: "IndexConfigurationSummary")
    IndexConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#IndexConfigurationSummaryList", name: "IndexConfigurationSummaryList")
    IndexEdition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#IndexEdition", name: "IndexEdition")
    IndexFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#IndexFieldName", name: "IndexFieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^\\P{C}*$"})
    IndexId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#IndexId", name: "IndexId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    IndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#IndexName", name: "IndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    IndexStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#IndexStatistics", name: "IndexStatistics")
    IndexStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#IndexStatus", name: "IndexStatus")
    IndexedQuestionAnswersCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#IndexedQuestionAnswersCount", name: "IndexedQuestionAnswersCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    IndexedTextBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#IndexedTextBytes", name: "IndexedTextBytes", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    IndexedTextDocumentsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#IndexedTextDocumentsCount", name: "IndexedTextDocumentsCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    InlineCustomDocumentEnrichmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#InlineCustomDocumentEnrichmentConfiguration", name: "InlineCustomDocumentEnrichmentConfiguration")
    InlineCustomDocumentEnrichmentConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#InlineCustomDocumentEnrichmentConfigurationList", name: "InlineCustomDocumentEnrichmentConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#Integer", name: "Integer")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Interval = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#Interval", name: "Interval")
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueSubEntity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#IssueSubEntity", name: "IssueSubEntity")
    IssueSubEntityFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#IssueSubEntityFilter", name: "IssueSubEntityFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    IssueType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#IssueType", name: "IssueType")
    Issuer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Issuer", name: "Issuer", traits: {"smithy.api#length" => {"min" => 1, "max" => 65}, "smithy.api#pattern" => "^\\P{C}*$"})
    JiraAccountUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#JiraAccountUrl", name: "JiraAccountUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https:\\/\\/[a-zA-Z0-9_\\-\\.]+(\\.atlassian\\.net\\/)$"})
    JiraConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#JiraConfiguration", name: "JiraConfiguration")
    JiraStatus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#JiraStatus", name: "JiraStatus")
    JsonTokenTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#JsonTokenTypeConfiguration", name: "JsonTokenTypeConfiguration")
    JwtTokenTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#JwtTokenTypeConfiguration", name: "JwtTokenTypeConfiguration")
    KeyLocation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#KeyLocation", name: "KeyLocation")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    LambdaArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#LambdaArn", name: "LambdaArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^/arn:aws[a-zA-Z-]*:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?/$"})
    LanguageCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#LanguageCode", name: "LanguageCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 10}, "smithy.api#pattern" => "^[a-zA-Z-]*$"})
    ListAccessControlConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListAccessControlConfigurationsRequest", name: "ListAccessControlConfigurationsRequest")
    ListAccessControlConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListAccessControlConfigurationsResponse", name: "ListAccessControlConfigurationsResponse")
    ListDataSourceSyncJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListDataSourceSyncJobsRequest", name: "ListDataSourceSyncJobsRequest")
    ListDataSourceSyncJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListDataSourceSyncJobsResponse", name: "ListDataSourceSyncJobsResponse")
    ListDataSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListDataSourcesRequest", name: "ListDataSourcesRequest")
    ListDataSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListDataSourcesResponse", name: "ListDataSourcesResponse")
    ListEntityPersonasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListEntityPersonasRequest", name: "ListEntityPersonasRequest")
    ListEntityPersonasResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListEntityPersonasResponse", name: "ListEntityPersonasResponse")
    ListExperienceEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListExperienceEntitiesRequest", name: "ListExperienceEntitiesRequest")
    ListExperienceEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListExperienceEntitiesResponse", name: "ListExperienceEntitiesResponse")
    ListExperiencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListExperiencesRequest", name: "ListExperiencesRequest")
    ListExperiencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListExperiencesResponse", name: "ListExperiencesResponse")
    ListFaqsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListFaqsRequest", name: "ListFaqsRequest")
    ListFaqsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListFaqsResponse", name: "ListFaqsResponse")
    ListFeaturedResultsSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListFeaturedResultsSetsRequest", name: "ListFeaturedResultsSetsRequest")
    ListFeaturedResultsSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListFeaturedResultsSetsResponse", name: "ListFeaturedResultsSetsResponse")
    ListGroupsOlderThanOrderingIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListGroupsOlderThanOrderingIdRequest", name: "ListGroupsOlderThanOrderingIdRequest")
    ListGroupsOlderThanOrderingIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListGroupsOlderThanOrderingIdResponse", name: "ListGroupsOlderThanOrderingIdResponse")
    ListIndicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListIndicesRequest", name: "ListIndicesRequest")
    ListIndicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListIndicesResponse", name: "ListIndicesResponse")
    ListOfGroupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ListOfGroupSummaries", name: "ListOfGroupSummaries")
    ListQuerySuggestionsBlockListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListQuerySuggestionsBlockListsRequest", name: "ListQuerySuggestionsBlockListsRequest")
    ListQuerySuggestionsBlockListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListQuerySuggestionsBlockListsResponse", name: "ListQuerySuggestionsBlockListsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListThesauriRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListThesauriRequest", name: "ListThesauriRequest")
    ListThesauriResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ListThesauriResponse", name: "ListThesauriResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#Long", name: "Long")
    LookBackPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#LookBackPeriod", name: "LookBackPeriod", traits: {"smithy.api#range" => {"min" => 0, "max" => 168}})
    MaxContentSizePerPageInMegaBytes = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.kendra#MaxContentSizePerPageInMegaBytes", name: "MaxContentSizePerPageInMegaBytes", traits: {"smithy.api#range" => {"min" => 1.0e-06, "max" => 50}})
    MaxLinksPerPage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxLinksPerPage", name: "MaxLinksPerPage", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxResultsIntegerForListAccessControlConfigurationsRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListAccessControlConfigurationsRequest", name: "MaxResultsIntegerForListAccessControlConfigurationsRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListDataSourceSyncJobsRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListDataSourceSyncJobsRequest", name: "MaxResultsIntegerForListDataSourceSyncJobsRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDataSourcesRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListDataSourcesRequest", name: "MaxResultsIntegerForListDataSourcesRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListEntityPersonasRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListEntityPersonasRequest", name: "MaxResultsIntegerForListEntityPersonasRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListExperiencesRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListExperiencesRequest", name: "MaxResultsIntegerForListExperiencesRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListFaqsRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListFaqsRequest", name: "MaxResultsIntegerForListFaqsRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListFeaturedResultsSetsRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListFeaturedResultsSetsRequest", name: "MaxResultsIntegerForListFeaturedResultsSetsRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListIndicesRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListIndicesRequest", name: "MaxResultsIntegerForListIndicesRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListPrincipalsRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListPrincipalsRequest", name: "MaxResultsIntegerForListPrincipalsRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListQuerySuggestionsBlockLists = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListQuerySuggestionsBlockLists", name: "MaxResultsIntegerForListQuerySuggestionsBlockLists", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListThesauriRequest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxResultsIntegerForListThesauriRequest", name: "MaxResultsIntegerForListThesauriRequest", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxUrlsPerMinuteCrawlRate = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MaxUrlsPerMinuteCrawlRate", name: "MaxUrlsPerMinuteCrawlRate", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    MemberGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#MemberGroup", name: "MemberGroup")
    MemberGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#MemberGroups", name: "MemberGroups", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    MemberUser = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#MemberUser", name: "MemberUser")
    MemberUsers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#MemberUsers", name: "MemberUsers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    MetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#MetricType", name: "MetricType")
    MetricValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#MetricValue", name: "MetricValue", traits: {"smithy.api#pattern" => "^(([1-9][0-9]*)|0)$"})
    MimeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#MimeType", name: "MimeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\P{C}*$"})
    MinimumNumberOfQueryingUsers = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MinimumNumberOfQueryingUsers", name: "MinimumNumberOfQueryingUsers", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MinimumQueryCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#MinimumQueryCount", name: "MinimumQueryCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MissingAttributeKeyStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#MissingAttributeKeyStrategy", name: "MissingAttributeKeyStrategy")
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#Mode", name: "Mode")
    NameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#NameType", name: "NameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\S\\s]*$", "smithy.api#sensitive" => {}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 800}})
    ObjectBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kendra#ObjectBoolean", name: "ObjectBoolean")
    OnPremiseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#OnPremiseConfiguration", name: "OnPremiseConfiguration")
    OneDriveConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#OneDriveConfiguration", name: "OneDriveConfiguration")
    OneDriveUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#OneDriveUser", name: "OneDriveUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?!\\s).+@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$"})
    OneDriveUserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#OneDriveUserList", name: "OneDriveUserList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    OneDriveUsers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#OneDriveUsers", name: "OneDriveUsers")
    Order = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#Order", name: "Order")
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#OrganizationId", name: "OrganizationId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^d-[0-9a-fA-F]{10}$"})
    OrganizationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#OrganizationName", name: "OrganizationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 60}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]+$"})
    Persona = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#Persona", name: "Persona")
    PersonasSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#PersonasSummary", name: "PersonasSummary")
    PersonasSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#PersonasSummaryList", name: "PersonasSummaryList")
    Port = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#Port", name: "Port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    Principal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Principal", name: "Principal")
    PrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#PrincipalList", name: "PrincipalList")
    PrincipalMappingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#PrincipalMappingStatus", name: "PrincipalMappingStatus")
    PrincipalName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#PrincipalName", name: "PrincipalName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^\\P{C}*$"})
    PrincipalOrderingId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#PrincipalOrderingId", name: "PrincipalOrderingId", traits: {"smithy.api#range" => {"min" => 0, "max" => 32535158400000}})
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#PrincipalType", name: "PrincipalType")
    PrivateChannelFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#PrivateChannelFilter", name: "PrivateChannelFilter")
    Project = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#Project", name: "Project")
    ProxyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ProxyConfiguration", name: "ProxyConfiguration")
    PublicChannelFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#PublicChannelFilter", name: "PublicChannelFilter")
    PutPrincipalMappingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#PutPrincipalMappingRequest", name: "PutPrincipalMappingRequest")
    QueryCapacityUnit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#QueryCapacityUnit", name: "QueryCapacityUnit", traits: {"smithy.api#range" => {"min" => 0}})
    QueryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#QueryId", name: "QueryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    QueryIdentifiersEnclosingOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#QueryIdentifiersEnclosingOption", name: "QueryIdentifiersEnclosingOption")
    QueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#QueryRequest", name: "QueryRequest")
    QueryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#QueryResult", name: "QueryResult")
    QueryResultFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#QueryResultFormat", name: "QueryResultFormat")
    QueryResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#QueryResultItem", name: "QueryResultItem")
    QueryResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#QueryResultItemList", name: "QueryResultItemList")
    QueryResultType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#QueryResultType", name: "QueryResultType")
    QuerySuggestionsBlockListId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#QuerySuggestionsBlockListId", name: "QuerySuggestionsBlockListId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    QuerySuggestionsBlockListName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#QuerySuggestionsBlockListName", name: "QuerySuggestionsBlockListName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$"})
    QuerySuggestionsBlockListStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#QuerySuggestionsBlockListStatus", name: "QuerySuggestionsBlockListStatus")
    QuerySuggestionsBlockListSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#QuerySuggestionsBlockListSummary", name: "QuerySuggestionsBlockListSummary")
    QuerySuggestionsBlockListSummaryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#QuerySuggestionsBlockListSummaryItems", name: "QuerySuggestionsBlockListSummaryItems")
    QuerySuggestionsId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#QuerySuggestionsId", name: "QuerySuggestionsId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    QuerySuggestionsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#QuerySuggestionsStatus", name: "QuerySuggestionsStatus")
    QueryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#QueryText", name: "QueryText")
    QueryTextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#QueryTextList", name: "QueryTextList", traits: {"smithy.api#length" => {"min" => 0, "max" => 49}})
    QuipConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#QuipConfiguration", name: "QuipConfiguration")
    ReadAccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ReadAccessType", name: "ReadAccessType")
    Relevance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Relevance", name: "Relevance")
    RelevanceFeedback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#RelevanceFeedback", name: "RelevanceFeedback")
    RelevanceFeedbackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#RelevanceFeedbackList", name: "RelevanceFeedbackList")
    RelevanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#RelevanceType", name: "RelevanceType")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]+$"})
    RepositoryNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#RepositoryNames", name: "RepositoryNames")
    ResourceAlreadyExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ResourceAlreadyExistException", name: "ResourceAlreadyExistException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ResultId", name: "ResultId", traits: {"smithy.api#length" => {"min" => 1, "max" => 73}})
    RetrieveRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#RetrieveRequest", name: "RetrieveRequest")
    RetrieveResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#RetrieveResult", name: "RetrieveResult")
    RetrieveResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#RetrieveResultItem", name: "RetrieveResultItem")
    RetrieveResultItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#RetrieveResultItemList", name: "RetrieveResultItemList")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3DataSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#S3DataSourceConfiguration", name: "S3DataSourceConfiguration")
    S3ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#S3ObjectKey", name: "S3ObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3Path = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#S3Path", name: "S3Path")
    SaaSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SaaSConfiguration", name: "SaaSConfiguration")
    SalesforceChatterFeedConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceChatterFeedConfiguration", name: "SalesforceChatterFeedConfiguration")
    SalesforceChatterFeedIncludeFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SalesforceChatterFeedIncludeFilterType", name: "SalesforceChatterFeedIncludeFilterType")
    SalesforceChatterFeedIncludeFilterTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SalesforceChatterFeedIncludeFilterTypes", name: "SalesforceChatterFeedIncludeFilterTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    SalesforceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceConfiguration", name: "SalesforceConfiguration")
    SalesforceCustomKnowledgeArticleTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceCustomKnowledgeArticleTypeConfiguration", name: "SalesforceCustomKnowledgeArticleTypeConfiguration")
    SalesforceCustomKnowledgeArticleTypeConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SalesforceCustomKnowledgeArticleTypeConfigurationList", name: "SalesforceCustomKnowledgeArticleTypeConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SalesforceCustomKnowledgeArticleTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SalesforceCustomKnowledgeArticleTypeName", name: "SalesforceCustomKnowledgeArticleTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    SalesforceKnowledgeArticleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceKnowledgeArticleConfiguration", name: "SalesforceKnowledgeArticleConfiguration")
    SalesforceKnowledgeArticleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SalesforceKnowledgeArticleState", name: "SalesforceKnowledgeArticleState")
    SalesforceKnowledgeArticleStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SalesforceKnowledgeArticleStateList", name: "SalesforceKnowledgeArticleStateList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    SalesforceStandardKnowledgeArticleTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceStandardKnowledgeArticleTypeConfiguration", name: "SalesforceStandardKnowledgeArticleTypeConfiguration")
    SalesforceStandardObjectAttachmentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceStandardObjectAttachmentConfiguration", name: "SalesforceStandardObjectAttachmentConfiguration")
    SalesforceStandardObjectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SalesforceStandardObjectConfiguration", name: "SalesforceStandardObjectConfiguration")
    SalesforceStandardObjectConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SalesforceStandardObjectConfigurationList", name: "SalesforceStandardObjectConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 17}})
    SalesforceStandardObjectName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SalesforceStandardObjectName", name: "SalesforceStandardObjectName")
    ScanSchedule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ScanSchedule", name: "ScanSchedule")
    ScoreAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ScoreAttributes", name: "ScoreAttributes")
    ScoreConfidence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ScoreConfidence", name: "ScoreConfidence")
    Search = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Search", name: "Search")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SecretArn", name: "SecretArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SecurityGroupIdList", name: "SecurityGroupIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SeedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SeedUrl", name: "SeedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(https?):\\/\\/([^\\s]*)$"})
    SeedUrlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SeedUrlConfiguration", name: "SeedUrlConfiguration")
    SeedUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SeedUrlList", name: "SeedUrlList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ServerSideEncryptionConfiguration", name: "ServerSideEncryptionConfiguration")
    ServiceNowAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ServiceNowAuthenticationType", name: "ServiceNowAuthenticationType")
    ServiceNowBuildVersionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ServiceNowBuildVersionType", name: "ServiceNowBuildVersionType")
    ServiceNowConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ServiceNowConfiguration", name: "ServiceNowConfiguration")
    ServiceNowHostUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ServiceNowHostUrl", name: "ServiceNowHostUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?!(^(https?|ftp|file):\\/\\/))[a-z0-9-]+(\\.service-now\\.com)$"})
    ServiceNowKnowledgeArticleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ServiceNowKnowledgeArticleConfiguration", name: "ServiceNowKnowledgeArticleConfiguration")
    ServiceNowKnowledgeArticleFilterQuery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ServiceNowKnowledgeArticleFilterQuery", name: "ServiceNowKnowledgeArticleFilterQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    ServiceNowServiceCatalogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ServiceNowServiceCatalogConfiguration", name: "ServiceNowServiceCatalogConfiguration")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharePointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SharePointConfiguration", name: "SharePointConfiguration")
    SharePointOnlineAuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SharePointOnlineAuthenticationType", name: "SharePointOnlineAuthenticationType")
    SharePointUrlList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SharePointUrlList", name: "SharePointUrlList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SharePointVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SharePointVersion", name: "SharePointVersion")
    SharedDriveId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SharedDriveId", name: "SharedDriveId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\P{C}*$"})
    SinceCrawlDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SinceCrawlDate", name: "SinceCrawlDate", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^(20\\d{2})-(0?[1-9]|1[0-2])-(0?[1-9]|1\\d|2\\d|3[01])$"})
    SiteId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SiteId", name: "SiteId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    SiteMap = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SiteMap", name: "SiteMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(https?):\\/\\/([^\\s]*)$"})
    SiteMapsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SiteMapsConfiguration", name: "SiteMapsConfiguration")
    SiteMapsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SiteMapsList", name: "SiteMapsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    SiteUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SiteUrl", name: "SiteUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https:\\/\\/[a-zA-Z0-9_\\-\\.]+$"})
    SlackConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SlackConfiguration", name: "SlackConfiguration")
    SlackEntity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SlackEntity", name: "SlackEntity")
    SlackEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SlackEntityList", name: "SlackEntityList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    SnapshotsDataHeaderFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SnapshotsDataHeaderFields", name: "SnapshotsDataHeaderFields")
    SnapshotsDataRecord = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SnapshotsDataRecord", name: "SnapshotsDataRecord")
    SnapshotsDataRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SnapshotsDataRecords", name: "SnapshotsDataRecords")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SortOrder", name: "SortOrder")
    SortingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SortingConfiguration", name: "SortingConfiguration")
    SortingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SortingConfigurationList", name: "SortingConfigurationList", traits: {"smithy.api#length" => {"min" => 1}})
    SourceDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SourceDocument", name: "SourceDocument")
    SourceDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SourceDocuments", name: "SourceDocuments")
    SpellCorrectedQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SpellCorrectedQuery", name: "SpellCorrectedQuery")
    SpellCorrectedQueryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SpellCorrectedQueryList", name: "SpellCorrectedQueryList")
    SpellCorrectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SpellCorrectionConfiguration", name: "SpellCorrectionConfiguration")
    SqlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SqlConfiguration", name: "SqlConfiguration")
    StartDataSourceSyncJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#StartDataSourceSyncJobRequest", name: "StartDataSourceSyncJobRequest")
    StartDataSourceSyncJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#StartDataSourceSyncJobResponse", name: "StartDataSourceSyncJobResponse")
    Status = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Status", name: "Status")
    StopDataSourceSyncJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#StopDataSourceSyncJobRequest", name: "StopDataSourceSyncJobRequest")
    StorageCapacityUnit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#StorageCapacityUnit", name: "StorageCapacityUnit", traits: {"smithy.api#range" => {"min" => 0}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#String", name: "String", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#StringList", name: "StringList")
    SubmitFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SubmitFeedbackRequest", name: "SubmitFeedbackRequest")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[\\-0-9a-zA-Z]+$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SubnetIdList", name: "SubnetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    SuggestableConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SuggestableConfig", name: "SuggestableConfig")
    SuggestableConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SuggestableConfigList", name: "SuggestableConfigList")
    SuggestedQueryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SuggestedQueryText", name: "SuggestedQueryText", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Suggestion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Suggestion", name: "Suggestion")
    SuggestionHighlight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SuggestionHighlight", name: "SuggestionHighlight")
    SuggestionHighlightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SuggestionHighlightList", name: "SuggestionHighlightList")
    SuggestionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SuggestionList", name: "SuggestionList")
    SuggestionQueryText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#SuggestionQueryText", name: "SuggestionQueryText", traits: {"smithy.api#pattern" => "^\\P{C}*$"})
    SuggestionTextWithHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SuggestionTextWithHighlights", name: "SuggestionTextWithHighlights")
    SuggestionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#SuggestionType", name: "SuggestionType")
    SuggestionTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#SuggestionTypes", name: "SuggestionTypes")
    SuggestionValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#SuggestionValue", name: "SuggestionValue")
    TableCell = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TableCell", name: "TableCell")
    TableCellList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#TableCellList", name: "TableCellList")
    TableExcerpt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TableExcerpt", name: "TableExcerpt")
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]*$"})
    TableRow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TableRow", name: "TableRow")
    TableRowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#TableRowList", name: "TableRowList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TeamId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#TeamId", name: "TeamId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z0-9]*$"})
    Template = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.kendra#Template", name: "Template")
    TemplateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TemplateConfiguration", name: "TemplateConfiguration")
    TenantDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#TenantDomain", name: "TenantDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\\.)+[a-z]{2,}$"})
    TextDocumentStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TextDocumentStatistics", name: "TextDocumentStatistics")
    TextWithHighlights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TextWithHighlights", name: "TextWithHighlights")
    ThesaurusId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ThesaurusId", name: "ThesaurusId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ThesaurusName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ThesaurusName", name: "ThesaurusName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ThesaurusStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#ThesaurusStatus", name: "ThesaurusStatus")
    ThesaurusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ThesaurusSummary", name: "ThesaurusSummary")
    ThesaurusSummaryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#ThesaurusSummaryItems", name: "ThesaurusSummaryItems")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#TimeRange", name: "TimeRange")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kendra#Timestamp", name: "Timestamp")
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Title", name: "Title")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#pattern" => "^\\P{C}*$"})
    TopDocumentAttributeValueCountPairsSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kendra#TopDocumentAttributeValueCountPairsSize", name: "TopDocumentAttributeValueCountPairsSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 5000}})
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#Type", name: "Type")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAccessControlConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateAccessControlConfigurationRequest", name: "UpdateAccessControlConfigurationRequest")
    UpdateAccessControlConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateAccessControlConfigurationResponse", name: "UpdateAccessControlConfigurationResponse")
    UpdateDataSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateDataSourceRequest", name: "UpdateDataSourceRequest")
    UpdateExperienceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateExperienceRequest", name: "UpdateExperienceRequest")
    UpdateFeaturedResultsSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateFeaturedResultsSetRequest", name: "UpdateFeaturedResultsSetRequest")
    UpdateFeaturedResultsSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateFeaturedResultsSetResponse", name: "UpdateFeaturedResultsSetResponse")
    UpdateIndexRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateIndexRequest", name: "UpdateIndexRequest")
    UpdateQuerySuggestionsBlockListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateQuerySuggestionsBlockListRequest", name: "UpdateQuerySuggestionsBlockListRequest")
    UpdateQuerySuggestionsConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateQuerySuggestionsConfigRequest", name: "UpdateQuerySuggestionsConfigRequest")
    UpdateThesaurusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UpdateThesaurusRequest", name: "UpdateThesaurusRequest")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(https?|ftp|file):\\/\\/([^\\s]*)$"})
    Urls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Urls", name: "Urls")
    UserAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#UserAccount", name: "UserAccount", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\P{C}*$"})
    UserContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UserContext", name: "UserContext")
    UserContextPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#UserContextPolicy", name: "UserContextPolicy")
    UserGroupResolutionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UserGroupResolutionConfiguration", name: "UserGroupResolutionConfiguration")
    UserGroupResolutionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#UserGroupResolutionMode", name: "UserGroupResolutionMode")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    UserIdentityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UserIdentityConfiguration", name: "UserIdentityConfiguration")
    UserNameAttributeField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#UserNameAttributeField", name: "UserNameAttributeField", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\P{C}*$"})
    UserTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#UserTokenConfiguration", name: "UserTokenConfiguration")
    UserTokenConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#UserTokenConfigurationList", name: "UserTokenConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValueImportanceMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kendra#ValueImportanceMap", name: "ValueImportanceMap")
    ValueImportanceMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#ValueImportanceMapKey", name: "ValueImportanceMapKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    VisitorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#VisitorId", name: "VisitorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    VpcSecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#VpcSecurityGroupId", name: "VpcSecurityGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    Warning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#Warning", name: "Warning")
    WarningCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#WarningCode", name: "WarningCode")
    WarningList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kendra#WarningList", name: "WarningList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    WarningMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kendra#WarningMessage", name: "WarningMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\P{C}*$"})
    WebCrawlerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#WebCrawlerConfiguration", name: "WebCrawlerConfiguration")
    WebCrawlerMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kendra#WebCrawlerMode", name: "WebCrawlerMode")
    WorkDocsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kendra#WorkDocsConfiguration", name: "WorkDocsConfiguration")

    AccessControlConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationId, name: "Id", traits: {"smithy.api#required" => {}}))
    AccessControlConfigurationSummary.type = Types::AccessControlConfigurationSummary
    AccessControlConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationSummary, name: "member"))
    AccessControlListConfiguration.add_member(:key_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "KeyPath"))
    AccessControlListConfiguration.type = Types::AccessControlListConfiguration
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AclConfiguration.add_member(:allowed_groups_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "AllowedGroupsColumnName", traits: {"smithy.api#required" => {}}))
    AclConfiguration.type = Types::AclConfiguration
    AdditionalResultAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#required" => {}}))
    AdditionalResultAttribute.add_member(:value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResultAttributeValueType, name: "ValueType", traits: {"smithy.api#required" => {}}))
    AdditionalResultAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResultAttributeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    AdditionalResultAttribute.type = Types::AdditionalResultAttribute
    AdditionalResultAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResultAttribute, name: "member"))
    AdditionalResultAttributeValue.add_member(:text_with_highlights_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "TextWithHighlightsValue"))
    AdditionalResultAttributeValue.type = Types::AdditionalResultAttributeValue
    AdditionalResultAttributeValueType.add_member(:text_with_highlights_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_WITH_HIGHLIGHTS_VALUE", traits: {"smithy.api#enumValue" => "TEXT_WITH_HIGHLIGHTS_VALUE"}))
    AlfrescoConfiguration.add_member(:site_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteUrl, name: "SiteUrl", traits: {"smithy.api#required" => {}}))
    AlfrescoConfiguration.add_member(:site_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteId, name: "SiteId", traits: {"smithy.api#required" => {}}))
    AlfrescoConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    AlfrescoConfiguration.add_member(:ssl_certificate_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SslCertificateS3Path", traits: {"smithy.api#required" => {}}))
    AlfrescoConfiguration.add_member(:crawl_system_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlSystemFolders", traits: {"smithy.api#default" => false}))
    AlfrescoConfiguration.add_member(:crawl_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlComments", traits: {"smithy.api#default" => false}))
    AlfrescoConfiguration.add_member(:entity_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityFilter, name: "EntityFilter"))
    AlfrescoConfiguration.add_member(:document_library_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "DocumentLibraryFieldMappings"))
    AlfrescoConfiguration.add_member(:blog_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "BlogFieldMappings"))
    AlfrescoConfiguration.add_member(:wiki_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "WikiFieldMappings"))
    AlfrescoConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    AlfrescoConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    AlfrescoConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    AlfrescoConfiguration.type = Types::AlfrescoConfiguration
    AlfrescoEntity.add_member(:wiki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "wiki", traits: {"smithy.api#enumValue" => "wiki"}))
    AlfrescoEntity.add_member(:blog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "blog", traits: {"smithy.api#enumValue" => "blog"}))
    AlfrescoEntity.add_member(:document_library, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "documentLibrary", traits: {"smithy.api#enumValue" => "documentLibrary"}))
    AssociateEntitiesToExperienceFailedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedEntity, name: "member"))
    AssociateEntitiesToExperienceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    AssociateEntitiesToExperienceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    AssociateEntitiesToExperienceRequest.add_member(:entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateEntityList, name: "EntityList", traits: {"smithy.api#required" => {}}))
    AssociateEntitiesToExperienceRequest.type = Types::AssociateEntitiesToExperienceRequest
    AssociateEntitiesToExperienceResponse.add_member(:failed_entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociateEntitiesToExperienceFailedEntityList, name: "FailedEntityList"))
    AssociateEntitiesToExperienceResponse.type = Types::AssociateEntitiesToExperienceResponse
    AssociateEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityConfiguration, name: "member"))
    AssociatePersonasToEntitiesRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    AssociatePersonasToEntitiesRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    AssociatePersonasToEntitiesRequest.add_member(:personas, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityPersonaConfigurationList, name: "Personas", traits: {"smithy.api#required" => {}}))
    AssociatePersonasToEntitiesRequest.type = Types::AssociatePersonasToEntitiesRequest
    AssociatePersonasToEntitiesResponse.add_member(:failed_entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedEntityList, name: "FailedEntityList"))
    AssociatePersonasToEntitiesResponse.type = Types::AssociatePersonasToEntitiesResponse
    AttributeFilter.add_member(:and_all_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilterList, name: "AndAllFilters"))
    AttributeFilter.add_member(:or_all_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilterList, name: "OrAllFilters"))
    AttributeFilter.add_member(:not_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, name: "NotFilter"))
    AttributeFilter.add_member(:equals_to, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "EqualsTo"))
    AttributeFilter.add_member(:contains_all, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "ContainsAll"))
    AttributeFilter.add_member(:contains_any, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "ContainsAny"))
    AttributeFilter.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "GreaterThan"))
    AttributeFilter.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "GreaterThanOrEquals"))
    AttributeFilter.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "LessThan"))
    AttributeFilter.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "LessThanOrEquals"))
    AttributeFilter.type = Types::AttributeFilter
    AttributeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, name: "member"))
    AttributeSuggestionsDescribeConfig.add_member(:suggestable_config_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestableConfigList, name: "SuggestableConfigList"))
    AttributeSuggestionsDescribeConfig.add_member(:attribute_suggestions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeSuggestionsMode, name: "AttributeSuggestionsMode"))
    AttributeSuggestionsDescribeConfig.type = Types::AttributeSuggestionsDescribeConfig
    AttributeSuggestionsGetConfig.add_member(:suggestion_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKeyList, name: "SuggestionAttributes"))
    AttributeSuggestionsGetConfig.add_member(:additional_response_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKeyList, name: "AdditionalResponseAttributes"))
    AttributeSuggestionsGetConfig.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, name: "AttributeFilter"))
    AttributeSuggestionsGetConfig.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "UserContext"))
    AttributeSuggestionsGetConfig.type = Types::AttributeSuggestionsGetConfig
    AttributeSuggestionsMode.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AttributeSuggestionsMode.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AttributeSuggestionsUpdateConfig.add_member(:suggestable_config_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestableConfigList, name: "SuggestableConfigList"))
    AttributeSuggestionsUpdateConfig.add_member(:attribute_suggestions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeSuggestionsMode, name: "AttributeSuggestionsMode"))
    AttributeSuggestionsUpdateConfig.type = Types::AttributeSuggestionsUpdateConfig
    AuthenticationConfiguration.add_member(:basic_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthenticationConfigurationList, name: "BasicAuthentication"))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    BasicAuthenticationConfiguration.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host", traits: {"smithy.api#required" => {}}))
    BasicAuthenticationConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "Port", traits: {"smithy.api#required" => {}}))
    BasicAuthenticationConfiguration.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "Credentials", traits: {"smithy.api#required" => {}}))
    BasicAuthenticationConfiguration.type = Types::BasicAuthenticationConfiguration
    BasicAuthenticationConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthenticationConfiguration, name: "member"))
    BatchDeleteDocumentRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:document_id_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdList, name: "DocumentIdList", traits: {"smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:data_source_sync_job_metric_target, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobMetricTarget, name: "DataSourceSyncJobMetricTarget"))
    BatchDeleteDocumentRequest.type = Types::BatchDeleteDocumentRequest
    BatchDeleteDocumentResponse.add_member(:failed_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteDocumentResponseFailedDocuments, name: "FailedDocuments"))
    BatchDeleteDocumentResponse.type = Types::BatchDeleteDocumentResponse
    BatchDeleteDocumentResponseFailedDocument.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id"))
    BatchDeleteDocumentResponseFailedDocument.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    BatchDeleteDocumentResponseFailedDocument.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    BatchDeleteDocumentResponseFailedDocument.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    BatchDeleteDocumentResponseFailedDocument.type = Types::BatchDeleteDocumentResponseFailedDocument
    BatchDeleteDocumentResponseFailedDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteDocumentResponseFailedDocument, name: "member"))
    BatchDeleteFeaturedResultsSetError.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchDeleteFeaturedResultsSetError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#required" => {}}))
    BatchDeleteFeaturedResultsSetError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage", traits: {"smithy.api#required" => {}}))
    BatchDeleteFeaturedResultsSetError.type = Types::BatchDeleteFeaturedResultsSetError
    BatchDeleteFeaturedResultsSetErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFeaturedResultsSetError, name: "member"))
    BatchDeleteFeaturedResultsSetRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    BatchDeleteFeaturedResultsSetRequest.add_member(:featured_results_set_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetIdList, name: "FeaturedResultsSetIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteFeaturedResultsSetRequest.type = Types::BatchDeleteFeaturedResultsSetRequest
    BatchDeleteFeaturedResultsSetResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDeleteFeaturedResultsSetErrors, name: "Errors", traits: {"smithy.api#required" => {}}))
    BatchDeleteFeaturedResultsSetResponse.type = Types::BatchDeleteFeaturedResultsSetResponse
    BatchGetDocumentStatusRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    BatchGetDocumentStatusRequest.add_member(:document_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentInfoList, name: "DocumentInfoList", traits: {"smithy.api#required" => {}}))
    BatchGetDocumentStatusRequest.type = Types::BatchGetDocumentStatusRequest
    BatchGetDocumentStatusResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetDocumentStatusResponseErrors, name: "Errors"))
    BatchGetDocumentStatusResponse.add_member(:document_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatusList, name: "DocumentStatusList"))
    BatchGetDocumentStatusResponse.type = Types::BatchGetDocumentStatusResponse
    BatchGetDocumentStatusResponseError.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    BatchGetDocumentStatusResponseError.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    BatchGetDocumentStatusResponseError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    BatchGetDocumentStatusResponseError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    BatchGetDocumentStatusResponseError.type = Types::BatchGetDocumentStatusResponseError
    BatchGetDocumentStatusResponseErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetDocumentStatusResponseError, name: "member"))
    BatchPutDocumentRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    BatchPutDocumentRequest.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "Documents", traits: {"smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:custom_document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDocumentEnrichmentConfiguration, name: "CustomDocumentEnrichmentConfiguration"))
    BatchPutDocumentRequest.type = Types::BatchPutDocumentRequest
    BatchPutDocumentResponse.add_member(:failed_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutDocumentResponseFailedDocuments, name: "FailedDocuments"))
    BatchPutDocumentResponse.type = Types::BatchPutDocumentResponse
    BatchPutDocumentResponseFailedDocument.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id"))
    BatchPutDocumentResponseFailedDocument.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    BatchPutDocumentResponseFailedDocument.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    BatchPutDocumentResponseFailedDocument.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    BatchPutDocumentResponseFailedDocument.type = Types::BatchPutDocumentResponseFailedDocument
    BatchPutDocumentResponseFailedDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchPutDocumentResponseFailedDocument, name: "member"))
    BoxConfiguration.add_member(:enterprise_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EnterpriseId, name: "EnterpriseId", traits: {"smithy.api#required" => {}}))
    BoxConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    BoxConfiguration.add_member(:use_change_log, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseChangeLog", traits: {"smithy.api#default" => false}))
    BoxConfiguration.add_member(:crawl_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlComments", traits: {"smithy.api#default" => false}))
    BoxConfiguration.add_member(:crawl_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlTasks", traits: {"smithy.api#default" => false}))
    BoxConfiguration.add_member(:crawl_web_links, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlWebLinks", traits: {"smithy.api#default" => false}))
    BoxConfiguration.add_member(:file_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FileFieldMappings"))
    BoxConfiguration.add_member(:task_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "TaskFieldMappings"))
    BoxConfiguration.add_member(:comment_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "CommentFieldMappings"))
    BoxConfiguration.add_member(:web_link_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "WebLinkFieldMappings"))
    BoxConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    BoxConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    BoxConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    BoxConfiguration.type = Types::BoxConfiguration
    CapacityUnitsConfiguration.add_member(:storage_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageCapacityUnit, name: "StorageCapacityUnits", traits: {"smithy.api#required" => {}}))
    CapacityUnitsConfiguration.add_member(:query_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryCapacityUnit, name: "QueryCapacityUnits", traits: {"smithy.api#required" => {}}))
    CapacityUnitsConfiguration.type = Types::CapacityUnitsConfiguration
    ChangeDetectingColumns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "member"))
    ClearQuerySuggestionsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ClearQuerySuggestionsRequest.type = Types::ClearQuerySuggestionsRequest
    ClickFeedback.add_member(:result_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "ResultId", traits: {"smithy.api#required" => {}}))
    ClickFeedback.add_member(:click_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ClickTime", traits: {"smithy.api#required" => {}}))
    ClickFeedback.type = Types::ClickFeedback
    ClickFeedbackList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClickFeedback, name: "member"))
    CollapseConfiguration.add_member(:document_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "DocumentAttributeKey", traits: {"smithy.api#required" => {}}))
    CollapseConfiguration.add_member(:sorting_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SortingConfigurationList, name: "SortingConfigurations"))
    CollapseConfiguration.add_member(:missing_attribute_key_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: MissingAttributeKeyStrategy, name: "MissingAttributeKeyStrategy"))
    CollapseConfiguration.add_member(:expand, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Expand", traits: {"smithy.api#default" => false}))
    CollapseConfiguration.add_member(:expand_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpandConfiguration, name: "ExpandConfiguration"))
    CollapseConfiguration.type = Types::CollapseConfiguration
    CollapsedResultDetail.add_member(:document_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "DocumentAttribute", traits: {"smithy.api#required" => {}}))
    CollapsedResultDetail.add_member(:expanded_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpandedResultList, name: "ExpandedResults"))
    CollapsedResultDetail.type = Types::CollapsedResultDetail
    ColumnConfiguration.add_member(:document_id_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "DocumentIdColumnName", traits: {"smithy.api#required" => {}}))
    ColumnConfiguration.add_member(:document_data_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "DocumentDataColumnName", traits: {"smithy.api#required" => {}}))
    ColumnConfiguration.add_member(:document_title_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnName, name: "DocumentTitleColumnName"))
    ColumnConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    ColumnConfiguration.add_member(:change_detecting_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeDetectingColumns, name: "ChangeDetectingColumns", traits: {"smithy.api#required" => {}}))
    ColumnConfiguration.type = Types::ColumnConfiguration
    ConditionOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThan", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    ConditionOperator.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreaterThanOrEquals", traits: {"smithy.api#enumValue" => "GreaterThanOrEquals"}))
    ConditionOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThan", traits: {"smithy.api#enumValue" => "LessThan"}))
    ConditionOperator.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LessThanOrEquals", traits: {"smithy.api#enumValue" => "LessThanOrEquals"}))
    ConditionOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Equals", traits: {"smithy.api#enumValue" => "Equals"}))
    ConditionOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotEquals", traits: {"smithy.api#enumValue" => "NotEquals"}))
    ConditionOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Contains", traits: {"smithy.api#enumValue" => "Contains"}))
    ConditionOperator.add_member(:not_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotContains", traits: {"smithy.api#enumValue" => "NotContains"}))
    ConditionOperator.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Exists", traits: {"smithy.api#enumValue" => "Exists"}))
    ConditionOperator.add_member(:not_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotExists", traits: {"smithy.api#enumValue" => "NotExists"}))
    ConditionOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BeginsWith", traits: {"smithy.api#enumValue" => "BeginsWith"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    ConflictingItem.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "QueryText"))
    ConflictingItem.add_member(:set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SetName"))
    ConflictingItem.add_member(:set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SetId"))
    ConflictingItem.type = Types::ConflictingItem
    ConflictingItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictingItem, name: "member"))
    ConfluenceAttachmentConfiguration.add_member(:crawl_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlAttachments", traits: {"smithy.api#default" => false}))
    ConfluenceAttachmentConfiguration.add_member(:attachment_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceAttachmentFieldMappingsList, name: "AttachmentFieldMappings"))
    ConfluenceAttachmentConfiguration.type = Types::ConfluenceAttachmentConfiguration
    ConfluenceAttachmentFieldMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceAttachmentToIndexFieldMapping, name: "member"))
    ConfluenceAttachmentFieldName.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHOR", traits: {"smithy.api#enumValue" => "AUTHOR"}))
    ConfluenceAttachmentFieldName.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_TYPE", traits: {"smithy.api#enumValue" => "CONTENT_TYPE"}))
    ConfluenceAttachmentFieldName.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_DATE", traits: {"smithy.api#enumValue" => "CREATED_DATE"}))
    ConfluenceAttachmentFieldName.add_member(:display_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISPLAY_URL", traits: {"smithy.api#enumValue" => "DISPLAY_URL"}))
    ConfluenceAttachmentFieldName.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_SIZE", traits: {"smithy.api#enumValue" => "FILE_SIZE"}))
    ConfluenceAttachmentFieldName.add_member(:item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITEM_TYPE", traits: {"smithy.api#enumValue" => "ITEM_TYPE"}))
    ConfluenceAttachmentFieldName.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_ID", traits: {"smithy.api#enumValue" => "PARENT_ID"}))
    ConfluenceAttachmentFieldName.add_member(:space_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_KEY", traits: {"smithy.api#enumValue" => "SPACE_KEY"}))
    ConfluenceAttachmentFieldName.add_member(:space_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_NAME", traits: {"smithy.api#enumValue" => "SPACE_NAME"}))
    ConfluenceAttachmentFieldName.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    ConfluenceAttachmentFieldName.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION", traits: {"smithy.api#enumValue" => "VERSION"}))
    ConfluenceAttachmentToIndexFieldMapping.add_member(:data_source_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceAttachmentFieldName, name: "DataSourceFieldName"))
    ConfluenceAttachmentToIndexFieldMapping.add_member(:date_field_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceDateFieldFormat, name: "DateFieldFormat"))
    ConfluenceAttachmentToIndexFieldMapping.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldName, name: "IndexFieldName"))
    ConfluenceAttachmentToIndexFieldMapping.type = Types::ConfluenceAttachmentToIndexFieldMapping
    ConfluenceAuthenticationType.add_member(:http_basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_BASIC", traits: {"smithy.api#enumValue" => "HTTP_BASIC"}))
    ConfluenceAuthenticationType.add_member(:pat, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAT", traits: {"smithy.api#enumValue" => "PAT"}))
    ConfluenceBlogConfiguration.add_member(:blog_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceBlogFieldMappingsList, name: "BlogFieldMappings"))
    ConfluenceBlogConfiguration.type = Types::ConfluenceBlogConfiguration
    ConfluenceBlogFieldMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceBlogToIndexFieldMapping, name: "member"))
    ConfluenceBlogFieldName.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHOR", traits: {"smithy.api#enumValue" => "AUTHOR"}))
    ConfluenceBlogFieldName.add_member(:display_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISPLAY_URL", traits: {"smithy.api#enumValue" => "DISPLAY_URL"}))
    ConfluenceBlogFieldName.add_member(:item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITEM_TYPE", traits: {"smithy.api#enumValue" => "ITEM_TYPE"}))
    ConfluenceBlogFieldName.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABELS", traits: {"smithy.api#enumValue" => "LABELS"}))
    ConfluenceBlogFieldName.add_member(:publish_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISH_DATE", traits: {"smithy.api#enumValue" => "PUBLISH_DATE"}))
    ConfluenceBlogFieldName.add_member(:space_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_KEY", traits: {"smithy.api#enumValue" => "SPACE_KEY"}))
    ConfluenceBlogFieldName.add_member(:space_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_NAME", traits: {"smithy.api#enumValue" => "SPACE_NAME"}))
    ConfluenceBlogFieldName.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    ConfluenceBlogFieldName.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION", traits: {"smithy.api#enumValue" => "VERSION"}))
    ConfluenceBlogToIndexFieldMapping.add_member(:data_source_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceBlogFieldName, name: "DataSourceFieldName"))
    ConfluenceBlogToIndexFieldMapping.add_member(:date_field_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceDateFieldFormat, name: "DateFieldFormat"))
    ConfluenceBlogToIndexFieldMapping.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldName, name: "IndexFieldName"))
    ConfluenceBlogToIndexFieldMapping.type = Types::ConfluenceBlogToIndexFieldMapping
    ConfluenceConfiguration.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "ServerUrl", traits: {"smithy.api#required" => {}}))
    ConfluenceConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    ConfluenceConfiguration.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    ConfluenceConfiguration.add_member(:space_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceConfiguration, name: "SpaceConfiguration"))
    ConfluenceConfiguration.add_member(:page_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluencePageConfiguration, name: "PageConfiguration"))
    ConfluenceConfiguration.add_member(:blog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceBlogConfiguration, name: "BlogConfiguration"))
    ConfluenceConfiguration.add_member(:attachment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceAttachmentConfiguration, name: "AttachmentConfiguration"))
    ConfluenceConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    ConfluenceConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    ConfluenceConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    ConfluenceConfiguration.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    ConfluenceConfiguration.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceAuthenticationType, name: "AuthenticationType"))
    ConfluenceConfiguration.type = Types::ConfluenceConfiguration
    ConfluencePageConfiguration.add_member(:page_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluencePageFieldMappingsList, name: "PageFieldMappings"))
    ConfluencePageConfiguration.type = Types::ConfluencePageConfiguration
    ConfluencePageFieldMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluencePageToIndexFieldMapping, name: "member"))
    ConfluencePageFieldName.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHOR", traits: {"smithy.api#enumValue" => "AUTHOR"}))
    ConfluencePageFieldName.add_member(:content_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_STATUS", traits: {"smithy.api#enumValue" => "CONTENT_STATUS"}))
    ConfluencePageFieldName.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_DATE", traits: {"smithy.api#enumValue" => "CREATED_DATE"}))
    ConfluencePageFieldName.add_member(:display_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISPLAY_URL", traits: {"smithy.api#enumValue" => "DISPLAY_URL"}))
    ConfluencePageFieldName.add_member(:item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITEM_TYPE", traits: {"smithy.api#enumValue" => "ITEM_TYPE"}))
    ConfluencePageFieldName.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABELS", traits: {"smithy.api#enumValue" => "LABELS"}))
    ConfluencePageFieldName.add_member(:modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED_DATE", traits: {"smithy.api#enumValue" => "MODIFIED_DATE"}))
    ConfluencePageFieldName.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARENT_ID", traits: {"smithy.api#enumValue" => "PARENT_ID"}))
    ConfluencePageFieldName.add_member(:space_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_KEY", traits: {"smithy.api#enumValue" => "SPACE_KEY"}))
    ConfluencePageFieldName.add_member(:space_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_NAME", traits: {"smithy.api#enumValue" => "SPACE_NAME"}))
    ConfluencePageFieldName.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    ConfluencePageFieldName.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERSION", traits: {"smithy.api#enumValue" => "VERSION"}))
    ConfluencePageToIndexFieldMapping.add_member(:data_source_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluencePageFieldName, name: "DataSourceFieldName"))
    ConfluencePageToIndexFieldMapping.add_member(:date_field_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceDateFieldFormat, name: "DateFieldFormat"))
    ConfluencePageToIndexFieldMapping.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldName, name: "IndexFieldName"))
    ConfluencePageToIndexFieldMapping.type = Types::ConfluencePageToIndexFieldMapping
    ConfluenceSpaceConfiguration.add_member(:crawl_personal_spaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlPersonalSpaces", traits: {"smithy.api#default" => false}))
    ConfluenceSpaceConfiguration.add_member(:crawl_archived_spaces, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlArchivedSpaces", traits: {"smithy.api#default" => false}))
    ConfluenceSpaceConfiguration.add_member(:include_spaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceList, name: "IncludeSpaces"))
    ConfluenceSpaceConfiguration.add_member(:exclude_spaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceList, name: "ExcludeSpaces"))
    ConfluenceSpaceConfiguration.add_member(:space_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceFieldMappingsList, name: "SpaceFieldMappings"))
    ConfluenceSpaceConfiguration.type = Types::ConfluenceSpaceConfiguration
    ConfluenceSpaceFieldMappingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceToIndexFieldMapping, name: "member"))
    ConfluenceSpaceFieldName.add_member(:display_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISPLAY_URL", traits: {"smithy.api#enumValue" => "DISPLAY_URL"}))
    ConfluenceSpaceFieldName.add_member(:item_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITEM_TYPE", traits: {"smithy.api#enumValue" => "ITEM_TYPE"}))
    ConfluenceSpaceFieldName.add_member(:space_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPACE_KEY", traits: {"smithy.api#enumValue" => "SPACE_KEY"}))
    ConfluenceSpaceFieldName.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    ConfluenceSpaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceIdentifier, name: "member"))
    ConfluenceSpaceToIndexFieldMapping.add_member(:data_source_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSpaceFieldName, name: "DataSourceFieldName"))
    ConfluenceSpaceToIndexFieldMapping.add_member(:date_field_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceDateFieldFormat, name: "DateFieldFormat"))
    ConfluenceSpaceToIndexFieldMapping.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldName, name: "IndexFieldName"))
    ConfluenceSpaceToIndexFieldMapping.type = Types::ConfluenceSpaceToIndexFieldMapping
    ConfluenceVersion.add_member(:cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD", traits: {"smithy.api#enumValue" => "CLOUD"}))
    ConfluenceVersion.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER", traits: {"smithy.api#enumValue" => "SERVER"}))
    ConnectionConfiguration.add_member(:database_host, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseHost, name: "DatabaseHost", traits: {"smithy.api#required" => {}}))
    ConnectionConfiguration.add_member(:database_port, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabasePort, name: "DatabasePort", traits: {"smithy.api#required" => {}}))
    ConnectionConfiguration.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, name: "DatabaseName", traits: {"smithy.api#required" => {}}))
    ConnectionConfiguration.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName", traits: {"smithy.api#required" => {}}))
    ConnectionConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    ConnectionConfiguration.type = Types::ConnectionConfiguration
    ContentSourceConfiguration.add_member(:data_source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceIdList, name: "DataSourceIds"))
    ContentSourceConfiguration.add_member(:faq_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqIdsList, name: "FaqIds"))
    ContentSourceConfiguration.add_member(:direct_put_content, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DirectPutContent", traits: {"smithy.api#default" => false}))
    ContentSourceConfiguration.type = Types::ContentSourceConfiguration
    ContentType.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    ContentType.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTML", traits: {"smithy.api#enumValue" => "HTML"}))
    ContentType.add_member(:ms_word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MS_WORD", traits: {"smithy.api#enumValue" => "MS_WORD"}))
    ContentType.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    ContentType.add_member(:ppt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PPT", traits: {"smithy.api#enumValue" => "PPT"}))
    ContentType.add_member(:rtf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTF", traits: {"smithy.api#enumValue" => "RTF"}))
    ContentType.add_member(:xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XML", traits: {"smithy.api#enumValue" => "XML"}))
    ContentType.add_member(:xslt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XSLT", traits: {"smithy.api#enumValue" => "XSLT"}))
    ContentType.add_member(:ms_excel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MS_EXCEL", traits: {"smithy.api#enumValue" => "MS_EXCEL"}))
    ContentType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ContentType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ContentType.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    Correction.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    Correction.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    Correction.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Term"))
    Correction.add_member(:corrected_term, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CorrectedTerm"))
    Correction.type = Types::Correction
    CorrectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Correction, name: "member"))
    CreateAccessControlConfigurationRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateAccessControlConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateAccessControlConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateAccessControlConfigurationRequest.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "AccessControlList"))
    CreateAccessControlConfigurationRequest.add_member(:hierarchical_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalPrincipalList, name: "HierarchicalAccessControlList"))
    CreateAccessControlConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessControlConfigurationRequest.type = Types::CreateAccessControlConfigurationRequest
    CreateAccessControlConfigurationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateAccessControlConfigurationResponse.type = Types::CreateAccessControlConfigurationResponse
    CreateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "Configuration"))
    CreateDataSourceRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    CreateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDataSourceRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSchedule, name: "Schedule"))
    CreateDataSourceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    CreateDataSourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDataSourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataSourceRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    CreateDataSourceRequest.add_member(:custom_document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDocumentEnrichmentConfiguration, name: "CustomDocumentEnrichmentConfiguration"))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateExperienceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateExperienceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateExperienceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    CreateExperienceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceConfiguration, name: "Configuration"))
    CreateExperienceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateExperienceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateExperienceRequest.type = Types::CreateExperienceRequest
    CreateExperienceResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateExperienceResponse.type = Types::CreateExperienceResponse
    CreateFaqRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateFaqRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateFaqRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFaqRequest.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "S3Path", traits: {"smithy.api#required" => {}}))
    CreateFaqRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateFaqRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFaqRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqFileFormat, name: "FileFormat"))
    CreateFaqRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateFaqRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    CreateFaqRequest.type = Types::CreateFaqRequest
    CreateFaqResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqId, name: "Id"))
    CreateFaqResponse.type = Types::CreateFaqResponse
    CreateFeaturedResultsSetRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateFeaturedResultsSetRequest.add_member(:featured_results_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetName, name: "FeaturedResultsSetName", traits: {"smithy.api#required" => {}}))
    CreateFeaturedResultsSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetDescription, name: "Description"))
    CreateFeaturedResultsSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken"))
    CreateFeaturedResultsSetRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetStatus, name: "Status"))
    CreateFeaturedResultsSetRequest.add_member(:query_texts, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTextList, name: "QueryTexts"))
    CreateFeaturedResultsSetRequest.add_member(:featured_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentList, name: "FeaturedDocuments"))
    CreateFeaturedResultsSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateFeaturedResultsSetRequest.type = Types::CreateFeaturedResultsSetRequest
    CreateFeaturedResultsSetResponse.add_member(:featured_results_set, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSet, name: "FeaturedResultsSet"))
    CreateFeaturedResultsSetResponse.type = Types::CreateFeaturedResultsSetResponse
    CreateIndexRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:edition, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexEdition, name: "Edition"))
    CreateIndexRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "ServerSideEncryptionConfiguration"))
    CreateIndexRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateIndexRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIndexRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateIndexRequest.add_member(:user_token_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTokenConfigurationList, name: "UserTokenConfigurations"))
    CreateIndexRequest.add_member(:user_context_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextPolicy, name: "UserContextPolicy"))
    CreateIndexRequest.add_member(:user_group_resolution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupResolutionConfiguration, name: "UserGroupResolutionConfiguration"))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "Id"))
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreateQuerySuggestionsBlockListRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateQuerySuggestionsBlockListRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateQuerySuggestionsBlockListRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateQuerySuggestionsBlockListRequest.add_member(:source_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SourceS3Path", traits: {"smithy.api#required" => {}}))
    CreateQuerySuggestionsBlockListRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateQuerySuggestionsBlockListRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateQuerySuggestionsBlockListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateQuerySuggestionsBlockListRequest.type = Types::CreateQuerySuggestionsBlockListRequest
    CreateQuerySuggestionsBlockListResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListId, name: "Id"))
    CreateQuerySuggestionsBlockListResponse.type = Types::CreateQuerySuggestionsBlockListResponse
    CreateThesaurusRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    CreateThesaurusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateThesaurusRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateThesaurusRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateThesaurusRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateThesaurusRequest.add_member(:source_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SourceS3Path", traits: {"smithy.api#required" => {}}))
    CreateThesaurusRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTokenName, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateThesaurusRequest.type = Types::CreateThesaurusRequest
    CreateThesaurusResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusId, name: "Id"))
    CreateThesaurusResponse.type = Types::CreateThesaurusResponse
    CustomDocumentEnrichmentConfiguration.add_member(:inline_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineCustomDocumentEnrichmentConfigurationList, name: "InlineConfigurations"))
    CustomDocumentEnrichmentConfiguration.add_member(:pre_extraction_hook_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HookConfiguration, name: "PreExtractionHookConfiguration"))
    CustomDocumentEnrichmentConfiguration.add_member(:post_extraction_hook_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HookConfiguration, name: "PostExtractionHookConfiguration"))
    CustomDocumentEnrichmentConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    CustomDocumentEnrichmentConfiguration.type = Types::CustomDocumentEnrichmentConfiguration
    DataSourceConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataSourceConfiguration, name: "S3Configuration"))
    DataSourceConfiguration.add_member(:share_point_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SharePointConfiguration, name: "SharePointConfiguration"))
    DataSourceConfiguration.add_member(:database_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConfiguration, name: "DatabaseConfiguration"))
    DataSourceConfiguration.add_member(:salesforce_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceConfiguration, name: "SalesforceConfiguration"))
    DataSourceConfiguration.add_member(:one_drive_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OneDriveConfiguration, name: "OneDriveConfiguration"))
    DataSourceConfiguration.add_member(:service_now_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowConfiguration, name: "ServiceNowConfiguration"))
    DataSourceConfiguration.add_member(:confluence_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceConfiguration, name: "ConfluenceConfiguration"))
    DataSourceConfiguration.add_member(:google_drive_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GoogleDriveConfiguration, name: "GoogleDriveConfiguration"))
    DataSourceConfiguration.add_member(:web_crawler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebCrawlerConfiguration, name: "WebCrawlerConfiguration"))
    DataSourceConfiguration.add_member(:work_docs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkDocsConfiguration, name: "WorkDocsConfiguration"))
    DataSourceConfiguration.add_member(:fsx_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxConfiguration, name: "FsxConfiguration"))
    DataSourceConfiguration.add_member(:slack_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackConfiguration, name: "SlackConfiguration"))
    DataSourceConfiguration.add_member(:box_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxConfiguration, name: "BoxConfiguration"))
    DataSourceConfiguration.add_member(:quip_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: QuipConfiguration, name: "QuipConfiguration"))
    DataSourceConfiguration.add_member(:jira_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraConfiguration, name: "JiraConfiguration"))
    DataSourceConfiguration.add_member(:git_hub_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubConfiguration, name: "GitHubConfiguration"))
    DataSourceConfiguration.add_member(:alfresco_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AlfrescoConfiguration, name: "AlfrescoConfiguration", traits: {"smithy.api#deprecated" => {"message" => "Deprecated AlfrescoConfiguration in favor of TemplateConfiguration"}}))
    DataSourceConfiguration.add_member(:template_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateConfiguration, name: "TemplateConfiguration"))
    DataSourceConfiguration.type = Types::DataSourceConfiguration
    DataSourceGroup.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalName, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DataSourceGroup.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    DataSourceGroup.type = Types::DataSourceGroup
    DataSourceGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceGroup, name: "member"))
    DataSourceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "member"))
    DataSourceInclusionsExclusionsStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStringsMember, name: "member"))
    DataSourceStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DataSourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DataSourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DataSourceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataSourceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, name: "Name"))
    DataSourceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id"))
    DataSourceSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "Type"))
    DataSourceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DataSourceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DataSourceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status"))
    DataSourceSummary.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    DataSourceSummary.type = Types::DataSourceSummary
    DataSourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSummary, name: "member"))
    DataSourceSyncJob.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutionId"))
    DataSourceSyncJob.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    DataSourceSyncJob.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    DataSourceSyncJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobStatus, name: "Status"))
    DataSourceSyncJob.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DataSourceSyncJob.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    DataSourceSyncJob.add_member(:data_source_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataSourceErrorCode"))
    DataSourceSyncJob.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobMetrics, name: "Metrics"))
    DataSourceSyncJob.type = Types::DataSourceSyncJob
    DataSourceSyncJobHistoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJob, name: "member"))
    DataSourceSyncJobMetricTarget.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId", traits: {"smithy.api#required" => {}}))
    DataSourceSyncJobMetricTarget.add_member(:data_source_sync_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobId, name: "DataSourceSyncJobId"))
    DataSourceSyncJobMetricTarget.type = Types::DataSourceSyncJobMetricTarget
    DataSourceSyncJobMetrics.add_member(:documents_added, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "DocumentsAdded"))
    DataSourceSyncJobMetrics.add_member(:documents_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "DocumentsModified"))
    DataSourceSyncJobMetrics.add_member(:documents_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "DocumentsDeleted"))
    DataSourceSyncJobMetrics.add_member(:documents_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "DocumentsFailed"))
    DataSourceSyncJobMetrics.add_member(:documents_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "DocumentsScanned"))
    DataSourceSyncJobMetrics.type = Types::DataSourceSyncJobMetrics
    DataSourceSyncJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceSyncJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataSourceSyncJobStatus.add_member(:syncing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNCING", traits: {"smithy.api#enumValue" => "SYNCING"}))
    DataSourceSyncJobStatus.add_member(:incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPLETE", traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    DataSourceSyncJobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    DataSourceSyncJobStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    DataSourceSyncJobStatus.add_member(:syncing_indexing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNCING_INDEXING", traits: {"smithy.api#enumValue" => "SYNCING_INDEXING"}))
    DataSourceToIndexFieldMapping.add_member(:data_source_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DataSourceFieldName", traits: {"smithy.api#required" => {}}))
    DataSourceToIndexFieldMapping.add_member(:date_field_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceDateFieldFormat, name: "DateFieldFormat"))
    DataSourceToIndexFieldMapping.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldName, name: "IndexFieldName", traits: {"smithy.api#required" => {}}))
    DataSourceToIndexFieldMapping.type = Types::DataSourceToIndexFieldMapping
    DataSourceToIndexFieldMappingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMapping, name: "member"))
    DataSourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    DataSourceType.add_member(:sharepoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHAREPOINT", traits: {"smithy.api#enumValue" => "SHAREPOINT"}))
    DataSourceType.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE", traits: {"smithy.api#enumValue" => "DATABASE"}))
    DataSourceType.add_member(:salesforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SALESFORCE", traits: {"smithy.api#enumValue" => "SALESFORCE"}))
    DataSourceType.add_member(:onedrive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEDRIVE", traits: {"smithy.api#enumValue" => "ONEDRIVE"}))
    DataSourceType.add_member(:servicenow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICENOW", traits: {"smithy.api#enumValue" => "SERVICENOW"}))
    DataSourceType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    DataSourceType.add_member(:confluence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLUENCE", traits: {"smithy.api#enumValue" => "CONFLUENCE"}))
    DataSourceType.add_member(:googledrive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOOGLEDRIVE", traits: {"smithy.api#enumValue" => "GOOGLEDRIVE"}))
    DataSourceType.add_member(:webcrawler, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBCRAWLER", traits: {"smithy.api#enumValue" => "WEBCRAWLER"}))
    DataSourceType.add_member(:workdocs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKDOCS", traits: {"smithy.api#enumValue" => "WORKDOCS"}))
    DataSourceType.add_member(:fsx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FSX", traits: {"smithy.api#enumValue" => "FSX"}))
    DataSourceType.add_member(:slack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLACK", traits: {"smithy.api#enumValue" => "SLACK"}))
    DataSourceType.add_member(:box, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOX", traits: {"smithy.api#enumValue" => "BOX"}))
    DataSourceType.add_member(:quip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUIP", traits: {"smithy.api#enumValue" => "QUIP"}))
    DataSourceType.add_member(:jira, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JIRA", traits: {"smithy.api#enumValue" => "JIRA"}))
    DataSourceType.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    DataSourceType.add_member(:alfresco, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALFRESCO", traits: {"smithy.api#enumValue" => "ALFRESCO"}))
    DataSourceType.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPLATE", traits: {"smithy.api#enumValue" => "TEMPLATE"}))
    DataSourceVpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    DataSourceVpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    DataSourceVpcConfiguration.type = Types::DataSourceVpcConfiguration
    DatabaseConfiguration.add_member(:database_engine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEngineType, name: "DatabaseEngineType", traits: {"smithy.api#required" => {}}))
    DatabaseConfiguration.add_member(:connection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionConfiguration, name: "ConnectionConfiguration", traits: {"smithy.api#required" => {}}))
    DatabaseConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    DatabaseConfiguration.add_member(:column_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnConfiguration, name: "ColumnConfiguration", traits: {"smithy.api#required" => {}}))
    DatabaseConfiguration.add_member(:acl_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AclConfiguration, name: "AclConfiguration"))
    DatabaseConfiguration.add_member(:sql_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SqlConfiguration, name: "SqlConfiguration"))
    DatabaseConfiguration.type = Types::DatabaseConfiguration
    DatabaseEngineType.add_member(:rds_aurora_mysql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_AURORA_MYSQL", traits: {"smithy.api#enumValue" => "RDS_AURORA_MYSQL"}))
    DatabaseEngineType.add_member(:rds_aurora_postgresql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_AURORA_POSTGRESQL", traits: {"smithy.api#enumValue" => "RDS_AURORA_POSTGRESQL"}))
    DatabaseEngineType.add_member(:rds_mysql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_MYSQL", traits: {"smithy.api#enumValue" => "RDS_MYSQL"}))
    DatabaseEngineType.add_member(:rds_postgresql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_POSTGRESQL", traits: {"smithy.api#enumValue" => "RDS_POSTGRESQL"}))
    DeleteAccessControlConfigurationRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeleteAccessControlConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteAccessControlConfigurationRequest.type = Types::DeleteAccessControlConfigurationRequest
    DeleteAccessControlConfigurationResponse.type = Types::DeleteAccessControlConfigurationResponse
    DeleteDataSourceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteExperienceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteExperienceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeleteExperienceRequest.type = Types::DeleteExperienceRequest
    DeleteExperienceResponse.type = Types::DeleteExperienceResponse
    DeleteFaqRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteFaqRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeleteFaqRequest.type = Types::DeleteFaqRequest
    DeleteIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteIndexRequest.type = Types::DeleteIndexRequest
    DeletePrincipalMappingRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeletePrincipalMappingRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    DeletePrincipalMappingRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DeletePrincipalMappingRequest.add_member(:ordering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrderingId, name: "OrderingId"))
    DeletePrincipalMappingRequest.type = Types::DeletePrincipalMappingRequest
    DeleteQuerySuggestionsBlockListRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeleteQuerySuggestionsBlockListRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteQuerySuggestionsBlockListRequest.type = Types::DeleteQuerySuggestionsBlockListRequest
    DeleteThesaurusRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusId, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteThesaurusRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DeleteThesaurusRequest.type = Types::DeleteThesaurusRequest
    DescribeAccessControlConfigurationRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeAccessControlConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeAccessControlConfigurationRequest.type = Types::DescribeAccessControlConfigurationRequest
    DescribeAccessControlConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationName, name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeAccessControlConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeAccessControlConfigurationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeAccessControlConfigurationResponse.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "AccessControlList"))
    DescribeAccessControlConfigurationResponse.add_member(:hierarchical_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalPrincipalList, name: "HierarchicalAccessControlList"))
    DescribeAccessControlConfigurationResponse.type = Types::DescribeAccessControlConfigurationResponse
    DescribeDataSourceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeDataSourceRequest.type = Types::DescribeDataSourceRequest
    DescribeDataSourceResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id"))
    DescribeDataSourceResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId"))
    DescribeDataSourceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, name: "Name"))
    DescribeDataSourceResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "Type"))
    DescribeDataSourceResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "Configuration"))
    DescribeDataSourceResponse.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    DescribeDataSourceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeDataSourceResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeDataSourceResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeDataSourceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceStatus, name: "Status"))
    DescribeDataSourceResponse.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSchedule, name: "Schedule"))
    DescribeDataSourceResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeDataSourceResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeDataSourceResponse.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    DescribeDataSourceResponse.add_member(:custom_document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDocumentEnrichmentConfiguration, name: "CustomDocumentEnrichmentConfiguration"))
    DescribeDataSourceResponse.type = Types::DescribeDataSourceResponse
    DescribeExperienceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeExperienceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeExperienceRequest.type = Types::DescribeExperienceRequest
    DescribeExperienceResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id"))
    DescribeExperienceResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId"))
    DescribeExperienceResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceName, name: "Name"))
    DescribeExperienceResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceEndpoints, name: "Endpoints"))
    DescribeExperienceResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceConfiguration, name: "Configuration"))
    DescribeExperienceResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeExperienceResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeExperienceResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeExperienceResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceStatus, name: "Status"))
    DescribeExperienceResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeExperienceResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeExperienceResponse.type = Types::DescribeExperienceResponse
    DescribeFaqRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeFaqRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeFaqRequest.type = Types::DescribeFaqRequest
    DescribeFaqResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqId, name: "Id"))
    DescribeFaqResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId"))
    DescribeFaqResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqName, name: "Name"))
    DescribeFaqResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeFaqResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeFaqResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeFaqResponse.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "S3Path"))
    DescribeFaqResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqStatus, name: "Status"))
    DescribeFaqResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeFaqResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeFaqResponse.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqFileFormat, name: "FileFormat"))
    DescribeFaqResponse.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    DescribeFaqResponse.type = Types::DescribeFaqResponse
    DescribeFeaturedResultsSetRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeFeaturedResultsSetRequest.add_member(:featured_results_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "FeaturedResultsSetId", traits: {"smithy.api#required" => {}}))
    DescribeFeaturedResultsSetRequest.type = Types::DescribeFeaturedResultsSetRequest
    DescribeFeaturedResultsSetResponse.add_member(:featured_results_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "FeaturedResultsSetId"))
    DescribeFeaturedResultsSetResponse.add_member(:featured_results_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetName, name: "FeaturedResultsSetName"))
    DescribeFeaturedResultsSetResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetDescription, name: "Description"))
    DescribeFeaturedResultsSetResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetStatus, name: "Status"))
    DescribeFeaturedResultsSetResponse.add_member(:query_texts, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTextList, name: "QueryTexts"))
    DescribeFeaturedResultsSetResponse.add_member(:featured_documents_with_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentWithMetadataList, name: "FeaturedDocumentsWithMetadata"))
    DescribeFeaturedResultsSetResponse.add_member(:featured_documents_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentMissingList, name: "FeaturedDocumentsMissing"))
    DescribeFeaturedResultsSetResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LastUpdatedTimestamp"))
    DescribeFeaturedResultsSetResponse.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CreationTimestamp"))
    DescribeFeaturedResultsSetResponse.type = Types::DescribeFeaturedResultsSetResponse
    DescribeIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeIndexRequest.type = Types::DescribeIndexRequest
    DescribeIndexResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "Name"))
    DescribeIndexResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "Id"))
    DescribeIndexResponse.add_member(:edition, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexEdition, name: "Edition"))
    DescribeIndexResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeIndexResponse.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "ServerSideEncryptionConfiguration"))
    DescribeIndexResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "Status"))
    DescribeIndexResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeIndexResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeIndexResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeIndexResponse.add_member(:document_metadata_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataConfigurationList, name: "DocumentMetadataConfigurations"))
    DescribeIndexResponse.add_member(:index_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatistics, name: "IndexStatistics"))
    DescribeIndexResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeIndexResponse.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnitsConfiguration, name: "CapacityUnits"))
    DescribeIndexResponse.add_member(:user_token_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTokenConfigurationList, name: "UserTokenConfigurations"))
    DescribeIndexResponse.add_member(:user_context_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextPolicy, name: "UserContextPolicy"))
    DescribeIndexResponse.add_member(:user_group_resolution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupResolutionConfiguration, name: "UserGroupResolutionConfiguration"))
    DescribeIndexResponse.type = Types::DescribeIndexResponse
    DescribePrincipalMappingRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribePrincipalMappingRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    DescribePrincipalMappingRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    DescribePrincipalMappingRequest.type = Types::DescribePrincipalMappingRequest
    DescribePrincipalMappingResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId"))
    DescribePrincipalMappingResponse.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    DescribePrincipalMappingResponse.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId"))
    DescribePrincipalMappingResponse.add_member(:group_ordering_id_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupOrderingIdSummaries, name: "GroupOrderingIdSummaries"))
    DescribePrincipalMappingResponse.type = Types::DescribePrincipalMappingResponse
    DescribeQuerySuggestionsBlockListRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeQuerySuggestionsBlockListRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeQuerySuggestionsBlockListRequest.type = Types::DescribeQuerySuggestionsBlockListRequest
    DescribeQuerySuggestionsBlockListResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListId, name: "Id"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListName, name: "Name"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListStatus, name: "Status"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:source_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SourceS3Path"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ItemCount"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:file_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FileSizeBytes"))
    DescribeQuerySuggestionsBlockListResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeQuerySuggestionsBlockListResponse.type = Types::DescribeQuerySuggestionsBlockListResponse
    DescribeQuerySuggestionsConfigRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeQuerySuggestionsConfigRequest.type = Types::DescribeQuerySuggestionsConfigRequest
    DescribeQuerySuggestionsConfigResponse.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, name: "Mode"))
    DescribeQuerySuggestionsConfigResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsStatus, name: "Status"))
    DescribeQuerySuggestionsConfigResponse.add_member(:query_log_look_back_window_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "QueryLogLookBackWindowInDays"))
    DescribeQuerySuggestionsConfigResponse.add_member(:include_queries_without_user_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectBoolean, name: "IncludeQueriesWithoutUserInformation"))
    DescribeQuerySuggestionsConfigResponse.add_member(:minimum_number_of_querying_users, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNumberOfQueryingUsers, name: "MinimumNumberOfQueryingUsers"))
    DescribeQuerySuggestionsConfigResponse.add_member(:minimum_query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumQueryCount, name: "MinimumQueryCount"))
    DescribeQuerySuggestionsConfigResponse.add_member(:last_suggestions_build_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSuggestionsBuildTime"))
    DescribeQuerySuggestionsConfigResponse.add_member(:last_clear_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastClearTime"))
    DescribeQuerySuggestionsConfigResponse.add_member(:total_suggestions_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalSuggestionsCount"))
    DescribeQuerySuggestionsConfigResponse.add_member(:attribute_suggestions_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeSuggestionsDescribeConfig, name: "AttributeSuggestionsConfig"))
    DescribeQuerySuggestionsConfigResponse.type = Types::DescribeQuerySuggestionsConfigResponse
    DescribeThesaurusRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusId, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeThesaurusRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DescribeThesaurusRequest.type = Types::DescribeThesaurusRequest
    DescribeThesaurusResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusId, name: "Id"))
    DescribeThesaurusResponse.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId"))
    DescribeThesaurusResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusName, name: "Name"))
    DescribeThesaurusResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DescribeThesaurusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusStatus, name: "Status"))
    DescribeThesaurusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    DescribeThesaurusResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    DescribeThesaurusResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    DescribeThesaurusResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DescribeThesaurusResponse.add_member(:source_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SourceS3Path"))
    DescribeThesaurusResponse.add_member(:file_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "FileSizeBytes"))
    DescribeThesaurusResponse.add_member(:term_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TermCount"))
    DescribeThesaurusResponse.add_member(:synonym_rule_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SynonymRuleCount"))
    DescribeThesaurusResponse.type = Types::DescribeThesaurusResponse
    DisassociateEntitiesFromExperienceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DisassociateEntitiesFromExperienceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DisassociateEntitiesFromExperienceRequest.add_member(:entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DisassociateEntityList, name: "EntityList", traits: {"smithy.api#required" => {}}))
    DisassociateEntitiesFromExperienceRequest.type = Types::DisassociateEntitiesFromExperienceRequest
    DisassociateEntitiesFromExperienceResponse.add_member(:failed_entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedEntityList, name: "FailedEntityList"))
    DisassociateEntitiesFromExperienceResponse.type = Types::DisassociateEntitiesFromExperienceResponse
    DisassociateEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityConfiguration, name: "member"))
    DisassociatePersonasFromEntitiesRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    DisassociatePersonasFromEntitiesRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    DisassociatePersonasFromEntitiesRequest.add_member(:entity_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdsList, name: "EntityIds", traits: {"smithy.api#required" => {}}))
    DisassociatePersonasFromEntitiesRequest.type = Types::DisassociatePersonasFromEntitiesRequest
    DisassociatePersonasFromEntitiesResponse.add_member(:failed_entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedEntityList, name: "FailedEntityList"))
    DisassociatePersonasFromEntitiesResponse.type = Types::DisassociatePersonasFromEntitiesResponse
    Document.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id", traits: {"smithy.api#required" => {}}))
    Document.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, name: "Title"))
    Document.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "Blob"))
    Document.add_member(:s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "S3Path"))
    Document.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "Attributes"))
    Document.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "AccessControlList"))
    Document.add_member(:hierarchical_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalPrincipalList, name: "HierarchicalAccessControlList"))
    Document.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType"))
    Document.add_member(:access_control_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationId, name: "AccessControlConfigurationId"))
    Document.type = Types::Document
    DocumentAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "Key", traits: {"smithy.api#required" => {}}))
    DocumentAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, name: "Value", traits: {"smithy.api#required" => {}}))
    DocumentAttribute.type = Types::DocumentAttribute
    DocumentAttributeCondition.add_member(:condition_document_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "ConditionDocumentAttributeKey", traits: {"smithy.api#required" => {}}))
    DocumentAttributeCondition.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOperator, name: "Operator", traits: {"smithy.api#required" => {}}))
    DocumentAttributeCondition.add_member(:condition_on_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, name: "ConditionOnValue"))
    DocumentAttributeCondition.type = Types::DocumentAttributeCondition
    DocumentAttributeKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "member"))
    DocumentAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttribute, name: "member"))
    DocumentAttributeStringListValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    DocumentAttributeTarget.add_member(:target_document_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "TargetDocumentAttributeKey"))
    DocumentAttributeTarget.add_member(:target_document_attribute_value_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TargetDocumentAttributeValueDeletion", traits: {"smithy.api#default" => false}))
    DocumentAttributeTarget.add_member(:target_document_attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, name: "TargetDocumentAttributeValue"))
    DocumentAttributeTarget.type = Types::DocumentAttributeTarget
    DocumentAttributeValue.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeStringValue, name: "StringValue"))
    DocumentAttributeValue.add_member(:string_list_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeStringListValue, name: "StringListValue"))
    DocumentAttributeValue.add_member(:long_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LongValue"))
    DocumentAttributeValue.add_member(:date_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DateValue"))
    DocumentAttributeValue.type = Types::DocumentAttributeValue
    DocumentAttributeValueCountPair.add_member(:document_attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValue, name: "DocumentAttributeValue"))
    DocumentAttributeValueCountPair.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count"))
    DocumentAttributeValueCountPair.add_member(:facet_results, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetResultList, name: "FacetResults"))
    DocumentAttributeValueCountPair.type = Types::DocumentAttributeValueCountPair
    DocumentAttributeValueCountPairList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValueCountPair, name: "member"))
    DocumentAttributeValueType.add_member(:string_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_VALUE", traits: {"smithy.api#enumValue" => "STRING_VALUE"}))
    DocumentAttributeValueType.add_member(:string_list_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIST_VALUE", traits: {"smithy.api#enumValue" => "STRING_LIST_VALUE"}))
    DocumentAttributeValueType.add_member(:long_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONG_VALUE", traits: {"smithy.api#enumValue" => "LONG_VALUE"}))
    DocumentAttributeValueType.add_member(:date_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE_VALUE", traits: {"smithy.api#enumValue" => "DATE_VALUE"}))
    DocumentIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "member"))
    DocumentInfo.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId", traits: {"smithy.api#required" => {}}))
    DocumentInfo.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "Attributes"))
    DocumentInfo.type = Types::DocumentInfo
    DocumentInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentInfo, name: "member"))
    DocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "member"))
    DocumentMetadataConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataConfigurationName, name: "Name", traits: {"smithy.api#required" => {}}))
    DocumentMetadataConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValueType, name: "Type", traits: {"smithy.api#required" => {}}))
    DocumentMetadataConfiguration.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: Relevance, name: "Relevance"))
    DocumentMetadataConfiguration.add_member(:search, ::Smithy::Schema::Shapes::MemberShape.new(target: Search, name: "Search"))
    DocumentMetadataConfiguration.type = Types::DocumentMetadataConfiguration
    DocumentMetadataConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataConfiguration, name: "member"))
    DocumentRelevanceConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataConfigurationName, name: "Name", traits: {"smithy.api#required" => {}}))
    DocumentRelevanceConfiguration.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: Relevance, name: "Relevance", traits: {"smithy.api#required" => {}}))
    DocumentRelevanceConfiguration.type = Types::DocumentRelevanceConfiguration
    DocumentRelevanceOverrideConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRelevanceConfiguration, name: "member"))
    DocumentStatus.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    DocumentStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DocumentStatus.add_member(:indexed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDEXED", traits: {"smithy.api#enumValue" => "INDEXED"}))
    DocumentStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    DocumentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DocumentStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    DocumentStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "member"))
    DocumentsMetadataConfiguration.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "S3Prefix"))
    DocumentsMetadataConfiguration.type = Types::DocumentsMetadataConfiguration
    EndpointType.add_member(:home, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOME", traits: {"smithy.api#enumValue" => "HOME"}))
    EntityConfiguration.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EntityId", traits: {"smithy.api#required" => {}}))
    EntityConfiguration.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType", traits: {"smithy.api#required" => {}}))
    EntityConfiguration.type = Types::EntityConfiguration
    EntityDisplayData.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "UserName"))
    EntityDisplayData.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "GroupName"))
    EntityDisplayData.add_member(:identified_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "IdentifiedUserName"))
    EntityDisplayData.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "FirstName"))
    EntityDisplayData.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NameType, name: "LastName"))
    EntityDisplayData.type = Types::EntityDisplayData
    EntityFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AlfrescoEntity, name: "member"))
    EntityIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "member"))
    EntityPersonaConfiguration.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EntityId", traits: {"smithy.api#required" => {}}))
    EntityPersonaConfiguration.add_member(:persona, ::Smithy::Schema::Shapes::MemberShape.new(target: Persona, name: "Persona", traits: {"smithy.api#required" => {}}))
    EntityPersonaConfiguration.type = Types::EntityPersonaConfiguration
    EntityPersonaConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityPersonaConfiguration, name: "member"))
    EntityType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    EntityType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    ErrorCode.add_member(:invalid_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REQUEST", traits: {"smithy.api#enumValue" => "InvalidRequest"}))
    ExcludeMimeTypesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "member"))
    ExcludeSharedDrivesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedDriveId, name: "member"))
    ExcludeUserAccountsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAccount, name: "member"))
    ExpandConfiguration.add_member(:max_result_items_to_expand, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResultItemsToExpand"))
    ExpandConfiguration.add_member(:max_expanded_results_per_item, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxExpandedResultsPerItem"))
    ExpandConfiguration.type = Types::ExpandConfiguration
    ExpandedResultItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "Id"))
    ExpandedResultItem.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    ExpandedResultItem.add_member(:document_title, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "DocumentTitle"))
    ExpandedResultItem.add_member(:document_excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "DocumentExcerpt"))
    ExpandedResultItem.add_member(:document_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "DocumentURI"))
    ExpandedResultItem.add_member(:document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "DocumentAttributes"))
    ExpandedResultItem.type = Types::ExpandedResultItem
    ExpandedResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpandedResultItem, name: "member"))
    ExperienceConfiguration.add_member(:content_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSourceConfiguration, name: "ContentSourceConfiguration"))
    ExperienceConfiguration.add_member(:user_identity_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentityConfiguration, name: "UserIdentityConfiguration"))
    ExperienceConfiguration.type = Types::ExperienceConfiguration
    ExperienceEndpoint.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "EndpointType"))
    ExperienceEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    ExperienceEndpoint.type = Types::ExperienceEndpoint
    ExperienceEndpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceEndpoint, name: "member"))
    ExperienceEntitiesSummary.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EntityId"))
    ExperienceEntitiesSummary.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "EntityType"))
    ExperienceEntitiesSummary.add_member(:display_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDisplayData, name: "DisplayData"))
    ExperienceEntitiesSummary.type = Types::ExperienceEntitiesSummary
    ExperienceEntitiesSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceEntitiesSummary, name: "member"))
    ExperienceStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ExperienceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ExperienceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ExperienceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExperiencesSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceName, name: "Name"))
    ExperiencesSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id"))
    ExperiencesSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    ExperiencesSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceStatus, name: "Status"))
    ExperiencesSummary.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceEndpoints, name: "Endpoints"))
    ExperiencesSummary.type = Types::ExperiencesSummary
    ExperiencesSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperiencesSummary, name: "member"))
    Facet.add_member(:document_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "DocumentAttributeKey"))
    Facet.add_member(:facets, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetList, name: "Facets"))
    Facet.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: TopDocumentAttributeValueCountPairsSize, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    Facet.type = Types::Facet
    FacetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Facet, name: "member"))
    FacetResult.add_member(:document_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "DocumentAttributeKey"))
    FacetResult.add_member(:document_attribute_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValueType, name: "DocumentAttributeValueType"))
    FacetResult.add_member(:document_attribute_value_count_pairs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeValueCountPairList, name: "DocumentAttributeValueCountPairs"))
    FacetResult.type = Types::FacetResult
    FacetResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetResult, name: "member"))
    FailedEntity.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EntityId"))
    FailedEntity.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    FailedEntity.type = Types::FailedEntity
    FailedEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedEntity, name: "member"))
    FaqFileFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    FaqFileFormat.add_member(:csv_with_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV_WITH_HEADER", traits: {"smithy.api#enumValue" => "CSV_WITH_HEADER"}))
    FaqFileFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    FaqIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqId, name: "member"))
    FaqStatistics.add_member(:indexed_question_answers_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedQuestionAnswersCount, name: "IndexedQuestionAnswersCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FaqStatistics.type = Types::FaqStatistics
    FaqStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FaqStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FaqStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FaqStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FaqStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    FaqSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqId, name: "Id"))
    FaqSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqName, name: "Name"))
    FaqSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqStatus, name: "Status"))
    FaqSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    FaqSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    FaqSummary.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqFileFormat, name: "FileFormat"))
    FaqSummary.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    FaqSummary.type = Types::FaqSummary
    FaqSummaryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqSummary, name: "member"))
    FeaturedDocument.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id"))
    FeaturedDocument.type = Types::FeaturedDocument
    FeaturedDocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocument, name: "member"))
    FeaturedDocumentMissing.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id"))
    FeaturedDocumentMissing.type = Types::FeaturedDocumentMissing
    FeaturedDocumentMissingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentMissing, name: "member"))
    FeaturedDocumentWithMetadata.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "Id"))
    FeaturedDocumentWithMetadata.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    FeaturedDocumentWithMetadata.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "URI"))
    FeaturedDocumentWithMetadata.type = Types::FeaturedDocumentWithMetadata
    FeaturedDocumentWithMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentWithMetadata, name: "member"))
    FeaturedResultsConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    FeaturedResultsConflictException.add_member(:conflicting_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictingItems, name: "ConflictingItems"))
    FeaturedResultsConflictException.type = Types::FeaturedResultsConflictException
    FeaturedResultsItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "Id"))
    FeaturedResultsItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultType, name: "Type"))
    FeaturedResultsItem.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResultAttributeList, name: "AdditionalAttributes"))
    FeaturedResultsItem.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    FeaturedResultsItem.add_member(:document_title, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "DocumentTitle"))
    FeaturedResultsItem.add_member(:document_excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "DocumentExcerpt"))
    FeaturedResultsItem.add_member(:document_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "DocumentURI"))
    FeaturedResultsItem.add_member(:document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "DocumentAttributes"))
    FeaturedResultsItem.add_member(:feedback_token, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackToken, name: "FeedbackToken"))
    FeaturedResultsItem.type = Types::FeaturedResultsItem
    FeaturedResultsItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsItem, name: "member"))
    FeaturedResultsSet.add_member(:featured_results_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "FeaturedResultsSetId"))
    FeaturedResultsSet.add_member(:featured_results_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetName, name: "FeaturedResultsSetName"))
    FeaturedResultsSet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetDescription, name: "Description"))
    FeaturedResultsSet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetStatus, name: "Status"))
    FeaturedResultsSet.add_member(:query_texts, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTextList, name: "QueryTexts"))
    FeaturedResultsSet.add_member(:featured_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentList, name: "FeaturedDocuments"))
    FeaturedResultsSet.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LastUpdatedTimestamp"))
    FeaturedResultsSet.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CreationTimestamp"))
    FeaturedResultsSet.type = Types::FeaturedResultsSet
    FeaturedResultsSetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "member"))
    FeaturedResultsSetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FeaturedResultsSetStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    FeaturedResultsSetSummary.add_member(:featured_results_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "FeaturedResultsSetId"))
    FeaturedResultsSetSummary.add_member(:featured_results_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetName, name: "FeaturedResultsSetName"))
    FeaturedResultsSetSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetStatus, name: "Status"))
    FeaturedResultsSetSummary.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "LastUpdatedTimestamp"))
    FeaturedResultsSetSummary.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CreationTimestamp"))
    FeaturedResultsSetSummary.type = Types::FeaturedResultsSetSummary
    FeaturedResultsSetSummaryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetSummary, name: "member"))
    FolderIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderId, name: "member"))
    FsxConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemId, name: "FileSystemId", traits: {"smithy.api#required" => {}}))
    FsxConfiguration.add_member(:file_system_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FsxFileSystemType, name: "FileSystemType", traits: {"smithy.api#required" => {}}))
    FsxConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration", traits: {"smithy.api#required" => {}}))
    FsxConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn"))
    FsxConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    FsxConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    FsxConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    FsxConfiguration.type = Types::FsxConfiguration
    FsxFileSystemType.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    GetQuerySuggestionsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    GetQuerySuggestionsRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionQueryText, name: "QueryText", traits: {"smithy.api#required" => {}}))
    GetQuerySuggestionsRequest.add_member(:max_suggestions_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxSuggestionsCount"))
    GetQuerySuggestionsRequest.add_member(:suggestion_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionTypes, name: "SuggestionTypes"))
    GetQuerySuggestionsRequest.add_member(:attribute_suggestions_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeSuggestionsGetConfig, name: "AttributeSuggestionsConfig"))
    GetQuerySuggestionsRequest.type = Types::GetQuerySuggestionsRequest
    GetQuerySuggestionsResponse.add_member(:query_suggestions_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsId, name: "QuerySuggestionsId"))
    GetQuerySuggestionsResponse.add_member(:suggestions, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionList, name: "Suggestions"))
    GetQuerySuggestionsResponse.type = Types::GetQuerySuggestionsResponse
    GetSnapshotsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    GetSnapshotsRequest.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Interval, name: "Interval", traits: {"smithy.api#required" => {}}))
    GetSnapshotsRequest.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "MetricType", traits: {"smithy.api#required" => {}}))
    GetSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    GetSnapshotsRequest.type = Types::GetSnapshotsRequest
    GetSnapshotsResponse.add_member(:snap_shot_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "SnapShotTimeFilter"))
    GetSnapshotsResponse.add_member(:snapshots_data_header, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotsDataHeaderFields, name: "SnapshotsDataHeader"))
    GetSnapshotsResponse.add_member(:snapshots_data, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotsDataRecords, name: "SnapshotsData"))
    GetSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetSnapshotsResponse.type = Types::GetSnapshotsResponse
    GitHubConfiguration.add_member(:saa_s_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SaaSConfiguration, name: "SaaSConfiguration"))
    GitHubConfiguration.add_member(:on_premise_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OnPremiseConfiguration, name: "OnPremiseConfiguration"))
    GitHubConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    GitHubConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    GitHubConfiguration.add_member(:use_change_log, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseChangeLog", traits: {"smithy.api#default" => false}))
    GitHubConfiguration.add_member(:git_hub_document_crawl_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubDocumentCrawlProperties, name: "GitHubDocumentCrawlProperties"))
    GitHubConfiguration.add_member(:repository_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNames, name: "RepositoryFilter"))
    GitHubConfiguration.add_member(:inclusion_folder_name_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "InclusionFolderNamePatterns"))
    GitHubConfiguration.add_member(:inclusion_file_type_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "InclusionFileTypePatterns"))
    GitHubConfiguration.add_member(:inclusion_file_name_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "InclusionFileNamePatterns"))
    GitHubConfiguration.add_member(:exclusion_folder_name_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExclusionFolderNamePatterns"))
    GitHubConfiguration.add_member(:exclusion_file_type_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExclusionFileTypePatterns"))
    GitHubConfiguration.add_member(:exclusion_file_name_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "ExclusionFileNamePatterns"))
    GitHubConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    GitHubConfiguration.add_member(:git_hub_repository_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubRepositoryConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_commit_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubCommitConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_issue_document_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubIssueDocumentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_issue_comment_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubIssueCommentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_issue_attachment_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubIssueAttachmentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_pull_request_comment_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubPullRequestCommentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_pull_request_document_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubPullRequestDocumentConfigurationFieldMappings"))
    GitHubConfiguration.add_member(:git_hub_pull_request_document_attachment_configuration_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "GitHubPullRequestDocumentAttachmentConfigurationFieldMappings"))
    GitHubConfiguration.type = Types::GitHubConfiguration
    GitHubDocumentCrawlProperties.add_member(:crawl_repository_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlRepositoryDocuments", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.add_member(:crawl_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlIssue", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.add_member(:crawl_issue_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlIssueComment", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.add_member(:crawl_issue_comment_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlIssueCommentAttachment", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.add_member(:crawl_pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlPullRequest", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.add_member(:crawl_pull_request_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlPullRequestComment", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.add_member(:crawl_pull_request_comment_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlPullRequestCommentAttachment", traits: {"smithy.api#default" => false}))
    GitHubDocumentCrawlProperties.type = Types::GitHubDocumentCrawlProperties
    GoogleDriveConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    GoogleDriveConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    GoogleDriveConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    GoogleDriveConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    GoogleDriveConfiguration.add_member(:exclude_mime_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeMimeTypesList, name: "ExcludeMimeTypes"))
    GoogleDriveConfiguration.add_member(:exclude_user_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeUserAccountsList, name: "ExcludeUserAccounts"))
    GoogleDriveConfiguration.add_member(:exclude_shared_drives, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeSharedDrivesList, name: "ExcludeSharedDrives"))
    GoogleDriveConfiguration.type = Types::GoogleDriveConfiguration
    GroupMembers.add_member(:member_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberGroups, name: "MemberGroups"))
    GroupMembers.add_member(:member_users, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberUsers, name: "MemberUsers"))
    GroupMembers.add_member(:s3_pathfor_group_members, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "S3PathforGroupMembers"))
    GroupMembers.type = Types::GroupMembers
    GroupOrderingIdSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupOrderingIdSummary, name: "member"))
    GroupOrderingIdSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalMappingStatus, name: "Status"))
    GroupOrderingIdSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedAt"))
    GroupOrderingIdSummary.add_member(:received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ReceivedAt"))
    GroupOrderingIdSummary.add_member(:ordering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrderingId, name: "OrderingId"))
    GroupOrderingIdSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "FailureReason"))
    GroupOrderingIdSummary.type = Types::GroupOrderingIdSummary
    GroupSummary.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId"))
    GroupSummary.add_member(:ordering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrderingId, name: "OrderingId"))
    GroupSummary.type = Types::GroupSummary
    Groups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalName, name: "member"))
    HierarchicalPrincipal.add_member(:principal_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "PrincipalList", traits: {"smithy.api#required" => {}}))
    HierarchicalPrincipal.type = Types::HierarchicalPrincipal
    HierarchicalPrincipalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalPrincipal, name: "member"))
    Highlight.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset", traits: {"smithy.api#required" => {}}))
    Highlight.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset", traits: {"smithy.api#required" => {}}))
    Highlight.add_member(:top_answer, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TopAnswer", traits: {"smithy.api#default" => false}))
    Highlight.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightType, name: "Type"))
    Highlight.type = Types::Highlight
    HighlightList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Highlight, name: "member"))
    HighlightType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    HighlightType.add_member(:thesaurus_synonym, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THESAURUS_SYNONYM", traits: {"smithy.api#enumValue" => "THESAURUS_SYNONYM"}))
    HookConfiguration.add_member(:invocation_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeCondition, name: "InvocationCondition"))
    HookConfiguration.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaArn, name: "LambdaArn", traits: {"smithy.api#required" => {}}))
    HookConfiguration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    HookConfiguration.type = Types::HookConfiguration
    IndexConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "Name"))
    IndexConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "Id"))
    IndexConfigurationSummary.add_member(:edition, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexEdition, name: "Edition"))
    IndexConfigurationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    IndexConfigurationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    IndexConfigurationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    IndexConfigurationSummary.type = Types::IndexConfigurationSummary
    IndexConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexConfigurationSummary, name: "member"))
    IndexEdition.add_member(:developer_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPER_EDITION", traits: {"smithy.api#enumValue" => "DEVELOPER_EDITION"}))
    IndexEdition.add_member(:enterprise_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE_EDITION", traits: {"smithy.api#enumValue" => "ENTERPRISE_EDITION"}))
    IndexEdition.add_member(:gen_ai_enterprise_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEN_AI_ENTERPRISE_EDITION", traits: {"smithy.api#enumValue" => "GEN_AI_ENTERPRISE_EDITION"}))
    IndexStatistics.add_member(:faq_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqStatistics, name: "FaqStatistics", traits: {"smithy.api#required" => {}}))
    IndexStatistics.add_member(:text_document_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: TextDocumentStatistics, name: "TextDocumentStatistics", traits: {"smithy.api#required" => {}}))
    IndexStatistics.type = Types::IndexStatistics
    IndexStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    IndexStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IndexStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IndexStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IndexStatus.add_member(:system_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_UPDATING", traits: {"smithy.api#enumValue" => "SYSTEM_UPDATING"}))
    InlineCustomDocumentEnrichmentConfiguration.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeCondition, name: "Condition"))
    InlineCustomDocumentEnrichmentConfiguration.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeTarget, name: "Target"))
    InlineCustomDocumentEnrichmentConfiguration.add_member(:document_content_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DocumentContentDeletion", traits: {"smithy.api#default" => false}))
    InlineCustomDocumentEnrichmentConfiguration.type = Types::InlineCustomDocumentEnrichmentConfiguration
    InlineCustomDocumentEnrichmentConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineCustomDocumentEnrichmentConfiguration, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    Interval.add_member(:this_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIS_MONTH", traits: {"smithy.api#enumValue" => "THIS_MONTH"}))
    Interval.add_member(:this_week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIS_WEEK", traits: {"smithy.api#enumValue" => "THIS_WEEK"}))
    Interval.add_member(:one_week_ago, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_WEEK_AGO", traits: {"smithy.api#enumValue" => "ONE_WEEK_AGO"}))
    Interval.add_member(:two_weeks_ago, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TWO_WEEKS_AGO", traits: {"smithy.api#enumValue" => "TWO_WEEKS_AGO"}))
    Interval.add_member(:one_month_ago, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_MONTH_AGO", traits: {"smithy.api#enumValue" => "ONE_MONTH_AGO"}))
    Interval.add_member(:two_months_ago, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TWO_MONTHS_AGO", traits: {"smithy.api#enumValue" => "TWO_MONTHS_AGO"}))
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    IssueSubEntity.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMENTS", traits: {"smithy.api#enumValue" => "COMMENTS"}))
    IssueSubEntity.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENTS", traits: {"smithy.api#enumValue" => "ATTACHMENTS"}))
    IssueSubEntity.add_member(:worklogs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKLOGS", traits: {"smithy.api#enumValue" => "WORKLOGS"}))
    IssueSubEntityFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueSubEntity, name: "member"))
    IssueType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    JiraConfiguration.add_member(:jira_account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraAccountUrl, name: "JiraAccountUrl", traits: {"smithy.api#required" => {}}))
    JiraConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    JiraConfiguration.add_member(:use_change_log, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseChangeLog", traits: {"smithy.api#default" => false}))
    JiraConfiguration.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "Project"))
    JiraConfiguration.add_member(:issue_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueType, name: "IssueType"))
    JiraConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraStatus, name: "Status"))
    JiraConfiguration.add_member(:issue_sub_entity_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueSubEntityFilter, name: "IssueSubEntityFilter"))
    JiraConfiguration.add_member(:attachment_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "AttachmentFieldMappings"))
    JiraConfiguration.add_member(:comment_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "CommentFieldMappings"))
    JiraConfiguration.add_member(:issue_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "IssueFieldMappings"))
    JiraConfiguration.add_member(:project_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "ProjectFieldMappings"))
    JiraConfiguration.add_member(:work_log_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "WorkLogFieldMappings"))
    JiraConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    JiraConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    JiraConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    JiraConfiguration.type = Types::JiraConfiguration
    JiraStatus.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    JsonTokenTypeConfiguration.add_member(:user_name_attribute_field, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UserNameAttributeField", traits: {"smithy.api#required" => {}}))
    JsonTokenTypeConfiguration.add_member(:group_attribute_field, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GroupAttributeField", traits: {"smithy.api#required" => {}}))
    JsonTokenTypeConfiguration.type = Types::JsonTokenTypeConfiguration
    JwtTokenTypeConfiguration.add_member(:key_location, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyLocation, name: "KeyLocation", traits: {"smithy.api#required" => {}}))
    JwtTokenTypeConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "URL"))
    JwtTokenTypeConfiguration.add_member(:secret_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "SecretManagerArn"))
    JwtTokenTypeConfiguration.add_member(:user_name_attribute_field, ::Smithy::Schema::Shapes::MemberShape.new(target: UserNameAttributeField, name: "UserNameAttributeField"))
    JwtTokenTypeConfiguration.add_member(:group_attribute_field, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupAttributeField, name: "GroupAttributeField"))
    JwtTokenTypeConfiguration.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "Issuer"))
    JwtTokenTypeConfiguration.add_member(:claim_regex, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimRegex, name: "ClaimRegex"))
    JwtTokenTypeConfiguration.type = Types::JwtTokenTypeConfiguration
    KeyLocation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    KeyLocation.add_member(:secret_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRET_MANAGER", traits: {"smithy.api#enumValue" => "SECRET_MANAGER"}))
    ListAccessControlConfigurationsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListAccessControlConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAccessControlConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListAccessControlConfigurationsRequest, name: "MaxResults"))
    ListAccessControlConfigurationsRequest.type = Types::ListAccessControlConfigurationsRequest
    ListAccessControlConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAccessControlConfigurationsResponse.add_member(:access_control_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationSummaryList, name: "AccessControlConfigurations", traits: {"smithy.api#required" => {}}))
    ListAccessControlConfigurationsResponse.type = Types::ListAccessControlConfigurationsResponse
    ListDataSourceSyncJobsRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataSourceSyncJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListDataSourceSyncJobsRequest, name: "MaxResults"))
    ListDataSourceSyncJobsRequest.add_member(:start_time_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRange, name: "StartTimeFilter"))
    ListDataSourceSyncJobsRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobStatus, name: "StatusFilter"))
    ListDataSourceSyncJobsRequest.type = Types::ListDataSourceSyncJobsRequest
    ListDataSourceSyncJobsResponse.add_member(:history, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSyncJobHistoryList, name: "History"))
    ListDataSourceSyncJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataSourceSyncJobsResponse.type = Types::ListDataSourceSyncJobsResponse
    ListDataSourcesRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListDataSourcesRequest, name: "MaxResults"))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceSummaryList, name: "SummaryItems"))
    ListDataSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListEntityPersonasRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    ListEntityPersonasRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListEntityPersonasRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEntityPersonasRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListEntityPersonasRequest, name: "MaxResults"))
    ListEntityPersonasRequest.type = Types::ListEntityPersonasRequest
    ListEntityPersonasResponse.add_member(:summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonasSummaryList, name: "SummaryItems"))
    ListEntityPersonasResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEntityPersonasResponse.type = Types::ListEntityPersonasResponse
    ListExperienceEntitiesRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    ListExperienceEntitiesRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListExperienceEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperienceEntitiesRequest.type = Types::ListExperienceEntitiesRequest
    ListExperienceEntitiesResponse.add_member(:summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceEntitiesSummaryList, name: "SummaryItems"))
    ListExperienceEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperienceEntitiesResponse.type = Types::ListExperienceEntitiesResponse
    ListExperiencesRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListExperiencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperiencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListExperiencesRequest, name: "MaxResults"))
    ListExperiencesRequest.type = Types::ListExperiencesRequest
    ListExperiencesResponse.add_member(:summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperiencesSummaryList, name: "SummaryItems"))
    ListExperiencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExperiencesResponse.type = Types::ListExperiencesResponse
    ListFaqsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListFaqsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFaqsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListFaqsRequest, name: "MaxResults"))
    ListFaqsRequest.type = Types::ListFaqsRequest
    ListFaqsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFaqsResponse.add_member(:faq_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: FaqSummaryItems, name: "FaqSummaryItems"))
    ListFaqsResponse.type = Types::ListFaqsResponse
    ListFeaturedResultsSetsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListFeaturedResultsSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFeaturedResultsSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListFeaturedResultsSetsRequest, name: "MaxResults"))
    ListFeaturedResultsSetsRequest.type = Types::ListFeaturedResultsSetsRequest
    ListFeaturedResultsSetsResponse.add_member(:featured_results_set_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetSummaryItems, name: "FeaturedResultsSetSummaryItems"))
    ListFeaturedResultsSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListFeaturedResultsSetsResponse.type = Types::ListFeaturedResultsSetsResponse
    ListGroupsOlderThanOrderingIdRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListGroupsOlderThanOrderingIdRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    ListGroupsOlderThanOrderingIdRequest.add_member(:ordering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrderingId, name: "OrderingId", traits: {"smithy.api#required" => {}}))
    ListGroupsOlderThanOrderingIdRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsOlderThanOrderingIdRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListPrincipalsRequest, name: "MaxResults"))
    ListGroupsOlderThanOrderingIdRequest.type = Types::ListGroupsOlderThanOrderingIdRequest
    ListGroupsOlderThanOrderingIdResponse.add_member(:groups_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfGroupSummaries, name: "GroupsSummaries"))
    ListGroupsOlderThanOrderingIdResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsOlderThanOrderingIdResponse.type = Types::ListGroupsOlderThanOrderingIdResponse
    ListIndicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIndicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListIndicesRequest, name: "MaxResults"))
    ListIndicesRequest.type = Types::ListIndicesRequest
    ListIndicesResponse.add_member(:index_configuration_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexConfigurationSummaryList, name: "IndexConfigurationSummaryItems"))
    ListIndicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListIndicesResponse.type = Types::ListIndicesResponse
    ListOfGroupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummary, name: "member"))
    ListQuerySuggestionsBlockListsRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListQuerySuggestionsBlockListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListQuerySuggestionsBlockListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListQuerySuggestionsBlockLists, name: "MaxResults"))
    ListQuerySuggestionsBlockListsRequest.type = Types::ListQuerySuggestionsBlockListsRequest
    ListQuerySuggestionsBlockListsResponse.add_member(:block_list_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListSummaryItems, name: "BlockListSummaryItems"))
    ListQuerySuggestionsBlockListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListQuerySuggestionsBlockListsResponse.type = Types::ListQuerySuggestionsBlockListsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListThesauriRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    ListThesauriRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListThesauriRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsIntegerForListThesauriRequest, name: "MaxResults"))
    ListThesauriRequest.type = Types::ListThesauriRequest
    ListThesauriResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListThesauriResponse.add_member(:thesaurus_summary_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusSummaryItems, name: "ThesaurusSummaryItems"))
    ListThesauriResponse.type = Types::ListThesauriResponse
    MemberGroup.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    MemberGroup.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    MemberGroup.type = Types::MemberGroup
    MemberGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberGroup, name: "member"))
    MemberUser.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId", traits: {"smithy.api#required" => {}}))
    MemberUser.type = Types::MemberUser
    MemberUsers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberUser, name: "member"))
    MetricType.add_member(:queries_by_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERIES_BY_COUNT", traits: {"smithy.api#enumValue" => "QUERIES_BY_COUNT"}))
    MetricType.add_member(:queries_by_zero_click_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERIES_BY_ZERO_CLICK_RATE", traits: {"smithy.api#enumValue" => "QUERIES_BY_ZERO_CLICK_RATE"}))
    MetricType.add_member(:queries_by_zero_result_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERIES_BY_ZERO_RESULT_RATE", traits: {"smithy.api#enumValue" => "QUERIES_BY_ZERO_RESULT_RATE"}))
    MetricType.add_member(:docs_by_click_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCS_BY_CLICK_COUNT", traits: {"smithy.api#enumValue" => "DOCS_BY_CLICK_COUNT"}))
    MetricType.add_member(:agg_query_doc_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGG_QUERY_DOC_METRICS", traits: {"smithy.api#enumValue" => "AGG_QUERY_DOC_METRICS"}))
    MetricType.add_member(:trend_query_doc_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TREND_QUERY_DOC_METRICS", traits: {"smithy.api#enumValue" => "TREND_QUERY_DOC_METRICS"}))
    MissingAttributeKeyStrategy.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IGNORE", traits: {"smithy.api#enumValue" => "IGNORE"}))
    MissingAttributeKeyStrategy.add_member(:collapse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COLLAPSE", traits: {"smithy.api#enumValue" => "COLLAPSE"}))
    MissingAttributeKeyStrategy.add_member(:expand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPAND", traits: {"smithy.api#enumValue" => "EXPAND"}))
    Mode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Mode.add_member(:learn_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEARN_ONLY", traits: {"smithy.api#enumValue" => "LEARN_ONLY"}))
    OnPremiseConfiguration.add_member(:host_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "HostUrl", traits: {"smithy.api#required" => {}}))
    OnPremiseConfiguration.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationName, name: "OrganizationName", traits: {"smithy.api#required" => {}}))
    OnPremiseConfiguration.add_member(:ssl_certificate_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SslCertificateS3Path", traits: {"smithy.api#required" => {}}))
    OnPremiseConfiguration.type = Types::OnPremiseConfiguration
    OneDriveConfiguration.add_member(:tenant_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantDomain, name: "TenantDomain", traits: {"smithy.api#required" => {}}))
    OneDriveConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    OneDriveConfiguration.add_member(:one_drive_users, ::Smithy::Schema::Shapes::MemberShape.new(target: OneDriveUsers, name: "OneDriveUsers", traits: {"smithy.api#required" => {}}))
    OneDriveConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    OneDriveConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    OneDriveConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    OneDriveConfiguration.add_member(:disable_local_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DisableLocalGroups", traits: {"smithy.api#default" => false}))
    OneDriveConfiguration.type = Types::OneDriveConfiguration
    OneDriveUserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OneDriveUser, name: "member"))
    OneDriveUsers.add_member(:one_drive_user_list, ::Smithy::Schema::Shapes::MemberShape.new(target: OneDriveUserList, name: "OneDriveUserList"))
    OneDriveUsers.add_member(:one_drive_user_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "OneDriveUserS3Path"))
    OneDriveUsers.type = Types::OneDriveUsers
    Order.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    Order.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Persona.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OWNER", traits: {"smithy.api#enumValue" => "OWNER"}))
    Persona.add_member(:viewer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIEWER", traits: {"smithy.api#enumValue" => "VIEWER"}))
    PersonasSummary.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "EntityId"))
    PersonasSummary.add_member(:persona, ::Smithy::Schema::Shapes::MemberShape.new(target: Persona, name: "Persona"))
    PersonasSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    PersonasSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    PersonasSummary.type = Types::PersonasSummary
    PersonasSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PersonasSummary, name: "member"))
    Principal.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalName, name: "Name", traits: {"smithy.api#required" => {}}))
    Principal.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "Type", traits: {"smithy.api#required" => {}}))
    Principal.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadAccessType, name: "Access", traits: {"smithy.api#required" => {}}))
    Principal.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    Principal.type = Types::Principal
    PrincipalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "member"))
    PrincipalMappingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PrincipalMappingStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    PrincipalMappingStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    PrincipalMappingStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    PrincipalMappingStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    PrincipalType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    PrincipalType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    PrivateChannelFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    Project.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ProxyConfiguration.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "Host", traits: {"smithy.api#required" => {}}))
    ProxyConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Port, name: "Port", traits: {"smithy.api#required" => {}}))
    ProxyConfiguration.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "Credentials"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    PublicChannelFilter.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    PutPrincipalMappingRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    PutPrincipalMappingRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    PutPrincipalMappingRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "GroupId", traits: {"smithy.api#required" => {}}))
    PutPrincipalMappingRequest.add_member(:group_members, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupMembers, name: "GroupMembers", traits: {"smithy.api#required" => {}}))
    PutPrincipalMappingRequest.add_member(:ordering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalOrderingId, name: "OrderingId"))
    PutPrincipalMappingRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    PutPrincipalMappingRequest.type = Types::PutPrincipalMappingRequest
    QueryIdentifiersEnclosingOption.add_member(:double_quotes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOUBLE_QUOTES", traits: {"smithy.api#enumValue" => "DOUBLE_QUOTES"}))
    QueryIdentifiersEnclosingOption.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    QueryRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    QueryRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "QueryText"))
    QueryRequest.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, name: "AttributeFilter"))
    QueryRequest.add_member(:facets, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetList, name: "Facets"))
    QueryRequest.add_member(:requested_document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKeyList, name: "RequestedDocumentAttributes"))
    QueryRequest.add_member(:query_result_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultType, name: "QueryResultTypeFilter"))
    QueryRequest.add_member(:document_relevance_override_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRelevanceOverrideConfigurationList, name: "DocumentRelevanceOverrideConfigurations"))
    QueryRequest.add_member(:page_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PageNumber"))
    QueryRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PageSize"))
    QueryRequest.add_member(:sorting_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SortingConfiguration, name: "SortingConfiguration"))
    QueryRequest.add_member(:sorting_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SortingConfigurationList, name: "SortingConfigurations"))
    QueryRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "UserContext"))
    QueryRequest.add_member(:visitor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VisitorId, name: "VisitorId"))
    QueryRequest.add_member(:spell_correction_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SpellCorrectionConfiguration, name: "SpellCorrectionConfiguration"))
    QueryRequest.add_member(:collapse_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CollapseConfiguration, name: "CollapseConfiguration"))
    QueryRequest.type = Types::QueryRequest
    QueryResult.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, name: "QueryId"))
    QueryResult.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultItemList, name: "ResultItems"))
    QueryResult.add_member(:facet_results, ::Smithy::Schema::Shapes::MemberShape.new(target: FacetResultList, name: "FacetResults"))
    QueryResult.add_member(:total_number_of_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalNumberOfResults"))
    QueryResult.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningList, name: "Warnings"))
    QueryResult.add_member(:spell_corrected_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: SpellCorrectedQueryList, name: "SpellCorrectedQueries"))
    QueryResult.add_member(:featured_results_items, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsItemList, name: "FeaturedResultsItems"))
    QueryResult.type = Types::QueryResult
    QueryResultFormat.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE", traits: {"smithy.api#enumValue" => "TABLE"}))
    QueryResultFormat.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    QueryResultItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "Id"))
    QueryResultItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultType, name: "Type"))
    QueryResultItem.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultFormat, name: "Format"))
    QueryResultItem.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalResultAttributeList, name: "AdditionalAttributes"))
    QueryResultItem.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    QueryResultItem.add_member(:document_title, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "DocumentTitle"))
    QueryResultItem.add_member(:document_excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: TextWithHighlights, name: "DocumentExcerpt"))
    QueryResultItem.add_member(:document_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "DocumentURI"))
    QueryResultItem.add_member(:document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "DocumentAttributes"))
    QueryResultItem.add_member(:score_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreAttributes, name: "ScoreAttributes"))
    QueryResultItem.add_member(:feedback_token, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackToken, name: "FeedbackToken"))
    QueryResultItem.add_member(:table_excerpt, ::Smithy::Schema::Shapes::MemberShape.new(target: TableExcerpt, name: "TableExcerpt"))
    QueryResultItem.add_member(:collapsed_result_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: CollapsedResultDetail, name: "CollapsedResultDetail"))
    QueryResultItem.type = Types::QueryResultItem
    QueryResultItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryResultItem, name: "member"))
    QueryResultType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    QueryResultType.add_member(:question_answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUESTION_ANSWER", traits: {"smithy.api#enumValue" => "QUESTION_ANSWER"}))
    QueryResultType.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSWER", traits: {"smithy.api#enumValue" => "ANSWER"}))
    QuerySuggestionsBlockListStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QuerySuggestionsBlockListStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    QuerySuggestionsBlockListStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    QuerySuggestionsBlockListStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    QuerySuggestionsBlockListStatus.add_member(:active_but_update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_BUT_UPDATE_FAILED", traits: {"smithy.api#enumValue" => "ACTIVE_BUT_UPDATE_FAILED"}))
    QuerySuggestionsBlockListStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    QuerySuggestionsBlockListSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListId, name: "Id"))
    QuerySuggestionsBlockListSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListName, name: "Name"))
    QuerySuggestionsBlockListSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListStatus, name: "Status"))
    QuerySuggestionsBlockListSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    QuerySuggestionsBlockListSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    QuerySuggestionsBlockListSummary.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ItemCount"))
    QuerySuggestionsBlockListSummary.type = Types::QuerySuggestionsBlockListSummary
    QuerySuggestionsBlockListSummaryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListSummary, name: "member"))
    QuerySuggestionsStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    QuerySuggestionsStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    QueryTextList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "member"))
    QuipConfiguration.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain", traits: {"smithy.api#required" => {}}))
    QuipConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    QuipConfiguration.add_member(:crawl_file_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlFileComments", traits: {"smithy.api#default" => false}))
    QuipConfiguration.add_member(:crawl_chat_rooms, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlChatRooms", traits: {"smithy.api#default" => false}))
    QuipConfiguration.add_member(:crawl_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlAttachments", traits: {"smithy.api#default" => false}))
    QuipConfiguration.add_member(:folder_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderIdList, name: "FolderIds"))
    QuipConfiguration.add_member(:thread_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "ThreadFieldMappings"))
    QuipConfiguration.add_member(:message_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "MessageFieldMappings"))
    QuipConfiguration.add_member(:attachment_field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "AttachmentFieldMappings"))
    QuipConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    QuipConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    QuipConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    QuipConfiguration.type = Types::QuipConfiguration
    ReadAccessType.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    ReadAccessType.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    Relevance.add_member(:freshness, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataBoolean, name: "Freshness"))
    Relevance.add_member(:importance, ::Smithy::Schema::Shapes::MemberShape.new(target: Importance, name: "Importance"))
    Relevance.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "Duration"))
    Relevance.add_member(:rank_order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "RankOrder"))
    Relevance.add_member(:value_importance_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueImportanceMap, name: "ValueImportanceMap"))
    Relevance.type = Types::Relevance
    RelevanceFeedback.add_member(:result_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "ResultId", traits: {"smithy.api#required" => {}}))
    RelevanceFeedback.add_member(:relevance_value, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceType, name: "RelevanceValue", traits: {"smithy.api#required" => {}}))
    RelevanceFeedback.type = Types::RelevanceFeedback
    RelevanceFeedbackList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceFeedback, name: "member"))
    RelevanceType.add_member(:relevant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEVANT", traits: {"smithy.api#enumValue" => "RELEVANT"}))
    RelevanceType.add_member(:not_relevant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_RELEVANT", traits: {"smithy.api#enumValue" => "NOT_RELEVANT"}))
    RepositoryNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "member"))
    ResourceAlreadyExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceAlreadyExistException.type = Types::ResourceAlreadyExistException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RetrieveRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    RetrieveRequest.add_member(:query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryText, name: "QueryText", traits: {"smithy.api#required" => {}}))
    RetrieveRequest.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeFilter, name: "AttributeFilter"))
    RetrieveRequest.add_member(:requested_document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKeyList, name: "RequestedDocumentAttributes"))
    RetrieveRequest.add_member(:document_relevance_override_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentRelevanceOverrideConfigurationList, name: "DocumentRelevanceOverrideConfigurations"))
    RetrieveRequest.add_member(:page_number, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PageNumber"))
    RetrieveRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "PageSize"))
    RetrieveRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "UserContext"))
    RetrieveRequest.type = Types::RetrieveRequest
    RetrieveResult.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, name: "QueryId"))
    RetrieveResult.add_member(:result_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveResultItemList, name: "ResultItems"))
    RetrieveResult.type = Types::RetrieveResult
    RetrieveResultItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "Id"))
    RetrieveResultItem.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    RetrieveResultItem.add_member(:document_title, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentTitle, name: "DocumentTitle"))
    RetrieveResultItem.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Content"))
    RetrieveResultItem.add_member(:document_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "DocumentURI"))
    RetrieveResultItem.add_member(:document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "DocumentAttributes"))
    RetrieveResultItem.add_member(:score_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreAttributes, name: "ScoreAttributes"))
    RetrieveResultItem.type = Types::RetrieveResultItem
    RetrieveResultItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RetrieveResultItem, name: "member"))
    S3DataSourceConfiguration.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3DataSourceConfiguration.add_member(:inclusion_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPrefixes"))
    S3DataSourceConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    S3DataSourceConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    S3DataSourceConfiguration.add_member(:documents_metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentsMetadataConfiguration, name: "DocumentsMetadataConfiguration"))
    S3DataSourceConfiguration.add_member(:access_control_list_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlListConfiguration, name: "AccessControlListConfiguration"))
    S3DataSourceConfiguration.type = Types::S3DataSourceConfiguration
    S3Path.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3Path.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectKey, name: "Key", traits: {"smithy.api#required" => {}}))
    S3Path.type = Types::S3Path
    SaaSConfiguration.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationName, name: "OrganizationName", traits: {"smithy.api#required" => {}}))
    SaaSConfiguration.add_member(:host_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "HostUrl", traits: {"smithy.api#required" => {}}))
    SaaSConfiguration.type = Types::SaaSConfiguration
    SalesforceChatterFeedConfiguration.add_member(:document_data_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentDataFieldName", traits: {"smithy.api#required" => {}}))
    SalesforceChatterFeedConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    SalesforceChatterFeedConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SalesforceChatterFeedConfiguration.add_member(:include_filter_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceChatterFeedIncludeFilterTypes, name: "IncludeFilterTypes"))
    SalesforceChatterFeedConfiguration.type = Types::SalesforceChatterFeedConfiguration
    SalesforceChatterFeedIncludeFilterType.add_member(:active_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_USER", traits: {"smithy.api#enumValue" => "ACTIVE_USER"}))
    SalesforceChatterFeedIncludeFilterType.add_member(:standard_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_USER", traits: {"smithy.api#enumValue" => "STANDARD_USER"}))
    SalesforceChatterFeedIncludeFilterTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceChatterFeedIncludeFilterType, name: "member"))
    SalesforceConfiguration.add_member(:server_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "ServerUrl", traits: {"smithy.api#required" => {}}))
    SalesforceConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    SalesforceConfiguration.add_member(:standard_object_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceStandardObjectConfigurationList, name: "StandardObjectConfigurations"))
    SalesforceConfiguration.add_member(:knowledge_article_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceKnowledgeArticleConfiguration, name: "KnowledgeArticleConfiguration"))
    SalesforceConfiguration.add_member(:chatter_feed_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceChatterFeedConfiguration, name: "ChatterFeedConfiguration"))
    SalesforceConfiguration.add_member(:crawl_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlAttachments", traits: {"smithy.api#default" => false}))
    SalesforceConfiguration.add_member(:standard_object_attachment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceStandardObjectAttachmentConfiguration, name: "StandardObjectAttachmentConfiguration"))
    SalesforceConfiguration.add_member(:include_attachment_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "IncludeAttachmentFilePatterns"))
    SalesforceConfiguration.add_member(:exclude_attachment_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExcludeAttachmentFilePatterns"))
    SalesforceConfiguration.type = Types::SalesforceConfiguration
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceCustomKnowledgeArticleTypeName, name: "Name", traits: {"smithy.api#required" => {}}))
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:document_data_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentDataFieldName", traits: {"smithy.api#required" => {}}))
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    SalesforceCustomKnowledgeArticleTypeConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SalesforceCustomKnowledgeArticleTypeConfiguration.type = Types::SalesforceCustomKnowledgeArticleTypeConfiguration
    SalesforceCustomKnowledgeArticleTypeConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceCustomKnowledgeArticleTypeConfiguration, name: "member"))
    SalesforceKnowledgeArticleConfiguration.add_member(:included_states, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceKnowledgeArticleStateList, name: "IncludedStates", traits: {"smithy.api#required" => {}}))
    SalesforceKnowledgeArticleConfiguration.add_member(:standard_knowledge_article_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceStandardKnowledgeArticleTypeConfiguration, name: "StandardKnowledgeArticleTypeConfiguration"))
    SalesforceKnowledgeArticleConfiguration.add_member(:custom_knowledge_article_type_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceCustomKnowledgeArticleTypeConfigurationList, name: "CustomKnowledgeArticleTypeConfigurations"))
    SalesforceKnowledgeArticleConfiguration.type = Types::SalesforceKnowledgeArticleConfiguration
    SalesforceKnowledgeArticleState.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    SalesforceKnowledgeArticleState.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "PUBLISHED"}))
    SalesforceKnowledgeArticleState.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    SalesforceKnowledgeArticleStateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceKnowledgeArticleState, name: "member"))
    SalesforceStandardKnowledgeArticleTypeConfiguration.add_member(:document_data_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentDataFieldName", traits: {"smithy.api#required" => {}}))
    SalesforceStandardKnowledgeArticleTypeConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    SalesforceStandardKnowledgeArticleTypeConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SalesforceStandardKnowledgeArticleTypeConfiguration.type = Types::SalesforceStandardKnowledgeArticleTypeConfiguration
    SalesforceStandardObjectAttachmentConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    SalesforceStandardObjectAttachmentConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SalesforceStandardObjectAttachmentConfiguration.type = Types::SalesforceStandardObjectAttachmentConfiguration
    SalesforceStandardObjectConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceStandardObjectName, name: "Name", traits: {"smithy.api#required" => {}}))
    SalesforceStandardObjectConfiguration.add_member(:document_data_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentDataFieldName", traits: {"smithy.api#required" => {}}))
    SalesforceStandardObjectConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    SalesforceStandardObjectConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SalesforceStandardObjectConfiguration.type = Types::SalesforceStandardObjectConfiguration
    SalesforceStandardObjectConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesforceStandardObjectConfiguration, name: "member"))
    SalesforceStandardObjectName.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    SalesforceStandardObjectName.add_member(:campaign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAMPAIGN", traits: {"smithy.api#enumValue" => "CAMPAIGN"}))
    SalesforceStandardObjectName.add_member(:case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CASE", traits: {"smithy.api#enumValue" => "CASE"}))
    SalesforceStandardObjectName.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT", traits: {"smithy.api#enumValue" => "CONTACT"}))
    SalesforceStandardObjectName.add_member(:contract, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRACT", traits: {"smithy.api#enumValue" => "CONTRACT"}))
    SalesforceStandardObjectName.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    SalesforceStandardObjectName.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    SalesforceStandardObjectName.add_member(:idea, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDEA", traits: {"smithy.api#enumValue" => "IDEA"}))
    SalesforceStandardObjectName.add_member(:lead, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEAD", traits: {"smithy.api#enumValue" => "LEAD"}))
    SalesforceStandardObjectName.add_member(:opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY", traits: {"smithy.api#enumValue" => "OPPORTUNITY"}))
    SalesforceStandardObjectName.add_member(:partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER", traits: {"smithy.api#enumValue" => "PARTNER"}))
    SalesforceStandardObjectName.add_member(:pricebook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICEBOOK", traits: {"smithy.api#enumValue" => "PRICEBOOK"}))
    SalesforceStandardObjectName.add_member(:product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT", traits: {"smithy.api#enumValue" => "PRODUCT"}))
    SalesforceStandardObjectName.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFILE", traits: {"smithy.api#enumValue" => "PROFILE"}))
    SalesforceStandardObjectName.add_member(:solution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLUTION", traits: {"smithy.api#enumValue" => "SOLUTION"}))
    SalesforceStandardObjectName.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "TASK"}))
    SalesforceStandardObjectName.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ScoreAttributes.add_member(:score_confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreConfidence, name: "ScoreConfidence"))
    ScoreAttributes.type = Types::ScoreAttributes
    ScoreConfidence.add_member(:very_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_HIGH", traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    ScoreConfidence.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ScoreConfidence.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ScoreConfidence.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ScoreConfidence.add_member(:not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    Search.add_member(:facetable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Facetable", traits: {"smithy.api#default" => false}))
    Search.add_member(:searchable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Searchable", traits: {"smithy.api#default" => false}))
    Search.add_member(:displayable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Displayable", traits: {"smithy.api#default" => false}))
    Search.add_member(:sortable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Sortable", traits: {"smithy.api#default" => false}))
    Search.type = Types::Search
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupId, name: "member"))
    SeedUrlConfiguration.add_member(:seed_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: SeedUrlList, name: "SeedUrls", traits: {"smithy.api#required" => {}}))
    SeedUrlConfiguration.add_member(:web_crawler_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: WebCrawlerMode, name: "WebCrawlerMode"))
    SeedUrlConfiguration.type = Types::SeedUrlConfiguration
    SeedUrlList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SeedUrl, name: "member"))
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "KmsKeyId"))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServiceNowAuthenticationType.add_member(:http_basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_BASIC", traits: {"smithy.api#enumValue" => "HTTP_BASIC"}))
    ServiceNowAuthenticationType.add_member(:oauth2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH2", traits: {"smithy.api#enumValue" => "OAUTH2"}))
    ServiceNowBuildVersionType.add_member(:london, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONDON", traits: {"smithy.api#enumValue" => "LONDON"}))
    ServiceNowBuildVersionType.add_member(:others, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHERS", traits: {"smithy.api#enumValue" => "OTHERS"}))
    ServiceNowConfiguration.add_member(:host_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowHostUrl, name: "HostUrl", traits: {"smithy.api#required" => {}}))
    ServiceNowConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    ServiceNowConfiguration.add_member(:service_now_build_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowBuildVersionType, name: "ServiceNowBuildVersion", traits: {"smithy.api#required" => {}}))
    ServiceNowConfiguration.add_member(:knowledge_article_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowKnowledgeArticleConfiguration, name: "KnowledgeArticleConfiguration"))
    ServiceNowConfiguration.add_member(:service_catalog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowServiceCatalogConfiguration, name: "ServiceCatalogConfiguration"))
    ServiceNowConfiguration.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowAuthenticationType, name: "AuthenticationType"))
    ServiceNowConfiguration.type = Types::ServiceNowConfiguration
    ServiceNowKnowledgeArticleConfiguration.add_member(:crawl_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlAttachments", traits: {"smithy.api#default" => false}))
    ServiceNowKnowledgeArticleConfiguration.add_member(:include_attachment_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "IncludeAttachmentFilePatterns"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:exclude_attachment_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExcludeAttachmentFilePatterns"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:document_data_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentDataFieldName", traits: {"smithy.api#required" => {}}))
    ServiceNowKnowledgeArticleConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    ServiceNowKnowledgeArticleConfiguration.add_member(:filter_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNowKnowledgeArticleFilterQuery, name: "FilterQuery"))
    ServiceNowKnowledgeArticleConfiguration.type = Types::ServiceNowKnowledgeArticleConfiguration
    ServiceNowServiceCatalogConfiguration.add_member(:crawl_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlAttachments", traits: {"smithy.api#default" => false}))
    ServiceNowServiceCatalogConfiguration.add_member(:include_attachment_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "IncludeAttachmentFilePatterns"))
    ServiceNowServiceCatalogConfiguration.add_member(:exclude_attachment_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExcludeAttachmentFilePatterns"))
    ServiceNowServiceCatalogConfiguration.add_member(:document_data_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentDataFieldName", traits: {"smithy.api#required" => {}}))
    ServiceNowServiceCatalogConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    ServiceNowServiceCatalogConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    ServiceNowServiceCatalogConfiguration.type = Types::ServiceNowServiceCatalogConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SharePointConfiguration.add_member(:share_point_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SharePointVersion, name: "SharePointVersion", traits: {"smithy.api#required" => {}}))
    SharePointConfiguration.add_member(:urls, ::Smithy::Schema::Shapes::MemberShape.new(target: SharePointUrlList, name: "Urls", traits: {"smithy.api#required" => {}}))
    SharePointConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    SharePointConfiguration.add_member(:crawl_attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlAttachments", traits: {"smithy.api#default" => false}))
    SharePointConfiguration.add_member(:use_change_log, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseChangeLog", traits: {"smithy.api#default" => false}))
    SharePointConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    SharePointConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    SharePointConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    SharePointConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SharePointConfiguration.add_member(:document_title_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceFieldName, name: "DocumentTitleFieldName"))
    SharePointConfiguration.add_member(:disable_local_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DisableLocalGroups", traits: {"smithy.api#default" => false}))
    SharePointConfiguration.add_member(:ssl_certificate_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SslCertificateS3Path"))
    SharePointConfiguration.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SharePointOnlineAuthenticationType, name: "AuthenticationType"))
    SharePointConfiguration.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    SharePointConfiguration.type = Types::SharePointConfiguration
    SharePointOnlineAuthenticationType.add_member(:http_basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_BASIC", traits: {"smithy.api#enumValue" => "HTTP_BASIC"}))
    SharePointOnlineAuthenticationType.add_member(:oauth2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH2", traits: {"smithy.api#enumValue" => "OAUTH2"}))
    SharePointUrlList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "member"))
    SharePointVersion.add_member(:sharepoint_2013, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHAREPOINT_2013", traits: {"smithy.api#enumValue" => "SHAREPOINT_2013"}))
    SharePointVersion.add_member(:sharepoint_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHAREPOINT_2016", traits: {"smithy.api#enumValue" => "SHAREPOINT_2016"}))
    SharePointVersion.add_member(:sharepoint_online, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHAREPOINT_ONLINE", traits: {"smithy.api#enumValue" => "SHAREPOINT_ONLINE"}))
    SharePointVersion.add_member(:sharepoint_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHAREPOINT_2019", traits: {"smithy.api#enumValue" => "SHAREPOINT_2019"}))
    SiteMapsConfiguration.add_member(:site_maps, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteMapsList, name: "SiteMaps", traits: {"smithy.api#required" => {}}))
    SiteMapsConfiguration.type = Types::SiteMapsConfiguration
    SiteMapsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteMap, name: "member"))
    SlackConfiguration.add_member(:team_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TeamId, name: "TeamId", traits: {"smithy.api#required" => {}}))
    SlackConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "SecretArn", traits: {"smithy.api#required" => {}}))
    SlackConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    SlackConfiguration.add_member(:slack_entity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackEntityList, name: "SlackEntityList", traits: {"smithy.api#required" => {}}))
    SlackConfiguration.add_member(:use_change_log, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseChangeLog", traits: {"smithy.api#default" => false}))
    SlackConfiguration.add_member(:crawl_bot_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlBotMessage", traits: {"smithy.api#default" => false}))
    SlackConfiguration.add_member(:exclude_archived, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ExcludeArchived", traits: {"smithy.api#default" => false}))
    SlackConfiguration.add_member(:since_crawl_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SinceCrawlDate, name: "SinceCrawlDate", traits: {"smithy.api#required" => {}}))
    SlackConfiguration.add_member(:look_back_period, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriod, name: "LookBackPeriod"))
    SlackConfiguration.add_member(:private_channel_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateChannelFilter, name: "PrivateChannelFilter"))
    SlackConfiguration.add_member(:public_channel_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicChannelFilter, name: "PublicChannelFilter"))
    SlackConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    SlackConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    SlackConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    SlackConfiguration.type = Types::SlackConfiguration
    SlackEntity.add_member(:public_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_CHANNEL", traits: {"smithy.api#enumValue" => "PUBLIC_CHANNEL"}))
    SlackEntity.add_member(:private_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE_CHANNEL", traits: {"smithy.api#enumValue" => "PRIVATE_CHANNEL"}))
    SlackEntity.add_member(:group_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP_MESSAGE", traits: {"smithy.api#enumValue" => "GROUP_MESSAGE"}))
    SlackEntity.add_member(:direct_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECT_MESSAGE", traits: {"smithy.api#enumValue" => "DIRECT_MESSAGE"}))
    SlackEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SlackEntity, name: "member"))
    SnapshotsDataHeaderFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SnapshotsDataRecord.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SnapshotsDataRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotsDataRecord, name: "member"))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortingConfiguration.add_member(:document_attribute_key, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "DocumentAttributeKey", traits: {"smithy.api#required" => {}}))
    SortingConfiguration.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#required" => {}}))
    SortingConfiguration.type = Types::SortingConfiguration
    SortingConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SortingConfiguration, name: "member"))
    SourceDocument.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DocumentId"))
    SourceDocument.add_member(:suggestion_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKeyList, name: "SuggestionAttributes"))
    SourceDocument.add_member(:additional_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeList, name: "AdditionalAttributes"))
    SourceDocument.type = Types::SourceDocument
    SourceDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDocument, name: "member"))
    SpellCorrectedQuery.add_member(:suggested_query_text, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedQueryText, name: "SuggestedQueryText"))
    SpellCorrectedQuery.add_member(:corrections, ::Smithy::Schema::Shapes::MemberShape.new(target: CorrectionList, name: "Corrections"))
    SpellCorrectedQuery.type = Types::SpellCorrectedQuery
    SpellCorrectedQueryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpellCorrectedQuery, name: "member"))
    SpellCorrectionConfiguration.add_member(:include_query_spell_check_suggestions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeQuerySpellCheckSuggestions", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    SpellCorrectionConfiguration.type = Types::SpellCorrectionConfiguration
    SqlConfiguration.add_member(:query_identifiers_enclosing_option, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifiersEnclosingOption, name: "QueryIdentifiersEnclosingOption"))
    SqlConfiguration.type = Types::SqlConfiguration
    StartDataSourceSyncJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.type = Types::StartDataSourceSyncJobRequest
    StartDataSourceSyncJobResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutionId"))
    StartDataSourceSyncJobResponse.type = Types::StartDataSourceSyncJobResponse
    Status.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentId, name: "DocumentId"))
    Status.add_member(:document_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStatus, name: "DocumentStatus"))
    Status.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureCode"))
    Status.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureReason"))
    Status.type = Types::Status
    StopDataSourceSyncJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.type = Types::StopDataSourceSyncJobRequest
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubmitFeedbackRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    SubmitFeedbackRequest.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, name: "QueryId", traits: {"smithy.api#required" => {}}))
    SubmitFeedbackRequest.add_member(:click_feedback_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ClickFeedbackList, name: "ClickFeedbackItems"))
    SubmitFeedbackRequest.add_member(:relevance_feedback_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RelevanceFeedbackList, name: "RelevanceFeedbackItems"))
    SubmitFeedbackRequest.type = Types::SubmitFeedbackRequest
    SubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    SuggestableConfig.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentAttributeKey, name: "AttributeName"))
    SuggestableConfig.add_member(:suggestable, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectBoolean, name: "Suggestable"))
    SuggestableConfig.type = Types::SuggestableConfig
    SuggestableConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestableConfig, name: "member"))
    Suggestion.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultId, name: "Id"))
    Suggestion.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionValue, name: "Value"))
    Suggestion.add_member(:source_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDocuments, name: "SourceDocuments"))
    Suggestion.type = Types::Suggestion
    SuggestionHighlight.add_member(:begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "BeginOffset"))
    SuggestionHighlight.add_member(:end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndOffset"))
    SuggestionHighlight.type = Types::SuggestionHighlight
    SuggestionHighlightList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionHighlight, name: "member"))
    SuggestionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Suggestion, name: "member"))
    SuggestionTextWithHighlights.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    SuggestionTextWithHighlights.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionHighlightList, name: "Highlights"))
    SuggestionTextWithHighlights.type = Types::SuggestionTextWithHighlights
    SuggestionType.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY", traits: {"smithy.api#enumValue" => "QUERY"}))
    SuggestionType.add_member(:document_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT_ATTRIBUTES", traits: {"smithy.api#enumValue" => "DOCUMENT_ATTRIBUTES"}))
    SuggestionTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionType, name: "member"))
    SuggestionValue.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestionTextWithHighlights, name: "Text"))
    SuggestionValue.type = Types::SuggestionValue
    TableCell.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    TableCell.add_member(:top_answer, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TopAnswer", traits: {"smithy.api#default" => false}))
    TableCell.add_member(:highlighted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Highlighted", traits: {"smithy.api#default" => false}))
    TableCell.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Header", traits: {"smithy.api#default" => false}))
    TableCell.type = Types::TableCell
    TableCellList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCell, name: "member"))
    TableExcerpt.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRowList, name: "Rows"))
    TableExcerpt.add_member(:total_number_of_rows, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalNumberOfRows"))
    TableExcerpt.type = Types::TableExcerpt
    TableRow.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCellList, name: "Cells"))
    TableRow.type = Types::TableRow
    TableRowList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRow, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TemplateConfiguration.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, name: "Template"))
    TemplateConfiguration.type = Types::TemplateConfiguration
    TextDocumentStatistics.add_member(:indexed_text_documents_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedTextDocumentsCount, name: "IndexedTextDocumentsCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TextDocumentStatistics.add_member(:indexed_text_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexedTextBytes, name: "IndexedTextBytes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TextDocumentStatistics.type = Types::TextDocumentStatistics
    TextWithHighlights.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    TextWithHighlights.add_member(:highlights, ::Smithy::Schema::Shapes::MemberShape.new(target: HighlightList, name: "Highlights"))
    TextWithHighlights.type = Types::TextWithHighlights
    ThesaurusStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ThesaurusStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ThesaurusStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ThesaurusStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ThesaurusStatus.add_member(:active_but_update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_BUT_UPDATE_FAILED", traits: {"smithy.api#enumValue" => "ACTIVE_BUT_UPDATE_FAILED"}))
    ThesaurusStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ThesaurusSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusId, name: "Id"))
    ThesaurusSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusName, name: "Name"))
    ThesaurusSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusStatus, name: "Status"))
    ThesaurusSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    ThesaurusSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    ThesaurusSummary.type = Types::ThesaurusSummary
    ThesaurusSummaryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusSummary, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    TimeRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndTime"))
    TimeRange.type = Types::TimeRange
    Type.add_member(:saas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAAS", traits: {"smithy.api#enumValue" => "SAAS"}))
    Type.add_member(:on_premise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_PREMISE", traits: {"smithy.api#enumValue" => "ON_PREMISE"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAccessControlConfigurationRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateAccessControlConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateAccessControlConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlConfigurationName, name: "Name"))
    UpdateAccessControlConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateAccessControlConfigurationRequest.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalList, name: "AccessControlList"))
    UpdateAccessControlConfigurationRequest.add_member(:hierarchical_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: HierarchicalPrincipalList, name: "HierarchicalAccessControlList"))
    UpdateAccessControlConfigurationRequest.type = Types::UpdateAccessControlConfigurationRequest
    UpdateAccessControlConfigurationResponse.type = Types::UpdateAccessControlConfigurationResponse
    UpdateDataSourceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceName, name: "Name"))
    UpdateDataSourceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfiguration, name: "Configuration"))
    UpdateDataSourceRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceVpcConfiguration, name: "VpcConfiguration"))
    UpdateDataSourceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDataSourceRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSchedule, name: "Schedule"))
    UpdateDataSourceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateDataSourceRequest.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageCode, name: "LanguageCode"))
    UpdateDataSourceRequest.add_member(:custom_document_enrichment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDocumentEnrichmentConfiguration, name: "CustomDocumentEnrichmentConfiguration"))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateExperienceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateExperienceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceName, name: "Name"))
    UpdateExperienceRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateExperienceRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateExperienceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperienceConfiguration, name: "Configuration"))
    UpdateExperienceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateExperienceRequest.type = Types::UpdateExperienceRequest
    UpdateFeaturedResultsSetRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateFeaturedResultsSetRequest.add_member(:featured_results_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetId, name: "FeaturedResultsSetId", traits: {"smithy.api#required" => {}}))
    UpdateFeaturedResultsSetRequest.add_member(:featured_results_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetName, name: "FeaturedResultsSetName"))
    UpdateFeaturedResultsSetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetDescription, name: "Description"))
    UpdateFeaturedResultsSetRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSetStatus, name: "Status"))
    UpdateFeaturedResultsSetRequest.add_member(:query_texts, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryTextList, name: "QueryTexts"))
    UpdateFeaturedResultsSetRequest.add_member(:featured_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedDocumentList, name: "FeaturedDocuments"))
    UpdateFeaturedResultsSetRequest.type = Types::UpdateFeaturedResultsSetRequest
    UpdateFeaturedResultsSetResponse.add_member(:featured_results_set, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturedResultsSet, name: "FeaturedResultsSet"))
    UpdateFeaturedResultsSetResponse.type = Types::UpdateFeaturedResultsSetResponse
    UpdateIndexRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "Name"))
    UpdateIndexRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateIndexRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateIndexRequest.add_member(:document_metadata_configuration_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadataConfigurationList, name: "DocumentMetadataConfigurationUpdates"))
    UpdateIndexRequest.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityUnitsConfiguration, name: "CapacityUnits"))
    UpdateIndexRequest.add_member(:user_token_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTokenConfigurationList, name: "UserTokenConfigurations"))
    UpdateIndexRequest.add_member(:user_context_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContextPolicy, name: "UserContextPolicy"))
    UpdateIndexRequest.add_member(:user_group_resolution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupResolutionConfiguration, name: "UserGroupResolutionConfiguration"))
    UpdateIndexRequest.type = Types::UpdateIndexRequest
    UpdateQuerySuggestionsBlockListRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateQuerySuggestionsBlockListRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateQuerySuggestionsBlockListRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QuerySuggestionsBlockListName, name: "Name"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:source_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SourceS3Path"))
    UpdateQuerySuggestionsBlockListRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateQuerySuggestionsBlockListRequest.type = Types::UpdateQuerySuggestionsBlockListRequest
    UpdateQuerySuggestionsConfigRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateQuerySuggestionsConfigRequest.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, name: "Mode"))
    UpdateQuerySuggestionsConfigRequest.add_member(:query_log_look_back_window_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "QueryLogLookBackWindowInDays"))
    UpdateQuerySuggestionsConfigRequest.add_member(:include_queries_without_user_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectBoolean, name: "IncludeQueriesWithoutUserInformation"))
    UpdateQuerySuggestionsConfigRequest.add_member(:minimum_number_of_querying_users, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumNumberOfQueryingUsers, name: "MinimumNumberOfQueryingUsers"))
    UpdateQuerySuggestionsConfigRequest.add_member(:minimum_query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumQueryCount, name: "MinimumQueryCount"))
    UpdateQuerySuggestionsConfigRequest.add_member(:attribute_suggestions_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeSuggestionsUpdateConfig, name: "AttributeSuggestionsConfig"))
    UpdateQuerySuggestionsConfigRequest.type = Types::UpdateQuerySuggestionsConfigRequest
    UpdateThesaurusRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateThesaurusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThesaurusName, name: "Name"))
    UpdateThesaurusRequest.add_member(:index_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexId, name: "IndexId", traits: {"smithy.api#required" => {}}))
    UpdateThesaurusRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateThesaurusRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateThesaurusRequest.add_member(:source_s3_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Path, name: "SourceS3Path"))
    UpdateThesaurusRequest.type = Types::UpdateThesaurusRequest
    Urls.add_member(:seed_url_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SeedUrlConfiguration, name: "SeedUrlConfiguration"))
    Urls.add_member(:site_maps_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SiteMapsConfiguration, name: "SiteMapsConfiguration"))
    Urls.type = Types::Urls
    UserContext.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "Token"))
    UserContext.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalName, name: "UserId"))
    UserContext.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Groups, name: "Groups"))
    UserContext.add_member(:data_source_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceGroups, name: "DataSourceGroups"))
    UserContext.type = Types::UserContext
    UserContextPolicy.add_member(:attribute_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTRIBUTE_FILTER", traits: {"smithy.api#enumValue" => "ATTRIBUTE_FILTER"}))
    UserContextPolicy.add_member(:user_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_TOKEN", traits: {"smithy.api#enumValue" => "USER_TOKEN"}))
    UserGroupResolutionConfiguration.add_member(:user_group_resolution_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: UserGroupResolutionMode, name: "UserGroupResolutionMode", traits: {"smithy.api#required" => {}}))
    UserGroupResolutionConfiguration.type = Types::UserGroupResolutionConfiguration
    UserGroupResolutionMode.add_member(:aws_sso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SSO", traits: {"smithy.api#enumValue" => "AWS_SSO"}))
    UserGroupResolutionMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    UserIdentityConfiguration.add_member(:identity_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityAttributeName, name: "IdentityAttributeName"))
    UserIdentityConfiguration.type = Types::UserIdentityConfiguration
    UserTokenConfiguration.add_member(:jwt_token_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtTokenTypeConfiguration, name: "JwtTokenTypeConfiguration"))
    UserTokenConfiguration.add_member(:json_token_type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonTokenTypeConfiguration, name: "JsonTokenTypeConfiguration"))
    UserTokenConfiguration.type = Types::UserTokenConfiguration
    UserTokenConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTokenConfiguration, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException
    ValueImportanceMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueImportanceMapKey, name: "key"))
    ValueImportanceMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Importance, name: "value"))
    Warning.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningMessage, name: "Message"))
    Warning.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: WarningCode, name: "Code"))
    Warning.type = Types::Warning
    WarningCode.add_member(:query_language_invalid_syntax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY_LANGUAGE_INVALID_SYNTAX", traits: {"smithy.api#enumValue" => "QUERY_LANGUAGE_INVALID_SYNTAX"}))
    WarningList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Warning, name: "member"))
    WebCrawlerConfiguration.add_member(:urls, ::Smithy::Schema::Shapes::MemberShape.new(target: Urls, name: "Urls", traits: {"smithy.api#required" => {}}))
    WebCrawlerConfiguration.add_member(:crawl_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: CrawlDepth, name: "CrawlDepth"))
    WebCrawlerConfiguration.add_member(:max_links_per_page, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLinksPerPage, name: "MaxLinksPerPage"))
    WebCrawlerConfiguration.add_member(:max_content_size_per_page_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxContentSizePerPageInMegaBytes, name: "MaxContentSizePerPageInMegaBytes"))
    WebCrawlerConfiguration.add_member(:max_urls_per_minute_crawl_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxUrlsPerMinuteCrawlRate, name: "MaxUrlsPerMinuteCrawlRate"))
    WebCrawlerConfiguration.add_member(:url_inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "UrlInclusionPatterns"))
    WebCrawlerConfiguration.add_member(:url_exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "UrlExclusionPatterns"))
    WebCrawlerConfiguration.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "ProxyConfiguration"))
    WebCrawlerConfiguration.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationConfiguration, name: "AuthenticationConfiguration"))
    WebCrawlerConfiguration.type = Types::WebCrawlerConfiguration
    WebCrawlerMode.add_member(:host_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST_ONLY", traits: {"smithy.api#enumValue" => "HOST_ONLY"}))
    WebCrawlerMode.add_member(:subdomains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBDOMAINS", traits: {"smithy.api#enumValue" => "SUBDOMAINS"}))
    WebCrawlerMode.add_member(:everything, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVERYTHING", traits: {"smithy.api#enumValue" => "EVERYTHING"}))
    WorkDocsConfiguration.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "OrganizationId", traits: {"smithy.api#required" => {}}))
    WorkDocsConfiguration.add_member(:crawl_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CrawlComments", traits: {"smithy.api#default" => false}))
    WorkDocsConfiguration.add_member(:use_change_log, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "UseChangeLog", traits: {"smithy.api#default" => false}))
    WorkDocsConfiguration.add_member(:inclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "InclusionPatterns"))
    WorkDocsConfiguration.add_member(:exclusion_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceInclusionsExclusionsStrings, name: "ExclusionPatterns"))
    WorkDocsConfiguration.add_member(:field_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceToIndexFieldMappingList, name: "FieldMappings"))
    WorkDocsConfiguration.type = Types::WorkDocsConfiguration

    AWSKendraFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kendra#AWSKendraFrontendService"
      service.name = "AWSKendraFrontendService"
      service.version = "2019-02-03"
      service.traits = {"aws.api#service" => {"sdkId" => "kendra", "arnNamespace" => "kendra", "cloudFormationName" => "Kendra", "cloudTrailEventSource" => "kendra.amazonaws.com", "endpointPrefix" => "kendra"}, "aws.auth#sigv4" => {"name" => "kendra"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWSKendraFrontendService", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kendra.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_entities_to_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#AssociateEntitiesToExperience"
        operation.name = "AssociateEntitiesToExperience"
        operation.input = AssociateEntitiesToExperienceRequest
        operation.output = AssociateEntitiesToExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceAlreadyExistException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:associate_personas_to_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#AssociatePersonasToEntities"
        operation.name = "AssociatePersonasToEntities"
        operation.input = AssociatePersonasToEntitiesRequest
        operation.output = AssociatePersonasToEntitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceAlreadyExistException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#BatchDeleteDocument"
        operation.name = "BatchDeleteDocument"
        operation.input = BatchDeleteDocumentRequest
        operation.output = BatchDeleteDocumentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_featured_results_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#BatchDeleteFeaturedResultsSet"
        operation.name = "BatchDeleteFeaturedResultsSet"
        operation.input = BatchDeleteFeaturedResultsSetRequest
        operation.output = BatchDeleteFeaturedResultsSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_document_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#BatchGetDocumentStatus"
        operation.name = "BatchGetDocumentStatus"
        operation.input = BatchGetDocumentStatusRequest
        operation.output = BatchGetDocumentStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_put_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#BatchPutDocument"
        operation.name = "BatchPutDocument"
        operation.input = BatchPutDocumentRequest
        operation.output = BatchPutDocumentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:clear_query_suggestions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ClearQuerySuggestions"
        operation.name = "ClearQuerySuggestions"
        operation.input = ClearQuerySuggestionsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_access_control_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateAccessControlConfiguration"
        operation.name = "CreateAccessControlConfiguration"
        operation.input = CreateAccessControlConfigurationRequest
        operation.output = CreateAccessControlConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = CreateDataSourceRequest
        operation.output = CreateDataSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceAlreadyExistException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateExperience"
        operation.name = "CreateExperience"
        operation.input = CreateExperienceRequest
        operation.output = CreateExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_faq, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateFaq"
        operation.name = "CreateFaq"
        operation.input = CreateFaqRequest
        operation.output = CreateFaqResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_featured_results_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateFeaturedResultsSet"
        operation.name = "CreateFeaturedResultsSet"
        operation.input = CreateFeaturedResultsSetRequest
        operation.output = CreateFeaturedResultsSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << FeaturedResultsConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = CreateIndexRequest
        operation.output = CreateIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceAlreadyExistException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_query_suggestions_block_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateQuerySuggestionsBlockList"
        operation.name = "CreateQuerySuggestionsBlockList"
        operation.input = CreateQuerySuggestionsBlockListRequest
        operation.output = CreateQuerySuggestionsBlockListResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_thesaurus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#CreateThesaurus"
        operation.name = "CreateThesaurus"
        operation.input = CreateThesaurusRequest
        operation.output = CreateThesaurusResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_access_control_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteAccessControlConfiguration"
        operation.name = "DeleteAccessControlConfiguration"
        operation.input = DeleteAccessControlConfigurationRequest
        operation.output = DeleteAccessControlConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = DeleteDataSourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteExperience"
        operation.name = "DeleteExperience"
        operation.input = DeleteExperienceRequest
        operation.output = DeleteExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_faq, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteFaq"
        operation.name = "DeleteFaq"
        operation.input = DeleteFaqRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = DeleteIndexRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_principal_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeletePrincipalMapping"
        operation.name = "DeletePrincipalMapping"
        operation.input = DeletePrincipalMappingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_query_suggestions_block_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteQuerySuggestionsBlockList"
        operation.name = "DeleteQuerySuggestionsBlockList"
        operation.input = DeleteQuerySuggestionsBlockListRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_thesaurus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DeleteThesaurus"
        operation.name = "DeleteThesaurus"
        operation.input = DeleteThesaurusRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_access_control_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeAccessControlConfiguration"
        operation.name = "DescribeAccessControlConfiguration"
        operation.input = DescribeAccessControlConfigurationRequest
        operation.output = DescribeAccessControlConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeDataSource"
        operation.name = "DescribeDataSource"
        operation.input = DescribeDataSourceRequest
        operation.output = DescribeDataSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeExperience"
        operation.name = "DescribeExperience"
        operation.input = DescribeExperienceRequest
        operation.output = DescribeExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_faq, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeFaq"
        operation.name = "DescribeFaq"
        operation.input = DescribeFaqRequest
        operation.output = DescribeFaqResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_featured_results_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeFeaturedResultsSet"
        operation.name = "DescribeFeaturedResultsSet"
        operation.input = DescribeFeaturedResultsSetRequest
        operation.output = DescribeFeaturedResultsSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeIndex"
        operation.name = "DescribeIndex"
        operation.input = DescribeIndexRequest
        operation.output = DescribeIndexResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_principal_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribePrincipalMapping"
        operation.name = "DescribePrincipalMapping"
        operation.input = DescribePrincipalMappingRequest
        operation.output = DescribePrincipalMappingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_query_suggestions_block_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeQuerySuggestionsBlockList"
        operation.name = "DescribeQuerySuggestionsBlockList"
        operation.input = DescribeQuerySuggestionsBlockListRequest
        operation.output = DescribeQuerySuggestionsBlockListResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_query_suggestions_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeQuerySuggestionsConfig"
        operation.name = "DescribeQuerySuggestionsConfig"
        operation.input = DescribeQuerySuggestionsConfigRequest
        operation.output = DescribeQuerySuggestionsConfigResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_thesaurus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DescribeThesaurus"
        operation.name = "DescribeThesaurus"
        operation.input = DescribeThesaurusRequest
        operation.output = DescribeThesaurusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_entities_from_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DisassociateEntitiesFromExperience"
        operation.name = "DisassociateEntitiesFromExperience"
        operation.input = DisassociateEntitiesFromExperienceRequest
        operation.output = DisassociateEntitiesFromExperienceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_personas_from_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#DisassociatePersonasFromEntities"
        operation.name = "DisassociatePersonasFromEntities"
        operation.input = DisassociatePersonasFromEntitiesRequest
        operation.output = DisassociatePersonasFromEntitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_query_suggestions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#GetQuerySuggestions"
        operation.name = "GetQuerySuggestions"
        operation.input = GetQuerySuggestionsRequest
        operation.output = GetQuerySuggestionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#GetSnapshots"
        operation.name = "GetSnapshots"
        operation.input = GetSnapshotsRequest
        operation.output = GetSnapshotsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::GetSnapshots.new
      end)
      service.add_operation(:list_access_control_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListAccessControlConfigurations"
        operation.name = "ListAccessControlConfigurations"
        operation.input = ListAccessControlConfigurationsRequest
        operation.output = ListAccessControlConfigurationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccessControlConfigurations.new
      end)
      service.add_operation(:list_data_source_sync_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListDataSourceSyncJobs"
        operation.name = "ListDataSourceSyncJobs"
        operation.input = ListDataSourceSyncJobsRequest
        operation.output = ListDataSourceSyncJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataSourceSyncJobs.new
      end)
      service.add_operation(:list_data_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = ListDataSourcesRequest
        operation.output = ListDataSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_entity_personas, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListEntityPersonas"
        operation.name = "ListEntityPersonas"
        operation.input = ListEntityPersonasRequest
        operation.output = ListEntityPersonasResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListEntityPersonas.new
      end)
      service.add_operation(:list_experience_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListExperienceEntities"
        operation.name = "ListExperienceEntities"
        operation.input = ListExperienceEntitiesRequest
        operation.output = ListExperienceEntitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListExperienceEntities.new
      end)
      service.add_operation(:list_experiences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListExperiences"
        operation.name = "ListExperiences"
        operation.input = ListExperiencesRequest
        operation.output = ListExperiencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListExperiences.new
      end)
      service.add_operation(:list_faqs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListFaqs"
        operation.name = "ListFaqs"
        operation.input = ListFaqsRequest
        operation.output = ListFaqsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFaqs.new
      end)
      service.add_operation(:list_featured_results_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListFeaturedResultsSets"
        operation.name = "ListFeaturedResultsSets"
        operation.input = ListFeaturedResultsSetsRequest
        operation.output = ListFeaturedResultsSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_groups_older_than_ordering_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListGroupsOlderThanOrderingId"
        operation.name = "ListGroupsOlderThanOrderingId"
        operation.input = ListGroupsOlderThanOrderingIdRequest
        operation.output = ListGroupsOlderThanOrderingIdResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGroupsOlderThanOrderingId.new
      end)
      service.add_operation(:list_indices, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListIndices"
        operation.name = "ListIndices"
        operation.input = ListIndicesRequest
        operation.output = ListIndicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListIndices.new
      end)
      service.add_operation(:list_query_suggestions_block_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListQuerySuggestionsBlockLists"
        operation.name = "ListQuerySuggestionsBlockLists"
        operation.input = ListQuerySuggestionsBlockListsRequest
        operation.output = ListQuerySuggestionsBlockListsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListQuerySuggestionsBlockLists.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_thesauri, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#ListThesauri"
        operation.name = "ListThesauri"
        operation.input = ListThesauriRequest
        operation.output = ListThesauriResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListThesauri.new
      end)
      service.add_operation(:put_principal_mapping, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#PutPrincipalMapping"
        operation.name = "PutPrincipalMapping"
        operation.input = PutPrincipalMappingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#Query"
        operation.name = "Query"
        operation.input = QueryRequest
        operation.output = QueryResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:retrieve, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#Retrieve"
        operation.name = "Retrieve"
        operation.input = RetrieveRequest
        operation.output = RetrieveResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_data_source_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#StartDataSourceSyncJob"
        operation.name = "StartDataSourceSyncJob"
        operation.input = StartDataSourceSyncJobRequest
        operation.output = StartDataSourceSyncJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:stop_data_source_sync_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#StopDataSourceSyncJob"
        operation.name = "StopDataSourceSyncJob"
        operation.input = StopDataSourceSyncJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:submit_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#SubmitFeedback"
        operation.name = "SubmitFeedback"
        operation.input = SubmitFeedbackRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_access_control_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateAccessControlConfiguration"
        operation.name = "UpdateAccessControlConfiguration"
        operation.input = UpdateAccessControlConfigurationRequest
        operation.output = UpdateAccessControlConfigurationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_data_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = UpdateDataSourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_experience, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateExperience"
        operation.name = "UpdateExperience"
        operation.input = UpdateExperienceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_featured_results_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateFeaturedResultsSet"
        operation.name = "UpdateFeaturedResultsSet"
        operation.input = UpdateFeaturedResultsSetRequest
        operation.output = UpdateFeaturedResultsSetResponse
        operation.errors << AccessDeniedException
        operation.errors << FeaturedResultsConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_index, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateIndex"
        operation.name = "UpdateIndex"
        operation.input = UpdateIndexRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_query_suggestions_block_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateQuerySuggestionsBlockList"
        operation.name = "UpdateQuerySuggestionsBlockList"
        operation.input = UpdateQuerySuggestionsBlockListRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_query_suggestions_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateQuerySuggestionsConfig"
        operation.name = "UpdateQuerySuggestionsConfig"
        operation.input = UpdateQuerySuggestionsConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_thesaurus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kendra#UpdateThesaurus"
        operation.name = "UpdateThesaurus"
        operation.input = UpdateThesaurusRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
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
