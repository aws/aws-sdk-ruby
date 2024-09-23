# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectWisdomService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AppIntegrationsConfiguration = Shapes::StructureShape.new(name: 'AppIntegrationsConfiguration')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssistantAssociationData = Shapes::StructureShape.new(name: 'AssistantAssociationData')
    AssistantAssociationInputData = Shapes::UnionShape.new(name: 'AssistantAssociationInputData')
    AssistantAssociationOutputData = Shapes::UnionShape.new(name: 'AssistantAssociationOutputData')
    AssistantAssociationSummary = Shapes::StructureShape.new(name: 'AssistantAssociationSummary')
    AssistantAssociationSummaryList = Shapes::ListShape.new(name: 'AssistantAssociationSummaryList')
    AssistantData = Shapes::StructureShape.new(name: 'AssistantData')
    AssistantIntegrationConfiguration = Shapes::StructureShape.new(name: 'AssistantIntegrationConfiguration')
    AssistantList = Shapes::ListShape.new(name: 'AssistantList')
    AssistantStatus = Shapes::StringShape.new(name: 'AssistantStatus')
    AssistantSummary = Shapes::StructureShape.new(name: 'AssistantSummary')
    AssistantType = Shapes::StringShape.new(name: 'AssistantType')
    AssociationType = Shapes::StringShape.new(name: 'AssociationType')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Channel = Shapes::StringShape.new(name: 'Channel')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Configuration = Shapes::UnionShape.new(name: 'Configuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectConfiguration = Shapes::StructureShape.new(name: 'ConnectConfiguration')
    ContactAttributeKey = Shapes::StringShape.new(name: 'ContactAttributeKey')
    ContactAttributeKeys = Shapes::ListShape.new(name: 'ContactAttributeKeys')
    ContactAttributeValue = Shapes::StringShape.new(name: 'ContactAttributeValue')
    ContactAttributes = Shapes::MapShape.new(name: 'ContactAttributes')
    ContentData = Shapes::StructureShape.new(name: 'ContentData')
    ContentMetadata = Shapes::MapShape.new(name: 'ContentMetadata')
    ContentReference = Shapes::StructureShape.new(name: 'ContentReference')
    ContentStatus = Shapes::StringShape.new(name: 'ContentStatus')
    ContentSummary = Shapes::StructureShape.new(name: 'ContentSummary')
    ContentSummaryList = Shapes::ListShape.new(name: 'ContentSummaryList')
    ContentTitle = Shapes::StringShape.new(name: 'ContentTitle')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateAssistantAssociationRequest = Shapes::StructureShape.new(name: 'CreateAssistantAssociationRequest')
    CreateAssistantAssociationResponse = Shapes::StructureShape.new(name: 'CreateAssistantAssociationResponse')
    CreateAssistantRequest = Shapes::StructureShape.new(name: 'CreateAssistantRequest')
    CreateAssistantResponse = Shapes::StructureShape.new(name: 'CreateAssistantResponse')
    CreateContentRequest = Shapes::StructureShape.new(name: 'CreateContentRequest')
    CreateContentResponse = Shapes::StructureShape.new(name: 'CreateContentResponse')
    CreateKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'CreateKnowledgeBaseRequest')
    CreateKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'CreateKnowledgeBaseResponse')
    CreateQuickResponseRequest = Shapes::StructureShape.new(name: 'CreateQuickResponseRequest')
    CreateQuickResponseResponse = Shapes::StructureShape.new(name: 'CreateQuickResponseResponse')
    CreateSessionRequest = Shapes::StructureShape.new(name: 'CreateSessionRequest')
    CreateSessionResponse = Shapes::StructureShape.new(name: 'CreateSessionResponse')
    DeleteAssistantAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAssistantAssociationRequest')
    DeleteAssistantAssociationResponse = Shapes::StructureShape.new(name: 'DeleteAssistantAssociationResponse')
    DeleteAssistantRequest = Shapes::StructureShape.new(name: 'DeleteAssistantRequest')
    DeleteAssistantResponse = Shapes::StructureShape.new(name: 'DeleteAssistantResponse')
    DeleteContentRequest = Shapes::StructureShape.new(name: 'DeleteContentRequest')
    DeleteContentResponse = Shapes::StructureShape.new(name: 'DeleteContentResponse')
    DeleteImportJobRequest = Shapes::StructureShape.new(name: 'DeleteImportJobRequest')
    DeleteImportJobResponse = Shapes::StructureShape.new(name: 'DeleteImportJobResponse')
    DeleteKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'DeleteKnowledgeBaseRequest')
    DeleteKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'DeleteKnowledgeBaseResponse')
    DeleteQuickResponseRequest = Shapes::StructureShape.new(name: 'DeleteQuickResponseRequest')
    DeleteQuickResponseResponse = Shapes::StructureShape.new(name: 'DeleteQuickResponseResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentText = Shapes::StructureShape.new(name: 'DocumentText')
    ExternalSource = Shapes::StringShape.new(name: 'ExternalSource')
    ExternalSourceConfiguration = Shapes::StructureShape.new(name: 'ExternalSourceConfiguration')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterField = Shapes::StringShape.new(name: 'FilterField')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    GenericArn = Shapes::StringShape.new(name: 'GenericArn')
    GetAssistantAssociationRequest = Shapes::StructureShape.new(name: 'GetAssistantAssociationRequest')
    GetAssistantAssociationResponse = Shapes::StructureShape.new(name: 'GetAssistantAssociationResponse')
    GetAssistantRequest = Shapes::StructureShape.new(name: 'GetAssistantRequest')
    GetAssistantResponse = Shapes::StructureShape.new(name: 'GetAssistantResponse')
    GetContentRequest = Shapes::StructureShape.new(name: 'GetContentRequest')
    GetContentResponse = Shapes::StructureShape.new(name: 'GetContentResponse')
    GetContentSummaryRequest = Shapes::StructureShape.new(name: 'GetContentSummaryRequest')
    GetContentSummaryResponse = Shapes::StructureShape.new(name: 'GetContentSummaryResponse')
    GetImportJobRequest = Shapes::StructureShape.new(name: 'GetImportJobRequest')
    GetImportJobResponse = Shapes::StructureShape.new(name: 'GetImportJobResponse')
    GetKnowledgeBaseRequest = Shapes::StructureShape.new(name: 'GetKnowledgeBaseRequest')
    GetKnowledgeBaseResponse = Shapes::StructureShape.new(name: 'GetKnowledgeBaseResponse')
    GetQuickResponseRequest = Shapes::StructureShape.new(name: 'GetQuickResponseRequest')
    GetQuickResponseResponse = Shapes::StructureShape.new(name: 'GetQuickResponseResponse')
    GetRecommendationsRequest = Shapes::StructureShape.new(name: 'GetRecommendationsRequest')
    GetRecommendationsResponse = Shapes::StructureShape.new(name: 'GetRecommendationsResponse')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GroupingConfiguration = Shapes::StructureShape.new(name: 'GroupingConfiguration')
    GroupingCriteria = Shapes::StringShape.new(name: 'GroupingCriteria')
    GroupingValue = Shapes::StringShape.new(name: 'GroupingValue')
    GroupingValues = Shapes::ListShape.new(name: 'GroupingValues')
    Headers = Shapes::MapShape.new(name: 'Headers')
    Highlight = Shapes::StructureShape.new(name: 'Highlight')
    HighlightOffset = Shapes::IntegerShape.new(name: 'HighlightOffset')
    Highlights = Shapes::ListShape.new(name: 'Highlights')
    ImportJobData = Shapes::StructureShape.new(name: 'ImportJobData')
    ImportJobList = Shapes::ListShape.new(name: 'ImportJobList')
    ImportJobStatus = Shapes::StringShape.new(name: 'ImportJobStatus')
    ImportJobSummary = Shapes::StructureShape.new(name: 'ImportJobSummary')
    ImportJobType = Shapes::StringShape.new(name: 'ImportJobType')
    KnowledgeBaseAssociationData = Shapes::StructureShape.new(name: 'KnowledgeBaseAssociationData')
    KnowledgeBaseData = Shapes::StructureShape.new(name: 'KnowledgeBaseData')
    KnowledgeBaseList = Shapes::ListShape.new(name: 'KnowledgeBaseList')
    KnowledgeBaseStatus = Shapes::StringShape.new(name: 'KnowledgeBaseStatus')
    KnowledgeBaseSummary = Shapes::StructureShape.new(name: 'KnowledgeBaseSummary')
    KnowledgeBaseType = Shapes::StringShape.new(name: 'KnowledgeBaseType')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    ListAssistantAssociationsRequest = Shapes::StructureShape.new(name: 'ListAssistantAssociationsRequest')
    ListAssistantAssociationsResponse = Shapes::StructureShape.new(name: 'ListAssistantAssociationsResponse')
    ListAssistantsRequest = Shapes::StructureShape.new(name: 'ListAssistantsRequest')
    ListAssistantsResponse = Shapes::StructureShape.new(name: 'ListAssistantsResponse')
    ListContentsRequest = Shapes::StructureShape.new(name: 'ListContentsRequest')
    ListContentsResponse = Shapes::StructureShape.new(name: 'ListContentsResponse')
    ListImportJobsRequest = Shapes::StructureShape.new(name: 'ListImportJobsRequest')
    ListImportJobsResponse = Shapes::StructureShape.new(name: 'ListImportJobsResponse')
    ListKnowledgeBasesRequest = Shapes::StructureShape.new(name: 'ListKnowledgeBasesRequest')
    ListKnowledgeBasesResponse = Shapes::StructureShape.new(name: 'ListKnowledgeBasesResponse')
    ListQuickResponsesRequest = Shapes::StructureShape.new(name: 'ListQuickResponsesRequest')
    ListQuickResponsesResponse = Shapes::StructureShape.new(name: 'ListQuickResponsesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotifyRecommendationsReceivedError = Shapes::StructureShape.new(name: 'NotifyRecommendationsReceivedError')
    NotifyRecommendationsReceivedErrorList = Shapes::ListShape.new(name: 'NotifyRecommendationsReceivedErrorList')
    NotifyRecommendationsReceivedErrorMessage = Shapes::StringShape.new(name: 'NotifyRecommendationsReceivedErrorMessage')
    NotifyRecommendationsReceivedRequest = Shapes::StructureShape.new(name: 'NotifyRecommendationsReceivedRequest')
    NotifyRecommendationsReceivedResponse = Shapes::StructureShape.new(name: 'NotifyRecommendationsReceivedResponse')
    ObjectFieldsList = Shapes::ListShape.new(name: 'ObjectFieldsList')
    Order = Shapes::StringShape.new(name: 'Order')
    PreconditionFailedException = Shapes::StructureShape.new(name: 'PreconditionFailedException')
    Priority = Shapes::StringShape.new(name: 'Priority')
    QueryAssistantRequest = Shapes::StructureShape.new(name: 'QueryAssistantRequest')
    QueryAssistantResponse = Shapes::StructureShape.new(name: 'QueryAssistantResponse')
    QueryRecommendationTriggerData = Shapes::StructureShape.new(name: 'QueryRecommendationTriggerData')
    QueryResultsList = Shapes::ListShape.new(name: 'QueryResultsList')
    QueryText = Shapes::StringShape.new(name: 'QueryText')
    QuickResponseContent = Shapes::StringShape.new(name: 'QuickResponseContent')
    QuickResponseContentProvider = Shapes::UnionShape.new(name: 'QuickResponseContentProvider')
    QuickResponseContents = Shapes::StructureShape.new(name: 'QuickResponseContents')
    QuickResponseData = Shapes::StructureShape.new(name: 'QuickResponseData')
    QuickResponseDataProvider = Shapes::UnionShape.new(name: 'QuickResponseDataProvider')
    QuickResponseDescription = Shapes::StringShape.new(name: 'QuickResponseDescription')
    QuickResponseFilterField = Shapes::StructureShape.new(name: 'QuickResponseFilterField')
    QuickResponseFilterFieldList = Shapes::ListShape.new(name: 'QuickResponseFilterFieldList')
    QuickResponseFilterOperator = Shapes::StringShape.new(name: 'QuickResponseFilterOperator')
    QuickResponseFilterValue = Shapes::StringShape.new(name: 'QuickResponseFilterValue')
    QuickResponseFilterValueList = Shapes::ListShape.new(name: 'QuickResponseFilterValueList')
    QuickResponseName = Shapes::StringShape.new(name: 'QuickResponseName')
    QuickResponseOrderField = Shapes::StructureShape.new(name: 'QuickResponseOrderField')
    QuickResponseQueryField = Shapes::StructureShape.new(name: 'QuickResponseQueryField')
    QuickResponseQueryFieldList = Shapes::ListShape.new(name: 'QuickResponseQueryFieldList')
    QuickResponseQueryOperator = Shapes::StringShape.new(name: 'QuickResponseQueryOperator')
    QuickResponseQueryValue = Shapes::StringShape.new(name: 'QuickResponseQueryValue')
    QuickResponseQueryValueList = Shapes::ListShape.new(name: 'QuickResponseQueryValueList')
    QuickResponseSearchExpression = Shapes::StructureShape.new(name: 'QuickResponseSearchExpression')
    QuickResponseSearchResultData = Shapes::StructureShape.new(name: 'QuickResponseSearchResultData')
    QuickResponseSearchResultsList = Shapes::ListShape.new(name: 'QuickResponseSearchResultsList')
    QuickResponseStatus = Shapes::StringShape.new(name: 'QuickResponseStatus')
    QuickResponseSummary = Shapes::StructureShape.new(name: 'QuickResponseSummary')
    QuickResponseSummaryList = Shapes::ListShape.new(name: 'QuickResponseSummaryList')
    QuickResponseType = Shapes::StringShape.new(name: 'QuickResponseType')
    RecommendationData = Shapes::StructureShape.new(name: 'RecommendationData')
    RecommendationIdList = Shapes::ListShape.new(name: 'RecommendationIdList')
    RecommendationList = Shapes::ListShape.new(name: 'RecommendationList')
    RecommendationSourceType = Shapes::StringShape.new(name: 'RecommendationSourceType')
    RecommendationTrigger = Shapes::StructureShape.new(name: 'RecommendationTrigger')
    RecommendationTriggerData = Shapes::UnionShape.new(name: 'RecommendationTriggerData')
    RecommendationTriggerList = Shapes::ListShape.new(name: 'RecommendationTriggerList')
    RecommendationTriggerType = Shapes::StringShape.new(name: 'RecommendationTriggerType')
    RecommendationType = Shapes::StringShape.new(name: 'RecommendationType')
    RelevanceLevel = Shapes::StringShape.new(name: 'RelevanceLevel')
    RelevanceScore = Shapes::FloatShape.new(name: 'RelevanceScore')
    RemoveKnowledgeBaseTemplateUriRequest = Shapes::StructureShape.new(name: 'RemoveKnowledgeBaseTemplateUriRequest')
    RemoveKnowledgeBaseTemplateUriResponse = Shapes::StructureShape.new(name: 'RemoveKnowledgeBaseTemplateUriResponse')
    RenderingConfiguration = Shapes::StructureShape.new(name: 'RenderingConfiguration')
    RequestTimeoutException = Shapes::StructureShape.new(name: 'RequestTimeoutException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultData = Shapes::StructureShape.new(name: 'ResultData')
    SearchContentRequest = Shapes::StructureShape.new(name: 'SearchContentRequest')
    SearchContentResponse = Shapes::StructureShape.new(name: 'SearchContentResponse')
    SearchExpression = Shapes::StructureShape.new(name: 'SearchExpression')
    SearchQuickResponsesRequest = Shapes::StructureShape.new(name: 'SearchQuickResponsesRequest')
    SearchQuickResponsesResponse = Shapes::StructureShape.new(name: 'SearchQuickResponsesResponse')
    SearchSessionsRequest = Shapes::StructureShape.new(name: 'SearchSessionsRequest')
    SearchSessionsResponse = Shapes::StructureShape.new(name: 'SearchSessionsResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionData = Shapes::StructureShape.new(name: 'SessionData')
    SessionIntegrationConfiguration = Shapes::StructureShape.new(name: 'SessionIntegrationConfiguration')
    SessionSummaries = Shapes::ListShape.new(name: 'SessionSummaries')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    ShortCutKey = Shapes::StringShape.new(name: 'ShortCutKey')
    SourceConfiguration = Shapes::UnionShape.new(name: 'SourceConfiguration')
    StartContentUploadRequest = Shapes::StructureShape.new(name: 'StartContentUploadRequest')
    StartContentUploadResponse = Shapes::StructureShape.new(name: 'StartContentUploadResponse')
    StartImportJobRequest = Shapes::StructureShape.new(name: 'StartImportJobRequest')
    StartImportJobResponse = Shapes::StructureShape.new(name: 'StartImportJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_epoch_seconds = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_epoch_seconds', timestampFormat: "unixTimestamp")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TimeToLive = Shapes::IntegerShape.new(name: 'TimeToLive')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateContentRequest = Shapes::StructureShape.new(name: 'UpdateContentRequest')
    UpdateContentResponse = Shapes::StructureShape.new(name: 'UpdateContentResponse')
    UpdateKnowledgeBaseTemplateUriRequest = Shapes::StructureShape.new(name: 'UpdateKnowledgeBaseTemplateUriRequest')
    UpdateKnowledgeBaseTemplateUriResponse = Shapes::StructureShape.new(name: 'UpdateKnowledgeBaseTemplateUriResponse')
    UpdateQuickResponseRequest = Shapes::StructureShape.new(name: 'UpdateQuickResponseRequest')
    UpdateQuickResponseResponse = Shapes::StructureShape.new(name: 'UpdateQuickResponseResponse')
    UploadId = Shapes::StringShape.new(name: 'UploadId')
    Uri = Shapes::StringShape.new(name: 'Uri')
    Url = Shapes::StringShape.new(name: 'Url')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    UuidOrArn = Shapes::StringShape.new(name: 'UuidOrArn')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WaitTimeSeconds = Shapes::IntegerShape.new(name: 'WaitTimeSeconds')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AppIntegrationsConfiguration.add_member(:app_integration_arn, Shapes::ShapeRef.new(shape: GenericArn, required: true, location_name: "appIntegrationArn"))
    AppIntegrationsConfiguration.add_member(:object_fields, Shapes::ShapeRef.new(shape: ObjectFieldsList, location_name: "objectFields"))
    AppIntegrationsConfiguration.struct_class = Types::AppIntegrationsConfiguration

    AssistantAssociationData.add_member(:assistant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantArn"))
    AssistantAssociationData.add_member(:assistant_association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantAssociationArn"))
    AssistantAssociationData.add_member(:assistant_association_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantAssociationId"))
    AssistantAssociationData.add_member(:assistant_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantId"))
    AssistantAssociationData.add_member(:association_data, Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, required: true, location_name: "associationData"))
    AssistantAssociationData.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationType, required: true, location_name: "associationType"))
    AssistantAssociationData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AssistantAssociationData.struct_class = Types::AssistantAssociationData

    AssistantAssociationInputData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "knowledgeBaseId"))
    AssistantAssociationInputData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AssistantAssociationInputData.add_member_subclass(:knowledge_base_id, Types::AssistantAssociationInputData::KnowledgeBaseId)
    AssistantAssociationInputData.add_member_subclass(:unknown, Types::AssistantAssociationInputData::Unknown)
    AssistantAssociationInputData.struct_class = Types::AssistantAssociationInputData

    AssistantAssociationOutputData.add_member(:knowledge_base_association, Shapes::ShapeRef.new(shape: KnowledgeBaseAssociationData, location_name: "knowledgeBaseAssociation"))
    AssistantAssociationOutputData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AssistantAssociationOutputData.add_member_subclass(:knowledge_base_association, Types::AssistantAssociationOutputData::KnowledgeBaseAssociation)
    AssistantAssociationOutputData.add_member_subclass(:unknown, Types::AssistantAssociationOutputData::Unknown)
    AssistantAssociationOutputData.struct_class = Types::AssistantAssociationOutputData

    AssistantAssociationSummary.add_member(:assistant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantArn"))
    AssistantAssociationSummary.add_member(:assistant_association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantAssociationArn"))
    AssistantAssociationSummary.add_member(:assistant_association_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantAssociationId"))
    AssistantAssociationSummary.add_member(:assistant_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantId"))
    AssistantAssociationSummary.add_member(:association_data, Shapes::ShapeRef.new(shape: AssistantAssociationOutputData, required: true, location_name: "associationData"))
    AssistantAssociationSummary.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationType, required: true, location_name: "associationType"))
    AssistantAssociationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AssistantAssociationSummary.struct_class = Types::AssistantAssociationSummary

    AssistantAssociationSummaryList.member = Shapes::ShapeRef.new(shape: AssistantAssociationSummary)

    AssistantData.add_member(:assistant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantArn"))
    AssistantData.add_member(:assistant_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantId"))
    AssistantData.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssistantData.add_member(:integration_configuration, Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: "integrationConfiguration"))
    AssistantData.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssistantData.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    AssistantData.add_member(:status, Shapes::ShapeRef.new(shape: AssistantStatus, required: true, location_name: "status"))
    AssistantData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AssistantData.add_member(:type, Shapes::ShapeRef.new(shape: AssistantType, required: true, location_name: "type"))
    AssistantData.struct_class = Types::AssistantData

    AssistantIntegrationConfiguration.add_member(:topic_integration_arn, Shapes::ShapeRef.new(shape: GenericArn, location_name: "topicIntegrationArn"))
    AssistantIntegrationConfiguration.struct_class = Types::AssistantIntegrationConfiguration

    AssistantList.member = Shapes::ShapeRef.new(shape: AssistantSummary)

    AssistantSummary.add_member(:assistant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantArn"))
    AssistantSummary.add_member(:assistant_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantId"))
    AssistantSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    AssistantSummary.add_member(:integration_configuration, Shapes::ShapeRef.new(shape: AssistantIntegrationConfiguration, location_name: "integrationConfiguration"))
    AssistantSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AssistantSummary.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    AssistantSummary.add_member(:status, Shapes::ShapeRef.new(shape: AssistantStatus, required: true, location_name: "status"))
    AssistantSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    AssistantSummary.add_member(:type, Shapes::ShapeRef.new(shape: AssistantType, required: true, location_name: "type"))
    AssistantSummary.struct_class = Types::AssistantSummary

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    Configuration.add_member(:connect_configuration, Shapes::ShapeRef.new(shape: ConnectConfiguration, location_name: "connectConfiguration"))
    Configuration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Configuration.add_member_subclass(:connect_configuration, Types::Configuration::ConnectConfiguration)
    Configuration.add_member_subclass(:unknown, Types::Configuration::Unknown)
    Configuration.struct_class = Types::Configuration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectConfiguration.add_member(:instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "instanceId"))
    ConnectConfiguration.struct_class = Types::ConnectConfiguration

    ContactAttributeKeys.member = Shapes::ShapeRef.new(shape: ContactAttributeKey)

    ContactAttributes.key = Shapes::ShapeRef.new(shape: ContactAttributeKey)
    ContactAttributes.value = Shapes::ShapeRef.new(shape: ContactAttributeValue)

    ContentData.add_member(:content_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "contentArn"))
    ContentData.add_member(:content_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "contentId"))
    ContentData.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "contentType"))
    ContentData.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    ContentData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    ContentData.add_member(:link_out_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "linkOutUri"))
    ContentData.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, required: true, location_name: "metadata"))
    ContentData.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ContentData.add_member(:revision_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "revisionId"))
    ContentData.add_member(:status, Shapes::ShapeRef.new(shape: ContentStatus, required: true, location_name: "status"))
    ContentData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ContentData.add_member(:title, Shapes::ShapeRef.new(shape: ContentTitle, required: true, location_name: "title"))
    ContentData.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    ContentData.add_member(:url_expiry, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "urlExpiry"))
    ContentData.struct_class = Types::ContentData

    ContentMetadata.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    ContentMetadata.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    ContentReference.add_member(:content_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "contentArn"))
    ContentReference.add_member(:content_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "contentId"))
    ContentReference.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "knowledgeBaseArn"))
    ContentReference.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "knowledgeBaseId"))
    ContentReference.struct_class = Types::ContentReference

    ContentSummary.add_member(:content_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "contentArn"))
    ContentSummary.add_member(:content_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "contentId"))
    ContentSummary.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "contentType"))
    ContentSummary.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    ContentSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    ContentSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, required: true, location_name: "metadata"))
    ContentSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    ContentSummary.add_member(:revision_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "revisionId"))
    ContentSummary.add_member(:status, Shapes::ShapeRef.new(shape: ContentStatus, required: true, location_name: "status"))
    ContentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ContentSummary.add_member(:title, Shapes::ShapeRef.new(shape: ContentTitle, required: true, location_name: "title"))
    ContentSummary.struct_class = Types::ContentSummary

    ContentSummaryList.member = Shapes::ShapeRef.new(shape: ContentSummary)

    CreateAssistantAssociationRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    CreateAssistantAssociationRequest.add_member(:association, Shapes::ShapeRef.new(shape: AssistantAssociationInputData, required: true, location_name: "association"))
    CreateAssistantAssociationRequest.add_member(:association_type, Shapes::ShapeRef.new(shape: AssociationType, required: true, location_name: "associationType"))
    CreateAssistantAssociationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAssistantAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAssistantAssociationRequest.struct_class = Types::CreateAssistantAssociationRequest

    CreateAssistantAssociationResponse.add_member(:assistant_association, Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: "assistantAssociation"))
    CreateAssistantAssociationResponse.struct_class = Types::CreateAssistantAssociationResponse

    CreateAssistantRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAssistantRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAssistantRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateAssistantRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    CreateAssistantRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateAssistantRequest.add_member(:type, Shapes::ShapeRef.new(shape: AssistantType, required: true, location_name: "type"))
    CreateAssistantRequest.struct_class = Types::CreateAssistantRequest

    CreateAssistantResponse.add_member(:assistant, Shapes::ShapeRef.new(shape: AssistantData, location_name: "assistant"))
    CreateAssistantResponse.struct_class = Types::CreateAssistantResponse

    CreateContentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateContentRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    CreateContentRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, location_name: "metadata"))
    CreateContentRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateContentRequest.add_member(:override_link_out_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "overrideLinkOutUri"))
    CreateContentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateContentRequest.add_member(:title, Shapes::ShapeRef.new(shape: ContentTitle, location_name: "title"))
    CreateContentRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    CreateContentRequest.struct_class = Types::CreateContentRequest

    CreateContentResponse.add_member(:content, Shapes::ShapeRef.new(shape: ContentData, location_name: "content"))
    CreateContentResponse.struct_class = Types::CreateContentResponse

    CreateKnowledgeBaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateKnowledgeBaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateKnowledgeBaseRequest.add_member(:knowledge_base_type, Shapes::ShapeRef.new(shape: KnowledgeBaseType, required: true, location_name: "knowledgeBaseType"))
    CreateKnowledgeBaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateKnowledgeBaseRequest.add_member(:rendering_configuration, Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: "renderingConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "sourceConfiguration"))
    CreateKnowledgeBaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateKnowledgeBaseRequest.struct_class = Types::CreateKnowledgeBaseRequest

    CreateKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: "knowledgeBase"))
    CreateKnowledgeBaseResponse.struct_class = Types::CreateKnowledgeBaseResponse

    CreateQuickResponseRequest.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    CreateQuickResponseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateQuickResponseRequest.add_member(:content, Shapes::ShapeRef.new(shape: QuickResponseDataProvider, required: true, location_name: "content"))
    CreateQuickResponseRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: QuickResponseType, location_name: "contentType"))
    CreateQuickResponseRequest.add_member(:description, Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: "description"))
    CreateQuickResponseRequest.add_member(:grouping_configuration, Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: "groupingConfiguration"))
    CreateQuickResponseRequest.add_member(:is_active, Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    CreateQuickResponseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    CreateQuickResponseRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "language"))
    CreateQuickResponseRequest.add_member(:name, Shapes::ShapeRef.new(shape: QuickResponseName, required: true, location_name: "name"))
    CreateQuickResponseRequest.add_member(:shortcut_key, Shapes::ShapeRef.new(shape: ShortCutKey, location_name: "shortcutKey"))
    CreateQuickResponseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateQuickResponseRequest.struct_class = Types::CreateQuickResponseRequest

    CreateQuickResponseResponse.add_member(:quick_response, Shapes::ShapeRef.new(shape: QuickResponseData, location_name: "quickResponse"))
    CreateQuickResponseResponse.struct_class = Types::CreateQuickResponseResponse

    CreateSessionRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    CreateSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSessionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateSessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateSessionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSessionRequest.struct_class = Types::CreateSessionRequest

    CreateSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionData, location_name: "session"))
    CreateSessionResponse.struct_class = Types::CreateSessionResponse

    DeleteAssistantAssociationRequest.add_member(:assistant_association_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantAssociationId"))
    DeleteAssistantAssociationRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    DeleteAssistantAssociationRequest.struct_class = Types::DeleteAssistantAssociationRequest

    DeleteAssistantAssociationResponse.struct_class = Types::DeleteAssistantAssociationResponse

    DeleteAssistantRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    DeleteAssistantRequest.struct_class = Types::DeleteAssistantRequest

    DeleteAssistantResponse.struct_class = Types::DeleteAssistantResponse

    DeleteContentRequest.add_member(:content_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "contentId"))
    DeleteContentRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteContentRequest.struct_class = Types::DeleteContentRequest

    DeleteContentResponse.struct_class = Types::DeleteContentResponse

    DeleteImportJobRequest.add_member(:import_job_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "importJobId"))
    DeleteImportJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteImportJobRequest.struct_class = Types::DeleteImportJobRequest

    DeleteImportJobResponse.struct_class = Types::DeleteImportJobResponse

    DeleteKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteKnowledgeBaseRequest.struct_class = Types::DeleteKnowledgeBaseRequest

    DeleteKnowledgeBaseResponse.struct_class = Types::DeleteKnowledgeBaseResponse

    DeleteQuickResponseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    DeleteQuickResponseRequest.add_member(:quick_response_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "quickResponseId"))
    DeleteQuickResponseRequest.struct_class = Types::DeleteQuickResponseRequest

    DeleteQuickResponseResponse.struct_class = Types::DeleteQuickResponseResponse

    Document.add_member(:content_reference, Shapes::ShapeRef.new(shape: ContentReference, required: true, location_name: "contentReference"))
    Document.add_member(:excerpt, Shapes::ShapeRef.new(shape: DocumentText, location_name: "excerpt"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: DocumentText, location_name: "title"))
    Document.struct_class = Types::Document

    DocumentText.add_member(:highlights, Shapes::ShapeRef.new(shape: Highlights, location_name: "highlights"))
    DocumentText.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "text"))
    DocumentText.struct_class = Types::DocumentText

    ExternalSourceConfiguration.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, required: true, location_name: "configuration"))
    ExternalSourceConfiguration.add_member(:source, Shapes::ShapeRef.new(shape: ExternalSource, required: true, location_name: "source"))
    ExternalSourceConfiguration.struct_class = Types::ExternalSourceConfiguration

    Filter.add_member(:field, Shapes::ShapeRef.new(shape: FilterField, required: true, location_name: "field"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "operator"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "value"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetAssistantAssociationRequest.add_member(:assistant_association_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantAssociationId"))
    GetAssistantAssociationRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    GetAssistantAssociationRequest.struct_class = Types::GetAssistantAssociationRequest

    GetAssistantAssociationResponse.add_member(:assistant_association, Shapes::ShapeRef.new(shape: AssistantAssociationData, location_name: "assistantAssociation"))
    GetAssistantAssociationResponse.struct_class = Types::GetAssistantAssociationResponse

    GetAssistantRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    GetAssistantRequest.struct_class = Types::GetAssistantRequest

    GetAssistantResponse.add_member(:assistant, Shapes::ShapeRef.new(shape: AssistantData, location_name: "assistant"))
    GetAssistantResponse.struct_class = Types::GetAssistantResponse

    GetContentRequest.add_member(:content_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "contentId"))
    GetContentRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetContentRequest.struct_class = Types::GetContentRequest

    GetContentResponse.add_member(:content, Shapes::ShapeRef.new(shape: ContentData, location_name: "content"))
    GetContentResponse.struct_class = Types::GetContentResponse

    GetContentSummaryRequest.add_member(:content_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "contentId"))
    GetContentSummaryRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetContentSummaryRequest.struct_class = Types::GetContentSummaryRequest

    GetContentSummaryResponse.add_member(:content_summary, Shapes::ShapeRef.new(shape: ContentSummary, location_name: "contentSummary"))
    GetContentSummaryResponse.struct_class = Types::GetContentSummaryResponse

    GetImportJobRequest.add_member(:import_job_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "importJobId"))
    GetImportJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetImportJobRequest.struct_class = Types::GetImportJobRequest

    GetImportJobResponse.add_member(:import_job, Shapes::ShapeRef.new(shape: ImportJobData, location_name: "importJob"))
    GetImportJobResponse.struct_class = Types::GetImportJobResponse

    GetKnowledgeBaseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetKnowledgeBaseRequest.struct_class = Types::GetKnowledgeBaseRequest

    GetKnowledgeBaseResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: "knowledgeBase"))
    GetKnowledgeBaseResponse.struct_class = Types::GetKnowledgeBaseResponse

    GetQuickResponseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    GetQuickResponseRequest.add_member(:quick_response_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "quickResponseId"))
    GetQuickResponseRequest.struct_class = Types::GetQuickResponseRequest

    GetQuickResponseResponse.add_member(:quick_response, Shapes::ShapeRef.new(shape: QuickResponseData, location_name: "quickResponse"))
    GetQuickResponseResponse.struct_class = Types::GetQuickResponseResponse

    GetRecommendationsRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    GetRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetRecommendationsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "sessionId"))
    GetRecommendationsRequest.add_member(:wait_time_seconds, Shapes::ShapeRef.new(shape: WaitTimeSeconds, location: "querystring", location_name: "waitTimeSeconds"))
    GetRecommendationsRequest.struct_class = Types::GetRecommendationsRequest

    GetRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: RecommendationList, required: true, location_name: "recommendations"))
    GetRecommendationsResponse.add_member(:triggers, Shapes::ShapeRef.new(shape: RecommendationTriggerList, location_name: "triggers"))
    GetRecommendationsResponse.struct_class = Types::GetRecommendationsResponse

    GetSessionRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    GetSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "sessionId"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionData, location_name: "session"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GroupingConfiguration.add_member(:criteria, Shapes::ShapeRef.new(shape: GroupingCriteria, location_name: "criteria"))
    GroupingConfiguration.add_member(:values, Shapes::ShapeRef.new(shape: GroupingValues, location_name: "values"))
    GroupingConfiguration.struct_class = Types::GroupingConfiguration

    GroupingValues.member = Shapes::ShapeRef.new(shape: GroupingValue)

    Headers.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    Headers.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    Highlight.add_member(:begin_offset_inclusive, Shapes::ShapeRef.new(shape: HighlightOffset, location_name: "beginOffsetInclusive"))
    Highlight.add_member(:end_offset_exclusive, Shapes::ShapeRef.new(shape: HighlightOffset, location_name: "endOffsetExclusive"))
    Highlight.struct_class = Types::Highlight

    Highlights.member = Shapes::ShapeRef.new(shape: Highlight)

    ImportJobData.add_member(:created_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "createdTime"))
    ImportJobData.add_member(:external_source_configuration, Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: "externalSourceConfiguration"))
    ImportJobData.add_member(:failed_record_report, Shapes::ShapeRef.new(shape: Url, location_name: "failedRecordReport"))
    ImportJobData.add_member(:import_job_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "importJobId"))
    ImportJobData.add_member(:import_job_type, Shapes::ShapeRef.new(shape: ImportJobType, required: true, location_name: "importJobType"))
    ImportJobData.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    ImportJobData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    ImportJobData.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "lastModifiedTime"))
    ImportJobData.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, location_name: "metadata"))
    ImportJobData.add_member(:status, Shapes::ShapeRef.new(shape: ImportJobStatus, required: true, location_name: "status"))
    ImportJobData.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    ImportJobData.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    ImportJobData.add_member(:url_expiry, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "urlExpiry"))
    ImportJobData.struct_class = Types::ImportJobData

    ImportJobList.member = Shapes::ShapeRef.new(shape: ImportJobSummary)

    ImportJobSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "createdTime"))
    ImportJobSummary.add_member(:external_source_configuration, Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: "externalSourceConfiguration"))
    ImportJobSummary.add_member(:import_job_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "importJobId"))
    ImportJobSummary.add_member(:import_job_type, Shapes::ShapeRef.new(shape: ImportJobType, required: true, location_name: "importJobType"))
    ImportJobSummary.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    ImportJobSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    ImportJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "lastModifiedTime"))
    ImportJobSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, location_name: "metadata"))
    ImportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ImportJobStatus, required: true, location_name: "status"))
    ImportJobSummary.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    ImportJobSummary.struct_class = Types::ImportJobSummary

    KnowledgeBaseAssociationData.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "knowledgeBaseArn"))
    KnowledgeBaseAssociationData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "knowledgeBaseId"))
    KnowledgeBaseAssociationData.struct_class = Types::KnowledgeBaseAssociationData

    KnowledgeBaseData.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KnowledgeBaseData.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    KnowledgeBaseData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseData.add_member(:knowledge_base_type, Shapes::ShapeRef.new(shape: KnowledgeBaseType, required: true, location_name: "knowledgeBaseType"))
    KnowledgeBaseData.add_member(:last_content_modification_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, location_name: "lastContentModificationTime"))
    KnowledgeBaseData.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    KnowledgeBaseData.add_member(:rendering_configuration, Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: "renderingConfiguration"))
    KnowledgeBaseData.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    KnowledgeBaseData.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "sourceConfiguration"))
    KnowledgeBaseData.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    KnowledgeBaseData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    KnowledgeBaseData.struct_class = Types::KnowledgeBaseData

    KnowledgeBaseList.member = Shapes::ShapeRef.new(shape: KnowledgeBaseSummary)

    KnowledgeBaseSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    KnowledgeBaseSummary.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    KnowledgeBaseSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseSummary.add_member(:knowledge_base_type, Shapes::ShapeRef.new(shape: KnowledgeBaseType, required: true, location_name: "knowledgeBaseType"))
    KnowledgeBaseSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    KnowledgeBaseSummary.add_member(:rendering_configuration, Shapes::ShapeRef.new(shape: RenderingConfiguration, location_name: "renderingConfiguration"))
    KnowledgeBaseSummary.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "serverSideEncryptionConfiguration"))
    KnowledgeBaseSummary.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "sourceConfiguration"))
    KnowledgeBaseSummary.add_member(:status, Shapes::ShapeRef.new(shape: KnowledgeBaseStatus, required: true, location_name: "status"))
    KnowledgeBaseSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    KnowledgeBaseSummary.struct_class = Types::KnowledgeBaseSummary

    ListAssistantAssociationsRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    ListAssistantAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssistantAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssistantAssociationsRequest.struct_class = Types::ListAssistantAssociationsRequest

    ListAssistantAssociationsResponse.add_member(:assistant_association_summaries, Shapes::ShapeRef.new(shape: AssistantAssociationSummaryList, required: true, location_name: "assistantAssociationSummaries"))
    ListAssistantAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssistantAssociationsResponse.struct_class = Types::ListAssistantAssociationsResponse

    ListAssistantsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssistantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssistantsRequest.struct_class = Types::ListAssistantsRequest

    ListAssistantsResponse.add_member(:assistant_summaries, Shapes::ShapeRef.new(shape: AssistantList, required: true, location_name: "assistantSummaries"))
    ListAssistantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssistantsResponse.struct_class = Types::ListAssistantsResponse

    ListContentsRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    ListContentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListContentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListContentsRequest.struct_class = Types::ListContentsRequest

    ListContentsResponse.add_member(:content_summaries, Shapes::ShapeRef.new(shape: ContentSummaryList, required: true, location_name: "contentSummaries"))
    ListContentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListContentsResponse.struct_class = Types::ListContentsResponse

    ListImportJobsRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    ListImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "nextToken"))
    ListImportJobsRequest.struct_class = Types::ListImportJobsRequest

    ListImportJobsResponse.add_member(:import_job_summaries, Shapes::ShapeRef.new(shape: ImportJobList, required: true, location_name: "importJobSummaries"))
    ListImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImportJobsResponse.struct_class = Types::ListImportJobsResponse

    ListKnowledgeBasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListKnowledgeBasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "nextToken"))
    ListKnowledgeBasesRequest.struct_class = Types::ListKnowledgeBasesRequest

    ListKnowledgeBasesResponse.add_member(:knowledge_base_summaries, Shapes::ShapeRef.new(shape: KnowledgeBaseList, required: true, location_name: "knowledgeBaseSummaries"))
    ListKnowledgeBasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListKnowledgeBasesResponse.struct_class = Types::ListKnowledgeBasesResponse

    ListQuickResponsesRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    ListQuickResponsesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListQuickResponsesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "nextToken"))
    ListQuickResponsesRequest.struct_class = Types::ListQuickResponsesRequest

    ListQuickResponsesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListQuickResponsesResponse.add_member(:quick_response_summaries, Shapes::ShapeRef.new(shape: QuickResponseSummaryList, required: true, location_name: "quickResponseSummaries"))
    ListQuickResponsesResponse.struct_class = Types::ListQuickResponsesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotifyRecommendationsReceivedError.add_member(:message, Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorMessage, location_name: "message"))
    NotifyRecommendationsReceivedError.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, location_name: "recommendationId"))
    NotifyRecommendationsReceivedError.struct_class = Types::NotifyRecommendationsReceivedError

    NotifyRecommendationsReceivedErrorList.member = Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedError)

    NotifyRecommendationsReceivedRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    NotifyRecommendationsReceivedRequest.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, required: true, location_name: "recommendationIds"))
    NotifyRecommendationsReceivedRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "sessionId"))
    NotifyRecommendationsReceivedRequest.struct_class = Types::NotifyRecommendationsReceivedRequest

    NotifyRecommendationsReceivedResponse.add_member(:errors, Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedErrorList, location_name: "errors"))
    NotifyRecommendationsReceivedResponse.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: "recommendationIds"))
    NotifyRecommendationsReceivedResponse.struct_class = Types::NotifyRecommendationsReceivedResponse

    ObjectFieldsList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    PreconditionFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PreconditionFailedException.struct_class = Types::PreconditionFailedException

    QueryAssistantRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    QueryAssistantRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    QueryAssistantRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    QueryAssistantRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, required: true, location_name: "queryText"))
    QueryAssistantRequest.struct_class = Types::QueryAssistantRequest

    QueryAssistantResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    QueryAssistantResponse.add_member(:results, Shapes::ShapeRef.new(shape: QueryResultsList, required: true, location_name: "results"))
    QueryAssistantResponse.struct_class = Types::QueryAssistantResponse

    QueryRecommendationTriggerData.add_member(:text, Shapes::ShapeRef.new(shape: QueryText, location_name: "text"))
    QueryRecommendationTriggerData.struct_class = Types::QueryRecommendationTriggerData

    QueryResultsList.member = Shapes::ShapeRef.new(shape: ResultData)

    QuickResponseContentProvider.add_member(:content, Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: "content"))
    QuickResponseContentProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    QuickResponseContentProvider.add_member_subclass(:content, Types::QuickResponseContentProvider::Content)
    QuickResponseContentProvider.add_member_subclass(:unknown, Types::QuickResponseContentProvider::Unknown)
    QuickResponseContentProvider.struct_class = Types::QuickResponseContentProvider

    QuickResponseContents.add_member(:markdown, Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: "markdown"))
    QuickResponseContents.add_member(:plain_text, Shapes::ShapeRef.new(shape: QuickResponseContentProvider, location_name: "plainText"))
    QuickResponseContents.struct_class = Types::QuickResponseContents

    QuickResponseData.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    QuickResponseData.add_member(:content_type, Shapes::ShapeRef.new(shape: QuickResponseType, required: true, location_name: "contentType"))
    QuickResponseData.add_member(:contents, Shapes::ShapeRef.new(shape: QuickResponseContents, location_name: "contents"))
    QuickResponseData.add_member(:created_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "createdTime"))
    QuickResponseData.add_member(:description, Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: "description"))
    QuickResponseData.add_member(:grouping_configuration, Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: "groupingConfiguration"))
    QuickResponseData.add_member(:is_active, Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    QuickResponseData.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    QuickResponseData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    QuickResponseData.add_member(:language, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "language"))
    QuickResponseData.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: GenericArn, location_name: "lastModifiedBy"))
    QuickResponseData.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "lastModifiedTime"))
    QuickResponseData.add_member(:name, Shapes::ShapeRef.new(shape: QuickResponseName, required: true, location_name: "name"))
    QuickResponseData.add_member(:quick_response_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "quickResponseArn"))
    QuickResponseData.add_member(:quick_response_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "quickResponseId"))
    QuickResponseData.add_member(:shortcut_key, Shapes::ShapeRef.new(shape: ShortCutKey, location_name: "shortcutKey"))
    QuickResponseData.add_member(:status, Shapes::ShapeRef.new(shape: QuickResponseStatus, required: true, location_name: "status"))
    QuickResponseData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    QuickResponseData.struct_class = Types::QuickResponseData

    QuickResponseDataProvider.add_member(:content, Shapes::ShapeRef.new(shape: QuickResponseContent, location_name: "content"))
    QuickResponseDataProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    QuickResponseDataProvider.add_member_subclass(:content, Types::QuickResponseDataProvider::Content)
    QuickResponseDataProvider.add_member_subclass(:unknown, Types::QuickResponseDataProvider::Unknown)
    QuickResponseDataProvider.struct_class = Types::QuickResponseDataProvider

    QuickResponseFilterField.add_member(:include_no_existence, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeNoExistence"))
    QuickResponseFilterField.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    QuickResponseFilterField.add_member(:operator, Shapes::ShapeRef.new(shape: QuickResponseFilterOperator, required: true, location_name: "operator"))
    QuickResponseFilterField.add_member(:values, Shapes::ShapeRef.new(shape: QuickResponseFilterValueList, location_name: "values"))
    QuickResponseFilterField.struct_class = Types::QuickResponseFilterField

    QuickResponseFilterFieldList.member = Shapes::ShapeRef.new(shape: QuickResponseFilterField)

    QuickResponseFilterValueList.member = Shapes::ShapeRef.new(shape: QuickResponseFilterValue)

    QuickResponseOrderField.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    QuickResponseOrderField.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "order"))
    QuickResponseOrderField.struct_class = Types::QuickResponseOrderField

    QuickResponseQueryField.add_member(:allow_fuzziness, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowFuzziness"))
    QuickResponseQueryField.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    QuickResponseQueryField.add_member(:operator, Shapes::ShapeRef.new(shape: QuickResponseQueryOperator, required: true, location_name: "operator"))
    QuickResponseQueryField.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "priority"))
    QuickResponseQueryField.add_member(:values, Shapes::ShapeRef.new(shape: QuickResponseQueryValueList, required: true, location_name: "values"))
    QuickResponseQueryField.struct_class = Types::QuickResponseQueryField

    QuickResponseQueryFieldList.member = Shapes::ShapeRef.new(shape: QuickResponseQueryField)

    QuickResponseQueryValueList.member = Shapes::ShapeRef.new(shape: QuickResponseQueryValue)

    QuickResponseSearchExpression.add_member(:filters, Shapes::ShapeRef.new(shape: QuickResponseFilterFieldList, location_name: "filters"))
    QuickResponseSearchExpression.add_member(:order_on_field, Shapes::ShapeRef.new(shape: QuickResponseOrderField, location_name: "orderOnField"))
    QuickResponseSearchExpression.add_member(:queries, Shapes::ShapeRef.new(shape: QuickResponseQueryFieldList, location_name: "queries"))
    QuickResponseSearchExpression.struct_class = Types::QuickResponseSearchExpression

    QuickResponseSearchResultData.add_member(:attributes_interpolated, Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: "attributesInterpolated"))
    QuickResponseSearchResultData.add_member(:attributes_not_interpolated, Shapes::ShapeRef.new(shape: ContactAttributeKeys, location_name: "attributesNotInterpolated"))
    QuickResponseSearchResultData.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    QuickResponseSearchResultData.add_member(:content_type, Shapes::ShapeRef.new(shape: QuickResponseType, required: true, location_name: "contentType"))
    QuickResponseSearchResultData.add_member(:contents, Shapes::ShapeRef.new(shape: QuickResponseContents, required: true, location_name: "contents"))
    QuickResponseSearchResultData.add_member(:created_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "createdTime"))
    QuickResponseSearchResultData.add_member(:description, Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: "description"))
    QuickResponseSearchResultData.add_member(:grouping_configuration, Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: "groupingConfiguration"))
    QuickResponseSearchResultData.add_member(:is_active, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isActive"))
    QuickResponseSearchResultData.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    QuickResponseSearchResultData.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    QuickResponseSearchResultData.add_member(:language, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "language"))
    QuickResponseSearchResultData.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: GenericArn, location_name: "lastModifiedBy"))
    QuickResponseSearchResultData.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "lastModifiedTime"))
    QuickResponseSearchResultData.add_member(:name, Shapes::ShapeRef.new(shape: QuickResponseName, required: true, location_name: "name"))
    QuickResponseSearchResultData.add_member(:quick_response_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "quickResponseArn"))
    QuickResponseSearchResultData.add_member(:quick_response_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "quickResponseId"))
    QuickResponseSearchResultData.add_member(:shortcut_key, Shapes::ShapeRef.new(shape: ShortCutKey, location_name: "shortcutKey"))
    QuickResponseSearchResultData.add_member(:status, Shapes::ShapeRef.new(shape: QuickResponseStatus, required: true, location_name: "status"))
    QuickResponseSearchResultData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    QuickResponseSearchResultData.struct_class = Types::QuickResponseSearchResultData

    QuickResponseSearchResultsList.member = Shapes::ShapeRef.new(shape: QuickResponseSearchResultData)

    QuickResponseSummary.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    QuickResponseSummary.add_member(:content_type, Shapes::ShapeRef.new(shape: QuickResponseType, required: true, location_name: "contentType"))
    QuickResponseSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "createdTime"))
    QuickResponseSummary.add_member(:description, Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: "description"))
    QuickResponseSummary.add_member(:is_active, Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    QuickResponseSummary.add_member(:knowledge_base_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "knowledgeBaseArn"))
    QuickResponseSummary.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "knowledgeBaseId"))
    QuickResponseSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: GenericArn, location_name: "lastModifiedBy"))
    QuickResponseSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "lastModifiedTime"))
    QuickResponseSummary.add_member(:name, Shapes::ShapeRef.new(shape: QuickResponseName, required: true, location_name: "name"))
    QuickResponseSummary.add_member(:quick_response_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "quickResponseArn"))
    QuickResponseSummary.add_member(:quick_response_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "quickResponseId"))
    QuickResponseSummary.add_member(:status, Shapes::ShapeRef.new(shape: QuickResponseStatus, required: true, location_name: "status"))
    QuickResponseSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    QuickResponseSummary.struct_class = Types::QuickResponseSummary

    QuickResponseSummaryList.member = Shapes::ShapeRef.new(shape: QuickResponseSummary)

    RecommendationData.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "document"))
    RecommendationData.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendationId"))
    RecommendationData.add_member(:relevance_level, Shapes::ShapeRef.new(shape: RelevanceLevel, location_name: "relevanceLevel"))
    RecommendationData.add_member(:relevance_score, Shapes::ShapeRef.new(shape: RelevanceScore, location_name: "relevanceScore"))
    RecommendationData.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, location_name: "type"))
    RecommendationData.struct_class = Types::RecommendationData

    RecommendationIdList.member = Shapes::ShapeRef.new(shape: String)

    RecommendationList.member = Shapes::ShapeRef.new(shape: RecommendationData)

    RecommendationTrigger.add_member(:data, Shapes::ShapeRef.new(shape: RecommendationTriggerData, required: true, location_name: "data"))
    RecommendationTrigger.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    RecommendationTrigger.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, required: true, location_name: "recommendationIds"))
    RecommendationTrigger.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSourceType, required: true, location_name: "source"))
    RecommendationTrigger.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationTriggerType, required: true, location_name: "type"))
    RecommendationTrigger.struct_class = Types::RecommendationTrigger

    RecommendationTriggerData.add_member(:query, Shapes::ShapeRef.new(shape: QueryRecommendationTriggerData, location_name: "query"))
    RecommendationTriggerData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RecommendationTriggerData.add_member_subclass(:query, Types::RecommendationTriggerData::Query)
    RecommendationTriggerData.add_member_subclass(:unknown, Types::RecommendationTriggerData::Unknown)
    RecommendationTriggerData.struct_class = Types::RecommendationTriggerData

    RecommendationTriggerList.member = Shapes::ShapeRef.new(shape: RecommendationTrigger)

    RemoveKnowledgeBaseTemplateUriRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    RemoveKnowledgeBaseTemplateUriRequest.struct_class = Types::RemoveKnowledgeBaseTemplateUriRequest

    RemoveKnowledgeBaseTemplateUriResponse.struct_class = Types::RemoveKnowledgeBaseTemplateUriResponse

    RenderingConfiguration.add_member(:template_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "templateUri"))
    RenderingConfiguration.struct_class = Types::RenderingConfiguration

    RequestTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestTimeoutException.struct_class = Types::RequestTimeoutException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResultData.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "document"))
    ResultData.add_member(:relevance_score, Shapes::ShapeRef.new(shape: RelevanceScore, location_name: "relevanceScore"))
    ResultData.add_member(:result_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "resultId"))
    ResultData.struct_class = Types::ResultData

    SearchContentRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    SearchContentRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    SearchContentRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    SearchContentRequest.add_member(:search_expression, Shapes::ShapeRef.new(shape: SearchExpression, required: true, location_name: "searchExpression"))
    SearchContentRequest.struct_class = Types::SearchContentRequest

    SearchContentResponse.add_member(:content_summaries, Shapes::ShapeRef.new(shape: ContentSummaryList, required: true, location_name: "contentSummaries"))
    SearchContentResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchContentResponse.struct_class = Types::SearchContentResponse

    SearchExpression.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "filters"))
    SearchExpression.struct_class = Types::SearchExpression

    SearchQuickResponsesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ContactAttributes, location_name: "attributes"))
    SearchQuickResponsesRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    SearchQuickResponsesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    SearchQuickResponsesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location: "querystring", location_name: "nextToken"))
    SearchQuickResponsesRequest.add_member(:search_expression, Shapes::ShapeRef.new(shape: QuickResponseSearchExpression, required: true, location_name: "searchExpression"))
    SearchQuickResponsesRequest.struct_class = Types::SearchQuickResponsesRequest

    SearchQuickResponsesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    SearchQuickResponsesResponse.add_member(:results, Shapes::ShapeRef.new(shape: QuickResponseSearchResultsList, required: true, location_name: "results"))
    SearchQuickResponsesResponse.struct_class = Types::SearchQuickResponsesResponse

    SearchSessionsRequest.add_member(:assistant_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "assistantId"))
    SearchSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    SearchSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    SearchSessionsRequest.add_member(:search_expression, Shapes::ShapeRef.new(shape: SearchExpression, required: true, location_name: "searchExpression"))
    SearchSessionsRequest.struct_class = Types::SearchSessionsRequest

    SearchSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchSessionsResponse.add_member(:session_summaries, Shapes::ShapeRef.new(shape: SessionSummaries, required: true, location_name: "sessionSummaries"))
    SearchSessionsResponse.struct_class = Types::SearchSessionsResponse

    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionData.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    SessionData.add_member(:integration_configuration, Shapes::ShapeRef.new(shape: SessionIntegrationConfiguration, location_name: "integrationConfiguration"))
    SessionData.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    SessionData.add_member(:session_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sessionArn"))
    SessionData.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    SessionData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    SessionData.struct_class = Types::SessionData

    SessionIntegrationConfiguration.add_member(:topic_integration_arn, Shapes::ShapeRef.new(shape: GenericArn, location_name: "topicIntegrationArn"))
    SessionIntegrationConfiguration.struct_class = Types::SessionIntegrationConfiguration

    SessionSummaries.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SessionSummary.add_member(:assistant_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assistantArn"))
    SessionSummary.add_member(:assistant_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assistantId"))
    SessionSummary.add_member(:session_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "sessionArn"))
    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "sessionId"))
    SessionSummary.struct_class = Types::SessionSummary

    SourceConfiguration.add_member(:app_integrations, Shapes::ShapeRef.new(shape: AppIntegrationsConfiguration, location_name: "appIntegrations"))
    SourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceConfiguration.add_member_subclass(:app_integrations, Types::SourceConfiguration::AppIntegrations)
    SourceConfiguration.add_member_subclass(:unknown, Types::SourceConfiguration::Unknown)
    SourceConfiguration.struct_class = Types::SourceConfiguration

    StartContentUploadRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "contentType"))
    StartContentUploadRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    StartContentUploadRequest.add_member(:presigned_url_time_to_live, Shapes::ShapeRef.new(shape: TimeToLive, location_name: "presignedUrlTimeToLive"))
    StartContentUploadRequest.struct_class = Types::StartContentUploadRequest

    StartContentUploadResponse.add_member(:headers_to_include, Shapes::ShapeRef.new(shape: Headers, required: true, location_name: "headersToInclude"))
    StartContentUploadResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    StartContentUploadResponse.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    StartContentUploadResponse.add_member(:url_expiry, Shapes::ShapeRef.new(shape: SyntheticTimestamp_epoch_seconds, required: true, location_name: "urlExpiry"))
    StartContentUploadResponse.struct_class = Types::StartContentUploadResponse

    StartImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartImportJobRequest.add_member(:external_source_configuration, Shapes::ShapeRef.new(shape: ExternalSourceConfiguration, location_name: "externalSourceConfiguration"))
    StartImportJobRequest.add_member(:import_job_type, Shapes::ShapeRef.new(shape: ImportJobType, required: true, location_name: "importJobType"))
    StartImportJobRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    StartImportJobRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, location_name: "metadata"))
    StartImportJobRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    StartImportJobRequest.struct_class = Types::StartImportJobRequest

    StartImportJobResponse.add_member(:import_job, Shapes::ShapeRef.new(shape: ImportJobData, location_name: "importJob"))
    StartImportJobResponse.struct_class = Types::StartImportJobResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateContentRequest.add_member(:content_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "contentId"))
    UpdateContentRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateContentRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: ContentMetadata, location_name: "metadata"))
    UpdateContentRequest.add_member(:override_link_out_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "overrideLinkOutUri"))
    UpdateContentRequest.add_member(:remove_override_link_out_uri, Shapes::ShapeRef.new(shape: Boolean, location_name: "removeOverrideLinkOutUri"))
    UpdateContentRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "revisionId"))
    UpdateContentRequest.add_member(:title, Shapes::ShapeRef.new(shape: ContentTitle, location_name: "title"))
    UpdateContentRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, location_name: "uploadId"))
    UpdateContentRequest.struct_class = Types::UpdateContentRequest

    UpdateContentResponse.add_member(:content, Shapes::ShapeRef.new(shape: ContentData, location_name: "content"))
    UpdateContentResponse.struct_class = Types::UpdateContentResponse

    UpdateKnowledgeBaseTemplateUriRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateKnowledgeBaseTemplateUriRequest.add_member(:template_uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "templateUri"))
    UpdateKnowledgeBaseTemplateUriRequest.struct_class = Types::UpdateKnowledgeBaseTemplateUriRequest

    UpdateKnowledgeBaseTemplateUriResponse.add_member(:knowledge_base, Shapes::ShapeRef.new(shape: KnowledgeBaseData, location_name: "knowledgeBase"))
    UpdateKnowledgeBaseTemplateUriResponse.struct_class = Types::UpdateKnowledgeBaseTemplateUriResponse

    UpdateQuickResponseRequest.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "channels"))
    UpdateQuickResponseRequest.add_member(:content, Shapes::ShapeRef.new(shape: QuickResponseDataProvider, location_name: "content"))
    UpdateQuickResponseRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: QuickResponseType, location_name: "contentType"))
    UpdateQuickResponseRequest.add_member(:description, Shapes::ShapeRef.new(shape: QuickResponseDescription, location_name: "description"))
    UpdateQuickResponseRequest.add_member(:grouping_configuration, Shapes::ShapeRef.new(shape: GroupingConfiguration, location_name: "groupingConfiguration"))
    UpdateQuickResponseRequest.add_member(:is_active, Shapes::ShapeRef.new(shape: Boolean, location_name: "isActive"))
    UpdateQuickResponseRequest.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "knowledgeBaseId"))
    UpdateQuickResponseRequest.add_member(:language, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "language"))
    UpdateQuickResponseRequest.add_member(:name, Shapes::ShapeRef.new(shape: QuickResponseName, location_name: "name"))
    UpdateQuickResponseRequest.add_member(:quick_response_id, Shapes::ShapeRef.new(shape: UuidOrArn, required: true, location: "uri", location_name: "quickResponseId"))
    UpdateQuickResponseRequest.add_member(:remove_description, Shapes::ShapeRef.new(shape: Boolean, location_name: "removeDescription"))
    UpdateQuickResponseRequest.add_member(:remove_grouping_configuration, Shapes::ShapeRef.new(shape: Boolean, location_name: "removeGroupingConfiguration"))
    UpdateQuickResponseRequest.add_member(:remove_shortcut_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "removeShortcutKey"))
    UpdateQuickResponseRequest.add_member(:shortcut_key, Shapes::ShapeRef.new(shape: ShortCutKey, location_name: "shortcutKey"))
    UpdateQuickResponseRequest.struct_class = Types::UpdateQuickResponseRequest

    UpdateQuickResponseResponse.add_member(:quick_response, Shapes::ShapeRef.new(shape: QuickResponseData, location_name: "quickResponse"))
    UpdateQuickResponseResponse.struct_class = Types::UpdateQuickResponseResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-10-19"

      api.metadata = {
        "apiVersion" => "2020-10-19",
        "endpointPrefix" => "wisdom",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Connect Wisdom Service",
        "serviceId" => "Wisdom",
        "signatureVersion" => "v4",
        "signingName" => "wisdom",
        "uid" => "wisdom-2020-10-19",
      }

      api.add_operation(:create_assistant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssistant"
        o.http_method = "POST"
        o.http_request_uri = "/assistants"
        o.input = Shapes::ShapeRef.new(shape: CreateAssistantRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssistantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_assistant_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssistantAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/assistants/{assistantId}/associations"
        o.input = Shapes::ShapeRef.new(shape: CreateAssistantAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssistantAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContent"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/contents"
        o.input = Shapes::ShapeRef.new(shape: CreateContentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateKnowledgeBase"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases"
        o.input = Shapes::ShapeRef.new(shape: CreateKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_quick_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQuickResponse"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/quickResponses"
        o.input = Shapes::ShapeRef.new(shape: CreateQuickResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQuickResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSession"
        o.http_method = "POST"
        o.http_request_uri = "/assistants/{assistantId}/sessions"
        o.input = Shapes::ShapeRef.new(shape: CreateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_assistant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssistant"
        o.http_method = "DELETE"
        o.http_request_uri = "/assistants/{assistantId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssistantRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssistantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_assistant_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssistantAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/assistants/{assistantId}/associations/{assistantAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssistantAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssistantAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContent"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImportJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteKnowledgeBase"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_quick_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQuickResponse"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteQuickResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQuickResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_assistant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssistant"
        o.http_method = "GET"
        o.http_request_uri = "/assistants/{assistantId}"
        o.input = Shapes::ShapeRef.new(shape: GetAssistantRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssistantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_assistant_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssistantAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/assistants/{assistantId}/associations/{assistantAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: GetAssistantAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssistantAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContent"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}"
        o.input = Shapes::ShapeRef.new(shape: GetContentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_content_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContentSummary"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary"
        o.input = Shapes::ShapeRef.new(shape: GetContentSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContentSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}"
        o.input = Shapes::ShapeRef.new(shape: GetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_knowledge_base, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetKnowledgeBase"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}"
        o.input = Shapes::ShapeRef.new(shape: GetKnowledgeBaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetKnowledgeBaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_quick_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQuickResponse"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}"
        o.input = Shapes::ShapeRef.new(shape: GetQuickResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQuickResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendations"
        o.http_method = "GET"
        o.http_request_uri = "/assistants/{assistantId}/sessions/{sessionId}/recommendations"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/assistants/{assistantId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_assistant_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssistantAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/assistants/{assistantId}/associations"
        o.input = Shapes::ShapeRef.new(shape: ListAssistantAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssistantAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_assistants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssistants"
        o.http_method = "GET"
        o.http_request_uri = "/assistants"
        o.input = Shapes::ShapeRef.new(shape: ListAssistantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssistantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContents"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/contents"
        o.input = Shapes::ShapeRef.new(shape: ListContentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/importJobs"
        o.input = Shapes::ShapeRef.new(shape: ListImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_knowledge_bases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListKnowledgeBases"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases"
        o.input = Shapes::ShapeRef.new(shape: ListKnowledgeBasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListKnowledgeBasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_quick_responses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQuickResponses"
        o.http_method = "GET"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/quickResponses"
        o.input = Shapes::ShapeRef.new(shape: ListQuickResponsesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQuickResponsesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:notify_recommendations_received, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyRecommendationsReceived"
        o.http_method = "POST"
        o.http_request_uri = "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify"
        o.input = Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedRequest)
        o.output = Shapes::ShapeRef.new(shape: NotifyRecommendationsReceivedResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:query_assistant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QueryAssistant"
        o.http_method = "POST"
        o.http_request_uri = "/assistants/{assistantId}/query"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: QueryAssistantRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryAssistantResponse)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:remove_knowledge_base_template_uri, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveKnowledgeBaseTemplateUri"
        o.http_method = "DELETE"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/templateUri"
        o.input = Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveKnowledgeBaseTemplateUriResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:search_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchContent"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/search"
        o.input = Shapes::ShapeRef.new(shape: SearchContentRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_quick_responses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchQuickResponses"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/search/quickResponses"
        o.input = Shapes::ShapeRef.new(shape: SearchQuickResponsesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchQuickResponsesResponse)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchSessions"
        o.http_method = "POST"
        o.http_request_uri = "/assistants/{assistantId}/searchSessions"
        o.input = Shapes::ShapeRef.new(shape: SearchSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_content_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartContentUpload"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/upload"
        o.input = Shapes::ShapeRef.new(shape: StartContentUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: StartContentUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/importJobs"
        o.input = Shapes::ShapeRef.new(shape: StartImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContent"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_knowledge_base_template_uri, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateKnowledgeBaseTemplateUri"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/templateUri"
        o.input = Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateKnowledgeBaseTemplateUriResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_quick_response, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQuickResponse"
        o.http_method = "POST"
        o.http_request_uri = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateQuickResponseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQuickResponseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
