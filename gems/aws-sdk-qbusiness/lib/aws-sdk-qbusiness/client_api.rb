# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QBusiness
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessConfiguration = Shapes::StructureShape.new(name: 'AccessConfiguration')
    AccessControl = Shapes::StructureShape.new(name: 'AccessControl')
    AccessControls = Shapes::ListShape.new(name: 'AccessControls')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionExecution = Shapes::StructureShape.new(name: 'ActionExecution')
    ActionExecutionPayload = Shapes::MapShape.new(name: 'ActionExecutionPayload')
    ActionExecutionPayloadField = Shapes::StructureShape.new(name: 'ActionExecutionPayloadField')
    ActionPayloadFieldKey = Shapes::StringShape.new(name: 'ActionPayloadFieldKey')
    ActionPayloadFieldNameSeparator = Shapes::StringShape.new(name: 'ActionPayloadFieldNameSeparator')
    ActionPayloadFieldType = Shapes::StringShape.new(name: 'ActionPayloadFieldType')
    ActionPayloadFieldValue = Shapes::DocumentShape.new(name: 'ActionPayloadFieldValue', document: true)
    ActionReview = Shapes::StructureShape.new(name: 'ActionReview')
    ActionReviewPayload = Shapes::MapShape.new(name: 'ActionReviewPayload')
    ActionReviewPayloadField = Shapes::StructureShape.new(name: 'ActionReviewPayloadField')
    ActionReviewPayloadFieldAllowedValue = Shapes::StructureShape.new(name: 'ActionReviewPayloadFieldAllowedValue')
    ActionReviewPayloadFieldAllowedValues = Shapes::ListShape.new(name: 'ActionReviewPayloadFieldAllowedValues')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    Applications = Shapes::ListShape.new(name: 'Applications')
    AppliedAttachmentsConfiguration = Shapes::StructureShape.new(name: 'AppliedAttachmentsConfiguration')
    AttachmentInput = Shapes::StructureShape.new(name: 'AttachmentInput')
    AttachmentName = Shapes::StringShape.new(name: 'AttachmentName')
    AttachmentOutput = Shapes::StructureShape.new(name: 'AttachmentOutput')
    AttachmentStatus = Shapes::StringShape.new(name: 'AttachmentStatus')
    AttachmentsConfiguration = Shapes::StructureShape.new(name: 'AttachmentsConfiguration')
    AttachmentsControlMode = Shapes::StringShape.new(name: 'AttachmentsControlMode')
    AttachmentsInput = Shapes::ListShape.new(name: 'AttachmentsInput')
    AttachmentsOutput = Shapes::ListShape.new(name: 'AttachmentsOutput')
    AttributeFilter = Shapes::StructureShape.new(name: 'AttributeFilter')
    AttributeFilters = Shapes::ListShape.new(name: 'AttributeFilters')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AttributeValueOperator = Shapes::StringShape.new(name: 'AttributeValueOperator')
    BasicAuthConfiguration = Shapes::StructureShape.new(name: 'BasicAuthConfiguration')
    BatchDeleteDocumentRequest = Shapes::StructureShape.new(name: 'BatchDeleteDocumentRequest')
    BatchDeleteDocumentResponse = Shapes::StructureShape.new(name: 'BatchDeleteDocumentResponse')
    BatchPutDocumentRequest = Shapes::StructureShape.new(name: 'BatchPutDocumentRequest')
    BatchPutDocumentResponse = Shapes::StructureShape.new(name: 'BatchPutDocumentResponse')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    BlockedPhrase = Shapes::StringShape.new(name: 'BlockedPhrase')
    BlockedPhrases = Shapes::ListShape.new(name: 'BlockedPhrases')
    BlockedPhrasesConfiguration = Shapes::StructureShape.new(name: 'BlockedPhrasesConfiguration')
    BlockedPhrasesConfigurationUpdate = Shapes::StructureShape.new(name: 'BlockedPhrasesConfigurationUpdate')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChatSyncInput = Shapes::StructureShape.new(name: 'ChatSyncInput')
    ChatSyncOutput = Shapes::StructureShape.new(name: 'ChatSyncOutput')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentBlockerRule = Shapes::StructureShape.new(name: 'ContentBlockerRule')
    ContentRetrievalRule = Shapes::StructureShape.new(name: 'ContentRetrievalRule')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    Conversation = Shapes::StructureShape.new(name: 'Conversation')
    ConversationId = Shapes::StringShape.new(name: 'ConversationId')
    ConversationTitle = Shapes::StringShape.new(name: 'ConversationTitle')
    Conversations = Shapes::ListShape.new(name: 'Conversations')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    CreatePluginRequest = Shapes::StructureShape.new(name: 'CreatePluginRequest')
    CreatePluginResponse = Shapes::StructureShape.new(name: 'CreatePluginResponse')
    CreateRetrieverRequest = Shapes::StructureShape.new(name: 'CreateRetrieverRequest')
    CreateRetrieverResponse = Shapes::StructureShape.new(name: 'CreateRetrieverResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserRequestUserAliasesList = Shapes::ListShape.new(name: 'CreateUserRequestUserAliasesList')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateWebExperienceRequest = Shapes::StructureShape.new(name: 'CreateWebExperienceRequest')
    CreateWebExperienceResponse = Shapes::StructureShape.new(name: 'CreateWebExperienceResponse')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceArn = Shapes::StringShape.new(name: 'DataSourceArn')
    DataSourceConfiguration = Shapes::DocumentShape.new(name: 'DataSourceConfiguration', document: true)
    DataSourceId = Shapes::StringShape.new(name: 'DataSourceId')
    DataSourceIds = Shapes::ListShape.new(name: 'DataSourceIds')
    DataSourceName = Shapes::StringShape.new(name: 'DataSourceName')
    DataSourceStatus = Shapes::StringShape.new(name: 'DataSourceStatus')
    DataSourceSyncJob = Shapes::StructureShape.new(name: 'DataSourceSyncJob')
    DataSourceSyncJobMetrics = Shapes::StructureShape.new(name: 'DataSourceSyncJobMetrics')
    DataSourceSyncJobStatus = Shapes::StringShape.new(name: 'DataSourceSyncJobStatus')
    DataSourceSyncJobs = Shapes::ListShape.new(name: 'DataSourceSyncJobs')
    DataSourceUserId = Shapes::StringShape.new(name: 'DataSourceUserId')
    DataSourceVpcConfiguration = Shapes::StructureShape.new(name: 'DataSourceVpcConfiguration')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteChatControlsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteChatControlsConfigurationRequest')
    DeleteChatControlsConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteChatControlsConfigurationResponse')
    DeleteConversationRequest = Shapes::StructureShape.new(name: 'DeleteConversationRequest')
    DeleteConversationResponse = Shapes::StructureShape.new(name: 'DeleteConversationResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteDocument = Shapes::StructureShape.new(name: 'DeleteDocument')
    DeleteDocuments = Shapes::ListShape.new(name: 'DeleteDocuments')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteIndexRequest = Shapes::StructureShape.new(name: 'DeleteIndexRequest')
    DeleteIndexResponse = Shapes::StructureShape.new(name: 'DeleteIndexResponse')
    DeletePluginRequest = Shapes::StructureShape.new(name: 'DeletePluginRequest')
    DeletePluginResponse = Shapes::StructureShape.new(name: 'DeletePluginResponse')
    DeleteRetrieverRequest = Shapes::StructureShape.new(name: 'DeleteRetrieverRequest')
    DeleteRetrieverResponse = Shapes::StructureShape.new(name: 'DeleteRetrieverResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DeleteWebExperienceRequest = Shapes::StructureShape.new(name: 'DeleteWebExperienceRequest')
    DeleteWebExperienceResponse = Shapes::StructureShape.new(name: 'DeleteWebExperienceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentAttribute = Shapes::StructureShape.new(name: 'DocumentAttribute')
    DocumentAttributeCondition = Shapes::StructureShape.new(name: 'DocumentAttributeCondition')
    DocumentAttributeConfiguration = Shapes::StructureShape.new(name: 'DocumentAttributeConfiguration')
    DocumentAttributeConfigurations = Shapes::ListShape.new(name: 'DocumentAttributeConfigurations')
    DocumentAttributeKey = Shapes::StringShape.new(name: 'DocumentAttributeKey')
    DocumentAttributeStringListValue = Shapes::ListShape.new(name: 'DocumentAttributeStringListValue')
    DocumentAttributeTarget = Shapes::StructureShape.new(name: 'DocumentAttributeTarget')
    DocumentAttributeValue = Shapes::UnionShape.new(name: 'DocumentAttributeValue')
    DocumentAttributeValueStringValueString = Shapes::StringShape.new(name: 'DocumentAttributeValueStringValueString')
    DocumentAttributes = Shapes::ListShape.new(name: 'DocumentAttributes')
    DocumentContent = Shapes::UnionShape.new(name: 'DocumentContent')
    DocumentContentOperator = Shapes::StringShape.new(name: 'DocumentContentOperator')
    DocumentDetailList = Shapes::ListShape.new(name: 'DocumentDetailList')
    DocumentDetails = Shapes::StructureShape.new(name: 'DocumentDetails')
    DocumentEnrichmentConditionOperator = Shapes::StringShape.new(name: 'DocumentEnrichmentConditionOperator')
    DocumentEnrichmentConfiguration = Shapes::StructureShape.new(name: 'DocumentEnrichmentConfiguration')
    DocumentId = Shapes::StringShape.new(name: 'DocumentId')
    DocumentStatus = Shapes::StringShape.new(name: 'DocumentStatus')
    Documents = Shapes::ListShape.new(name: 'Documents')
    EligibleDataSource = Shapes::StructureShape.new(name: 'EligibleDataSource')
    EligibleDataSources = Shapes::ListShape.new(name: 'EligibleDataSources')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExampleChatMessage = Shapes::StringShape.new(name: 'ExampleChatMessage')
    ExampleChatMessages = Shapes::ListShape.new(name: 'ExampleChatMessages')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    FailedDocument = Shapes::StructureShape.new(name: 'FailedDocument')
    FailedDocuments = Shapes::ListShape.new(name: 'FailedDocuments')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetChatControlsConfigurationRequest = Shapes::StructureShape.new(name: 'GetChatControlsConfigurationRequest')
    GetChatControlsConfigurationResponse = Shapes::StructureShape.new(name: 'GetChatControlsConfigurationResponse')
    GetDataSourceRequest = Shapes::StructureShape.new(name: 'GetDataSourceRequest')
    GetDataSourceResponse = Shapes::StructureShape.new(name: 'GetDataSourceResponse')
    GetGroupRequest = Shapes::StructureShape.new(name: 'GetGroupRequest')
    GetGroupResponse = Shapes::StructureShape.new(name: 'GetGroupResponse')
    GetIndexRequest = Shapes::StructureShape.new(name: 'GetIndexRequest')
    GetIndexResponse = Shapes::StructureShape.new(name: 'GetIndexResponse')
    GetPluginRequest = Shapes::StructureShape.new(name: 'GetPluginRequest')
    GetPluginResponse = Shapes::StructureShape.new(name: 'GetPluginResponse')
    GetRetrieverRequest = Shapes::StructureShape.new(name: 'GetRetrieverRequest')
    GetRetrieverResponse = Shapes::StructureShape.new(name: 'GetRetrieverResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetWebExperienceRequest = Shapes::StructureShape.new(name: 'GetWebExperienceRequest')
    GetWebExperienceResponse = Shapes::StructureShape.new(name: 'GetWebExperienceResponse')
    GroupMembers = Shapes::StructureShape.new(name: 'GroupMembers')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupStatus = Shapes::StringShape.new(name: 'GroupStatus')
    GroupStatusDetail = Shapes::StructureShape.new(name: 'GroupStatusDetail')
    GroupStatusDetails = Shapes::ListShape.new(name: 'GroupStatusDetails')
    GroupSummary = Shapes::StructureShape.new(name: 'GroupSummary')
    GroupSummaryList = Shapes::ListShape.new(name: 'GroupSummaryList')
    HookConfiguration = Shapes::StructureShape.new(name: 'HookConfiguration')
    Index = Shapes::StructureShape.new(name: 'Index')
    IndexArn = Shapes::StringShape.new(name: 'IndexArn')
    IndexCapacityConfiguration = Shapes::StructureShape.new(name: 'IndexCapacityConfiguration')
    IndexCapacityInteger = Shapes::IntegerShape.new(name: 'IndexCapacityInteger')
    IndexId = Shapes::StringShape.new(name: 'IndexId')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexStatistics = Shapes::StructureShape.new(name: 'IndexStatistics')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    IndexedTextBytes = Shapes::IntegerShape.new(name: 'IndexedTextBytes')
    IndexedTextDocument = Shapes::IntegerShape.new(name: 'IndexedTextDocument')
    Indices = Shapes::ListShape.new(name: 'Indices')
    InlineDocumentEnrichmentConfiguration = Shapes::StructureShape.new(name: 'InlineDocumentEnrichmentConfiguration')
    InlineDocumentEnrichmentConfigurations = Shapes::ListShape.new(name: 'InlineDocumentEnrichmentConfigurations')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KendraIndexConfiguration = Shapes::StructureShape.new(name: 'KendraIndexConfiguration')
    KendraIndexId = Shapes::StringShape.new(name: 'KendraIndexId')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LicenseNotFoundException = Shapes::StructureShape.new(name: 'LicenseNotFoundException')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListConversationsRequest = Shapes::StructureShape.new(name: 'ListConversationsRequest')
    ListConversationsResponse = Shapes::StructureShape.new(name: 'ListConversationsResponse')
    ListDataSourceSyncJobsRequest = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsRequest')
    ListDataSourceSyncJobsResponse = Shapes::StructureShape.new(name: 'ListDataSourceSyncJobsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListDocumentsRequest = Shapes::StructureShape.new(name: 'ListDocumentsRequest')
    ListDocumentsResponse = Shapes::StructureShape.new(name: 'ListDocumentsResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListIndicesRequest = Shapes::StructureShape.new(name: 'ListIndicesRequest')
    ListIndicesResponse = Shapes::StructureShape.new(name: 'ListIndicesResponse')
    ListMessagesRequest = Shapes::StructureShape.new(name: 'ListMessagesRequest')
    ListMessagesResponse = Shapes::StructureShape.new(name: 'ListMessagesResponse')
    ListPluginsRequest = Shapes::StructureShape.new(name: 'ListPluginsRequest')
    ListPluginsResponse = Shapes::StructureShape.new(name: 'ListPluginsResponse')
    ListRetrieversRequest = Shapes::StructureShape.new(name: 'ListRetrieversRequest')
    ListRetrieversResponse = Shapes::StructureShape.new(name: 'ListRetrieversResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWebExperiencesRequest = Shapes::StructureShape.new(name: 'ListWebExperiencesRequest')
    ListWebExperiencesResponse = Shapes::StructureShape.new(name: 'ListWebExperiencesResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResultsIntegerForGetTopicConfigurations = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForGetTopicConfigurations')
    MaxResultsIntegerForListApplications = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListApplications')
    MaxResultsIntegerForListConversations = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListConversations')
    MaxResultsIntegerForListDataSources = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSources')
    MaxResultsIntegerForListDataSourcesSyncJobs = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourcesSyncJobs')
    MaxResultsIntegerForListDocuments = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDocuments')
    MaxResultsIntegerForListGroupsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListGroupsRequest')
    MaxResultsIntegerForListIndices = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListIndices')
    MaxResultsIntegerForListMessages = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListMessages')
    MaxResultsIntegerForListPlugins = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPlugins')
    MaxResultsIntegerForListRetrieversRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListRetrieversRequest')
    MaxResultsIntegerForListWebExperiencesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListWebExperiencesRequest')
    MemberGroup = Shapes::StructureShape.new(name: 'MemberGroup')
    MemberGroups = Shapes::ListShape.new(name: 'MemberGroups')
    MemberRelation = Shapes::StringShape.new(name: 'MemberRelation')
    MemberUser = Shapes::StructureShape.new(name: 'MemberUser')
    MemberUsers = Shapes::ListShape.new(name: 'MemberUsers')
    MembershipType = Shapes::StringShape.new(name: 'MembershipType')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageBody = Shapes::StringShape.new(name: 'MessageBody')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    MessageUsefulness = Shapes::StringShape.new(name: 'MessageUsefulness')
    MessageUsefulnessComment = Shapes::StringShape.new(name: 'MessageUsefulnessComment')
    MessageUsefulnessFeedback = Shapes::StructureShape.new(name: 'MessageUsefulnessFeedback')
    MessageUsefulnessReason = Shapes::StringShape.new(name: 'MessageUsefulnessReason')
    Messages = Shapes::ListShape.new(name: 'Messages')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    NativeIndexConfiguration = Shapes::StructureShape.new(name: 'NativeIndexConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OAuth2ClientCredentialConfiguration = Shapes::StructureShape.new(name: 'OAuth2ClientCredentialConfiguration')
    Plugin = Shapes::StructureShape.new(name: 'Plugin')
    PluginArn = Shapes::StringShape.new(name: 'PluginArn')
    PluginAuthConfiguration = Shapes::UnionShape.new(name: 'PluginAuthConfiguration')
    PluginId = Shapes::StringShape.new(name: 'PluginId')
    PluginName = Shapes::StringShape.new(name: 'PluginName')
    PluginState = Shapes::StringShape.new(name: 'PluginState')
    PluginType = Shapes::StringShape.new(name: 'PluginType')
    Plugins = Shapes::ListShape.new(name: 'Plugins')
    Principal = Shapes::UnionShape.new(name: 'Principal')
    PrincipalGroup = Shapes::StructureShape.new(name: 'PrincipalGroup')
    PrincipalUser = Shapes::StructureShape.new(name: 'PrincipalUser')
    Principals = Shapes::ListShape.new(name: 'Principals')
    PutFeedbackRequest = Shapes::StructureShape.new(name: 'PutFeedbackRequest')
    PutGroupRequest = Shapes::StructureShape.new(name: 'PutGroupRequest')
    PutGroupResponse = Shapes::StructureShape.new(name: 'PutGroupResponse')
    ReadAccessType = Shapes::StringShape.new(name: 'ReadAccessType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseScope = Shapes::StringShape.new(name: 'ResponseScope')
    Retriever = Shapes::StructureShape.new(name: 'Retriever')
    RetrieverArn = Shapes::StringShape.new(name: 'RetrieverArn')
    RetrieverConfiguration = Shapes::UnionShape.new(name: 'RetrieverConfiguration')
    RetrieverId = Shapes::StringShape.new(name: 'RetrieverId')
    RetrieverName = Shapes::StringShape.new(name: 'RetrieverName')
    RetrieverStatus = Shapes::StringShape.new(name: 'RetrieverStatus')
    RetrieverType = Shapes::StringShape.new(name: 'RetrieverType')
    Retrievers = Shapes::ListShape.new(name: 'Retrievers')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Rule = Shapes::StructureShape.new(name: 'Rule')
    RuleConfiguration = Shapes::UnionShape.new(name: 'RuleConfiguration')
    RuleType = Shapes::StringShape.new(name: 'RuleType')
    Rules = Shapes::ListShape.new(name: 'Rules')
    S3 = Shapes::StructureShape.new(name: 'S3')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    SamlAttribute = Shapes::StringShape.new(name: 'SamlAttribute')
    SamlConfiguration = Shapes::StructureShape.new(name: 'SamlConfiguration')
    SamlMetadataXML = Shapes::StringShape.new(name: 'SamlMetadataXML')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourceAttribution = Shapes::StructureShape.new(name: 'SourceAttribution')
    SourceAttributions = Shapes::ListShape.new(name: 'SourceAttributions')
    StartDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobRequest')
    StartDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobResponse')
    Status = Shapes::StringShape.new(name: 'Status')
    StopDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobRequest')
    StopDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SyncSchedule = Shapes::StringShape.new(name: 'SyncSchedule')
    SystemMessageId = Shapes::StringShape.new(name: 'SystemMessageId')
    SystemMessageOverride = Shapes::StringShape.new(name: 'SystemMessageOverride')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TextDocumentStatistics = Shapes::StructureShape.new(name: 'TextDocumentStatistics')
    TextSegment = Shapes::StructureShape.new(name: 'TextSegment')
    TextSegmentList = Shapes::ListShape.new(name: 'TextSegmentList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Title = Shapes::StringShape.new(name: 'Title')
    TopicConfiguration = Shapes::StructureShape.new(name: 'TopicConfiguration')
    TopicConfigurationName = Shapes::StringShape.new(name: 'TopicConfigurationName')
    TopicConfigurations = Shapes::ListShape.new(name: 'TopicConfigurations')
    TopicDescription = Shapes::StringShape.new(name: 'TopicDescription')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateChatControlsConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateChatControlsConfigurationRequest')
    UpdateChatControlsConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateChatControlsConfigurationResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateIndexRequest = Shapes::StructureShape.new(name: 'UpdateIndexRequest')
    UpdateIndexResponse = Shapes::StructureShape.new(name: 'UpdateIndexResponse')
    UpdatePluginRequest = Shapes::StructureShape.new(name: 'UpdatePluginRequest')
    UpdatePluginResponse = Shapes::StructureShape.new(name: 'UpdatePluginResponse')
    UpdateRetrieverRequest = Shapes::StructureShape.new(name: 'UpdateRetrieverRequest')
    UpdateRetrieverResponse = Shapes::StructureShape.new(name: 'UpdateRetrieverResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateWebExperienceRequest = Shapes::StructureShape.new(name: 'UpdateWebExperienceRequest')
    UpdateWebExperienceResponse = Shapes::StructureShape.new(name: 'UpdateWebExperienceResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserAlias = Shapes::StructureShape.new(name: 'UserAlias')
    UserAliases = Shapes::ListShape.new(name: 'UserAliases')
    UserGroups = Shapes::ListShape.new(name: 'UserGroups')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIds = Shapes::ListShape.new(name: 'UserIds')
    UserMessage = Shapes::StringShape.new(name: 'UserMessage')
    UsersAndGroups = Shapes::StructureShape.new(name: 'UsersAndGroups')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WebExperience = Shapes::StructureShape.new(name: 'WebExperience')
    WebExperienceArn = Shapes::StringShape.new(name: 'WebExperienceArn')
    WebExperienceAuthConfiguration = Shapes::UnionShape.new(name: 'WebExperienceAuthConfiguration')
    WebExperienceId = Shapes::StringShape.new(name: 'WebExperienceId')
    WebExperienceSamplePromptsControlMode = Shapes::StringShape.new(name: 'WebExperienceSamplePromptsControlMode')
    WebExperienceStatus = Shapes::StringShape.new(name: 'WebExperienceStatus')
    WebExperienceSubtitle = Shapes::StringShape.new(name: 'WebExperienceSubtitle')
    WebExperienceTitle = Shapes::StringShape.new(name: 'WebExperienceTitle')
    WebExperienceWelcomeMessage = Shapes::StringShape.new(name: 'WebExperienceWelcomeMessage')
    WebExperiences = Shapes::ListShape.new(name: 'WebExperiences')

    AccessConfiguration.add_member(:access_controls, Shapes::ShapeRef.new(shape: AccessControls, required: true, location_name: "accessControls"))
    AccessConfiguration.add_member(:member_relation, Shapes::ShapeRef.new(shape: MemberRelation, location_name: "memberRelation"))
    AccessConfiguration.struct_class = Types::AccessConfiguration

    AccessControl.add_member(:member_relation, Shapes::ShapeRef.new(shape: MemberRelation, location_name: "memberRelation"))
    AccessControl.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, required: true, location_name: "principals"))
    AccessControl.struct_class = Types::AccessControl

    AccessControls.member = Shapes::ShapeRef.new(shape: AccessControl)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionExecution.add_member(:payload, Shapes::ShapeRef.new(shape: ActionExecutionPayload, required: true, location_name: "payload"))
    ActionExecution.add_member(:payload_field_name_separator, Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, required: true, location_name: "payloadFieldNameSeparator"))
    ActionExecution.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location_name: "pluginId"))
    ActionExecution.struct_class = Types::ActionExecution

    ActionExecutionPayload.key = Shapes::ShapeRef.new(shape: ActionPayloadFieldKey)
    ActionExecutionPayload.value = Shapes::ShapeRef.new(shape: ActionExecutionPayloadField)

    ActionExecutionPayloadField.add_member(:value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, required: true, location_name: "value"))
    ActionExecutionPayloadField.struct_class = Types::ActionExecutionPayloadField

    ActionReview.add_member(:payload, Shapes::ShapeRef.new(shape: ActionReviewPayload, location_name: "payload"))
    ActionReview.add_member(:payload_field_name_separator, Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator"))
    ActionReview.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    ActionReview.add_member(:plugin_type, Shapes::ShapeRef.new(shape: PluginType, location_name: "pluginType"))
    ActionReview.struct_class = Types::ActionReview

    ActionReviewPayload.key = Shapes::ShapeRef.new(shape: ActionPayloadFieldKey)
    ActionReviewPayload.value = Shapes::ShapeRef.new(shape: ActionReviewPayloadField)

    ActionReviewPayloadField.add_member(:allowed_values, Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldAllowedValues, location_name: "allowedValues"))
    ActionReviewPayloadField.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ActionReviewPayloadField.add_member(:display_order, Shapes::ShapeRef.new(shape: Integer, location_name: "displayOrder"))
    ActionReviewPayloadField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    ActionReviewPayloadField.add_member(:type, Shapes::ShapeRef.new(shape: ActionPayloadFieldType, location_name: "type"))
    ActionReviewPayloadField.add_member(:value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: "value"))
    ActionReviewPayloadField.struct_class = Types::ActionReviewPayloadField

    ActionReviewPayloadFieldAllowedValue.add_member(:display_value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: "displayValue"))
    ActionReviewPayloadFieldAllowedValue.add_member(:value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: "value"))
    ActionReviewPayloadFieldAllowedValue.struct_class = Types::ActionReviewPayloadFieldAllowedValue

    ActionReviewPayloadFieldAllowedValues.member = Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldAllowedValue)

    Application.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    Application.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Application.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    Application.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "status"))
    Application.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Application.struct_class = Types::Application

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    AppliedAttachmentsConfiguration.add_member(:attachments_control_mode, Shapes::ShapeRef.new(shape: AttachmentsControlMode, location_name: "attachmentsControlMode"))
    AppliedAttachmentsConfiguration.struct_class = Types::AppliedAttachmentsConfiguration

    AttachmentInput.add_member(:data, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "data"))
    AttachmentInput.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, required: true, location_name: "name"))
    AttachmentInput.struct_class = Types::AttachmentInput

    AttachmentOutput.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    AttachmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "name"))
    AttachmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: "status"))
    AttachmentOutput.struct_class = Types::AttachmentOutput

    AttachmentsConfiguration.add_member(:attachments_control_mode, Shapes::ShapeRef.new(shape: AttachmentsControlMode, required: true, location_name: "attachmentsControlMode"))
    AttachmentsConfiguration.struct_class = Types::AttachmentsConfiguration

    AttachmentsInput.member = Shapes::ShapeRef.new(shape: AttachmentInput)

    AttachmentsOutput.member = Shapes::ShapeRef.new(shape: AttachmentOutput)

    AttributeFilter.add_member(:and_all_filters, Shapes::ShapeRef.new(shape: AttributeFilters, location_name: "andAllFilters"))
    AttributeFilter.add_member(:contains_all, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "containsAll"))
    AttributeFilter.add_member(:contains_any, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "containsAny"))
    AttributeFilter.add_member(:equals_to, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "equalsTo"))
    AttributeFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "greaterThan"))
    AttributeFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "greaterThanOrEquals"))
    AttributeFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "lessThan"))
    AttributeFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "lessThanOrEquals"))
    AttributeFilter.add_member(:not_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "notFilter"))
    AttributeFilter.add_member(:or_all_filters, Shapes::ShapeRef.new(shape: AttributeFilters, location_name: "orAllFilters"))
    AttributeFilter.struct_class = Types::AttributeFilter

    AttributeFilters.member = Shapes::ShapeRef.new(shape: AttributeFilter)

    BasicAuthConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    BasicAuthConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    BasicAuthConfiguration.struct_class = Types::BasicAuthConfiguration

    BatchDeleteDocumentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    BatchDeleteDocumentRequest.add_member(:data_source_sync_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "dataSourceSyncId"))
    BatchDeleteDocumentRequest.add_member(:documents, Shapes::ShapeRef.new(shape: DeleteDocuments, required: true, location_name: "documents"))
    BatchDeleteDocumentRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    BatchDeleteDocumentRequest.struct_class = Types::BatchDeleteDocumentRequest

    BatchDeleteDocumentResponse.add_member(:failed_documents, Shapes::ShapeRef.new(shape: FailedDocuments, location_name: "failedDocuments"))
    BatchDeleteDocumentResponse.struct_class = Types::BatchDeleteDocumentResponse

    BatchPutDocumentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    BatchPutDocumentRequest.add_member(:data_source_sync_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "dataSourceSyncId"))
    BatchPutDocumentRequest.add_member(:documents, Shapes::ShapeRef.new(shape: Documents, required: true, location_name: "documents"))
    BatchPutDocumentRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    BatchPutDocumentRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    BatchPutDocumentRequest.struct_class = Types::BatchPutDocumentRequest

    BatchPutDocumentResponse.add_member(:failed_documents, Shapes::ShapeRef.new(shape: FailedDocuments, location_name: "failedDocuments"))
    BatchPutDocumentResponse.struct_class = Types::BatchPutDocumentResponse

    BlockedPhrases.member = Shapes::ShapeRef.new(shape: BlockedPhrase)

    BlockedPhrasesConfiguration.add_member(:blocked_phrases, Shapes::ShapeRef.new(shape: BlockedPhrases, location_name: "blockedPhrases"))
    BlockedPhrasesConfiguration.add_member(:system_message_override, Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: "systemMessageOverride"))
    BlockedPhrasesConfiguration.struct_class = Types::BlockedPhrasesConfiguration

    BlockedPhrasesConfigurationUpdate.add_member(:blocked_phrases_to_create_or_update, Shapes::ShapeRef.new(shape: BlockedPhrases, location_name: "blockedPhrasesToCreateOrUpdate"))
    BlockedPhrasesConfigurationUpdate.add_member(:blocked_phrases_to_delete, Shapes::ShapeRef.new(shape: BlockedPhrases, location_name: "blockedPhrasesToDelete"))
    BlockedPhrasesConfigurationUpdate.add_member(:system_message_override, Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: "systemMessageOverride"))
    BlockedPhrasesConfigurationUpdate.struct_class = Types::BlockedPhrasesConfigurationUpdate

    ChatSyncInput.add_member(:action_execution, Shapes::ShapeRef.new(shape: ActionExecution, location_name: "actionExecution"))
    ChatSyncInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ChatSyncInput.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentsInput, location_name: "attachments"))
    ChatSyncInput.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "attributeFilter"))
    ChatSyncInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    ChatSyncInput.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    ChatSyncInput.add_member(:parent_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "parentMessageId"))
    ChatSyncInput.add_member(:user_groups, Shapes::ShapeRef.new(shape: UserGroups, location: "querystring", location_name: "userGroups"))
    ChatSyncInput.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "querystring", location_name: "userId"))
    ChatSyncInput.add_member(:user_message, Shapes::ShapeRef.new(shape: UserMessage, location_name: "userMessage"))
    ChatSyncInput.struct_class = Types::ChatSyncInput

    ChatSyncOutput.add_member(:action_review, Shapes::ShapeRef.new(shape: ActionReview, location_name: "actionReview"))
    ChatSyncOutput.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    ChatSyncOutput.add_member(:failed_attachments, Shapes::ShapeRef.new(shape: AttachmentsOutput, location_name: "failedAttachments"))
    ChatSyncOutput.add_member(:source_attributions, Shapes::ShapeRef.new(shape: SourceAttributions, location_name: "sourceAttributions"))
    ChatSyncOutput.add_member(:system_message, Shapes::ShapeRef.new(shape: String, location_name: "systemMessage"))
    ChatSyncOutput.add_member(:system_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "systemMessageId"))
    ChatSyncOutput.add_member(:user_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "userMessageId"))
    ChatSyncOutput.struct_class = Types::ChatSyncOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ContentBlockerRule.add_member(:system_message_override, Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: "systemMessageOverride"))
    ContentBlockerRule.struct_class = Types::ContentBlockerRule

    ContentRetrievalRule.add_member(:eligible_data_sources, Shapes::ShapeRef.new(shape: EligibleDataSources, location_name: "eligibleDataSources"))
    ContentRetrievalRule.struct_class = Types::ContentRetrievalRule

    Conversation.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    Conversation.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    Conversation.add_member(:title, Shapes::ShapeRef.new(shape: ConversationTitle, location_name: "title"))
    Conversation.struct_class = Types::Conversation

    Conversations.member = Shapes::ShapeRef.new(shape: Conversation)

    CreateApplicationRequest.add_member(:attachments_configuration, Shapes::ShapeRef.new(shape: AttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateApplicationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "displayName"))
    CreateApplicationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateDataSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "configuration"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDataSourceRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location_name: "displayName"))
    CreateDataSourceRequest.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    CreateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    CreateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateDataSourceRequest.add_member(:sync_schedule, Shapes::ShapeRef.new(shape: SyncSchedule, location_name: "syncSchedule"))
    CreateDataSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDataSourceRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: DataSourceArn, location_name: "dataSourceArn"))
    CreateDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateIndexRequest.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    CreateIndexRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIndexRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "displayName"))
    CreateIndexRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateIndexRequest.struct_class = Types::CreateIndexRequest

    CreateIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    CreateIndexResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    CreateIndexResponse.struct_class = Types::CreateIndexResponse

    CreatePluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreatePluginRequest.add_member(:auth_configuration, Shapes::ShapeRef.new(shape: PluginAuthConfiguration, required: true, location_name: "authConfiguration"))
    CreatePluginRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePluginRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, required: true, location_name: "displayName"))
    CreatePluginRequest.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "serverUrl"))
    CreatePluginRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePluginRequest.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, required: true, location_name: "type"))
    CreatePluginRequest.struct_class = Types::CreatePluginRequest

    CreatePluginResponse.add_member(:plugin_arn, Shapes::ShapeRef.new(shape: PluginArn, location_name: "pluginArn"))
    CreatePluginResponse.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    CreatePluginResponse.struct_class = Types::CreatePluginResponse

    CreateRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateRetrieverRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRetrieverRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RetrieverConfiguration, required: true, location_name: "configuration"))
    CreateRetrieverRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, required: true, location_name: "displayName"))
    CreateRetrieverRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateRetrieverRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRetrieverRequest.add_member(:type, Shapes::ShapeRef.new(shape: RetrieverType, required: true, location_name: "type"))
    CreateRetrieverRequest.struct_class = Types::CreateRetrieverRequest

    CreateRetrieverResponse.add_member(:retriever_arn, Shapes::ShapeRef.new(shape: RetrieverArn, location_name: "retrieverArn"))
    CreateRetrieverResponse.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, location_name: "retrieverId"))
    CreateRetrieverResponse.struct_class = Types::CreateRetrieverResponse

    CreateUserRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateUserRequest.add_member(:user_aliases, Shapes::ShapeRef.new(shape: CreateUserRequestUserAliasesList, location_name: "userAliases"))
    CreateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userId"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserRequestUserAliasesList.member = Shapes::ShapeRef.new(shape: UserAlias)

    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateWebExperienceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateWebExperienceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWebExperienceRequest.add_member(:sample_prompts_control_mode, Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    CreateWebExperienceRequest.add_member(:subtitle, Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: "subtitle"))
    CreateWebExperienceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWebExperienceRequest.add_member(:title, Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: "title"))
    CreateWebExperienceRequest.add_member(:welcome_message, Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    CreateWebExperienceRequest.struct_class = Types::CreateWebExperienceRequest

    CreateWebExperienceResponse.add_member(:web_experience_arn, Shapes::ShapeRef.new(shape: WebExperienceArn, location_name: "webExperienceArn"))
    CreateWebExperienceResponse.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, location_name: "webExperienceId"))
    CreateWebExperienceResponse.struct_class = Types::CreateWebExperienceResponse

    DataSource.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    DataSource.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "displayName"))
    DataSource.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    DataSource.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DataSource.struct_class = Types::DataSource

    DataSourceIds.member = Shapes::ShapeRef.new(shape: DataSourceId)

    DataSourceSyncJob.add_member(:data_source_error_code, Shapes::ShapeRef.new(shape: String, location_name: "dataSourceErrorCode"))
    DataSourceSyncJob.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DataSourceSyncJob.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    DataSourceSyncJob.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    DataSourceSyncJob.add_member(:metrics, Shapes::ShapeRef.new(shape: DataSourceSyncJobMetrics, location_name: "metrics"))
    DataSourceSyncJob.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DataSourceSyncJob.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location_name: "status"))
    DataSourceSyncJob.struct_class = Types::DataSourceSyncJob

    DataSourceSyncJobMetrics.add_member(:documents_added, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsAdded"))
    DataSourceSyncJobMetrics.add_member(:documents_deleted, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsDeleted"))
    DataSourceSyncJobMetrics.add_member(:documents_failed, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsFailed"))
    DataSourceSyncJobMetrics.add_member(:documents_modified, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsModified"))
    DataSourceSyncJobMetrics.add_member(:documents_scanned, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsScanned"))
    DataSourceSyncJobMetrics.struct_class = Types::DataSourceSyncJobMetrics

    DataSourceSyncJobs.member = Shapes::ShapeRef.new(shape: DataSourceSyncJob)

    DataSourceVpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "securityGroupIds"))
    DataSourceVpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    DataSourceVpcConfiguration.struct_class = Types::DataSourceVpcConfiguration

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteChatControlsConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteChatControlsConfigurationRequest.struct_class = Types::DeleteChatControlsConfigurationRequest

    DeleteChatControlsConfigurationResponse.struct_class = Types::DeleteChatControlsConfigurationResponse

    DeleteConversationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteConversationRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    DeleteConversationRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "querystring", location_name: "userId"))
    DeleteConversationRequest.struct_class = Types::DeleteConversationRequest

    DeleteConversationResponse.struct_class = Types::DeleteConversationResponse

    DeleteDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    DeleteDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteDocument.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "documentId"))
    DeleteDocument.struct_class = Types::DeleteDocument

    DeleteDocuments.member = Shapes::ShapeRef.new(shape: DeleteDocument)

    DeleteGroupRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteGroupRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
    DeleteGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "groupName"))
    DeleteGroupRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DeleteIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteIndexRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    DeleteIndexRequest.struct_class = Types::DeleteIndexRequest

    DeleteIndexResponse.struct_class = Types::DeleteIndexResponse

    DeletePluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeletePluginRequest.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location: "uri", location_name: "pluginId"))
    DeletePluginRequest.struct_class = Types::DeletePluginRequest

    DeletePluginResponse.struct_class = Types::DeletePluginResponse

    DeleteRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteRetrieverRequest.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, required: true, location: "uri", location_name: "retrieverId"))
    DeleteRetrieverRequest.struct_class = Types::DeleteRetrieverRequest

    DeleteRetrieverResponse.struct_class = Types::DeleteRetrieverResponse

    DeleteUserRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DeleteWebExperienceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteWebExperienceRequest.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, required: true, location: "uri", location_name: "webExperienceId"))
    DeleteWebExperienceRequest.struct_class = Types::DeleteWebExperienceRequest

    DeleteWebExperienceResponse.struct_class = Types::DeleteWebExperienceResponse

    Document.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "accessConfiguration"))
    Document.add_member(:attributes, Shapes::ShapeRef.new(shape: DocumentAttributes, location_name: "attributes"))
    Document.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "content"))
    Document.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType"))
    Document.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    Document.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "id"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "title"))
    Document.struct_class = Types::Document

    DocumentAttribute.add_member(:name, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "name"))
    DocumentAttribute.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, required: true, location_name: "value"))
    DocumentAttribute.struct_class = Types::DocumentAttribute

    DocumentAttributeCondition.add_member(:key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "key"))
    DocumentAttributeCondition.add_member(:operator, Shapes::ShapeRef.new(shape: DocumentEnrichmentConditionOperator, required: true, location_name: "operator"))
    DocumentAttributeCondition.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "value"))
    DocumentAttributeCondition.struct_class = Types::DocumentAttributeCondition

    DocumentAttributeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DocumentAttributeConfiguration.add_member(:search, Shapes::ShapeRef.new(shape: Status, location_name: "search"))
    DocumentAttributeConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: AttributeType, location_name: "type"))
    DocumentAttributeConfiguration.struct_class = Types::DocumentAttributeConfiguration

    DocumentAttributeConfigurations.member = Shapes::ShapeRef.new(shape: DocumentAttributeConfiguration)

    DocumentAttributeStringListValue.member = Shapes::ShapeRef.new(shape: String)

    DocumentAttributeTarget.add_member(:attribute_value_operator, Shapes::ShapeRef.new(shape: AttributeValueOperator, location_name: "attributeValueOperator"))
    DocumentAttributeTarget.add_member(:key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "key"))
    DocumentAttributeTarget.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "value"))
    DocumentAttributeTarget.struct_class = Types::DocumentAttributeTarget

    DocumentAttributeValue.add_member(:date_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "dateValue"))
    DocumentAttributeValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "longValue"))
    DocumentAttributeValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: DocumentAttributeStringListValue, location_name: "stringListValue"))
    DocumentAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: DocumentAttributeValueStringValueString, location_name: "stringValue"))
    DocumentAttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DocumentAttributeValue.add_member_subclass(:date_value, Types::DocumentAttributeValue::DateValue)
    DocumentAttributeValue.add_member_subclass(:long_value, Types::DocumentAttributeValue::LongValue)
    DocumentAttributeValue.add_member_subclass(:string_list_value, Types::DocumentAttributeValue::StringListValue)
    DocumentAttributeValue.add_member_subclass(:string_value, Types::DocumentAttributeValue::StringValue)
    DocumentAttributeValue.add_member_subclass(:unknown, Types::DocumentAttributeValue::Unknown)
    DocumentAttributeValue.struct_class = Types::DocumentAttributeValue

    DocumentAttributes.member = Shapes::ShapeRef.new(shape: DocumentAttribute)

    DocumentContent.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "blob"))
    DocumentContent.add_member(:s3, Shapes::ShapeRef.new(shape: S3, location_name: "s3"))
    DocumentContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DocumentContent.add_member_subclass(:blob, Types::DocumentContent::Blob)
    DocumentContent.add_member_subclass(:s3, Types::DocumentContent::S3)
    DocumentContent.add_member_subclass(:unknown, Types::DocumentContent::Unknown)
    DocumentContent.struct_class = Types::DocumentContent

    DocumentDetailList.member = Shapes::ShapeRef.new(shape: DocumentDetails)

    DocumentDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DocumentDetails.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "documentId"))
    DocumentDetails.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    DocumentDetails.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "status"))
    DocumentDetails.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DocumentDetails.struct_class = Types::DocumentDetails

    DocumentEnrichmentConfiguration.add_member(:inline_configurations, Shapes::ShapeRef.new(shape: InlineDocumentEnrichmentConfigurations, location_name: "inlineConfigurations"))
    DocumentEnrichmentConfiguration.add_member(:post_extraction_hook_configuration, Shapes::ShapeRef.new(shape: HookConfiguration, location_name: "postExtractionHookConfiguration"))
    DocumentEnrichmentConfiguration.add_member(:pre_extraction_hook_configuration, Shapes::ShapeRef.new(shape: HookConfiguration, location_name: "preExtractionHookConfiguration"))
    DocumentEnrichmentConfiguration.struct_class = Types::DocumentEnrichmentConfiguration

    Documents.member = Shapes::ShapeRef.new(shape: Document)

    EligibleDataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    EligibleDataSource.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    EligibleDataSource.struct_class = Types::EligibleDataSource

    EligibleDataSources.member = Shapes::ShapeRef.new(shape: EligibleDataSource)

    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ExampleChatMessages.member = Shapes::ShapeRef.new(shape: ExampleChatMessage)

    FailedDocument.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    FailedDocument.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    FailedDocument.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "id"))
    FailedDocument.struct_class = Types::FailedDocument

    FailedDocuments.member = Shapes::ShapeRef.new(shape: FailedDocument)

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    GetApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetApplicationResponse.add_member(:attachments_configuration, Shapes::ShapeRef.new(shape: AppliedAttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    GetApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetApplicationResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    GetApplicationResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    GetApplicationResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetApplicationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "status"))
    GetApplicationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetChatControlsConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetChatControlsConfigurationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForGetTopicConfigurations, location: "querystring", location_name: "maxResults"))
    GetChatControlsConfigurationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetChatControlsConfigurationRequest.struct_class = Types::GetChatControlsConfigurationRequest

    GetChatControlsConfigurationResponse.add_member(:blocked_phrases, Shapes::ShapeRef.new(shape: BlockedPhrasesConfiguration, location_name: "blockedPhrases"))
    GetChatControlsConfigurationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetChatControlsConfigurationResponse.add_member(:response_scope, Shapes::ShapeRef.new(shape: ResponseScope, location_name: "responseScope"))
    GetChatControlsConfigurationResponse.add_member(:topic_configurations, Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: "topicConfigurations"))
    GetChatControlsConfigurationResponse.struct_class = Types::GetChatControlsConfigurationResponse

    GetDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    GetDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetDataSourceResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "configuration"))
    GetDataSourceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: DataSourceArn, location_name: "dataSourceArn"))
    GetDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    GetDataSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetDataSourceResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "displayName"))
    GetDataSourceResponse.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    GetDataSourceResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetDataSourceResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    GetDataSourceResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    GetDataSourceResponse.add_member(:sync_schedule, Shapes::ShapeRef.new(shape: SyncSchedule, location_name: "syncSchedule"))
    GetDataSourceResponse.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    GetDataSourceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetDataSourceResponse.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetGroupRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetGroupRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
    GetGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "groupName"))
    GetGroupRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    GetGroupRequest.struct_class = Types::GetGroupRequest

    GetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: GroupStatusDetail, location_name: "status"))
    GetGroupResponse.add_member(:status_history, Shapes::ShapeRef.new(shape: GroupStatusDetails, location_name: "statusHistory"))
    GetGroupResponse.struct_class = Types::GetGroupResponse

    GetIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetIndexRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    GetIndexRequest.struct_class = Types::GetIndexRequest

    GetIndexResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetIndexResponse.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    GetIndexResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetIndexResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetIndexResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "displayName"))
    GetIndexResponse.add_member(:document_attribute_configurations, Shapes::ShapeRef.new(shape: DocumentAttributeConfigurations, location_name: "documentAttributeConfigurations"))
    GetIndexResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    GetIndexResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    GetIndexResponse.add_member(:index_statistics, Shapes::ShapeRef.new(shape: IndexStatistics, location_name: "indexStatistics"))
    GetIndexResponse.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "status"))
    GetIndexResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetIndexResponse.struct_class = Types::GetIndexResponse

    GetPluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetPluginRequest.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location: "uri", location_name: "pluginId"))
    GetPluginRequest.struct_class = Types::GetPluginRequest

    GetPluginResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetPluginResponse.add_member(:auth_configuration, Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: "authConfiguration"))
    GetPluginResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetPluginResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, location_name: "displayName"))
    GetPluginResponse.add_member(:plugin_arn, Shapes::ShapeRef.new(shape: PluginArn, location_name: "pluginArn"))
    GetPluginResponse.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    GetPluginResponse.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    GetPluginResponse.add_member(:state, Shapes::ShapeRef.new(shape: PluginState, location_name: "state"))
    GetPluginResponse.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, location_name: "type"))
    GetPluginResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetPluginResponse.struct_class = Types::GetPluginResponse

    GetRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetRetrieverRequest.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, required: true, location: "uri", location_name: "retrieverId"))
    GetRetrieverRequest.struct_class = Types::GetRetrieverRequest

    GetRetrieverResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetRetrieverResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: "configuration"))
    GetRetrieverResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetRetrieverResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, location_name: "displayName"))
    GetRetrieverResponse.add_member(:retriever_arn, Shapes::ShapeRef.new(shape: RetrieverArn, location_name: "retrieverArn"))
    GetRetrieverResponse.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, location_name: "retrieverId"))
    GetRetrieverResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetRetrieverResponse.add_member(:status, Shapes::ShapeRef.new(shape: RetrieverStatus, location_name: "status"))
    GetRetrieverResponse.add_member(:type, Shapes::ShapeRef.new(shape: RetrieverType, location_name: "type"))
    GetRetrieverResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetRetrieverResponse.struct_class = Types::GetRetrieverResponse

    GetUserRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user_aliases, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliases"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GetWebExperienceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetWebExperienceRequest.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, required: true, location: "uri", location_name: "webExperienceId"))
    GetWebExperienceRequest.struct_class = Types::GetWebExperienceRequest

    GetWebExperienceResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetWebExperienceResponse.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: WebExperienceAuthConfiguration, location_name: "authenticationConfiguration"))
    GetWebExperienceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetWebExperienceResponse.add_member(:default_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "defaultEndpoint"))
    GetWebExperienceResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetWebExperienceResponse.add_member(:sample_prompts_control_mode, Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    GetWebExperienceResponse.add_member(:status, Shapes::ShapeRef.new(shape: WebExperienceStatus, location_name: "status"))
    GetWebExperienceResponse.add_member(:subtitle, Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: "subtitle"))
    GetWebExperienceResponse.add_member(:title, Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: "title"))
    GetWebExperienceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetWebExperienceResponse.add_member(:web_experience_arn, Shapes::ShapeRef.new(shape: WebExperienceArn, location_name: "webExperienceArn"))
    GetWebExperienceResponse.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, location_name: "webExperienceId"))
    GetWebExperienceResponse.add_member(:welcome_message, Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    GetWebExperienceResponse.struct_class = Types::GetWebExperienceResponse

    GroupMembers.add_member(:member_groups, Shapes::ShapeRef.new(shape: MemberGroups, location_name: "memberGroups"))
    GroupMembers.add_member(:member_users, Shapes::ShapeRef.new(shape: MemberUsers, location_name: "memberUsers"))
    GroupMembers.struct_class = Types::GroupMembers

    GroupStatusDetail.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "errorDetail"))
    GroupStatusDetail.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GroupStatusDetail.add_member(:status, Shapes::ShapeRef.new(shape: GroupStatus, location_name: "status"))
    GroupStatusDetail.struct_class = Types::GroupStatusDetail

    GroupStatusDetails.member = Shapes::ShapeRef.new(shape: GroupStatusDetail)

    GroupSummary.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "groupName"))
    GroupSummary.struct_class = Types::GroupSummary

    GroupSummaryList.member = Shapes::ShapeRef.new(shape: GroupSummary)

    HookConfiguration.add_member(:invocation_condition, Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: "invocationCondition"))
    HookConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambdaArn"))
    HookConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    HookConfiguration.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    HookConfiguration.struct_class = Types::HookConfiguration

    Index.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Index.add_member(:display_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "displayName"))
    Index.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    Index.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "status"))
    Index.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Index.struct_class = Types::Index

    IndexCapacityConfiguration.add_member(:units, Shapes::ShapeRef.new(shape: IndexCapacityInteger, location_name: "units"))
    IndexCapacityConfiguration.struct_class = Types::IndexCapacityConfiguration

    IndexStatistics.add_member(:text_document_statistics, Shapes::ShapeRef.new(shape: TextDocumentStatistics, location_name: "textDocumentStatistics"))
    IndexStatistics.struct_class = Types::IndexStatistics

    Indices.member = Shapes::ShapeRef.new(shape: Index)

    InlineDocumentEnrichmentConfiguration.add_member(:condition, Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: "condition"))
    InlineDocumentEnrichmentConfiguration.add_member(:document_content_operator, Shapes::ShapeRef.new(shape: DocumentContentOperator, location_name: "documentContentOperator"))
    InlineDocumentEnrichmentConfiguration.add_member(:target, Shapes::ShapeRef.new(shape: DocumentAttributeTarget, location_name: "target"))
    InlineDocumentEnrichmentConfiguration.struct_class = Types::InlineDocumentEnrichmentConfiguration

    InlineDocumentEnrichmentConfigurations.member = Shapes::ShapeRef.new(shape: InlineDocumentEnrichmentConfiguration)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KendraIndexConfiguration.add_member(:index_id, Shapes::ShapeRef.new(shape: KendraIndexId, required: true, location_name: "indexId"))
    KendraIndexConfiguration.struct_class = Types::KendraIndexConfiguration

    LicenseNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    LicenseNotFoundException.struct_class = Types::LicenseNotFoundException

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListApplications, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListConversationsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListConversationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListConversations, location: "querystring", location_name: "maxResults"))
    ListConversationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConversationsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "querystring", location_name: "userId"))
    ListConversationsRequest.struct_class = Types::ListConversationsRequest

    ListConversationsResponse.add_member(:conversations, Shapes::ShapeRef.new(shape: Conversations, location_name: "conversations"))
    ListConversationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConversationsResponse.struct_class = Types::ListConversationsResponse

    ListDataSourceSyncJobsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDataSourceSyncJobsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    ListDataSourceSyncJobsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    ListDataSourceSyncJobsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListDataSourceSyncJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSourcesSyncJobs, location: "querystring", location_name: "maxResults"))
    ListDataSourceSyncJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataSourceSyncJobsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    ListDataSourceSyncJobsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location: "querystring", location_name: "syncStatus"))
    ListDataSourceSyncJobsRequest.struct_class = Types::ListDataSourceSyncJobsRequest

    ListDataSourceSyncJobsResponse.add_member(:history, Shapes::ShapeRef.new(shape: DataSourceSyncJobs, location_name: "history"))
    ListDataSourceSyncJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSourceSyncJobsResponse.struct_class = Types::ListDataSourceSyncJobsResponse

    ListDataSourcesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDataSourcesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSources, location: "querystring", location_name: "maxResults"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListDocumentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDocumentsRequest.add_member(:data_source_ids, Shapes::ShapeRef.new(shape: DataSourceIds, location: "querystring", location_name: "dataSourceIds"))
    ListDocumentsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListDocumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDocuments, location: "querystring", location_name: "maxResults"))
    ListDocumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDocumentsRequest.struct_class = Types::ListDocumentsRequest

    ListDocumentsResponse.add_member(:document_detail_list, Shapes::ShapeRef.new(shape: DocumentDetailList, location_name: "documentDetailList"))
    ListDocumentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDocumentsResponse.struct_class = Types::ListDocumentsResponse

    ListGroupsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListGroupsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
    ListGroupsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListGroupsRequest, location: "querystring", location_name: "maxResults"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGroupsRequest.add_member(:updated_earlier_than, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "updatedEarlierThan"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:items, Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: "items"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListIndicesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListIndicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListIndices, location: "querystring", location_name: "maxResults"))
    ListIndicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIndicesRequest.struct_class = Types::ListIndicesRequest

    ListIndicesResponse.add_member(:indices, Shapes::ShapeRef.new(shape: Indices, location_name: "indices"))
    ListIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIndicesResponse.struct_class = Types::ListIndicesResponse

    ListMessagesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListMessagesRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    ListMessagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListMessages, location: "querystring", location_name: "maxResults"))
    ListMessagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMessagesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "querystring", location_name: "userId"))
    ListMessagesRequest.struct_class = Types::ListMessagesRequest

    ListMessagesResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    ListMessagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMessagesResponse.struct_class = Types::ListMessagesResponse

    ListPluginsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListPluginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPlugins, location: "querystring", location_name: "maxResults"))
    ListPluginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPluginsRequest.struct_class = Types::ListPluginsRequest

    ListPluginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginsResponse.add_member(:plugins, Shapes::ShapeRef.new(shape: Plugins, location_name: "plugins"))
    ListPluginsResponse.struct_class = Types::ListPluginsResponse

    ListRetrieversRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListRetrieversRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListRetrieversRequest, location: "querystring", location_name: "maxResults"))
    ListRetrieversRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRetrieversRequest.struct_class = Types::ListRetrieversRequest

    ListRetrieversResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRetrieversResponse.add_member(:retrievers, Shapes::ShapeRef.new(shape: Retrievers, location_name: "retrievers"))
    ListRetrieversResponse.struct_class = Types::ListRetrieversResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWebExperiencesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListWebExperiencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListWebExperiencesRequest, location: "querystring", location_name: "maxResults"))
    ListWebExperiencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWebExperiencesRequest.struct_class = Types::ListWebExperiencesRequest

    ListWebExperiencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebExperiencesResponse.add_member(:web_experiences, Shapes::ShapeRef.new(shape: WebExperiences, location_name: "webExperiences"))
    ListWebExperiencesResponse.struct_class = Types::ListWebExperiencesResponse

    MemberGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "groupName"))
    MemberGroup.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    MemberGroup.struct_class = Types::MemberGroup

    MemberGroups.member = Shapes::ShapeRef.new(shape: MemberGroup)

    MemberUser.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    MemberUser.add_member(:user_id, Shapes::ShapeRef.new(shape: DataSourceUserId, required: true, location_name: "userId"))
    MemberUser.struct_class = Types::MemberUser

    MemberUsers.member = Shapes::ShapeRef.new(shape: MemberUser)

    Message.add_member(:action_execution, Shapes::ShapeRef.new(shape: ActionExecution, location_name: "actionExecution"))
    Message.add_member(:action_review, Shapes::ShapeRef.new(shape: ActionReview, location_name: "actionReview"))
    Message.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentsOutput, location_name: "attachments"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: MessageBody, location_name: "body"))
    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "messageId"))
    Message.add_member(:source_attribution, Shapes::ShapeRef.new(shape: SourceAttributions, location_name: "sourceAttribution"))
    Message.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "time"))
    Message.add_member(:type, Shapes::ShapeRef.new(shape: MessageType, location_name: "type"))
    Message.struct_class = Types::Message

    MessageUsefulnessFeedback.add_member(:comment, Shapes::ShapeRef.new(shape: MessageUsefulnessComment, location_name: "comment"))
    MessageUsefulnessFeedback.add_member(:reason, Shapes::ShapeRef.new(shape: MessageUsefulnessReason, location_name: "reason"))
    MessageUsefulnessFeedback.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    MessageUsefulnessFeedback.add_member(:usefulness, Shapes::ShapeRef.new(shape: MessageUsefulness, required: true, location_name: "usefulness"))
    MessageUsefulnessFeedback.struct_class = Types::MessageUsefulnessFeedback

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    NativeIndexConfiguration.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "indexId"))
    NativeIndexConfiguration.struct_class = Types::NativeIndexConfiguration

    OAuth2ClientCredentialConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    OAuth2ClientCredentialConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    OAuth2ClientCredentialConfiguration.struct_class = Types::OAuth2ClientCredentialConfiguration

    Plugin.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Plugin.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, location_name: "displayName"))
    Plugin.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    Plugin.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    Plugin.add_member(:state, Shapes::ShapeRef.new(shape: PluginState, location_name: "state"))
    Plugin.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, location_name: "type"))
    Plugin.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Plugin.struct_class = Types::Plugin

    PluginAuthConfiguration.add_member(:basic_auth_configuration, Shapes::ShapeRef.new(shape: BasicAuthConfiguration, location_name: "basicAuthConfiguration"))
    PluginAuthConfiguration.add_member(:o_auth_2_client_credential_configuration, Shapes::ShapeRef.new(shape: OAuth2ClientCredentialConfiguration, location_name: "oAuth2ClientCredentialConfiguration"))
    PluginAuthConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PluginAuthConfiguration.add_member_subclass(:basic_auth_configuration, Types::PluginAuthConfiguration::BasicAuthConfiguration)
    PluginAuthConfiguration.add_member_subclass(:o_auth_2_client_credential_configuration, Types::PluginAuthConfiguration::OAuth2ClientCredentialConfiguration)
    PluginAuthConfiguration.add_member_subclass(:unknown, Types::PluginAuthConfiguration::Unknown)
    PluginAuthConfiguration.struct_class = Types::PluginAuthConfiguration

    Plugins.member = Shapes::ShapeRef.new(shape: Plugin)

    Principal.add_member(:group, Shapes::ShapeRef.new(shape: PrincipalGroup, location_name: "group"))
    Principal.add_member(:user, Shapes::ShapeRef.new(shape: PrincipalUser, location_name: "user"))
    Principal.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Principal.add_member_subclass(:group, Types::Principal::Group)
    Principal.add_member_subclass(:user, Types::Principal::User)
    Principal.add_member_subclass(:unknown, Types::Principal::Unknown)
    Principal.struct_class = Types::Principal

    PrincipalGroup.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "access"))
    PrincipalGroup.add_member(:membership_type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "membershipType"))
    PrincipalGroup.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "name"))
    PrincipalGroup.struct_class = Types::PrincipalGroup

    PrincipalUser.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "access"))
    PrincipalUser.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "id"))
    PrincipalUser.add_member(:membership_type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "membershipType"))
    PrincipalUser.struct_class = Types::PrincipalUser

    Principals.member = Shapes::ShapeRef.new(shape: Principal)

    PutFeedbackRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    PutFeedbackRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    PutFeedbackRequest.add_member(:message_copied_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "messageCopiedAt"))
    PutFeedbackRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: SystemMessageId, required: true, location: "uri", location_name: "messageId"))
    PutFeedbackRequest.add_member(:message_usefulness, Shapes::ShapeRef.new(shape: MessageUsefulnessFeedback, location_name: "messageUsefulness"))
    PutFeedbackRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "querystring", location_name: "userId"))
    PutFeedbackRequest.struct_class = Types::PutFeedbackRequest

    PutGroupRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    PutGroupRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    PutGroupRequest.add_member(:group_members, Shapes::ShapeRef.new(shape: GroupMembers, required: true, location_name: "groupMembers"))
    PutGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "groupName"))
    PutGroupRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    PutGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, required: true, location_name: "type"))
    PutGroupRequest.struct_class = Types::PutGroupRequest

    PutGroupResponse.struct_class = Types::PutGroupResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Retriever.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    Retriever.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, location_name: "displayName"))
    Retriever.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, location_name: "retrieverId"))
    Retriever.add_member(:status, Shapes::ShapeRef.new(shape: RetrieverStatus, location_name: "status"))
    Retriever.add_member(:type, Shapes::ShapeRef.new(shape: RetrieverType, location_name: "type"))
    Retriever.struct_class = Types::Retriever

    RetrieverConfiguration.add_member(:kendra_index_configuration, Shapes::ShapeRef.new(shape: KendraIndexConfiguration, location_name: "kendraIndexConfiguration"))
    RetrieverConfiguration.add_member(:native_index_configuration, Shapes::ShapeRef.new(shape: NativeIndexConfiguration, location_name: "nativeIndexConfiguration"))
    RetrieverConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RetrieverConfiguration.add_member_subclass(:kendra_index_configuration, Types::RetrieverConfiguration::KendraIndexConfiguration)
    RetrieverConfiguration.add_member_subclass(:native_index_configuration, Types::RetrieverConfiguration::NativeIndexConfiguration)
    RetrieverConfiguration.add_member_subclass(:unknown, Types::RetrieverConfiguration::Unknown)
    RetrieverConfiguration.struct_class = Types::RetrieverConfiguration

    Retrievers.member = Shapes::ShapeRef.new(shape: Retriever)

    Rule.add_member(:excluded_users_and_groups, Shapes::ShapeRef.new(shape: UsersAndGroups, location_name: "excludedUsersAndGroups"))
    Rule.add_member(:included_users_and_groups, Shapes::ShapeRef.new(shape: UsersAndGroups, location_name: "includedUsersAndGroups"))
    Rule.add_member(:rule_configuration, Shapes::ShapeRef.new(shape: RuleConfiguration, location_name: "ruleConfiguration"))
    Rule.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    Rule.struct_class = Types::Rule

    RuleConfiguration.add_member(:content_blocker_rule, Shapes::ShapeRef.new(shape: ContentBlockerRule, location_name: "contentBlockerRule"))
    RuleConfiguration.add_member(:content_retrieval_rule, Shapes::ShapeRef.new(shape: ContentRetrievalRule, location_name: "contentRetrievalRule"))
    RuleConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RuleConfiguration.add_member_subclass(:content_blocker_rule, Types::RuleConfiguration::ContentBlockerRule)
    RuleConfiguration.add_member_subclass(:content_retrieval_rule, Types::RuleConfiguration::ContentRetrievalRule)
    RuleConfiguration.add_member_subclass(:unknown, Types::RuleConfiguration::Unknown)
    RuleConfiguration.struct_class = Types::RuleConfiguration

    Rules.member = Shapes::ShapeRef.new(shape: Rule)

    S3.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "bucket"))
    S3.add_member(:key, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "key"))
    S3.struct_class = Types::S3

    SamlConfiguration.add_member(:metadata_xml, Shapes::ShapeRef.new(shape: SamlMetadataXML, required: true, location_name: "metadataXML"))
    SamlConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    SamlConfiguration.add_member(:user_group_attribute, Shapes::ShapeRef.new(shape: SamlAttribute, location_name: "userGroupAttribute"))
    SamlConfiguration.add_member(:user_id_attribute, Shapes::ShapeRef.new(shape: SamlAttribute, required: true, location_name: "userIdAttribute"))
    SamlConfiguration.struct_class = Types::SamlConfiguration

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceAttribution.add_member(:citation_number, Shapes::ShapeRef.new(shape: Integer, location_name: "citationNumber"))
    SourceAttribution.add_member(:snippet, Shapes::ShapeRef.new(shape: String, location_name: "snippet"))
    SourceAttribution.add_member(:text_message_segments, Shapes::ShapeRef.new(shape: TextSegmentList, location_name: "textMessageSegments"))
    SourceAttribution.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    SourceAttribution.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    SourceAttribution.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    SourceAttribution.struct_class = Types::SourceAttribution

    SourceAttributions.member = Shapes::ShapeRef.new(shape: SourceAttribution)

    StartDataSourceSyncJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StartDataSourceSyncJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    StartDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    StartDataSourceSyncJobRequest.struct_class = Types::StartDataSourceSyncJobRequest

    StartDataSourceSyncJobResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    StartDataSourceSyncJobResponse.struct_class = Types::StartDataSourceSyncJobResponse

    StopDataSourceSyncJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StopDataSourceSyncJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    StopDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    StopDataSourceSyncJobRequest.struct_class = Types::StopDataSourceSyncJobRequest

    StopDataSourceSyncJobResponse.struct_class = Types::StopDataSourceSyncJobResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TextDocumentStatistics.add_member(:indexed_text_bytes, Shapes::ShapeRef.new(shape: IndexedTextBytes, location_name: "indexedTextBytes"))
    TextDocumentStatistics.add_member(:indexed_text_document_count, Shapes::ShapeRef.new(shape: IndexedTextDocument, location_name: "indexedTextDocumentCount"))
    TextDocumentStatistics.struct_class = Types::TextDocumentStatistics

    TextSegment.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "beginOffset"))
    TextSegment.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "endOffset"))
    TextSegment.struct_class = Types::TextSegment

    TextSegmentList.member = Shapes::ShapeRef.new(shape: TextSegment)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TopicConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: TopicDescription, location_name: "description"))
    TopicConfiguration.add_member(:example_chat_messages, Shapes::ShapeRef.new(shape: ExampleChatMessages, location_name: "exampleChatMessages"))
    TopicConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: TopicConfigurationName, required: true, location_name: "name"))
    TopicConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, required: true, location_name: "rules"))
    TopicConfiguration.struct_class = Types::TopicConfiguration

    TopicConfigurations.member = Shapes::ShapeRef.new(shape: TopicConfiguration)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:attachments_configuration, Shapes::ShapeRef.new(shape: AttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateApplicationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    UpdateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateChatControlsConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateChatControlsConfigurationRequest.add_member(:blocked_phrases_configuration_update, Shapes::ShapeRef.new(shape: BlockedPhrasesConfigurationUpdate, location_name: "blockedPhrasesConfigurationUpdate"))
    UpdateChatControlsConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateChatControlsConfigurationRequest.add_member(:response_scope, Shapes::ShapeRef.new(shape: ResponseScope, location_name: "responseScope"))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_create_or_update, Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: "topicConfigurationsToCreateOrUpdate"))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_delete, Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: "topicConfigurationsToDelete"))
    UpdateChatControlsConfigurationRequest.struct_class = Types::UpdateChatControlsConfigurationRequest

    UpdateChatControlsConfigurationResponse.struct_class = Types::UpdateChatControlsConfigurationResponse

    UpdateDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "configuration"))
    UpdateDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDataSourceRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "displayName"))
    UpdateDataSourceRequest.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    UpdateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    UpdateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateDataSourceRequest.add_member(:sync_schedule, Shapes::ShapeRef.new(shape: SyncSchedule, location_name: "syncSchedule"))
    UpdateDataSourceRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateIndexRequest.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    UpdateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIndexRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    UpdateIndexRequest.add_member(:document_attribute_configurations, Shapes::ShapeRef.new(shape: DocumentAttributeConfigurations, location_name: "documentAttributeConfigurations"))
    UpdateIndexRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    UpdateIndexRequest.struct_class = Types::UpdateIndexRequest

    UpdateIndexResponse.struct_class = Types::UpdateIndexResponse

    UpdatePluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdatePluginRequest.add_member(:auth_configuration, Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: "authConfiguration"))
    UpdatePluginRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, location_name: "displayName"))
    UpdatePluginRequest.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location: "uri", location_name: "pluginId"))
    UpdatePluginRequest.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    UpdatePluginRequest.add_member(:state, Shapes::ShapeRef.new(shape: PluginState, location_name: "state"))
    UpdatePluginRequest.struct_class = Types::UpdatePluginRequest

    UpdatePluginResponse.struct_class = Types::UpdatePluginResponse

    UpdateRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateRetrieverRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: "configuration"))
    UpdateRetrieverRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, location_name: "displayName"))
    UpdateRetrieverRequest.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, required: true, location: "uri", location_name: "retrieverId"))
    UpdateRetrieverRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateRetrieverRequest.struct_class = Types::UpdateRetrieverRequest

    UpdateRetrieverResponse.struct_class = Types::UpdateRetrieverResponse

    UpdateUserRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateUserRequest.add_member(:user_aliases_to_delete, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesToDelete"))
    UpdateUserRequest.add_member(:user_aliases_to_update, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesToUpdate"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user_aliases_added, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesAdded"))
    UpdateUserResponse.add_member(:user_aliases_deleted, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesDeleted"))
    UpdateUserResponse.add_member(:user_aliases_updated, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesUpdated"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateWebExperienceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateWebExperienceRequest.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: WebExperienceAuthConfiguration, location_name: "authenticationConfiguration"))
    UpdateWebExperienceRequest.add_member(:sample_prompts_control_mode, Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    UpdateWebExperienceRequest.add_member(:subtitle, Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: "subtitle"))
    UpdateWebExperienceRequest.add_member(:title, Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: "title"))
    UpdateWebExperienceRequest.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, required: true, location: "uri", location_name: "webExperienceId"))
    UpdateWebExperienceRequest.add_member(:welcome_message, Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    UpdateWebExperienceRequest.struct_class = Types::UpdateWebExperienceRequest

    UpdateWebExperienceResponse.struct_class = Types::UpdateWebExperienceResponse

    UserAlias.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    UserAlias.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    UserAlias.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userId"))
    UserAlias.struct_class = Types::UserAlias

    UserAliases.member = Shapes::ShapeRef.new(shape: UserAlias)

    UserGroups.member = Shapes::ShapeRef.new(shape: String)

    UserIds.member = Shapes::ShapeRef.new(shape: String)

    UsersAndGroups.add_member(:user_groups, Shapes::ShapeRef.new(shape: UserGroups, location_name: "userGroups"))
    UsersAndGroups.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIds, location_name: "userIds"))
    UsersAndGroups.struct_class = Types::UsersAndGroups

    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: "fields"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFields.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WebExperience.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    WebExperience.add_member(:default_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "defaultEndpoint"))
    WebExperience.add_member(:status, Shapes::ShapeRef.new(shape: WebExperienceStatus, location_name: "status"))
    WebExperience.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    WebExperience.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, location_name: "webExperienceId"))
    WebExperience.struct_class = Types::WebExperience

    WebExperienceAuthConfiguration.add_member(:saml_configuration, Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: "samlConfiguration"))
    WebExperienceAuthConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WebExperienceAuthConfiguration.add_member_subclass(:saml_configuration, Types::WebExperienceAuthConfiguration::SamlConfiguration)
    WebExperienceAuthConfiguration.add_member_subclass(:unknown, Types::WebExperienceAuthConfiguration::Unknown)
    WebExperienceAuthConfiguration.struct_class = Types::WebExperienceAuthConfiguration

    WebExperiences.member = Shapes::ShapeRef.new(shape: WebExperience)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-11-27"

      api.metadata = {
        "apiVersion" => "2023-11-27",
        "endpointPrefix" => "qbusiness",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "QBusiness",
        "serviceId" => "QBusiness",
        "signatureVersion" => "v4",
        "signingName" => "qbusiness",
        "uid" => "qbusiness-2023-11-27",
      }

      api.add_operation(:batch_delete_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDocument"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/documents/delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_put_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutDocument"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/documents"
        o.input = Shapes::ShapeRef.new(shape: BatchPutDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:chat_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChatSync"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/conversations?sync"
        o.input = Shapes::ShapeRef.new(shape: ChatSyncInput)
        o.output = Shapes::ShapeRef.new(shape: ChatSyncOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIndex"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices"
        o.input = Shapes::ShapeRef.new(shape: CreateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlugin"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/plugins"
        o.input = Shapes::ShapeRef.new(shape: CreatePluginRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_retriever, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRetriever"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/retrievers"
        o.input = Shapes::ShapeRef.new(shape: CreateRetrieverRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRetrieverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/users"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_web_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebExperience"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/experiences"
        o.input = Shapes::ShapeRef.new(shape: CreateWebExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_chat_controls_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChatControlsConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/chatcontrols"
        o.input = Shapes::ShapeRef.new(shape: DeleteChatControlsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChatControlsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_conversation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConversation"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/conversations/{conversationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConversationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConversationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/groups/{groupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndex"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlugin"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/plugins/{pluginId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePluginRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_retriever, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRetriever"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/retrievers/{retrieverId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRetrieverRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRetrieverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_web_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebExperience"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/experiences/{webExperienceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_chat_controls_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChatControlsConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/chatcontrols"
        o.input = Shapes::ShapeRef.new(shape: GetChatControlsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChatControlsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/groups/{groupName}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIndex"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}"
        o.input = Shapes::ShapeRef.new(shape: GetIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPlugin"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/plugins/{pluginId}"
        o.input = Shapes::ShapeRef.new(shape: GetPluginRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_retriever, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRetriever"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/retrievers/{retrieverId}"
        o.input = Shapes::ShapeRef.new(shape: GetRetrieverRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRetrieverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_web_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebExperience"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/experiences/{webExperienceId}"
        o.input = Shapes::ShapeRef.new(shape: GetWebExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_conversations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConversations"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/conversations"
        o.input = Shapes::ShapeRef.new(shape: ListConversationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConversationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_source_sync_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSourceSyncJobs"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourceSyncJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourceSyncJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_documents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocuments"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/index/{indexId}/documents"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/groups"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_indices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIndices"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices"
        o.input = Shapes::ShapeRef.new(shape: ListIndicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIndicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_messages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMessages"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/conversations/{conversationId}"
        o.input = Shapes::ShapeRef.new(shape: ListMessagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMessagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_plugins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlugins"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/plugins"
        o.input = Shapes::ShapeRef.new(shape: ListPluginsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPluginsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_retrievers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRetrievers"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/retrievers"
        o.input = Shapes::ShapeRef.new(shape: ListRetrieversRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRetrieversResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/v1/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_web_experiences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebExperiences"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/experiences"
        o.input = Shapes::ShapeRef.new(shape: ListWebExperiencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebExperiencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback"
        o.input = Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/groups"
        o.input = Shapes::ShapeRef.new(shape: PutGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: PutGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_data_source_sync_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataSourceSyncJob"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync"
        o.input = Shapes::ShapeRef.new(shape: StartDataSourceSyncJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataSourceSyncJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:stop_data_source_sync_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDataSourceSyncJob"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/stopsync"
        o.input = Shapes::ShapeRef.new(shape: StopDataSourceSyncJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDataSourceSyncJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_chat_controls_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChatControlsConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{applicationId}/chatcontrols"
        o.input = Shapes::ShapeRef.new(shape: UpdateChatControlsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChatControlsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_index, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIndex"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIndexRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIndexResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_plugin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePlugin"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/plugins/{pluginId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePluginRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePluginResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_retriever, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRetriever"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/retrievers/{retrieverId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRetrieverRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRetrieverResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_web_experience, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWebExperience"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/experiences/{webExperienceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWebExperienceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWebExperienceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
