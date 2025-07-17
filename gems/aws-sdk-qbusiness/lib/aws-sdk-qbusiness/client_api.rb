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

    APISchema = Shapes::UnionShape.new(name: 'APISchema')
    APISchemaType = Shapes::StringShape.new(name: 'APISchemaType')
    AccessConfiguration = Shapes::StructureShape.new(name: 'AccessConfiguration')
    AccessControl = Shapes::StructureShape.new(name: 'AccessControl')
    AccessControls = Shapes::ListShape.new(name: 'AccessControls')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionConfiguration = Shapes::StructureShape.new(name: 'ActionConfiguration')
    ActionConfigurationList = Shapes::ListShape.new(name: 'ActionConfigurationList')
    ActionExecution = Shapes::StructureShape.new(name: 'ActionExecution')
    ActionExecutionEvent = Shapes::StructureShape.new(name: 'ActionExecutionEvent')
    ActionExecutionPayload = Shapes::MapShape.new(name: 'ActionExecutionPayload')
    ActionExecutionPayloadField = Shapes::StructureShape.new(name: 'ActionExecutionPayloadField')
    ActionFilterConfiguration = Shapes::StructureShape.new(name: 'ActionFilterConfiguration')
    ActionPayloadFieldKey = Shapes::StringShape.new(name: 'ActionPayloadFieldKey')
    ActionPayloadFieldNameSeparator = Shapes::StringShape.new(name: 'ActionPayloadFieldNameSeparator')
    ActionPayloadFieldType = Shapes::StringShape.new(name: 'ActionPayloadFieldType')
    ActionPayloadFieldValue = Shapes::DocumentShape.new(name: 'ActionPayloadFieldValue', document: true)
    ActionReview = Shapes::StructureShape.new(name: 'ActionReview')
    ActionReviewEvent = Shapes::StructureShape.new(name: 'ActionReviewEvent')
    ActionReviewPayload = Shapes::MapShape.new(name: 'ActionReviewPayload')
    ActionReviewPayloadField = Shapes::StructureShape.new(name: 'ActionReviewPayloadField')
    ActionReviewPayloadFieldAllowedValue = Shapes::StructureShape.new(name: 'ActionReviewPayloadFieldAllowedValue')
    ActionReviewPayloadFieldAllowedValues = Shapes::ListShape.new(name: 'ActionReviewPayloadFieldAllowedValues')
    ActionReviewPayloadFieldArrayItemJsonSchema = Shapes::DocumentShape.new(name: 'ActionReviewPayloadFieldArrayItemJsonSchema', document: true)
    ActionSummary = Shapes::StructureShape.new(name: 'ActionSummary')
    Actions = Shapes::ListShape.new(name: 'Actions')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    Applications = Shapes::ListShape.new(name: 'Applications')
    AppliedAttachmentsConfiguration = Shapes::StructureShape.new(name: 'AppliedAttachmentsConfiguration')
    AppliedCreatorModeConfiguration = Shapes::StructureShape.new(name: 'AppliedCreatorModeConfiguration')
    AppliedOrchestrationConfiguration = Shapes::StructureShape.new(name: 'AppliedOrchestrationConfiguration')
    AssociatePermissionRequest = Shapes::StructureShape.new(name: 'AssociatePermissionRequest')
    AssociatePermissionResponse = Shapes::StructureShape.new(name: 'AssociatePermissionResponse')
    AssociatedGroup = Shapes::StructureShape.new(name: 'AssociatedGroup')
    AssociatedGroups = Shapes::ListShape.new(name: 'AssociatedGroups')
    AssociatedUser = Shapes::StructureShape.new(name: 'AssociatedUser')
    AssociatedUsers = Shapes::ListShape.new(name: 'AssociatedUsers')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentId = Shapes::StringShape.new(name: 'AttachmentId')
    AttachmentInput = Shapes::StructureShape.new(name: 'AttachmentInput')
    AttachmentInputEvent = Shapes::StructureShape.new(name: 'AttachmentInputEvent')
    AttachmentList = Shapes::ListShape.new(name: 'AttachmentList')
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
    AudioExtractionConfiguration = Shapes::StructureShape.new(name: 'AudioExtractionConfiguration')
    AudioExtractionStatus = Shapes::StringShape.new(name: 'AudioExtractionStatus')
    AudioExtractionType = Shapes::StringShape.new(name: 'AudioExtractionType')
    AudioSourceDetails = Shapes::StructureShape.new(name: 'AudioSourceDetails')
    AuthChallengeRequest = Shapes::StructureShape.new(name: 'AuthChallengeRequest')
    AuthChallengeRequestEvent = Shapes::StructureShape.new(name: 'AuthChallengeRequestEvent')
    AuthChallengeResponse = Shapes::StructureShape.new(name: 'AuthChallengeResponse')
    AuthChallengeResponseEvent = Shapes::StructureShape.new(name: 'AuthChallengeResponseEvent')
    AuthResponseKey = Shapes::StringShape.new(name: 'AuthResponseKey')
    AuthResponseValue = Shapes::StringShape.new(name: 'AuthResponseValue')
    AuthorizationResponseMap = Shapes::MapShape.new(name: 'AuthorizationResponseMap')
    AutoSubscriptionConfiguration = Shapes::StructureShape.new(name: 'AutoSubscriptionConfiguration')
    AutoSubscriptionStatus = Shapes::StringShape.new(name: 'AutoSubscriptionStatus')
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
    BoostingDurationInSeconds = Shapes::IntegerShape.new(name: 'BoostingDurationInSeconds')
    BrowserExtension = Shapes::StringShape.new(name: 'BrowserExtension')
    BrowserExtensionConfiguration = Shapes::StructureShape.new(name: 'BrowserExtensionConfiguration')
    BrowserExtensionList = Shapes::ListShape.new(name: 'BrowserExtensionList')
    CancelSubscriptionRequest = Shapes::StructureShape.new(name: 'CancelSubscriptionRequest')
    CancelSubscriptionResponse = Shapes::StructureShape.new(name: 'CancelSubscriptionResponse')
    ChatInput = Shapes::StructureShape.new(name: 'ChatInput')
    ChatInputStream = Shapes::StructureShape.new(name: 'ChatInputStream')
    ChatMode = Shapes::StringShape.new(name: 'ChatMode')
    ChatModeConfiguration = Shapes::UnionShape.new(name: 'ChatModeConfiguration')
    ChatOutput = Shapes::StructureShape.new(name: 'ChatOutput')
    ChatOutputStream = Shapes::StructureShape.new(name: 'ChatOutputStream')
    ChatResponseConfiguration = Shapes::StructureShape.new(name: 'ChatResponseConfiguration')
    ChatResponseConfigurationArn = Shapes::StringShape.new(name: 'ChatResponseConfigurationArn')
    ChatResponseConfigurationDetail = Shapes::StructureShape.new(name: 'ChatResponseConfigurationDetail')
    ChatResponseConfigurationId = Shapes::StringShape.new(name: 'ChatResponseConfigurationId')
    ChatResponseConfigurationStatus = Shapes::StringShape.new(name: 'ChatResponseConfigurationStatus')
    ChatResponseConfigurations = Shapes::ListShape.new(name: 'ChatResponseConfigurations')
    ChatSyncInput = Shapes::StructureShape.new(name: 'ChatSyncInput')
    ChatSyncOutput = Shapes::StructureShape.new(name: 'ChatSyncOutput')
    CheckDocumentAccessRequest = Shapes::StructureShape.new(name: 'CheckDocumentAccessRequest')
    CheckDocumentAccessResponse = Shapes::StructureShape.new(name: 'CheckDocumentAccessResponse')
    ClientIdForOIDC = Shapes::StringShape.new(name: 'ClientIdForOIDC')
    ClientIdsForOIDC = Shapes::ListShape.new(name: 'ClientIdsForOIDC')
    ClientNamespace = Shapes::StringShape.new(name: 'ClientNamespace')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConfigurationEvent = Shapes::StructureShape.new(name: 'ConfigurationEvent')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentBlockerRule = Shapes::StructureShape.new(name: 'ContentBlockerRule')
    ContentRetrievalRule = Shapes::StructureShape.new(name: 'ContentRetrievalRule')
    ContentSource = Shapes::UnionShape.new(name: 'ContentSource')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    Conversation = Shapes::StructureShape.new(name: 'Conversation')
    ConversationId = Shapes::StringShape.new(name: 'ConversationId')
    ConversationSource = Shapes::StructureShape.new(name: 'ConversationSource')
    ConversationTitle = Shapes::StringShape.new(name: 'ConversationTitle')
    Conversations = Shapes::ListShape.new(name: 'Conversations')
    CopyFromSource = Shapes::UnionShape.new(name: 'CopyFromSource')
    CreateAnonymousWebExperienceUrlRequest = Shapes::StructureShape.new(name: 'CreateAnonymousWebExperienceUrlRequest')
    CreateAnonymousWebExperienceUrlResponse = Shapes::StructureShape.new(name: 'CreateAnonymousWebExperienceUrlResponse')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateChatResponseConfigurationRequest = Shapes::StructureShape.new(name: 'CreateChatResponseConfigurationRequest')
    CreateChatResponseConfigurationResponse = Shapes::StructureShape.new(name: 'CreateChatResponseConfigurationResponse')
    CreateDataAccessorRequest = Shapes::StructureShape.new(name: 'CreateDataAccessorRequest')
    CreateDataAccessorResponse = Shapes::StructureShape.new(name: 'CreateDataAccessorResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateIndexRequest = Shapes::StructureShape.new(name: 'CreateIndexRequest')
    CreateIndexResponse = Shapes::StructureShape.new(name: 'CreateIndexResponse')
    CreatePluginRequest = Shapes::StructureShape.new(name: 'CreatePluginRequest')
    CreatePluginResponse = Shapes::StructureShape.new(name: 'CreatePluginResponse')
    CreateRetrieverRequest = Shapes::StructureShape.new(name: 'CreateRetrieverRequest')
    CreateRetrieverResponse = Shapes::StructureShape.new(name: 'CreateRetrieverResponse')
    CreateSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateSubscriptionRequest')
    CreateSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateSubscriptionResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserRequestUserAliasesList = Shapes::ListShape.new(name: 'CreateUserRequestUserAliasesList')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    CreateWebExperienceRequest = Shapes::StructureShape.new(name: 'CreateWebExperienceRequest')
    CreateWebExperienceResponse = Shapes::StructureShape.new(name: 'CreateWebExperienceResponse')
    CreatorModeConfiguration = Shapes::StructureShape.new(name: 'CreatorModeConfiguration')
    CreatorModeControl = Shapes::StringShape.new(name: 'CreatorModeControl')
    CustomCSSUrl = Shapes::StringShape.new(name: 'CustomCSSUrl')
    CustomPluginConfiguration = Shapes::StructureShape.new(name: 'CustomPluginConfiguration')
    CustomizationConfiguration = Shapes::StructureShape.new(name: 'CustomizationConfiguration')
    DataAccessor = Shapes::StructureShape.new(name: 'DataAccessor')
    DataAccessorArn = Shapes::StringShape.new(name: 'DataAccessorArn')
    DataAccessorAuthenticationConfiguration = Shapes::UnionShape.new(name: 'DataAccessorAuthenticationConfiguration')
    DataAccessorAuthenticationDetail = Shapes::StructureShape.new(name: 'DataAccessorAuthenticationDetail')
    DataAccessorAuthenticationType = Shapes::StringShape.new(name: 'DataAccessorAuthenticationType')
    DataAccessorExternalId = Shapes::StringShape.new(name: 'DataAccessorExternalId')
    DataAccessorExternalIds = Shapes::ListShape.new(name: 'DataAccessorExternalIds')
    DataAccessorId = Shapes::StringShape.new(name: 'DataAccessorId')
    DataAccessorIdcTrustedTokenIssuerConfiguration = Shapes::StructureShape.new(name: 'DataAccessorIdcTrustedTokenIssuerConfiguration')
    DataAccessorName = Shapes::StringShape.new(name: 'DataAccessorName')
    DataAccessors = Shapes::ListShape.new(name: 'DataAccessors')
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
    DateAttributeBoostingConfiguration = Shapes::StructureShape.new(name: 'DateAttributeBoostingConfiguration')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteAttachmentRequest = Shapes::StructureShape.new(name: 'DeleteAttachmentRequest')
    DeleteAttachmentResponse = Shapes::StructureShape.new(name: 'DeleteAttachmentResponse')
    DeleteChatControlsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteChatControlsConfigurationRequest')
    DeleteChatControlsConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteChatControlsConfigurationResponse')
    DeleteChatResponseConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteChatResponseConfigurationRequest')
    DeleteChatResponseConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteChatResponseConfigurationResponse')
    DeleteConversationRequest = Shapes::StructureShape.new(name: 'DeleteConversationRequest')
    DeleteConversationResponse = Shapes::StructureShape.new(name: 'DeleteConversationResponse')
    DeleteDataAccessorRequest = Shapes::StructureShape.new(name: 'DeleteDataAccessorRequest')
    DeleteDataAccessorResponse = Shapes::StructureShape.new(name: 'DeleteDataAccessorResponse')
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
    DisassociatePermissionRequest = Shapes::StructureShape.new(name: 'DisassociatePermissionRequest')
    DisassociatePermissionResponse = Shapes::StructureShape.new(name: 'DisassociatePermissionResponse')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentAcl = Shapes::StructureShape.new(name: 'DocumentAcl')
    DocumentAclCondition = Shapes::StructureShape.new(name: 'DocumentAclCondition')
    DocumentAclConditions = Shapes::ListShape.new(name: 'DocumentAclConditions')
    DocumentAclGroup = Shapes::StructureShape.new(name: 'DocumentAclGroup')
    DocumentAclGroups = Shapes::ListShape.new(name: 'DocumentAclGroups')
    DocumentAclMembership = Shapes::StructureShape.new(name: 'DocumentAclMembership')
    DocumentAclUser = Shapes::StructureShape.new(name: 'DocumentAclUser')
    DocumentAclUsers = Shapes::ListShape.new(name: 'DocumentAclUsers')
    DocumentAttribute = Shapes::StructureShape.new(name: 'DocumentAttribute')
    DocumentAttributeBoostingConfiguration = Shapes::UnionShape.new(name: 'DocumentAttributeBoostingConfiguration')
    DocumentAttributeBoostingLevel = Shapes::StringShape.new(name: 'DocumentAttributeBoostingLevel')
    DocumentAttributeBoostingOverrideMap = Shapes::MapShape.new(name: 'DocumentAttributeBoostingOverrideMap')
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
    DocumentMetadataConfigurationName = Shapes::StringShape.new(name: 'DocumentMetadataConfigurationName')
    DocumentStatus = Shapes::StringShape.new(name: 'DocumentStatus')
    Documents = Shapes::ListShape.new(name: 'Documents')
    EligibleDataSource = Shapes::StructureShape.new(name: 'EligibleDataSource')
    EligibleDataSources = Shapes::ListShape.new(name: 'EligibleDataSources')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EndOfInputEvent = Shapes::StructureShape.new(name: 'EndOfInputEvent')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExampleChatMessage = Shapes::StringShape.new(name: 'ExampleChatMessage')
    ExampleChatMessages = Shapes::ListShape.new(name: 'ExampleChatMessages')
    ExecutionId = Shapes::StringShape.new(name: 'ExecutionId')
    ExternalResourceException = Shapes::StructureShape.new(name: 'ExternalResourceException')
    FailedAttachmentEvent = Shapes::StructureShape.new(name: 'FailedAttachmentEvent')
    FailedDocument = Shapes::StructureShape.new(name: 'FailedDocument')
    FailedDocuments = Shapes::ListShape.new(name: 'FailedDocuments')
    FaviconUrl = Shapes::StringShape.new(name: 'FaviconUrl')
    FontUrl = Shapes::StringShape.new(name: 'FontUrl')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetChatControlsConfigurationRequest = Shapes::StructureShape.new(name: 'GetChatControlsConfigurationRequest')
    GetChatControlsConfigurationResponse = Shapes::StructureShape.new(name: 'GetChatControlsConfigurationResponse')
    GetChatResponseConfigurationRequest = Shapes::StructureShape.new(name: 'GetChatResponseConfigurationRequest')
    GetChatResponseConfigurationResponse = Shapes::StructureShape.new(name: 'GetChatResponseConfigurationResponse')
    GetDataAccessorRequest = Shapes::StructureShape.new(name: 'GetDataAccessorRequest')
    GetDataAccessorResponse = Shapes::StructureShape.new(name: 'GetDataAccessorResponse')
    GetDataSourceRequest = Shapes::StructureShape.new(name: 'GetDataSourceRequest')
    GetDataSourceResponse = Shapes::StructureShape.new(name: 'GetDataSourceResponse')
    GetGroupRequest = Shapes::StructureShape.new(name: 'GetGroupRequest')
    GetGroupResponse = Shapes::StructureShape.new(name: 'GetGroupResponse')
    GetIndexRequest = Shapes::StructureShape.new(name: 'GetIndexRequest')
    GetIndexResponse = Shapes::StructureShape.new(name: 'GetIndexResponse')
    GetMediaRequest = Shapes::StructureShape.new(name: 'GetMediaRequest')
    GetMediaResponse = Shapes::StructureShape.new(name: 'GetMediaResponse')
    GetPluginRequest = Shapes::StructureShape.new(name: 'GetPluginRequest')
    GetPluginResponse = Shapes::StructureShape.new(name: 'GetPluginResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetRetrieverRequest = Shapes::StructureShape.new(name: 'GetRetrieverRequest')
    GetRetrieverResponse = Shapes::StructureShape.new(name: 'GetRetrieverResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetWebExperienceRequest = Shapes::StructureShape.new(name: 'GetWebExperienceRequest')
    GetWebExperienceResponse = Shapes::StructureShape.new(name: 'GetWebExperienceResponse')
    GroupIdentifier = Shapes::StringShape.new(name: 'GroupIdentifier')
    GroupMembers = Shapes::StructureShape.new(name: 'GroupMembers')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupStatus = Shapes::StringShape.new(name: 'GroupStatus')
    GroupStatusDetail = Shapes::StructureShape.new(name: 'GroupStatusDetail')
    GroupStatusDetails = Shapes::ListShape.new(name: 'GroupStatusDetails')
    GroupSummary = Shapes::StructureShape.new(name: 'GroupSummary')
    GroupSummaryList = Shapes::ListShape.new(name: 'GroupSummaryList')
    HallucinationReductionConfiguration = Shapes::StructureShape.new(name: 'HallucinationReductionConfiguration')
    HallucinationReductionControl = Shapes::StringShape.new(name: 'HallucinationReductionControl')
    HookConfiguration = Shapes::StructureShape.new(name: 'HookConfiguration')
    IAMIdentityProviderArn = Shapes::StringShape.new(name: 'IAMIdentityProviderArn')
    IdcApplicationArn = Shapes::StringShape.new(name: 'IdcApplicationArn')
    IdcAuthConfiguration = Shapes::StructureShape.new(name: 'IdcAuthConfiguration')
    IdcTrustedTokenIssuerArn = Shapes::StringShape.new(name: 'IdcTrustedTokenIssuerArn')
    IdentityProviderConfiguration = Shapes::UnionShape.new(name: 'IdentityProviderConfiguration')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    ImageExtractionConfiguration = Shapes::StructureShape.new(name: 'ImageExtractionConfiguration')
    ImageExtractionStatus = Shapes::StringShape.new(name: 'ImageExtractionStatus')
    ImageSourceDetails = Shapes::StructureShape.new(name: 'ImageSourceDetails')
    Index = Shapes::StructureShape.new(name: 'Index')
    IndexArn = Shapes::StringShape.new(name: 'IndexArn')
    IndexCapacityConfiguration = Shapes::StructureShape.new(name: 'IndexCapacityConfiguration')
    IndexCapacityInteger = Shapes::IntegerShape.new(name: 'IndexCapacityInteger')
    IndexId = Shapes::StringShape.new(name: 'IndexId')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexStatistics = Shapes::StructureShape.new(name: 'IndexStatistics')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    IndexType = Shapes::StringShape.new(name: 'IndexType')
    IndexedTextBytes = Shapes::IntegerShape.new(name: 'IndexedTextBytes')
    IndexedTextDocument = Shapes::IntegerShape.new(name: 'IndexedTextDocument')
    Indices = Shapes::ListShape.new(name: 'Indices')
    InlineDocumentEnrichmentConfiguration = Shapes::StructureShape.new(name: 'InlineDocumentEnrichmentConfiguration')
    InlineDocumentEnrichmentConfigurations = Shapes::ListShape.new(name: 'InlineDocumentEnrichmentConfigurations')
    InstanceArn = Shapes::StringShape.new(name: 'InstanceArn')
    Instruction = Shapes::StringShape.new(name: 'Instruction')
    InstructionCollection = Shapes::StructureShape.new(name: 'InstructionCollection')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KendraIndexConfiguration = Shapes::StructureShape.new(name: 'KendraIndexConfiguration')
    KendraIndexId = Shapes::StringShape.new(name: 'KendraIndexId')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LambdaArn = Shapes::StringShape.new(name: 'LambdaArn')
    LicenseNotFoundException = Shapes::StructureShape.new(name: 'LicenseNotFoundException')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListAttachmentsRequest = Shapes::StructureShape.new(name: 'ListAttachmentsRequest')
    ListAttachmentsResponse = Shapes::StructureShape.new(name: 'ListAttachmentsResponse')
    ListChatResponseConfigurationsRequest = Shapes::StructureShape.new(name: 'ListChatResponseConfigurationsRequest')
    ListChatResponseConfigurationsResponse = Shapes::StructureShape.new(name: 'ListChatResponseConfigurationsResponse')
    ListConversationsRequest = Shapes::StructureShape.new(name: 'ListConversationsRequest')
    ListConversationsResponse = Shapes::StructureShape.new(name: 'ListConversationsResponse')
    ListDataAccessorsRequest = Shapes::StructureShape.new(name: 'ListDataAccessorsRequest')
    ListDataAccessorsResponse = Shapes::StructureShape.new(name: 'ListDataAccessorsResponse')
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
    ListPluginActionsRequest = Shapes::StructureShape.new(name: 'ListPluginActionsRequest')
    ListPluginActionsResponse = Shapes::StructureShape.new(name: 'ListPluginActionsResponse')
    ListPluginTypeActionsRequest = Shapes::StructureShape.new(name: 'ListPluginTypeActionsRequest')
    ListPluginTypeActionsResponse = Shapes::StructureShape.new(name: 'ListPluginTypeActionsResponse')
    ListPluginTypeMetadataRequest = Shapes::StructureShape.new(name: 'ListPluginTypeMetadataRequest')
    ListPluginTypeMetadataResponse = Shapes::StructureShape.new(name: 'ListPluginTypeMetadataResponse')
    ListPluginTypeMetadataSummaries = Shapes::ListShape.new(name: 'ListPluginTypeMetadataSummaries')
    ListPluginsRequest = Shapes::StructureShape.new(name: 'ListPluginsRequest')
    ListPluginsResponse = Shapes::StructureShape.new(name: 'ListPluginsResponse')
    ListRetrieversRequest = Shapes::StructureShape.new(name: 'ListRetrieversRequest')
    ListRetrieversResponse = Shapes::StructureShape.new(name: 'ListRetrieversResponse')
    ListSubscriptionsRequest = Shapes::StructureShape.new(name: 'ListSubscriptionsRequest')
    ListSubscriptionsResponse = Shapes::StructureShape.new(name: 'ListSubscriptionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWebExperiencesRequest = Shapes::StructureShape.new(name: 'ListWebExperiencesRequest')
    ListWebExperiencesResponse = Shapes::StructureShape.new(name: 'ListWebExperiencesResponse')
    LogoUrl = Shapes::StringShape.new(name: 'LogoUrl')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsIntegerForGetTopicConfigurations = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForGetTopicConfigurations')
    MaxResultsIntegerForListApplications = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListApplications')
    MaxResultsIntegerForListAttachments = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListAttachments')
    MaxResultsIntegerForListConversations = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListConversations')
    MaxResultsIntegerForListDataAccessors = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataAccessors')
    MaxResultsIntegerForListDataSources = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSources')
    MaxResultsIntegerForListDataSourcesSyncJobs = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDataSourcesSyncJobs')
    MaxResultsIntegerForListDocuments = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListDocuments')
    MaxResultsIntegerForListGroupsRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListGroupsRequest')
    MaxResultsIntegerForListIndices = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListIndices')
    MaxResultsIntegerForListMessages = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListMessages')
    MaxResultsIntegerForListPluginActions = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPluginActions')
    MaxResultsIntegerForListPluginTypeActions = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPluginTypeActions')
    MaxResultsIntegerForListPluginTypeMetadata = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPluginTypeMetadata')
    MaxResultsIntegerForListPlugins = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListPlugins')
    MaxResultsIntegerForListRetrieversRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListRetrieversRequest')
    MaxResultsIntegerForListSubscriptions = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListSubscriptions')
    MaxResultsIntegerForListWebExperiencesRequest = Shapes::IntegerShape.new(name: 'MaxResultsIntegerForListWebExperiencesRequest')
    MediaExtractionConfiguration = Shapes::StructureShape.new(name: 'MediaExtractionConfiguration')
    MediaId = Shapes::StringShape.new(name: 'MediaId')
    MediaTooLargeException = Shapes::StructureShape.new(name: 'MediaTooLargeException')
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
    MetadataEvent = Shapes::StructureShape.new(name: 'MetadataEvent')
    MetricValue = Shapes::StringShape.new(name: 'MetricValue')
    NativeIndexConfiguration = Shapes::StructureShape.new(name: 'NativeIndexConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NextToken1500 = Shapes::StringShape.new(name: 'NextToken1500')
    NoAuthConfiguration = Shapes::StructureShape.new(name: 'NoAuthConfiguration')
    NumberAttributeBoostingConfiguration = Shapes::StructureShape.new(name: 'NumberAttributeBoostingConfiguration')
    NumberAttributeBoostingType = Shapes::StringShape.new(name: 'NumberAttributeBoostingType')
    OAuth2ClientCredentialConfiguration = Shapes::StructureShape.new(name: 'OAuth2ClientCredentialConfiguration')
    OpenIDConnectProviderConfiguration = Shapes::StructureShape.new(name: 'OpenIDConnectProviderConfiguration')
    OrchestrationConfiguration = Shapes::StructureShape.new(name: 'OrchestrationConfiguration')
    OrchestrationControl = Shapes::StringShape.new(name: 'OrchestrationControl')
    Origin = Shapes::StringShape.new(name: 'Origin')
    Payload = Shapes::StringShape.new(name: 'Payload')
    PermissionCondition = Shapes::StructureShape.new(name: 'PermissionCondition')
    PermissionConditionKey = Shapes::StringShape.new(name: 'PermissionConditionKey')
    PermissionConditionOperator = Shapes::StringShape.new(name: 'PermissionConditionOperator')
    PermissionConditionValue = Shapes::StringShape.new(name: 'PermissionConditionValue')
    PermissionConditionValues = Shapes::ListShape.new(name: 'PermissionConditionValues')
    PermissionConditions = Shapes::ListShape.new(name: 'PermissionConditions')
    PersonalizationConfiguration = Shapes::StructureShape.new(name: 'PersonalizationConfiguration')
    PersonalizationControlMode = Shapes::StringShape.new(name: 'PersonalizationControlMode')
    Plugin = Shapes::StructureShape.new(name: 'Plugin')
    PluginArn = Shapes::StringShape.new(name: 'PluginArn')
    PluginAuthConfiguration = Shapes::UnionShape.new(name: 'PluginAuthConfiguration')
    PluginBuildStatus = Shapes::StringShape.new(name: 'PluginBuildStatus')
    PluginConfiguration = Shapes::StructureShape.new(name: 'PluginConfiguration')
    PluginDescription = Shapes::StringShape.new(name: 'PluginDescription')
    PluginId = Shapes::StringShape.new(name: 'PluginId')
    PluginName = Shapes::StringShape.new(name: 'PluginName')
    PluginState = Shapes::StringShape.new(name: 'PluginState')
    PluginType = Shapes::StringShape.new(name: 'PluginType')
    PluginTypeCategory = Shapes::StringShape.new(name: 'PluginTypeCategory')
    PluginTypeMetadataSummary = Shapes::StructureShape.new(name: 'PluginTypeMetadataSummary')
    Plugins = Shapes::ListShape.new(name: 'Plugins')
    Principal = Shapes::UnionShape.new(name: 'Principal')
    PrincipalGroup = Shapes::StructureShape.new(name: 'PrincipalGroup')
    PrincipalRoleArn = Shapes::StringShape.new(name: 'PrincipalRoleArn')
    PrincipalUser = Shapes::StructureShape.new(name: 'PrincipalUser')
    Principals = Shapes::ListShape.new(name: 'Principals')
    PutFeedbackRequest = Shapes::StructureShape.new(name: 'PutFeedbackRequest')
    PutGroupRequest = Shapes::StructureShape.new(name: 'PutGroupRequest')
    PutGroupResponse = Shapes::StructureShape.new(name: 'PutGroupResponse')
    QAppsConfiguration = Shapes::StructureShape.new(name: 'QAppsConfiguration')
    QAppsControlMode = Shapes::StringShape.new(name: 'QAppsControlMode')
    QIamAction = Shapes::StringShape.new(name: 'QIamAction')
    QIamActions = Shapes::ListShape.new(name: 'QIamActions')
    QueryText = Shapes::StringShape.new(name: 'QueryText')
    QuickSightConfiguration = Shapes::StructureShape.new(name: 'QuickSightConfiguration')
    ReadAccessType = Shapes::StringShape.new(name: 'ReadAccessType')
    RelevantContent = Shapes::StructureShape.new(name: 'RelevantContent')
    RelevantContentList = Shapes::ListShape.new(name: 'RelevantContentList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseConfiguration = Shapes::StructureShape.new(name: 'ResponseConfiguration')
    ResponseConfigurationSummary = Shapes::StringShape.new(name: 'ResponseConfigurationSummary')
    ResponseConfigurationType = Shapes::StringShape.new(name: 'ResponseConfigurationType')
    ResponseConfigurations = Shapes::MapShape.new(name: 'ResponseConfigurations')
    ResponseScope = Shapes::StringShape.new(name: 'ResponseScope')
    Retriever = Shapes::StructureShape.new(name: 'Retriever')
    RetrieverArn = Shapes::StringShape.new(name: 'RetrieverArn')
    RetrieverConfiguration = Shapes::UnionShape.new(name: 'RetrieverConfiguration')
    RetrieverContentSource = Shapes::StructureShape.new(name: 'RetrieverContentSource')
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
    SamlAuthenticationUrl = Shapes::StringShape.new(name: 'SamlAuthenticationUrl')
    SamlConfiguration = Shapes::StructureShape.new(name: 'SamlConfiguration')
    SamlMetadataXML = Shapes::StringShape.new(name: 'SamlMetadataXML')
    SamlProviderConfiguration = Shapes::StructureShape.new(name: 'SamlProviderConfiguration')
    ScoreAttributes = Shapes::StructureShape.new(name: 'ScoreAttributes')
    ScoreConfidence = Shapes::StringShape.new(name: 'ScoreConfidence')
    SearchRelevantContentRequest = Shapes::StructureShape.new(name: 'SearchRelevantContentRequest')
    SearchRelevantContentResponse = Shapes::StructureShape.new(name: 'SearchRelevantContentResponse')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionDurationInMinutes = Shapes::IntegerShape.new(name: 'SessionDurationInMinutes')
    SnippetExcerpt = Shapes::StructureShape.new(name: 'SnippetExcerpt')
    SnippetExcerptText = Shapes::StringShape.new(name: 'SnippetExcerptText')
    SourceAttribution = Shapes::StructureShape.new(name: 'SourceAttribution')
    SourceAttributionMediaId = Shapes::StringShape.new(name: 'SourceAttributionMediaId')
    SourceAttributions = Shapes::ListShape.new(name: 'SourceAttributions')
    SourceDetails = Shapes::UnionShape.new(name: 'SourceDetails')
    StartDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobRequest')
    StartDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StartDataSourceSyncJobResponse')
    StatementId = Shapes::StringShape.new(name: 'StatementId')
    Status = Shapes::StringShape.new(name: 'Status')
    StopDataSourceSyncJobRequest = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobRequest')
    StopDataSourceSyncJobResponse = Shapes::StructureShape.new(name: 'StopDataSourceSyncJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringAttributeBoostingConfiguration = Shapes::StructureShape.new(name: 'StringAttributeBoostingConfiguration')
    StringAttributeValueBoosting = Shapes::MapShape.new(name: 'StringAttributeValueBoosting')
    StringAttributeValueBoostingLevel = Shapes::StringShape.new(name: 'StringAttributeValueBoostingLevel')
    StringListAttributeBoostingConfiguration = Shapes::StructureShape.new(name: 'StringListAttributeBoostingConfiguration')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Subscription = Shapes::StructureShape.new(name: 'Subscription')
    SubscriptionArn = Shapes::StringShape.new(name: 'SubscriptionArn')
    SubscriptionDetails = Shapes::StructureShape.new(name: 'SubscriptionDetails')
    SubscriptionId = Shapes::StringShape.new(name: 'SubscriptionId')
    SubscriptionPrincipal = Shapes::UnionShape.new(name: 'SubscriptionPrincipal')
    SubscriptionType = Shapes::StringShape.new(name: 'SubscriptionType')
    Subscriptions = Shapes::ListShape.new(name: 'Subscriptions')
    SyncSchedule = Shapes::StringShape.new(name: 'SyncSchedule')
    SystemMessageId = Shapes::StringShape.new(name: 'SystemMessageId')
    SystemMessageOverride = Shapes::StringShape.new(name: 'SystemMessageOverride')
    SystemMessageType = Shapes::StringShape.new(name: 'SystemMessageType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TextDocumentStatistics = Shapes::StructureShape.new(name: 'TextDocumentStatistics')
    TextInputEvent = Shapes::StructureShape.new(name: 'TextInputEvent')
    TextOutputEvent = Shapes::StructureShape.new(name: 'TextOutputEvent')
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
    UpdateChatResponseConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateChatResponseConfigurationRequest')
    UpdateChatResponseConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateChatResponseConfigurationResponse')
    UpdateDataAccessorRequest = Shapes::StructureShape.new(name: 'UpdateDataAccessorRequest')
    UpdateDataAccessorResponse = Shapes::StructureShape.new(name: 'UpdateDataAccessorResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateIndexRequest = Shapes::StructureShape.new(name: 'UpdateIndexRequest')
    UpdateIndexResponse = Shapes::StructureShape.new(name: 'UpdateIndexResponse')
    UpdatePluginRequest = Shapes::StructureShape.new(name: 'UpdatePluginRequest')
    UpdatePluginResponse = Shapes::StructureShape.new(name: 'UpdatePluginResponse')
    UpdateRetrieverRequest = Shapes::StructureShape.new(name: 'UpdateRetrieverRequest')
    UpdateRetrieverResponse = Shapes::StructureShape.new(name: 'UpdateRetrieverResponse')
    UpdateSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateSubscriptionRequest')
    UpdateSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateSubscriptionResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateWebExperienceRequest = Shapes::StructureShape.new(name: 'UpdateWebExperienceRequest')
    UpdateWebExperienceResponse = Shapes::StructureShape.new(name: 'UpdateWebExperienceResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    UserAlias = Shapes::StructureShape.new(name: 'UserAlias')
    UserAliases = Shapes::ListShape.new(name: 'UserAliases')
    UserGroups = Shapes::ListShape.new(name: 'UserGroups')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdentifier = Shapes::StringShape.new(name: 'UserIdentifier')
    UserIds = Shapes::ListShape.new(name: 'UserIds')
    UserMessage = Shapes::StringShape.new(name: 'UserMessage')
    UsersAndGroups = Shapes::StructureShape.new(name: 'UsersAndGroups')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFields = Shapes::ListShape.new(name: 'ValidationExceptionFields')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VideoExtractionConfiguration = Shapes::StructureShape.new(name: 'VideoExtractionConfiguration')
    VideoExtractionStatus = Shapes::StringShape.new(name: 'VideoExtractionStatus')
    VideoExtractionType = Shapes::StringShape.new(name: 'VideoExtractionType')
    VideoSourceDetails = Shapes::StructureShape.new(name: 'VideoSourceDetails')
    WebExperience = Shapes::StructureShape.new(name: 'WebExperience')
    WebExperienceArn = Shapes::StringShape.new(name: 'WebExperienceArn')
    WebExperienceAuthConfiguration = Shapes::UnionShape.new(name: 'WebExperienceAuthConfiguration')
    WebExperienceId = Shapes::StringShape.new(name: 'WebExperienceId')
    WebExperienceOrigins = Shapes::ListShape.new(name: 'WebExperienceOrigins')
    WebExperienceSamplePromptsControlMode = Shapes::StringShape.new(name: 'WebExperienceSamplePromptsControlMode')
    WebExperienceStatus = Shapes::StringShape.new(name: 'WebExperienceStatus')
    WebExperienceSubtitle = Shapes::StringShape.new(name: 'WebExperienceSubtitle')
    WebExperienceTitle = Shapes::StringShape.new(name: 'WebExperienceTitle')
    WebExperienceWelcomeMessage = Shapes::StringShape.new(name: 'WebExperienceWelcomeMessage')
    WebExperiences = Shapes::ListShape.new(name: 'WebExperiences')

    APISchema.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "payload"))
    APISchema.add_member(:s3, Shapes::ShapeRef.new(shape: S3, location_name: "s3"))
    APISchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    APISchema.add_member_subclass(:payload, Types::APISchema::Payload)
    APISchema.add_member_subclass(:s3, Types::APISchema::S3)
    APISchema.add_member_subclass(:unknown, Types::APISchema::Unknown)
    APISchema.struct_class = Types::APISchema

    AccessConfiguration.add_member(:access_controls, Shapes::ShapeRef.new(shape: AccessControls, required: true, location_name: "accessControls"))
    AccessConfiguration.add_member(:member_relation, Shapes::ShapeRef.new(shape: MemberRelation, location_name: "memberRelation"))
    AccessConfiguration.struct_class = Types::AccessConfiguration

    AccessControl.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, required: true, location_name: "principals"))
    AccessControl.add_member(:member_relation, Shapes::ShapeRef.new(shape: MemberRelation, location_name: "memberRelation"))
    AccessControl.struct_class = Types::AccessControl

    AccessControls.member = Shapes::ShapeRef.new(shape: AccessControl)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionConfiguration.add_member(:action, Shapes::ShapeRef.new(shape: QIamAction, required: true, location_name: "action"))
    ActionConfiguration.add_member(:filter_configuration, Shapes::ShapeRef.new(shape: ActionFilterConfiguration, location_name: "filterConfiguration"))
    ActionConfiguration.struct_class = Types::ActionConfiguration

    ActionConfigurationList.member = Shapes::ShapeRef.new(shape: ActionConfiguration)

    ActionExecution.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location_name: "pluginId"))
    ActionExecution.add_member(:payload, Shapes::ShapeRef.new(shape: ActionExecutionPayload, required: true, location_name: "payload"))
    ActionExecution.add_member(:payload_field_name_separator, Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, required: true, location_name: "payloadFieldNameSeparator"))
    ActionExecution.struct_class = Types::ActionExecution

    ActionExecutionEvent.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location_name: "pluginId"))
    ActionExecutionEvent.add_member(:payload, Shapes::ShapeRef.new(shape: ActionExecutionPayload, required: true, location_name: "payload"))
    ActionExecutionEvent.add_member(:payload_field_name_separator, Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, required: true, location_name: "payloadFieldNameSeparator"))
    ActionExecutionEvent.struct_class = Types::ActionExecutionEvent

    ActionExecutionPayload.key = Shapes::ShapeRef.new(shape: ActionPayloadFieldKey)
    ActionExecutionPayload.value = Shapes::ShapeRef.new(shape: ActionExecutionPayloadField)

    ActionExecutionPayloadField.add_member(:value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, required: true, location_name: "value"))
    ActionExecutionPayloadField.struct_class = Types::ActionExecutionPayloadField

    ActionFilterConfiguration.add_member(:document_attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, required: true, location_name: "documentAttributeFilter"))
    ActionFilterConfiguration.struct_class = Types::ActionFilterConfiguration

    ActionReview.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    ActionReview.add_member(:plugin_type, Shapes::ShapeRef.new(shape: PluginType, location_name: "pluginType"))
    ActionReview.add_member(:payload, Shapes::ShapeRef.new(shape: ActionReviewPayload, location_name: "payload"))
    ActionReview.add_member(:payload_field_name_separator, Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator"))
    ActionReview.struct_class = Types::ActionReview

    ActionReviewEvent.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    ActionReviewEvent.add_member(:user_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "userMessageId"))
    ActionReviewEvent.add_member(:system_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "systemMessageId"))
    ActionReviewEvent.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    ActionReviewEvent.add_member(:plugin_type, Shapes::ShapeRef.new(shape: PluginType, location_name: "pluginType"))
    ActionReviewEvent.add_member(:payload, Shapes::ShapeRef.new(shape: ActionReviewPayload, location_name: "payload"))
    ActionReviewEvent.add_member(:payload_field_name_separator, Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: "payloadFieldNameSeparator"))
    ActionReviewEvent.struct_class = Types::ActionReviewEvent

    ActionReviewPayload.key = Shapes::ShapeRef.new(shape: ActionPayloadFieldKey)
    ActionReviewPayload.value = Shapes::ShapeRef.new(shape: ActionReviewPayloadField)

    ActionReviewPayloadField.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ActionReviewPayloadField.add_member(:display_order, Shapes::ShapeRef.new(shape: Integer, location_name: "displayOrder"))
    ActionReviewPayloadField.add_member(:display_description, Shapes::ShapeRef.new(shape: String, location_name: "displayDescription"))
    ActionReviewPayloadField.add_member(:type, Shapes::ShapeRef.new(shape: ActionPayloadFieldType, location_name: "type"))
    ActionReviewPayloadField.add_member(:value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: "value"))
    ActionReviewPayloadField.add_member(:allowed_values, Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldAllowedValues, location_name: "allowedValues"))
    ActionReviewPayloadField.add_member(:allowed_format, Shapes::ShapeRef.new(shape: String, location_name: "allowedFormat"))
    ActionReviewPayloadField.add_member(:array_item_json_schema, Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldArrayItemJsonSchema, location_name: "arrayItemJsonSchema"))
    ActionReviewPayloadField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    ActionReviewPayloadField.struct_class = Types::ActionReviewPayloadField

    ActionReviewPayloadFieldAllowedValue.add_member(:value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: "value"))
    ActionReviewPayloadFieldAllowedValue.add_member(:display_value, Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: "displayValue"))
    ActionReviewPayloadFieldAllowedValue.struct_class = Types::ActionReviewPayloadFieldAllowedValue

    ActionReviewPayloadFieldAllowedValues.member = Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldAllowedValue)

    ActionSummary.add_member(:action_identifier, Shapes::ShapeRef.new(shape: String, location_name: "actionIdentifier"))
    ActionSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ActionSummary.add_member(:instruction_example, Shapes::ShapeRef.new(shape: String, location_name: "instructionExample"))
    ActionSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ActionSummary.struct_class = Types::ActionSummary

    Actions.member = Shapes::ShapeRef.new(shape: ActionSummary)

    Application.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    Application.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    Application.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Application.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Application.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "status"))
    Application.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "identityType"))
    Application.add_member(:quick_sight_configuration, Shapes::ShapeRef.new(shape: QuickSightConfiguration, location_name: "quickSightConfiguration"))
    Application.struct_class = Types::Application

    Applications.member = Shapes::ShapeRef.new(shape: Application)

    AppliedAttachmentsConfiguration.add_member(:attachments_control_mode, Shapes::ShapeRef.new(shape: AttachmentsControlMode, location_name: "attachmentsControlMode"))
    AppliedAttachmentsConfiguration.struct_class = Types::AppliedAttachmentsConfiguration

    AppliedCreatorModeConfiguration.add_member(:creator_mode_control, Shapes::ShapeRef.new(shape: CreatorModeControl, required: true, location_name: "creatorModeControl"))
    AppliedCreatorModeConfiguration.struct_class = Types::AppliedCreatorModeConfiguration

    AppliedOrchestrationConfiguration.add_member(:control, Shapes::ShapeRef.new(shape: OrchestrationControl, required: true, location_name: "control"))
    AppliedOrchestrationConfiguration.struct_class = Types::AppliedOrchestrationConfiguration

    AssociatePermissionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    AssociatePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: StatementId, required: true, location_name: "statementId"))
    AssociatePermissionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: QIamActions, required: true, location_name: "actions"))
    AssociatePermissionRequest.add_member(:conditions, Shapes::ShapeRef.new(shape: PermissionConditions, location_name: "conditions"))
    AssociatePermissionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalRoleArn, required: true, location_name: "principal"))
    AssociatePermissionRequest.struct_class = Types::AssociatePermissionRequest

    AssociatePermissionResponse.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    AssociatePermissionResponse.struct_class = Types::AssociatePermissionResponse

    AssociatedGroup.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "name"))
    AssociatedGroup.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    AssociatedGroup.struct_class = Types::AssociatedGroup

    AssociatedGroups.member = Shapes::ShapeRef.new(shape: AssociatedGroup)

    AssociatedUser.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    AssociatedUser.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    AssociatedUser.struct_class = Types::AssociatedUser

    AssociatedUsers.member = Shapes::ShapeRef.new(shape: AssociatedUser)

    Attachment.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "attachmentId"))
    Attachment.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    Attachment.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "name"))
    Attachment.add_member(:copy_from, Shapes::ShapeRef.new(shape: CopyFromSource, location_name: "copyFrom"))
    Attachment.add_member(:file_type, Shapes::ShapeRef.new(shape: String, location_name: "fileType"))
    Attachment.add_member(:file_size, Shapes::ShapeRef.new(shape: Integer, location_name: "fileSize"))
    Attachment.add_member(:md5chksum, Shapes::ShapeRef.new(shape: String, location_name: "md5chksum"))
    Attachment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Attachment.add_member(:status, Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: "status"))
    Attachment.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    Attachment.struct_class = Types::Attachment

    AttachmentInput.add_member(:data, Shapes::ShapeRef.new(shape: Blob, location_name: "data"))
    AttachmentInput.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "name"))
    AttachmentInput.add_member(:copy_from, Shapes::ShapeRef.new(shape: CopyFromSource, location_name: "copyFrom"))
    AttachmentInput.struct_class = Types::AttachmentInput

    AttachmentInputEvent.add_member(:attachment, Shapes::ShapeRef.new(shape: AttachmentInput, location_name: "attachment"))
    AttachmentInputEvent.struct_class = Types::AttachmentInputEvent

    AttachmentList.member = Shapes::ShapeRef.new(shape: Attachment)

    AttachmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "name"))
    AttachmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: "status"))
    AttachmentOutput.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    AttachmentOutput.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, location_name: "attachmentId"))
    AttachmentOutput.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    AttachmentOutput.struct_class = Types::AttachmentOutput

    AttachmentsConfiguration.add_member(:attachments_control_mode, Shapes::ShapeRef.new(shape: AttachmentsControlMode, required: true, location_name: "attachmentsControlMode"))
    AttachmentsConfiguration.struct_class = Types::AttachmentsConfiguration

    AttachmentsInput.member = Shapes::ShapeRef.new(shape: AttachmentInput)

    AttachmentsOutput.member = Shapes::ShapeRef.new(shape: AttachmentOutput)

    AttributeFilter.add_member(:and_all_filters, Shapes::ShapeRef.new(shape: AttributeFilters, location_name: "andAllFilters"))
    AttributeFilter.add_member(:or_all_filters, Shapes::ShapeRef.new(shape: AttributeFilters, location_name: "orAllFilters"))
    AttributeFilter.add_member(:not_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "notFilter"))
    AttributeFilter.add_member(:equals_to, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "equalsTo"))
    AttributeFilter.add_member(:contains_all, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "containsAll"))
    AttributeFilter.add_member(:contains_any, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "containsAny"))
    AttributeFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "greaterThan"))
    AttributeFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "greaterThanOrEquals"))
    AttributeFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "lessThan"))
    AttributeFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: "lessThanOrEquals"))
    AttributeFilter.struct_class = Types::AttributeFilter

    AttributeFilters.member = Shapes::ShapeRef.new(shape: AttributeFilter)

    AudioExtractionConfiguration.add_member(:audio_extraction_status, Shapes::ShapeRef.new(shape: AudioExtractionStatus, required: true, location_name: "audioExtractionStatus"))
    AudioExtractionConfiguration.struct_class = Types::AudioExtractionConfiguration

    AudioSourceDetails.add_member(:media_id, Shapes::ShapeRef.new(shape: MediaId, location_name: "mediaId"))
    AudioSourceDetails.add_member(:media_mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mediaMimeType"))
    AudioSourceDetails.add_member(:start_time_milliseconds, Shapes::ShapeRef.new(shape: Long, location_name: "startTimeMilliseconds"))
    AudioSourceDetails.add_member(:end_time_milliseconds, Shapes::ShapeRef.new(shape: Long, location_name: "endTimeMilliseconds"))
    AudioSourceDetails.add_member(:audio_extraction_type, Shapes::ShapeRef.new(shape: AudioExtractionType, location_name: "audioExtractionType"))
    AudioSourceDetails.struct_class = Types::AudioSourceDetails

    AuthChallengeRequest.add_member(:authorization_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "authorizationUrl"))
    AuthChallengeRequest.struct_class = Types::AuthChallengeRequest

    AuthChallengeRequestEvent.add_member(:authorization_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "authorizationUrl"))
    AuthChallengeRequestEvent.struct_class = Types::AuthChallengeRequestEvent

    AuthChallengeResponse.add_member(:response_map, Shapes::ShapeRef.new(shape: AuthorizationResponseMap, required: true, location_name: "responseMap"))
    AuthChallengeResponse.struct_class = Types::AuthChallengeResponse

    AuthChallengeResponseEvent.add_member(:response_map, Shapes::ShapeRef.new(shape: AuthorizationResponseMap, required: true, location_name: "responseMap"))
    AuthChallengeResponseEvent.struct_class = Types::AuthChallengeResponseEvent

    AuthorizationResponseMap.key = Shapes::ShapeRef.new(shape: AuthResponseKey)
    AuthorizationResponseMap.value = Shapes::ShapeRef.new(shape: AuthResponseValue)

    AutoSubscriptionConfiguration.add_member(:auto_subscribe, Shapes::ShapeRef.new(shape: AutoSubscriptionStatus, required: true, location_name: "autoSubscribe"))
    AutoSubscriptionConfiguration.add_member(:default_subscription_type, Shapes::ShapeRef.new(shape: SubscriptionType, location_name: "defaultSubscriptionType"))
    AutoSubscriptionConfiguration.struct_class = Types::AutoSubscriptionConfiguration

    BasicAuthConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    BasicAuthConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    BasicAuthConfiguration.struct_class = Types::BasicAuthConfiguration

    BatchDeleteDocumentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    BatchDeleteDocumentRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    BatchDeleteDocumentRequest.add_member(:documents, Shapes::ShapeRef.new(shape: DeleteDocuments, required: true, location_name: "documents"))
    BatchDeleteDocumentRequest.add_member(:data_source_sync_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "dataSourceSyncId"))
    BatchDeleteDocumentRequest.struct_class = Types::BatchDeleteDocumentRequest

    BatchDeleteDocumentResponse.add_member(:failed_documents, Shapes::ShapeRef.new(shape: FailedDocuments, location_name: "failedDocuments"))
    BatchDeleteDocumentResponse.struct_class = Types::BatchDeleteDocumentResponse

    BatchPutDocumentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    BatchPutDocumentRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    BatchPutDocumentRequest.add_member(:documents, Shapes::ShapeRef.new(shape: Documents, required: true, location_name: "documents"))
    BatchPutDocumentRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    BatchPutDocumentRequest.add_member(:data_source_sync_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "dataSourceSyncId"))
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

    BrowserExtensionConfiguration.add_member(:enabled_browser_extensions, Shapes::ShapeRef.new(shape: BrowserExtensionList, required: true, location_name: "enabledBrowserExtensions"))
    BrowserExtensionConfiguration.struct_class = Types::BrowserExtensionConfiguration

    BrowserExtensionList.member = Shapes::ShapeRef.new(shape: BrowserExtension)

    CancelSubscriptionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CancelSubscriptionRequest.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "subscriptionId"))
    CancelSubscriptionRequest.struct_class = Types::CancelSubscriptionRequest

    CancelSubscriptionResponse.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: "subscriptionArn"))
    CancelSubscriptionResponse.add_member(:current_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "currentSubscription"))
    CancelSubscriptionResponse.add_member(:next_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "nextSubscription"))
    CancelSubscriptionResponse.struct_class = Types::CancelSubscriptionResponse

    ChatInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ChatInput.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    ChatInput.add_member(:user_groups, Shapes::ShapeRef.new(shape: UserGroups, location: "querystring", location_name: "userGroups"))
    ChatInput.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location: "querystring", location_name: "conversationId"))
    ChatInput.add_member(:parent_message_id, Shapes::ShapeRef.new(shape: MessageId, location: "querystring", location_name: "parentMessageId"))
    ChatInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ChatInput.add_member(:input_stream, Shapes::ShapeRef.new(shape: ChatInputStream, eventstream: true, location_name: "inputStream"))
    ChatInput.struct_class = Types::ChatInput
    ChatInput[:payload] = :input_stream
    ChatInput[:payload_member] = ChatInput.member(:input_stream)

    ChatInputStream.add_member(:configuration_event, Shapes::ShapeRef.new(shape: ConfigurationEvent, event: true, location_name: "configurationEvent"))
    ChatInputStream.add_member(:text_event, Shapes::ShapeRef.new(shape: TextInputEvent, event: true, location_name: "textEvent"))
    ChatInputStream.add_member(:attachment_event, Shapes::ShapeRef.new(shape: AttachmentInputEvent, event: true, location_name: "attachmentEvent"))
    ChatInputStream.add_member(:action_execution_event, Shapes::ShapeRef.new(shape: ActionExecutionEvent, event: true, location_name: "actionExecutionEvent"))
    ChatInputStream.add_member(:end_of_input_event, Shapes::ShapeRef.new(shape: EndOfInputEvent, event: true, location_name: "endOfInputEvent"))
    ChatInputStream.add_member(:auth_challenge_response_event, Shapes::ShapeRef.new(shape: AuthChallengeResponseEvent, event: true, location_name: "authChallengeResponseEvent"))
    ChatInputStream.struct_class = Types::ChatInputStream

    ChatModeConfiguration.add_member(:plugin_configuration, Shapes::ShapeRef.new(shape: PluginConfiguration, location_name: "pluginConfiguration"))
    ChatModeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ChatModeConfiguration.add_member_subclass(:plugin_configuration, Types::ChatModeConfiguration::PluginConfiguration)
    ChatModeConfiguration.add_member_subclass(:unknown, Types::ChatModeConfiguration::Unknown)
    ChatModeConfiguration.struct_class = Types::ChatModeConfiguration

    ChatOutput.add_member(:output_stream, Shapes::ShapeRef.new(shape: ChatOutputStream, eventstream: true, location_name: "outputStream"))
    ChatOutput.struct_class = Types::ChatOutput
    ChatOutput[:payload] = :output_stream
    ChatOutput[:payload_member] = ChatOutput.member(:output_stream)

    ChatOutputStream.add_member(:text_event, Shapes::ShapeRef.new(shape: TextOutputEvent, event: true, location_name: "textEvent"))
    ChatOutputStream.add_member(:metadata_event, Shapes::ShapeRef.new(shape: MetadataEvent, event: true, location_name: "metadataEvent"))
    ChatOutputStream.add_member(:action_review_event, Shapes::ShapeRef.new(shape: ActionReviewEvent, event: true, location_name: "actionReviewEvent"))
    ChatOutputStream.add_member(:failed_attachment_event, Shapes::ShapeRef.new(shape: FailedAttachmentEvent, event: true, location_name: "failedAttachmentEvent"))
    ChatOutputStream.add_member(:auth_challenge_request_event, Shapes::ShapeRef.new(shape: AuthChallengeRequestEvent, event: true, location_name: "authChallengeRequestEvent"))
    ChatOutputStream.struct_class = Types::ChatOutputStream

    ChatResponseConfiguration.add_member(:chat_response_configuration_id, Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, required: true, location_name: "chatResponseConfigurationId"))
    ChatResponseConfiguration.add_member(:chat_response_configuration_arn, Shapes::ShapeRef.new(shape: ChatResponseConfigurationArn, required: true, location_name: "chatResponseConfigurationArn"))
    ChatResponseConfiguration.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    ChatResponseConfiguration.add_member(:response_configuration_summary, Shapes::ShapeRef.new(shape: ResponseConfigurationSummary, location_name: "responseConfigurationSummary"))
    ChatResponseConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: ChatResponseConfigurationStatus, required: true, location_name: "status"))
    ChatResponseConfiguration.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ChatResponseConfiguration.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ChatResponseConfiguration.struct_class = Types::ChatResponseConfiguration

    ChatResponseConfigurationDetail.add_member(:response_configurations, Shapes::ShapeRef.new(shape: ResponseConfigurations, location_name: "responseConfigurations"))
    ChatResponseConfigurationDetail.add_member(:response_configuration_summary, Shapes::ShapeRef.new(shape: String, location_name: "responseConfigurationSummary"))
    ChatResponseConfigurationDetail.add_member(:status, Shapes::ShapeRef.new(shape: ChatResponseConfigurationStatus, location_name: "status"))
    ChatResponseConfigurationDetail.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    ChatResponseConfigurationDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ChatResponseConfigurationDetail.struct_class = Types::ChatResponseConfigurationDetail

    ChatResponseConfigurations.member = Shapes::ShapeRef.new(shape: ChatResponseConfiguration)

    ChatSyncInput.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ChatSyncInput.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    ChatSyncInput.add_member(:user_groups, Shapes::ShapeRef.new(shape: UserGroups, location: "querystring", location_name: "userGroups"))
    ChatSyncInput.add_member(:user_message, Shapes::ShapeRef.new(shape: UserMessage, location_name: "userMessage"))
    ChatSyncInput.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentsInput, location_name: "attachments"))
    ChatSyncInput.add_member(:action_execution, Shapes::ShapeRef.new(shape: ActionExecution, location_name: "actionExecution"))
    ChatSyncInput.add_member(:auth_challenge_response, Shapes::ShapeRef.new(shape: AuthChallengeResponse, location_name: "authChallengeResponse"))
    ChatSyncInput.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    ChatSyncInput.add_member(:parent_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "parentMessageId"))
    ChatSyncInput.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "attributeFilter"))
    ChatSyncInput.add_member(:chat_mode, Shapes::ShapeRef.new(shape: ChatMode, location_name: "chatMode"))
    ChatSyncInput.add_member(:chat_mode_configuration, Shapes::ShapeRef.new(shape: ChatModeConfiguration, location_name: "chatModeConfiguration"))
    ChatSyncInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ChatSyncInput.struct_class = Types::ChatSyncInput

    ChatSyncOutput.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    ChatSyncOutput.add_member(:system_message, Shapes::ShapeRef.new(shape: String, location_name: "systemMessage"))
    ChatSyncOutput.add_member(:system_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "systemMessageId"))
    ChatSyncOutput.add_member(:user_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "userMessageId"))
    ChatSyncOutput.add_member(:action_review, Shapes::ShapeRef.new(shape: ActionReview, location_name: "actionReview"))
    ChatSyncOutput.add_member(:auth_challenge_request, Shapes::ShapeRef.new(shape: AuthChallengeRequest, location_name: "authChallengeRequest"))
    ChatSyncOutput.add_member(:source_attributions, Shapes::ShapeRef.new(shape: SourceAttributions, location_name: "sourceAttributions"))
    ChatSyncOutput.add_member(:failed_attachments, Shapes::ShapeRef.new(shape: AttachmentsOutput, location_name: "failedAttachments"))
    ChatSyncOutput.struct_class = Types::ChatSyncOutput

    CheckDocumentAccessRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CheckDocumentAccessRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    CheckDocumentAccessRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    CheckDocumentAccessRequest.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location: "uri", location_name: "documentId"))
    CheckDocumentAccessRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
    CheckDocumentAccessRequest.struct_class = Types::CheckDocumentAccessRequest

    CheckDocumentAccessResponse.add_member(:user_groups, Shapes::ShapeRef.new(shape: AssociatedGroups, location_name: "userGroups"))
    CheckDocumentAccessResponse.add_member(:user_aliases, Shapes::ShapeRef.new(shape: AssociatedUsers, location_name: "userAliases"))
    CheckDocumentAccessResponse.add_member(:has_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasAccess"))
    CheckDocumentAccessResponse.add_member(:document_acl, Shapes::ShapeRef.new(shape: DocumentAcl, location_name: "documentAcl"))
    CheckDocumentAccessResponse.struct_class = Types::CheckDocumentAccessResponse

    ClientIdsForOIDC.member = Shapes::ShapeRef.new(shape: ClientIdForOIDC)

    ConfigurationEvent.add_member(:chat_mode, Shapes::ShapeRef.new(shape: ChatMode, location_name: "chatMode"))
    ConfigurationEvent.add_member(:chat_mode_configuration, Shapes::ShapeRef.new(shape: ChatModeConfiguration, location_name: "chatModeConfiguration"))
    ConfigurationEvent.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "attributeFilter"))
    ConfigurationEvent.struct_class = Types::ConfigurationEvent

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ContentBlockerRule.add_member(:system_message_override, Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: "systemMessageOverride"))
    ContentBlockerRule.struct_class = Types::ContentBlockerRule

    ContentRetrievalRule.add_member(:eligible_data_sources, Shapes::ShapeRef.new(shape: EligibleDataSources, location_name: "eligibleDataSources"))
    ContentRetrievalRule.struct_class = Types::ContentRetrievalRule

    ContentSource.add_member(:retriever, Shapes::ShapeRef.new(shape: RetrieverContentSource, location_name: "retriever"))
    ContentSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentSource.add_member_subclass(:retriever, Types::ContentSource::Retriever)
    ContentSource.add_member_subclass(:unknown, Types::ContentSource::Unknown)
    ContentSource.struct_class = Types::ContentSource

    Conversation.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    Conversation.add_member(:title, Shapes::ShapeRef.new(shape: ConversationTitle, location_name: "title"))
    Conversation.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    Conversation.struct_class = Types::Conversation

    ConversationSource.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location_name: "conversationId"))
    ConversationSource.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location_name: "attachmentId"))
    ConversationSource.struct_class = Types::ConversationSource

    Conversations.member = Shapes::ShapeRef.new(shape: Conversation)

    CopyFromSource.add_member(:conversation, Shapes::ShapeRef.new(shape: ConversationSource, location_name: "conversation"))
    CopyFromSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CopyFromSource.add_member_subclass(:conversation, Types::CopyFromSource::Conversation)
    CopyFromSource.add_member_subclass(:unknown, Types::CopyFromSource::Unknown)
    CopyFromSource.struct_class = Types::CopyFromSource

    CreateAnonymousWebExperienceUrlRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateAnonymousWebExperienceUrlRequest.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, required: true, location: "uri", location_name: "webExperienceId"))
    CreateAnonymousWebExperienceUrlRequest.add_member(:session_duration_in_minutes, Shapes::ShapeRef.new(shape: SessionDurationInMinutes, location_name: "sessionDurationInMinutes"))
    CreateAnonymousWebExperienceUrlRequest.struct_class = Types::CreateAnonymousWebExperienceUrlRequest

    CreateAnonymousWebExperienceUrlResponse.add_member(:anonymous_url, Shapes::ShapeRef.new(shape: Url, location_name: "anonymousUrl"))
    CreateAnonymousWebExperienceUrlResponse.struct_class = Types::CreateAnonymousWebExperienceUrlResponse

    CreateApplicationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "displayName"))
    CreateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateApplicationRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "identityType"))
    CreateApplicationRequest.add_member(:iam_identity_provider_arn, Shapes::ShapeRef.new(shape: IAMIdentityProviderArn, location_name: "iamIdentityProviderArn"))
    CreateApplicationRequest.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "identityCenterInstanceArn"))
    CreateApplicationRequest.add_member(:client_ids_for_oidc, Shapes::ShapeRef.new(shape: ClientIdsForOIDC, location_name: "clientIdsForOIDC"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateApplicationRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateApplicationRequest.add_member(:attachments_configuration, Shapes::ShapeRef.new(shape: AttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    CreateApplicationRequest.add_member(:q_apps_configuration, Shapes::ShapeRef.new(shape: QAppsConfiguration, location_name: "qAppsConfiguration"))
    CreateApplicationRequest.add_member(:personalization_configuration, Shapes::ShapeRef.new(shape: PersonalizationConfiguration, location_name: "personalizationConfiguration"))
    CreateApplicationRequest.add_member(:quick_sight_configuration, Shapes::ShapeRef.new(shape: QuickSightConfiguration, location_name: "quickSightConfiguration"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    CreateApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateChatResponseConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateChatResponseConfigurationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    CreateChatResponseConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateChatResponseConfigurationRequest.add_member(:response_configurations, Shapes::ShapeRef.new(shape: ResponseConfigurations, required: true, location_name: "responseConfigurations"))
    CreateChatResponseConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChatResponseConfigurationRequest.struct_class = Types::CreateChatResponseConfigurationRequest

    CreateChatResponseConfigurationResponse.add_member(:chat_response_configuration_id, Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, required: true, location_name: "chatResponseConfigurationId"))
    CreateChatResponseConfigurationResponse.add_member(:chat_response_configuration_arn, Shapes::ShapeRef.new(shape: ChatResponseConfigurationArn, required: true, location_name: "chatResponseConfigurationArn"))
    CreateChatResponseConfigurationResponse.struct_class = Types::CreateChatResponseConfigurationResponse

    CreateDataAccessorRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateDataAccessorRequest.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalRoleArn, required: true, location_name: "principal"))
    CreateDataAccessorRequest.add_member(:action_configurations, Shapes::ShapeRef.new(shape: ActionConfigurationList, required: true, location_name: "actionConfigurations"))
    CreateDataAccessorRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDataAccessorRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DataAccessorName, required: true, location_name: "displayName"))
    CreateDataAccessorRequest.add_member(:authentication_detail, Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    CreateDataAccessorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDataAccessorRequest.struct_class = Types::CreateDataAccessorRequest

    CreateDataAccessorResponse.add_member(:data_accessor_id, Shapes::ShapeRef.new(shape: DataAccessorId, required: true, location_name: "dataAccessorId"))
    CreateDataAccessorResponse.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: IdcApplicationArn, required: true, location_name: "idcApplicationArn"))
    CreateDataAccessorResponse.add_member(:data_accessor_arn, Shapes::ShapeRef.new(shape: DataAccessorArn, required: true, location_name: "dataAccessorArn"))
    CreateDataAccessorResponse.struct_class = Types::CreateDataAccessorResponse

    CreateDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    CreateDataSourceRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, required: true, location_name: "displayName"))
    CreateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, required: true, location_name: "configuration"))
    CreateDataSourceRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    CreateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateDataSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateDataSourceRequest.add_member(:sync_schedule, Shapes::ShapeRef.new(shape: SyncSchedule, location_name: "syncSchedule"))
    CreateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateDataSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDataSourceRequest.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    CreateDataSourceRequest.add_member(:media_extraction_configuration, Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    CreateDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: DataSourceArn, location_name: "dataSourceArn"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateIndexRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "displayName"))
    CreateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateIndexRequest.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "type"))
    CreateIndexRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateIndexRequest.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    CreateIndexRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateIndexRequest.struct_class = Types::CreateIndexRequest

    CreateIndexResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    CreateIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    CreateIndexResponse.struct_class = Types::CreateIndexResponse

    CreatePluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreatePluginRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, required: true, location_name: "displayName"))
    CreatePluginRequest.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, required: true, location_name: "type"))
    CreatePluginRequest.add_member(:auth_configuration, Shapes::ShapeRef.new(shape: PluginAuthConfiguration, required: true, location_name: "authConfiguration"))
    CreatePluginRequest.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    CreatePluginRequest.add_member(:custom_plugin_configuration, Shapes::ShapeRef.new(shape: CustomPluginConfiguration, location_name: "customPluginConfiguration"))
    CreatePluginRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePluginRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePluginRequest.struct_class = Types::CreatePluginRequest

    CreatePluginResponse.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    CreatePluginResponse.add_member(:plugin_arn, Shapes::ShapeRef.new(shape: PluginArn, location_name: "pluginArn"))
    CreatePluginResponse.add_member(:build_status, Shapes::ShapeRef.new(shape: PluginBuildStatus, location_name: "buildStatus"))
    CreatePluginResponse.struct_class = Types::CreatePluginResponse

    CreateRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateRetrieverRequest.add_member(:type, Shapes::ShapeRef.new(shape: RetrieverType, required: true, location_name: "type"))
    CreateRetrieverRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, required: true, location_name: "displayName"))
    CreateRetrieverRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RetrieverConfiguration, required: true, location_name: "configuration"))
    CreateRetrieverRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateRetrieverRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRetrieverRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRetrieverRequest.struct_class = Types::CreateRetrieverRequest

    CreateRetrieverResponse.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, location_name: "retrieverId"))
    CreateRetrieverResponse.add_member(:retriever_arn, Shapes::ShapeRef.new(shape: RetrieverArn, location_name: "retrieverArn"))
    CreateRetrieverResponse.struct_class = Types::CreateRetrieverResponse

    CreateSubscriptionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateSubscriptionRequest.add_member(:principal, Shapes::ShapeRef.new(shape: SubscriptionPrincipal, required: true, location_name: "principal"))
    CreateSubscriptionRequest.add_member(:type, Shapes::ShapeRef.new(shape: SubscriptionType, required: true, location_name: "type"))
    CreateSubscriptionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSubscriptionRequest.struct_class = Types::CreateSubscriptionRequest

    CreateSubscriptionResponse.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    CreateSubscriptionResponse.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: "subscriptionArn"))
    CreateSubscriptionResponse.add_member(:current_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "currentSubscription"))
    CreateSubscriptionResponse.add_member(:next_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "nextSubscription"))
    CreateSubscriptionResponse.struct_class = Types::CreateSubscriptionResponse

    CreateUserRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userId"))
    CreateUserRequest.add_member(:user_aliases, Shapes::ShapeRef.new(shape: CreateUserRequestUserAliasesList, location_name: "userAliases"))
    CreateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserRequestUserAliasesList.member = Shapes::ShapeRef.new(shape: UserAlias)

    CreateUserResponse.struct_class = Types::CreateUserResponse

    CreateWebExperienceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    CreateWebExperienceRequest.add_member(:title, Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: "title"))
    CreateWebExperienceRequest.add_member(:subtitle, Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: "subtitle"))
    CreateWebExperienceRequest.add_member(:welcome_message, Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    CreateWebExperienceRequest.add_member(:sample_prompts_control_mode, Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    CreateWebExperienceRequest.add_member(:origins, Shapes::ShapeRef.new(shape: WebExperienceOrigins, location_name: "origins"))
    CreateWebExperienceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateWebExperienceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateWebExperienceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateWebExperienceRequest.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    CreateWebExperienceRequest.add_member(:browser_extension_configuration, Shapes::ShapeRef.new(shape: BrowserExtensionConfiguration, location_name: "browserExtensionConfiguration"))
    CreateWebExperienceRequest.add_member(:customization_configuration, Shapes::ShapeRef.new(shape: CustomizationConfiguration, location_name: "customizationConfiguration"))
    CreateWebExperienceRequest.struct_class = Types::CreateWebExperienceRequest

    CreateWebExperienceResponse.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, location_name: "webExperienceId"))
    CreateWebExperienceResponse.add_member(:web_experience_arn, Shapes::ShapeRef.new(shape: WebExperienceArn, location_name: "webExperienceArn"))
    CreateWebExperienceResponse.struct_class = Types::CreateWebExperienceResponse

    CreatorModeConfiguration.add_member(:creator_mode_control, Shapes::ShapeRef.new(shape: CreatorModeControl, required: true, location_name: "creatorModeControl"))
    CreatorModeConfiguration.struct_class = Types::CreatorModeConfiguration

    CustomPluginConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: PluginDescription, required: true, location_name: "description"))
    CustomPluginConfiguration.add_member(:api_schema_type, Shapes::ShapeRef.new(shape: APISchemaType, required: true, location_name: "apiSchemaType"))
    CustomPluginConfiguration.add_member(:api_schema, Shapes::ShapeRef.new(shape: APISchema, location_name: "apiSchema"))
    CustomPluginConfiguration.struct_class = Types::CustomPluginConfiguration

    CustomizationConfiguration.add_member(:custom_css_url, Shapes::ShapeRef.new(shape: CustomCSSUrl, location_name: "customCSSUrl"))
    CustomizationConfiguration.add_member(:logo_url, Shapes::ShapeRef.new(shape: LogoUrl, location_name: "logoUrl"))
    CustomizationConfiguration.add_member(:font_url, Shapes::ShapeRef.new(shape: FontUrl, location_name: "fontUrl"))
    CustomizationConfiguration.add_member(:favicon_url, Shapes::ShapeRef.new(shape: FaviconUrl, location_name: "faviconUrl"))
    CustomizationConfiguration.struct_class = Types::CustomizationConfiguration

    DataAccessor.add_member(:display_name, Shapes::ShapeRef.new(shape: DataAccessorName, location_name: "displayName"))
    DataAccessor.add_member(:data_accessor_id, Shapes::ShapeRef.new(shape: DataAccessorId, location_name: "dataAccessorId"))
    DataAccessor.add_member(:data_accessor_arn, Shapes::ShapeRef.new(shape: DataAccessorArn, location_name: "dataAccessorArn"))
    DataAccessor.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: "idcApplicationArn"))
    DataAccessor.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalRoleArn, location_name: "principal"))
    DataAccessor.add_member(:authentication_detail, Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    DataAccessor.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DataAccessor.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DataAccessor.struct_class = Types::DataAccessor

    DataAccessorAuthenticationConfiguration.add_member(:idc_trusted_token_issuer_configuration, Shapes::ShapeRef.new(shape: DataAccessorIdcTrustedTokenIssuerConfiguration, location_name: "idcTrustedTokenIssuerConfiguration"))
    DataAccessorAuthenticationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataAccessorAuthenticationConfiguration.add_member_subclass(:idc_trusted_token_issuer_configuration, Types::DataAccessorAuthenticationConfiguration::IdcTrustedTokenIssuerConfiguration)
    DataAccessorAuthenticationConfiguration.add_member_subclass(:unknown, Types::DataAccessorAuthenticationConfiguration::Unknown)
    DataAccessorAuthenticationConfiguration.struct_class = Types::DataAccessorAuthenticationConfiguration

    DataAccessorAuthenticationDetail.add_member(:authentication_type, Shapes::ShapeRef.new(shape: DataAccessorAuthenticationType, required: true, location_name: "authenticationType"))
    DataAccessorAuthenticationDetail.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: DataAccessorAuthenticationConfiguration, location_name: "authenticationConfiguration"))
    DataAccessorAuthenticationDetail.add_member(:external_ids, Shapes::ShapeRef.new(shape: DataAccessorExternalIds, location_name: "externalIds"))
    DataAccessorAuthenticationDetail.struct_class = Types::DataAccessorAuthenticationDetail

    DataAccessorExternalIds.member = Shapes::ShapeRef.new(shape: DataAccessorExternalId)

    DataAccessorIdcTrustedTokenIssuerConfiguration.add_member(:idc_trusted_token_issuer_arn, Shapes::ShapeRef.new(shape: IdcTrustedTokenIssuerArn, required: true, location_name: "idcTrustedTokenIssuerArn"))
    DataAccessorIdcTrustedTokenIssuerConfiguration.struct_class = Types::DataAccessorIdcTrustedTokenIssuerConfiguration

    DataAccessors.member = Shapes::ShapeRef.new(shape: DataAccessor)

    DataSource.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "displayName"))
    DataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    DataSource.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DataSource.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DataSource.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    DataSource.struct_class = Types::DataSource

    DataSourceIds.member = Shapes::ShapeRef.new(shape: DataSourceId)

    DataSourceSyncJob.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    DataSourceSyncJob.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    DataSourceSyncJob.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    DataSourceSyncJob.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location_name: "status"))
    DataSourceSyncJob.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    DataSourceSyncJob.add_member(:data_source_error_code, Shapes::ShapeRef.new(shape: String, location_name: "dataSourceErrorCode"))
    DataSourceSyncJob.add_member(:metrics, Shapes::ShapeRef.new(shape: DataSourceSyncJobMetrics, location_name: "metrics"))
    DataSourceSyncJob.struct_class = Types::DataSourceSyncJob

    DataSourceSyncJobMetrics.add_member(:documents_added, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsAdded"))
    DataSourceSyncJobMetrics.add_member(:documents_modified, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsModified"))
    DataSourceSyncJobMetrics.add_member(:documents_deleted, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsDeleted"))
    DataSourceSyncJobMetrics.add_member(:documents_failed, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsFailed"))
    DataSourceSyncJobMetrics.add_member(:documents_scanned, Shapes::ShapeRef.new(shape: MetricValue, location_name: "documentsScanned"))
    DataSourceSyncJobMetrics.struct_class = Types::DataSourceSyncJobMetrics

    DataSourceSyncJobs.member = Shapes::ShapeRef.new(shape: DataSourceSyncJob)

    DataSourceVpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    DataSourceVpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "securityGroupIds"))
    DataSourceVpcConfiguration.struct_class = Types::DataSourceVpcConfiguration

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DateAttributeBoostingConfiguration.add_member(:boosting_level, Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, required: true, location_name: "boostingLevel"))
    DateAttributeBoostingConfiguration.add_member(:boosting_duration_in_seconds, Shapes::ShapeRef.new(shape: BoostingDurationInSeconds, location_name: "boostingDurationInSeconds"))
    DateAttributeBoostingConfiguration.struct_class = Types::DateAttributeBoostingConfiguration

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteAttachmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteAttachmentRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    DeleteAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: AttachmentId, required: true, location: "uri", location_name: "attachmentId"))
    DeleteAttachmentRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    DeleteAttachmentRequest.struct_class = Types::DeleteAttachmentRequest

    DeleteAttachmentResponse.struct_class = Types::DeleteAttachmentResponse

    DeleteChatControlsConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteChatControlsConfigurationRequest.struct_class = Types::DeleteChatControlsConfigurationRequest

    DeleteChatControlsConfigurationResponse.struct_class = Types::DeleteChatControlsConfigurationResponse

    DeleteChatResponseConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, required: true, location: "uri", location_name: "chatResponseConfigurationId"))
    DeleteChatResponseConfigurationRequest.struct_class = Types::DeleteChatResponseConfigurationRequest

    DeleteChatResponseConfigurationResponse.struct_class = Types::DeleteChatResponseConfigurationResponse

    DeleteConversationRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    DeleteConversationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteConversationRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    DeleteConversationRequest.struct_class = Types::DeleteConversationRequest

    DeleteConversationResponse.struct_class = Types::DeleteConversationResponse

    DeleteDataAccessorRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteDataAccessorRequest.add_member(:data_accessor_id, Shapes::ShapeRef.new(shape: DataAccessorId, required: true, location: "uri", location_name: "dataAccessorId"))
    DeleteDataAccessorRequest.struct_class = Types::DeleteDataAccessorRequest

    DeleteDataAccessorResponse.struct_class = Types::DeleteDataAccessorResponse

    DeleteDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    DeleteDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteDocument.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "documentId"))
    DeleteDocument.struct_class = Types::DeleteDocument

    DeleteDocuments.member = Shapes::ShapeRef.new(shape: DeleteDocument)

    DeleteGroupRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DeleteGroupRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    DeleteGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "groupName"))
    DeleteGroupRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
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

    DisassociatePermissionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    DisassociatePermissionRequest.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "statementId"))
    DisassociatePermissionRequest.struct_class = Types::DisassociatePermissionRequest

    DisassociatePermissionResponse.struct_class = Types::DisassociatePermissionResponse

    Document.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, required: true, location_name: "id"))
    Document.add_member(:attributes, Shapes::ShapeRef.new(shape: DocumentAttributes, location_name: "attributes"))
    Document.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "content"))
    Document.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType"))
    Document.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "title"))
    Document.add_member(:access_configuration, Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: "accessConfiguration"))
    Document.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    Document.add_member(:media_extraction_configuration, Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    Document.struct_class = Types::Document

    DocumentAcl.add_member(:allowlist, Shapes::ShapeRef.new(shape: DocumentAclMembership, location_name: "allowlist"))
    DocumentAcl.add_member(:deny_list, Shapes::ShapeRef.new(shape: DocumentAclMembership, location_name: "denyList"))
    DocumentAcl.struct_class = Types::DocumentAcl

    DocumentAclCondition.add_member(:member_relation, Shapes::ShapeRef.new(shape: MemberRelation, location_name: "memberRelation"))
    DocumentAclCondition.add_member(:users, Shapes::ShapeRef.new(shape: DocumentAclUsers, location_name: "users"))
    DocumentAclCondition.add_member(:groups, Shapes::ShapeRef.new(shape: DocumentAclGroups, location_name: "groups"))
    DocumentAclCondition.struct_class = Types::DocumentAclCondition

    DocumentAclConditions.member = Shapes::ShapeRef.new(shape: DocumentAclCondition)

    DocumentAclGroup.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "name"))
    DocumentAclGroup.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    DocumentAclGroup.struct_class = Types::DocumentAclGroup

    DocumentAclGroups.member = Shapes::ShapeRef.new(shape: DocumentAclGroup)

    DocumentAclMembership.add_member(:member_relation, Shapes::ShapeRef.new(shape: MemberRelation, location_name: "memberRelation"))
    DocumentAclMembership.add_member(:conditions, Shapes::ShapeRef.new(shape: DocumentAclConditions, location_name: "conditions"))
    DocumentAclMembership.struct_class = Types::DocumentAclMembership

    DocumentAclUser.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    DocumentAclUser.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    DocumentAclUser.struct_class = Types::DocumentAclUser

    DocumentAclUsers.member = Shapes::ShapeRef.new(shape: DocumentAclUser)

    DocumentAttribute.add_member(:name, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "name"))
    DocumentAttribute.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, required: true, location_name: "value"))
    DocumentAttribute.struct_class = Types::DocumentAttribute

    DocumentAttributeBoostingConfiguration.add_member(:number_configuration, Shapes::ShapeRef.new(shape: NumberAttributeBoostingConfiguration, location_name: "numberConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:string_configuration, Shapes::ShapeRef.new(shape: StringAttributeBoostingConfiguration, location_name: "stringConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:date_configuration, Shapes::ShapeRef.new(shape: DateAttributeBoostingConfiguration, location_name: "dateConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:string_list_configuration, Shapes::ShapeRef.new(shape: StringListAttributeBoostingConfiguration, location_name: "stringListConfiguration"))
    DocumentAttributeBoostingConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DocumentAttributeBoostingConfiguration.add_member_subclass(:number_configuration, Types::DocumentAttributeBoostingConfiguration::NumberConfiguration)
    DocumentAttributeBoostingConfiguration.add_member_subclass(:string_configuration, Types::DocumentAttributeBoostingConfiguration::StringConfiguration)
    DocumentAttributeBoostingConfiguration.add_member_subclass(:date_configuration, Types::DocumentAttributeBoostingConfiguration::DateConfiguration)
    DocumentAttributeBoostingConfiguration.add_member_subclass(:string_list_configuration, Types::DocumentAttributeBoostingConfiguration::StringListConfiguration)
    DocumentAttributeBoostingConfiguration.add_member_subclass(:unknown, Types::DocumentAttributeBoostingConfiguration::Unknown)
    DocumentAttributeBoostingConfiguration.struct_class = Types::DocumentAttributeBoostingConfiguration

    DocumentAttributeBoostingOverrideMap.key = Shapes::ShapeRef.new(shape: DocumentAttributeKey)
    DocumentAttributeBoostingOverrideMap.value = Shapes::ShapeRef.new(shape: DocumentAttributeBoostingConfiguration)

    DocumentAttributeCondition.add_member(:key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "key"))
    DocumentAttributeCondition.add_member(:operator, Shapes::ShapeRef.new(shape: DocumentEnrichmentConditionOperator, required: true, location_name: "operator"))
    DocumentAttributeCondition.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "value"))
    DocumentAttributeCondition.struct_class = Types::DocumentAttributeCondition

    DocumentAttributeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationName, location_name: "name"))
    DocumentAttributeConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: AttributeType, location_name: "type"))
    DocumentAttributeConfiguration.add_member(:search, Shapes::ShapeRef.new(shape: Status, location_name: "search"))
    DocumentAttributeConfiguration.struct_class = Types::DocumentAttributeConfiguration

    DocumentAttributeConfigurations.member = Shapes::ShapeRef.new(shape: DocumentAttributeConfiguration)

    DocumentAttributeStringListValue.member = Shapes::ShapeRef.new(shape: String)

    DocumentAttributeTarget.add_member(:key, Shapes::ShapeRef.new(shape: DocumentAttributeKey, required: true, location_name: "key"))
    DocumentAttributeTarget.add_member(:value, Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: "value"))
    DocumentAttributeTarget.add_member(:attribute_value_operator, Shapes::ShapeRef.new(shape: AttributeValueOperator, location_name: "attributeValueOperator"))
    DocumentAttributeTarget.struct_class = Types::DocumentAttributeTarget

    DocumentAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: DocumentAttributeValueStringValueString, location_name: "stringValue"))
    DocumentAttributeValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: DocumentAttributeStringListValue, location_name: "stringListValue"))
    DocumentAttributeValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "longValue"))
    DocumentAttributeValue.add_member(:date_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "dateValue"))
    DocumentAttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DocumentAttributeValue.add_member_subclass(:string_value, Types::DocumentAttributeValue::StringValue)
    DocumentAttributeValue.add_member_subclass(:string_list_value, Types::DocumentAttributeValue::StringListValue)
    DocumentAttributeValue.add_member_subclass(:long_value, Types::DocumentAttributeValue::LongValue)
    DocumentAttributeValue.add_member_subclass(:date_value, Types::DocumentAttributeValue::DateValue)
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

    DocumentDetails.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "documentId"))
    DocumentDetails.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "status"))
    DocumentDetails.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    DocumentDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DocumentDetails.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DocumentDetails.struct_class = Types::DocumentDetails

    DocumentEnrichmentConfiguration.add_member(:inline_configurations, Shapes::ShapeRef.new(shape: InlineDocumentEnrichmentConfigurations, location_name: "inlineConfigurations"))
    DocumentEnrichmentConfiguration.add_member(:pre_extraction_hook_configuration, Shapes::ShapeRef.new(shape: HookConfiguration, location_name: "preExtractionHookConfiguration"))
    DocumentEnrichmentConfiguration.add_member(:post_extraction_hook_configuration, Shapes::ShapeRef.new(shape: HookConfiguration, location_name: "postExtractionHookConfiguration"))
    DocumentEnrichmentConfiguration.struct_class = Types::DocumentEnrichmentConfiguration

    Documents.member = Shapes::ShapeRef.new(shape: Document)

    EligibleDataSource.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    EligibleDataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    EligibleDataSource.struct_class = Types::EligibleDataSource

    EligibleDataSources.member = Shapes::ShapeRef.new(shape: EligibleDataSource)

    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EndOfInputEvent.struct_class = Types::EndOfInputEvent

    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ExampleChatMessages.member = Shapes::ShapeRef.new(shape: ExampleChatMessage)

    ExternalResourceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ExternalResourceException.struct_class = Types::ExternalResourceException

    FailedAttachmentEvent.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    FailedAttachmentEvent.add_member(:user_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "userMessageId"))
    FailedAttachmentEvent.add_member(:system_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "systemMessageId"))
    FailedAttachmentEvent.add_member(:attachment, Shapes::ShapeRef.new(shape: AttachmentOutput, location_name: "attachment"))
    FailedAttachmentEvent.struct_class = Types::FailedAttachmentEvent

    FailedDocument.add_member(:id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "id"))
    FailedDocument.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    FailedDocument.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    FailedDocument.struct_class = Types::FailedDocument

    FailedDocuments.member = Shapes::ShapeRef.new(shape: FailedDocument)

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    GetApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "applicationArn"))
    GetApplicationResponse.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "identityType"))
    GetApplicationResponse.add_member(:iam_identity_provider_arn, Shapes::ShapeRef.new(shape: IAMIdentityProviderArn, location_name: "iamIdentityProviderArn"))
    GetApplicationResponse.add_member(:identity_center_application_arn, Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: "identityCenterApplicationArn"))
    GetApplicationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "status"))
    GetApplicationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetApplicationResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    GetApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetApplicationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetApplicationResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetApplicationResponse.add_member(:attachments_configuration, Shapes::ShapeRef.new(shape: AppliedAttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    GetApplicationResponse.add_member(:q_apps_configuration, Shapes::ShapeRef.new(shape: QAppsConfiguration, location_name: "qAppsConfiguration"))
    GetApplicationResponse.add_member(:personalization_configuration, Shapes::ShapeRef.new(shape: PersonalizationConfiguration, location_name: "personalizationConfiguration"))
    GetApplicationResponse.add_member(:auto_subscription_configuration, Shapes::ShapeRef.new(shape: AutoSubscriptionConfiguration, location_name: "autoSubscriptionConfiguration"))
    GetApplicationResponse.add_member(:client_ids_for_oidc, Shapes::ShapeRef.new(shape: ClientIdsForOIDC, location_name: "clientIdsForOIDC"))
    GetApplicationResponse.add_member(:quick_sight_configuration, Shapes::ShapeRef.new(shape: QuickSightConfiguration, location_name: "quickSightConfiguration"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetChatControlsConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetChatControlsConfigurationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForGetTopicConfigurations, location: "querystring", location_name: "maxResults"))
    GetChatControlsConfigurationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetChatControlsConfigurationRequest.struct_class = Types::GetChatControlsConfigurationRequest

    GetChatControlsConfigurationResponse.add_member(:response_scope, Shapes::ShapeRef.new(shape: ResponseScope, location_name: "responseScope"))
    GetChatControlsConfigurationResponse.add_member(:orchestration_configuration, Shapes::ShapeRef.new(shape: AppliedOrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    GetChatControlsConfigurationResponse.add_member(:blocked_phrases, Shapes::ShapeRef.new(shape: BlockedPhrasesConfiguration, location_name: "blockedPhrases"))
    GetChatControlsConfigurationResponse.add_member(:topic_configurations, Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: "topicConfigurations"))
    GetChatControlsConfigurationResponse.add_member(:creator_mode_configuration, Shapes::ShapeRef.new(shape: AppliedCreatorModeConfiguration, location_name: "creatorModeConfiguration"))
    GetChatControlsConfigurationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetChatControlsConfigurationResponse.add_member(:hallucination_reduction_configuration, Shapes::ShapeRef.new(shape: HallucinationReductionConfiguration, location_name: "hallucinationReductionConfiguration"))
    GetChatControlsConfigurationResponse.struct_class = Types::GetChatControlsConfigurationResponse

    GetChatResponseConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, required: true, location: "uri", location_name: "chatResponseConfigurationId"))
    GetChatResponseConfigurationRequest.struct_class = Types::GetChatResponseConfigurationRequest

    GetChatResponseConfigurationResponse.add_member(:chat_response_configuration_id, Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: "chatResponseConfigurationId"))
    GetChatResponseConfigurationResponse.add_member(:chat_response_configuration_arn, Shapes::ShapeRef.new(shape: ChatResponseConfigurationArn, location_name: "chatResponseConfigurationArn"))
    GetChatResponseConfigurationResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    GetChatResponseConfigurationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetChatResponseConfigurationResponse.add_member(:in_use_configuration, Shapes::ShapeRef.new(shape: ChatResponseConfigurationDetail, location_name: "inUseConfiguration"))
    GetChatResponseConfigurationResponse.add_member(:last_update_configuration, Shapes::ShapeRef.new(shape: ChatResponseConfigurationDetail, location_name: "lastUpdateConfiguration"))
    GetChatResponseConfigurationResponse.struct_class = Types::GetChatResponseConfigurationResponse

    GetDataAccessorRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetDataAccessorRequest.add_member(:data_accessor_id, Shapes::ShapeRef.new(shape: DataAccessorId, required: true, location: "uri", location_name: "dataAccessorId"))
    GetDataAccessorRequest.struct_class = Types::GetDataAccessorRequest

    GetDataAccessorResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DataAccessorName, location_name: "displayName"))
    GetDataAccessorResponse.add_member(:data_accessor_id, Shapes::ShapeRef.new(shape: DataAccessorId, location_name: "dataAccessorId"))
    GetDataAccessorResponse.add_member(:data_accessor_arn, Shapes::ShapeRef.new(shape: DataAccessorArn, location_name: "dataAccessorArn"))
    GetDataAccessorResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetDataAccessorResponse.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: "idcApplicationArn"))
    GetDataAccessorResponse.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalRoleArn, location_name: "principal"))
    GetDataAccessorResponse.add_member(:action_configurations, Shapes::ShapeRef.new(shape: ActionConfigurationList, location_name: "actionConfigurations"))
    GetDataAccessorResponse.add_member(:authentication_detail, Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    GetDataAccessorResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetDataAccessorResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetDataAccessorResponse.struct_class = Types::GetDataAccessorResponse

    GetDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    GetDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    GetDataSourceRequest.struct_class = Types::GetDataSourceRequest

    GetDataSourceResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetDataSourceResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    GetDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    GetDataSourceResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: DataSourceArn, location_name: "dataSourceArn"))
    GetDataSourceResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "displayName"))
    GetDataSourceResponse.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    GetDataSourceResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "configuration"))
    GetDataSourceResponse.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    GetDataSourceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetDataSourceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetDataSourceResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: "status"))
    GetDataSourceResponse.add_member(:sync_schedule, Shapes::ShapeRef.new(shape: SyncSchedule, location_name: "syncSchedule"))
    GetDataSourceResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetDataSourceResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetDataSourceResponse.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    GetDataSourceResponse.add_member(:media_extraction_configuration, Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    GetDataSourceResponse.struct_class = Types::GetDataSourceResponse

    GetGroupRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetGroupRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    GetGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "groupName"))
    GetGroupRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
    GetGroupRequest.struct_class = Types::GetGroupRequest

    GetGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: GroupStatusDetail, location_name: "status"))
    GetGroupResponse.add_member(:status_history, Shapes::ShapeRef.new(shape: GroupStatusDetails, location_name: "statusHistory"))
    GetGroupResponse.struct_class = Types::GetGroupResponse

    GetIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetIndexRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    GetIndexRequest.struct_class = Types::GetIndexRequest

    GetIndexResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetIndexResponse.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    GetIndexResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "displayName"))
    GetIndexResponse.add_member(:index_arn, Shapes::ShapeRef.new(shape: IndexArn, location_name: "indexArn"))
    GetIndexResponse.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "status"))
    GetIndexResponse.add_member(:type, Shapes::ShapeRef.new(shape: IndexType, location_name: "type"))
    GetIndexResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetIndexResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetIndexResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetIndexResponse.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    GetIndexResponse.add_member(:document_attribute_configurations, Shapes::ShapeRef.new(shape: DocumentAttributeConfigurations, location_name: "documentAttributeConfigurations"))
    GetIndexResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetIndexResponse.add_member(:index_statistics, Shapes::ShapeRef.new(shape: IndexStatistics, location_name: "indexStatistics"))
    GetIndexResponse.struct_class = Types::GetIndexResponse

    GetMediaRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetMediaRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    GetMediaRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location: "uri", location_name: "messageId"))
    GetMediaRequest.add_member(:media_id, Shapes::ShapeRef.new(shape: MediaId, required: true, location: "uri", location_name: "mediaId"))
    GetMediaRequest.struct_class = Types::GetMediaRequest

    GetMediaResponse.add_member(:media_bytes, Shapes::ShapeRef.new(shape: Blob, location_name: "mediaBytes"))
    GetMediaResponse.add_member(:media_mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mediaMimeType"))
    GetMediaResponse.struct_class = Types::GetMediaResponse

    GetPluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetPluginRequest.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location: "uri", location_name: "pluginId"))
    GetPluginRequest.struct_class = Types::GetPluginRequest

    GetPluginResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetPluginResponse.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    GetPluginResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, location_name: "displayName"))
    GetPluginResponse.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, location_name: "type"))
    GetPluginResponse.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    GetPluginResponse.add_member(:auth_configuration, Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: "authConfiguration"))
    GetPluginResponse.add_member(:custom_plugin_configuration, Shapes::ShapeRef.new(shape: CustomPluginConfiguration, location_name: "customPluginConfiguration"))
    GetPluginResponse.add_member(:build_status, Shapes::ShapeRef.new(shape: PluginBuildStatus, location_name: "buildStatus"))
    GetPluginResponse.add_member(:plugin_arn, Shapes::ShapeRef.new(shape: PluginArn, location_name: "pluginArn"))
    GetPluginResponse.add_member(:state, Shapes::ShapeRef.new(shape: PluginState, location_name: "state"))
    GetPluginResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetPluginResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetPluginResponse.struct_class = Types::GetPluginResponse

    GetPolicyRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "policy"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    GetRetrieverRequest.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, required: true, location: "uri", location_name: "retrieverId"))
    GetRetrieverRequest.struct_class = Types::GetRetrieverRequest

    GetRetrieverResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    GetRetrieverResponse.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, location_name: "retrieverId"))
    GetRetrieverResponse.add_member(:retriever_arn, Shapes::ShapeRef.new(shape: RetrieverArn, location_name: "retrieverArn"))
    GetRetrieverResponse.add_member(:type, Shapes::ShapeRef.new(shape: RetrieverType, location_name: "type"))
    GetRetrieverResponse.add_member(:status, Shapes::ShapeRef.new(shape: RetrieverStatus, location_name: "status"))
    GetRetrieverResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, location_name: "displayName"))
    GetRetrieverResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: "configuration"))
    GetRetrieverResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetRetrieverResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
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
    GetWebExperienceResponse.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, location_name: "webExperienceId"))
    GetWebExperienceResponse.add_member(:web_experience_arn, Shapes::ShapeRef.new(shape: WebExperienceArn, location_name: "webExperienceArn"))
    GetWebExperienceResponse.add_member(:default_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "defaultEndpoint"))
    GetWebExperienceResponse.add_member(:status, Shapes::ShapeRef.new(shape: WebExperienceStatus, location_name: "status"))
    GetWebExperienceResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetWebExperienceResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetWebExperienceResponse.add_member(:title, Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: "title"))
    GetWebExperienceResponse.add_member(:subtitle, Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: "subtitle"))
    GetWebExperienceResponse.add_member(:welcome_message, Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    GetWebExperienceResponse.add_member(:sample_prompts_control_mode, Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    GetWebExperienceResponse.add_member(:origins, Shapes::ShapeRef.new(shape: WebExperienceOrigins, location_name: "origins"))
    GetWebExperienceResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetWebExperienceResponse.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    GetWebExperienceResponse.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: WebExperienceAuthConfiguration, deprecated: true, location_name: "authenticationConfiguration", metadata: {"deprecatedMessage" => "Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management."}))
    GetWebExperienceResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "error"))
    GetWebExperienceResponse.add_member(:browser_extension_configuration, Shapes::ShapeRef.new(shape: BrowserExtensionConfiguration, location_name: "browserExtensionConfiguration"))
    GetWebExperienceResponse.add_member(:customization_configuration, Shapes::ShapeRef.new(shape: CustomizationConfiguration, location_name: "customizationConfiguration"))
    GetWebExperienceResponse.struct_class = Types::GetWebExperienceResponse

    GroupMembers.add_member(:member_groups, Shapes::ShapeRef.new(shape: MemberGroups, location_name: "memberGroups"))
    GroupMembers.add_member(:member_users, Shapes::ShapeRef.new(shape: MemberUsers, location_name: "memberUsers"))
    GroupMembers.add_member(:s3_path_for_group_members, Shapes::ShapeRef.new(shape: S3, location_name: "s3PathForGroupMembers"))
    GroupMembers.struct_class = Types::GroupMembers

    GroupStatusDetail.add_member(:status, Shapes::ShapeRef.new(shape: GroupStatus, location_name: "status"))
    GroupStatusDetail.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GroupStatusDetail.add_member(:error_detail, Shapes::ShapeRef.new(shape: ErrorDetail, location_name: "errorDetail"))
    GroupStatusDetail.struct_class = Types::GroupStatusDetail

    GroupStatusDetails.member = Shapes::ShapeRef.new(shape: GroupStatusDetail)

    GroupSummary.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "groupName"))
    GroupSummary.struct_class = Types::GroupSummary

    GroupSummaryList.member = Shapes::ShapeRef.new(shape: GroupSummary)

    HallucinationReductionConfiguration.add_member(:hallucination_reduction_control, Shapes::ShapeRef.new(shape: HallucinationReductionControl, location_name: "hallucinationReductionControl"))
    HallucinationReductionConfiguration.struct_class = Types::HallucinationReductionConfiguration

    HookConfiguration.add_member(:invocation_condition, Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: "invocationCondition"))
    HookConfiguration.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: LambdaArn, location_name: "lambdaArn"))
    HookConfiguration.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "s3BucketName"))
    HookConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    HookConfiguration.struct_class = Types::HookConfiguration

    IdcAuthConfiguration.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: IdcApplicationArn, required: true, location_name: "idcApplicationArn"))
    IdcAuthConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    IdcAuthConfiguration.struct_class = Types::IdcAuthConfiguration

    IdentityProviderConfiguration.add_member(:saml_configuration, Shapes::ShapeRef.new(shape: SamlProviderConfiguration, location_name: "samlConfiguration"))
    IdentityProviderConfiguration.add_member(:open_id_connect_configuration, Shapes::ShapeRef.new(shape: OpenIDConnectProviderConfiguration, location_name: "openIDConnectConfiguration"))
    IdentityProviderConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentityProviderConfiguration.add_member_subclass(:saml_configuration, Types::IdentityProviderConfiguration::SamlConfiguration)
    IdentityProviderConfiguration.add_member_subclass(:open_id_connect_configuration, Types::IdentityProviderConfiguration::OpenIdConnectConfiguration)
    IdentityProviderConfiguration.add_member_subclass(:unknown, Types::IdentityProviderConfiguration::Unknown)
    IdentityProviderConfiguration.struct_class = Types::IdentityProviderConfiguration

    ImageExtractionConfiguration.add_member(:image_extraction_status, Shapes::ShapeRef.new(shape: ImageExtractionStatus, required: true, location_name: "imageExtractionStatus"))
    ImageExtractionConfiguration.struct_class = Types::ImageExtractionConfiguration

    ImageSourceDetails.add_member(:media_id, Shapes::ShapeRef.new(shape: MediaId, location_name: "mediaId"))
    ImageSourceDetails.add_member(:media_mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mediaMimeType"))
    ImageSourceDetails.struct_class = Types::ImageSourceDetails

    Index.add_member(:display_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "displayName"))
    Index.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    Index.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Index.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Index.add_member(:status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "status"))
    Index.struct_class = Types::Index

    IndexCapacityConfiguration.add_member(:units, Shapes::ShapeRef.new(shape: IndexCapacityInteger, location_name: "units"))
    IndexCapacityConfiguration.struct_class = Types::IndexCapacityConfiguration

    IndexStatistics.add_member(:text_document_statistics, Shapes::ShapeRef.new(shape: TextDocumentStatistics, location_name: "textDocumentStatistics"))
    IndexStatistics.struct_class = Types::IndexStatistics

    Indices.member = Shapes::ShapeRef.new(shape: Index)

    InlineDocumentEnrichmentConfiguration.add_member(:condition, Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: "condition"))
    InlineDocumentEnrichmentConfiguration.add_member(:target, Shapes::ShapeRef.new(shape: DocumentAttributeTarget, location_name: "target"))
    InlineDocumentEnrichmentConfiguration.add_member(:document_content_operator, Shapes::ShapeRef.new(shape: DocumentContentOperator, location_name: "documentContentOperator"))
    InlineDocumentEnrichmentConfiguration.struct_class = Types::InlineDocumentEnrichmentConfiguration

    InlineDocumentEnrichmentConfigurations.member = Shapes::ShapeRef.new(shape: InlineDocumentEnrichmentConfiguration)

    InstructionCollection.add_member(:response_length, Shapes::ShapeRef.new(shape: Instruction, location_name: "responseLength"))
    InstructionCollection.add_member(:target_audience, Shapes::ShapeRef.new(shape: Instruction, location_name: "targetAudience"))
    InstructionCollection.add_member(:perspective, Shapes::ShapeRef.new(shape: Instruction, location_name: "perspective"))
    InstructionCollection.add_member(:output_style, Shapes::ShapeRef.new(shape: Instruction, location_name: "outputStyle"))
    InstructionCollection.add_member(:identity, Shapes::ShapeRef.new(shape: Instruction, location_name: "identity"))
    InstructionCollection.add_member(:tone, Shapes::ShapeRef.new(shape: Instruction, location_name: "tone"))
    InstructionCollection.add_member(:custom_instructions, Shapes::ShapeRef.new(shape: Instruction, location_name: "customInstructions"))
    InstructionCollection.add_member(:examples, Shapes::ShapeRef.new(shape: Instruction, location_name: "examples"))
    InstructionCollection.struct_class = Types::InstructionCollection

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KendraIndexConfiguration.add_member(:index_id, Shapes::ShapeRef.new(shape: KendraIndexId, required: true, location_name: "indexId"))
    KendraIndexConfiguration.struct_class = Types::KendraIndexConfiguration

    LicenseNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    LicenseNotFoundException.struct_class = Types::LicenseNotFoundException

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListApplications, location: "querystring", location_name: "maxResults"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: Applications, location_name: "applications"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListAttachmentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListAttachmentsRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location: "querystring", location_name: "conversationId"))
    ListAttachmentsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    ListAttachmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAttachmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListAttachments, location: "querystring", location_name: "maxResults"))
    ListAttachmentsRequest.struct_class = Types::ListAttachmentsRequest

    ListAttachmentsResponse.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentList, location_name: "attachments"))
    ListAttachmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAttachmentsResponse.struct_class = Types::ListAttachmentsResponse

    ListChatResponseConfigurationsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListChatResponseConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListChatResponseConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListChatResponseConfigurationsRequest.struct_class = Types::ListChatResponseConfigurationsRequest

    ListChatResponseConfigurationsResponse.add_member(:chat_response_configurations, Shapes::ShapeRef.new(shape: ChatResponseConfigurations, location_name: "chatResponseConfigurations"))
    ListChatResponseConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChatResponseConfigurationsResponse.struct_class = Types::ListChatResponseConfigurationsResponse

    ListConversationsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListConversationsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    ListConversationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListConversationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListConversations, location: "querystring", location_name: "maxResults"))
    ListConversationsRequest.struct_class = Types::ListConversationsRequest

    ListConversationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListConversationsResponse.add_member(:conversations, Shapes::ShapeRef.new(shape: Conversations, location_name: "conversations"))
    ListConversationsResponse.struct_class = Types::ListConversationsResponse

    ListDataAccessorsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDataAccessorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken1500, location: "querystring", location_name: "nextToken"))
    ListDataAccessorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataAccessors, location: "querystring", location_name: "maxResults"))
    ListDataAccessorsRequest.struct_class = Types::ListDataAccessorsRequest

    ListDataAccessorsResponse.add_member(:data_accessors, Shapes::ShapeRef.new(shape: DataAccessors, location_name: "dataAccessors"))
    ListDataAccessorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken1500, location_name: "nextToken"))
    ListDataAccessorsResponse.struct_class = Types::ListDataAccessorsResponse

    ListDataSourceSyncJobsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    ListDataSourceSyncJobsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDataSourceSyncJobsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListDataSourceSyncJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataSourceSyncJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSourcesSyncJobs, location: "querystring", location_name: "maxResults"))
    ListDataSourceSyncJobsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    ListDataSourceSyncJobsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    ListDataSourceSyncJobsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location: "querystring", location_name: "syncStatus"))
    ListDataSourceSyncJobsRequest.struct_class = Types::ListDataSourceSyncJobsRequest

    ListDataSourceSyncJobsResponse.add_member(:history, Shapes::ShapeRef.new(shape: DataSourceSyncJobs, location_name: "history"))
    ListDataSourceSyncJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSourceSyncJobsResponse.struct_class = Types::ListDataSourceSyncJobsResponse

    ListDataSourcesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDataSourcesRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSources, location: "querystring", location_name: "maxResults"))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "dataSources"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListDocumentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListDocumentsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListDocumentsRequest.add_member(:data_source_ids, Shapes::ShapeRef.new(shape: DataSourceIds, location: "querystring", location_name: "dataSourceIds"))
    ListDocumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDocumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDocuments, location: "querystring", location_name: "maxResults"))
    ListDocumentsRequest.struct_class = Types::ListDocumentsRequest

    ListDocumentsResponse.add_member(:document_detail_list, Shapes::ShapeRef.new(shape: DocumentDetailList, location_name: "documentDetailList"))
    ListDocumentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDocumentsResponse.struct_class = Types::ListDocumentsResponse

    ListGroupsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListGroupsRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    ListGroupsRequest.add_member(:updated_earlier_than, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "updatedEarlierThan"))
    ListGroupsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location: "querystring", location_name: "dataSourceId"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListGroupsRequest, location: "querystring", location_name: "maxResults"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListGroupsResponse.add_member(:items, Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: "items"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListIndicesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListIndicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIndicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListIndices, location: "querystring", location_name: "maxResults"))
    ListIndicesRequest.struct_class = Types::ListIndicesRequest

    ListIndicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIndicesResponse.add_member(:indices, Shapes::ShapeRef.new(shape: Indices, location_name: "indices"))
    ListIndicesResponse.struct_class = Types::ListIndicesResponse

    ListMessagesRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    ListMessagesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListMessagesRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    ListMessagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMessagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListMessages, location: "querystring", location_name: "maxResults"))
    ListMessagesRequest.struct_class = Types::ListMessagesRequest

    ListMessagesResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    ListMessagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMessagesResponse.struct_class = Types::ListMessagesResponse

    ListPluginActionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListPluginActionsRequest.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location: "uri", location_name: "pluginId"))
    ListPluginActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPluginActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPluginActions, location: "querystring", location_name: "maxResults"))
    ListPluginActionsRequest.struct_class = Types::ListPluginActionsRequest

    ListPluginActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginActionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: Actions, location_name: "items"))
    ListPluginActionsResponse.struct_class = Types::ListPluginActionsResponse

    ListPluginTypeActionsRequest.add_member(:plugin_type, Shapes::ShapeRef.new(shape: PluginType, required: true, location: "uri", location_name: "pluginType"))
    ListPluginTypeActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPluginTypeActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPluginTypeActions, location: "querystring", location_name: "maxResults"))
    ListPluginTypeActionsRequest.struct_class = Types::ListPluginTypeActionsRequest

    ListPluginTypeActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginTypeActionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: Actions, location_name: "items"))
    ListPluginTypeActionsResponse.struct_class = Types::ListPluginTypeActionsResponse

    ListPluginTypeMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPluginTypeMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPluginTypeMetadata, location: "querystring", location_name: "maxResults"))
    ListPluginTypeMetadataRequest.struct_class = Types::ListPluginTypeMetadataRequest

    ListPluginTypeMetadataResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginTypeMetadataResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListPluginTypeMetadataSummaries, location_name: "items"))
    ListPluginTypeMetadataResponse.struct_class = Types::ListPluginTypeMetadataResponse

    ListPluginTypeMetadataSummaries.member = Shapes::ShapeRef.new(shape: PluginTypeMetadataSummary)

    ListPluginsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListPluginsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPluginsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPlugins, location: "querystring", location_name: "maxResults"))
    ListPluginsRequest.struct_class = Types::ListPluginsRequest

    ListPluginsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPluginsResponse.add_member(:plugins, Shapes::ShapeRef.new(shape: Plugins, location_name: "plugins"))
    ListPluginsResponse.struct_class = Types::ListPluginsResponse

    ListRetrieversRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListRetrieversRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRetrieversRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListRetrieversRequest, location: "querystring", location_name: "maxResults"))
    ListRetrieversRequest.struct_class = Types::ListRetrieversRequest

    ListRetrieversResponse.add_member(:retrievers, Shapes::ShapeRef.new(shape: Retrievers, location_name: "retrievers"))
    ListRetrieversResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRetrieversResponse.struct_class = Types::ListRetrieversResponse

    ListSubscriptionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListSubscriptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListSubscriptions, location: "querystring", location_name: "maxResults"))
    ListSubscriptionsRequest.struct_class = Types::ListSubscriptionsRequest

    ListSubscriptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSubscriptionsResponse.add_member(:subscriptions, Shapes::ShapeRef.new(shape: Subscriptions, location_name: "subscriptions"))
    ListSubscriptionsResponse.struct_class = Types::ListSubscriptionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWebExperiencesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    ListWebExperiencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWebExperiencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsIntegerForListWebExperiencesRequest, location: "querystring", location_name: "maxResults"))
    ListWebExperiencesRequest.struct_class = Types::ListWebExperiencesRequest

    ListWebExperiencesResponse.add_member(:web_experiences, Shapes::ShapeRef.new(shape: WebExperiences, location_name: "webExperiences"))
    ListWebExperiencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebExperiencesResponse.struct_class = Types::ListWebExperiencesResponse

    MediaExtractionConfiguration.add_member(:image_extraction_configuration, Shapes::ShapeRef.new(shape: ImageExtractionConfiguration, location_name: "imageExtractionConfiguration"))
    MediaExtractionConfiguration.add_member(:audio_extraction_configuration, Shapes::ShapeRef.new(shape: AudioExtractionConfiguration, location_name: "audioExtractionConfiguration"))
    MediaExtractionConfiguration.add_member(:video_extraction_configuration, Shapes::ShapeRef.new(shape: VideoExtractionConfiguration, location_name: "videoExtractionConfiguration"))
    MediaExtractionConfiguration.struct_class = Types::MediaExtractionConfiguration

    MediaTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    MediaTooLargeException.struct_class = Types::MediaTooLargeException

    MemberGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "groupName"))
    MemberGroup.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    MemberGroup.struct_class = Types::MemberGroup

    MemberGroups.member = Shapes::ShapeRef.new(shape: MemberGroup)

    MemberUser.add_member(:user_id, Shapes::ShapeRef.new(shape: DataSourceUserId, required: true, location_name: "userId"))
    MemberUser.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "type"))
    MemberUser.struct_class = Types::MemberUser

    MemberUsers.member = Shapes::ShapeRef.new(shape: MemberUser)

    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "messageId"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: MessageBody, location_name: "body"))
    Message.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "time"))
    Message.add_member(:type, Shapes::ShapeRef.new(shape: MessageType, location_name: "type"))
    Message.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentsOutput, location_name: "attachments"))
    Message.add_member(:source_attribution, Shapes::ShapeRef.new(shape: SourceAttributions, location_name: "sourceAttribution"))
    Message.add_member(:action_review, Shapes::ShapeRef.new(shape: ActionReview, location_name: "actionReview"))
    Message.add_member(:action_execution, Shapes::ShapeRef.new(shape: ActionExecution, location_name: "actionExecution"))
    Message.struct_class = Types::Message

    MessageUsefulnessFeedback.add_member(:usefulness, Shapes::ShapeRef.new(shape: MessageUsefulness, required: true, location_name: "usefulness"))
    MessageUsefulnessFeedback.add_member(:reason, Shapes::ShapeRef.new(shape: MessageUsefulnessReason, location_name: "reason"))
    MessageUsefulnessFeedback.add_member(:comment, Shapes::ShapeRef.new(shape: MessageUsefulnessComment, location_name: "comment"))
    MessageUsefulnessFeedback.add_member(:submitted_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submittedAt"))
    MessageUsefulnessFeedback.struct_class = Types::MessageUsefulnessFeedback

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    MetadataEvent.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    MetadataEvent.add_member(:user_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "userMessageId"))
    MetadataEvent.add_member(:system_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "systemMessageId"))
    MetadataEvent.add_member(:source_attributions, Shapes::ShapeRef.new(shape: SourceAttributions, location_name: "sourceAttributions"))
    MetadataEvent.add_member(:final_text_message, Shapes::ShapeRef.new(shape: String, location_name: "finalTextMessage"))
    MetadataEvent.struct_class = Types::MetadataEvent

    NativeIndexConfiguration.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location_name: "indexId"))
    NativeIndexConfiguration.add_member(:version, Shapes::ShapeRef.new(shape: Long, location_name: "version"))
    NativeIndexConfiguration.add_member(:boosting_override, Shapes::ShapeRef.new(shape: DocumentAttributeBoostingOverrideMap, location_name: "boostingOverride"))
    NativeIndexConfiguration.struct_class = Types::NativeIndexConfiguration

    NoAuthConfiguration.struct_class = Types::NoAuthConfiguration

    NumberAttributeBoostingConfiguration.add_member(:boosting_level, Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, required: true, location_name: "boostingLevel"))
    NumberAttributeBoostingConfiguration.add_member(:boosting_type, Shapes::ShapeRef.new(shape: NumberAttributeBoostingType, location_name: "boostingType"))
    NumberAttributeBoostingConfiguration.struct_class = Types::NumberAttributeBoostingConfiguration

    OAuth2ClientCredentialConfiguration.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    OAuth2ClientCredentialConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    OAuth2ClientCredentialConfiguration.add_member(:authorization_url, Shapes::ShapeRef.new(shape: Url, location_name: "authorizationUrl"))
    OAuth2ClientCredentialConfiguration.add_member(:token_url, Shapes::ShapeRef.new(shape: Url, location_name: "tokenUrl"))
    OAuth2ClientCredentialConfiguration.struct_class = Types::OAuth2ClientCredentialConfiguration

    OpenIDConnectProviderConfiguration.add_member(:secrets_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretsArn"))
    OpenIDConnectProviderConfiguration.add_member(:secrets_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "secretsRole"))
    OpenIDConnectProviderConfiguration.struct_class = Types::OpenIDConnectProviderConfiguration

    OrchestrationConfiguration.add_member(:control, Shapes::ShapeRef.new(shape: OrchestrationControl, required: true, location_name: "control"))
    OrchestrationConfiguration.struct_class = Types::OrchestrationConfiguration

    PermissionCondition.add_member(:condition_operator, Shapes::ShapeRef.new(shape: PermissionConditionOperator, required: true, location_name: "conditionOperator"))
    PermissionCondition.add_member(:condition_key, Shapes::ShapeRef.new(shape: PermissionConditionKey, required: true, location_name: "conditionKey"))
    PermissionCondition.add_member(:condition_values, Shapes::ShapeRef.new(shape: PermissionConditionValues, required: true, location_name: "conditionValues"))
    PermissionCondition.struct_class = Types::PermissionCondition

    PermissionConditionValues.member = Shapes::ShapeRef.new(shape: PermissionConditionValue)

    PermissionConditions.member = Shapes::ShapeRef.new(shape: PermissionCondition)

    PersonalizationConfiguration.add_member(:personalization_control_mode, Shapes::ShapeRef.new(shape: PersonalizationControlMode, required: true, location_name: "personalizationControlMode"))
    PersonalizationConfiguration.struct_class = Types::PersonalizationConfiguration

    Plugin.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, location_name: "pluginId"))
    Plugin.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, location_name: "displayName"))
    Plugin.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, location_name: "type"))
    Plugin.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    Plugin.add_member(:state, Shapes::ShapeRef.new(shape: PluginState, location_name: "state"))
    Plugin.add_member(:build_status, Shapes::ShapeRef.new(shape: PluginBuildStatus, location_name: "buildStatus"))
    Plugin.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Plugin.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Plugin.struct_class = Types::Plugin

    PluginAuthConfiguration.add_member(:basic_auth_configuration, Shapes::ShapeRef.new(shape: BasicAuthConfiguration, location_name: "basicAuthConfiguration"))
    PluginAuthConfiguration.add_member(:o_auth_2_client_credential_configuration, Shapes::ShapeRef.new(shape: OAuth2ClientCredentialConfiguration, location_name: "oAuth2ClientCredentialConfiguration"))
    PluginAuthConfiguration.add_member(:no_auth_configuration, Shapes::ShapeRef.new(shape: NoAuthConfiguration, location_name: "noAuthConfiguration"))
    PluginAuthConfiguration.add_member(:idc_auth_configuration, Shapes::ShapeRef.new(shape: IdcAuthConfiguration, location_name: "idcAuthConfiguration"))
    PluginAuthConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PluginAuthConfiguration.add_member_subclass(:basic_auth_configuration, Types::PluginAuthConfiguration::BasicAuthConfiguration)
    PluginAuthConfiguration.add_member_subclass(:o_auth_2_client_credential_configuration, Types::PluginAuthConfiguration::OAuth2ClientCredentialConfiguration)
    PluginAuthConfiguration.add_member_subclass(:no_auth_configuration, Types::PluginAuthConfiguration::NoAuthConfiguration)
    PluginAuthConfiguration.add_member_subclass(:idc_auth_configuration, Types::PluginAuthConfiguration::IdcAuthConfiguration)
    PluginAuthConfiguration.add_member_subclass(:unknown, Types::PluginAuthConfiguration::Unknown)
    PluginAuthConfiguration.struct_class = Types::PluginAuthConfiguration

    PluginConfiguration.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location_name: "pluginId"))
    PluginConfiguration.struct_class = Types::PluginConfiguration

    PluginTypeMetadataSummary.add_member(:type, Shapes::ShapeRef.new(shape: PluginType, location_name: "type"))
    PluginTypeMetadataSummary.add_member(:category, Shapes::ShapeRef.new(shape: PluginTypeCategory, location_name: "category"))
    PluginTypeMetadataSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    PluginTypeMetadataSummary.struct_class = Types::PluginTypeMetadataSummary

    Plugins.member = Shapes::ShapeRef.new(shape: Plugin)

    Principal.add_member(:user, Shapes::ShapeRef.new(shape: PrincipalUser, location_name: "user"))
    Principal.add_member(:group, Shapes::ShapeRef.new(shape: PrincipalGroup, location_name: "group"))
    Principal.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Principal.add_member_subclass(:user, Types::Principal::User)
    Principal.add_member_subclass(:group, Types::Principal::Group)
    Principal.add_member_subclass(:unknown, Types::Principal::Unknown)
    Principal.struct_class = Types::Principal

    PrincipalGroup.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "name"))
    PrincipalGroup.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "access"))
    PrincipalGroup.add_member(:membership_type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "membershipType"))
    PrincipalGroup.struct_class = Types::PrincipalGroup

    PrincipalUser.add_member(:id, Shapes::ShapeRef.new(shape: UserId, location_name: "id"))
    PrincipalUser.add_member(:access, Shapes::ShapeRef.new(shape: ReadAccessType, required: true, location_name: "access"))
    PrincipalUser.add_member(:membership_type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "membershipType"))
    PrincipalUser.struct_class = Types::PrincipalUser

    Principals.member = Shapes::ShapeRef.new(shape: Principal)

    PutFeedbackRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    PutFeedbackRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "userId"))
    PutFeedbackRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, required: true, location: "uri", location_name: "conversationId"))
    PutFeedbackRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: SystemMessageId, required: true, location: "uri", location_name: "messageId"))
    PutFeedbackRequest.add_member(:message_copied_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "messageCopiedAt"))
    PutFeedbackRequest.add_member(:message_usefulness, Shapes::ShapeRef.new(shape: MessageUsefulnessFeedback, location_name: "messageUsefulness"))
    PutFeedbackRequest.struct_class = Types::PutFeedbackRequest

    PutGroupRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    PutGroupRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    PutGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "groupName"))
    PutGroupRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    PutGroupRequest.add_member(:type, Shapes::ShapeRef.new(shape: MembershipType, required: true, location_name: "type"))
    PutGroupRequest.add_member(:group_members, Shapes::ShapeRef.new(shape: GroupMembers, required: true, location_name: "groupMembers"))
    PutGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    PutGroupRequest.struct_class = Types::PutGroupRequest

    PutGroupResponse.struct_class = Types::PutGroupResponse

    QAppsConfiguration.add_member(:q_apps_control_mode, Shapes::ShapeRef.new(shape: QAppsControlMode, required: true, location_name: "qAppsControlMode"))
    QAppsConfiguration.struct_class = Types::QAppsConfiguration

    QIamActions.member = Shapes::ShapeRef.new(shape: QIamAction)

    QuickSightConfiguration.add_member(:client_namespace, Shapes::ShapeRef.new(shape: ClientNamespace, required: true, location_name: "clientNamespace"))
    QuickSightConfiguration.struct_class = Types::QuickSightConfiguration

    RelevantContent.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    RelevantContent.add_member(:document_id, Shapes::ShapeRef.new(shape: DocumentId, location_name: "documentId"))
    RelevantContent.add_member(:document_title, Shapes::ShapeRef.new(shape: Title, location_name: "documentTitle"))
    RelevantContent.add_member(:document_uri, Shapes::ShapeRef.new(shape: Url, location_name: "documentUri"))
    RelevantContent.add_member(:document_attributes, Shapes::ShapeRef.new(shape: DocumentAttributes, location_name: "documentAttributes"))
    RelevantContent.add_member(:score_attributes, Shapes::ShapeRef.new(shape: ScoreAttributes, location_name: "scoreAttributes"))
    RelevantContent.struct_class = Types::RelevantContent

    RelevantContentList.member = Shapes::ShapeRef.new(shape: RelevantContent)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseConfiguration.add_member(:instruction_collection, Shapes::ShapeRef.new(shape: InstructionCollection, location_name: "instructionCollection"))
    ResponseConfiguration.struct_class = Types::ResponseConfiguration

    ResponseConfigurations.key = Shapes::ShapeRef.new(shape: ResponseConfigurationType)
    ResponseConfigurations.value = Shapes::ShapeRef.new(shape: ResponseConfiguration)

    Retriever.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, location_name: "applicationId"))
    Retriever.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, location_name: "retrieverId"))
    Retriever.add_member(:type, Shapes::ShapeRef.new(shape: RetrieverType, location_name: "type"))
    Retriever.add_member(:status, Shapes::ShapeRef.new(shape: RetrieverStatus, location_name: "status"))
    Retriever.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, location_name: "displayName"))
    Retriever.struct_class = Types::Retriever

    RetrieverConfiguration.add_member(:native_index_configuration, Shapes::ShapeRef.new(shape: NativeIndexConfiguration, location_name: "nativeIndexConfiguration"))
    RetrieverConfiguration.add_member(:kendra_index_configuration, Shapes::ShapeRef.new(shape: KendraIndexConfiguration, location_name: "kendraIndexConfiguration"))
    RetrieverConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RetrieverConfiguration.add_member_subclass(:native_index_configuration, Types::RetrieverConfiguration::NativeIndexConfiguration)
    RetrieverConfiguration.add_member_subclass(:kendra_index_configuration, Types::RetrieverConfiguration::KendraIndexConfiguration)
    RetrieverConfiguration.add_member_subclass(:unknown, Types::RetrieverConfiguration::Unknown)
    RetrieverConfiguration.struct_class = Types::RetrieverConfiguration

    RetrieverContentSource.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, required: true, location_name: "retrieverId"))
    RetrieverContentSource.struct_class = Types::RetrieverContentSource

    Retrievers.member = Shapes::ShapeRef.new(shape: Retriever)

    Rule.add_member(:included_users_and_groups, Shapes::ShapeRef.new(shape: UsersAndGroups, location_name: "includedUsersAndGroups"))
    Rule.add_member(:excluded_users_and_groups, Shapes::ShapeRef.new(shape: UsersAndGroups, location_name: "excludedUsersAndGroups"))
    Rule.add_member(:rule_type, Shapes::ShapeRef.new(shape: RuleType, required: true, location_name: "ruleType"))
    Rule.add_member(:rule_configuration, Shapes::ShapeRef.new(shape: RuleConfiguration, location_name: "ruleConfiguration"))
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
    SamlConfiguration.add_member(:user_id_attribute, Shapes::ShapeRef.new(shape: SamlAttribute, required: true, location_name: "userIdAttribute"))
    SamlConfiguration.add_member(:user_group_attribute, Shapes::ShapeRef.new(shape: SamlAttribute, location_name: "userGroupAttribute"))
    SamlConfiguration.struct_class = Types::SamlConfiguration

    SamlProviderConfiguration.add_member(:authentication_url, Shapes::ShapeRef.new(shape: SamlAuthenticationUrl, required: true, location_name: "authenticationUrl"))
    SamlProviderConfiguration.struct_class = Types::SamlProviderConfiguration

    ScoreAttributes.add_member(:score_confidence, Shapes::ShapeRef.new(shape: ScoreConfidence, location_name: "scoreConfidence"))
    ScoreAttributes.struct_class = Types::ScoreAttributes

    SearchRelevantContentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    SearchRelevantContentRequest.add_member(:query_text, Shapes::ShapeRef.new(shape: QueryText, required: true, location_name: "queryText"))
    SearchRelevantContentRequest.add_member(:content_source, Shapes::ShapeRef.new(shape: ContentSource, required: true, location_name: "contentSource"))
    SearchRelevantContentRequest.add_member(:attribute_filter, Shapes::ShapeRef.new(shape: AttributeFilter, location_name: "attributeFilter"))
    SearchRelevantContentRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    SearchRelevantContentRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchRelevantContentRequest.struct_class = Types::SearchRelevantContentRequest

    SearchRelevantContentResponse.add_member(:relevant_content, Shapes::ShapeRef.new(shape: RelevantContentList, location_name: "relevantContent"))
    SearchRelevantContentResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    SearchRelevantContentResponse.struct_class = Types::SearchRelevantContentResponse

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SnippetExcerpt.add_member(:text, Shapes::ShapeRef.new(shape: SnippetExcerptText, location_name: "text"))
    SnippetExcerpt.struct_class = Types::SnippetExcerpt

    SourceAttribution.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    SourceAttribution.add_member(:snippet, Shapes::ShapeRef.new(shape: String, location_name: "snippet"))
    SourceAttribution.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    SourceAttribution.add_member(:citation_number, Shapes::ShapeRef.new(shape: Integer, location_name: "citationNumber"))
    SourceAttribution.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    SourceAttribution.add_member(:text_message_segments, Shapes::ShapeRef.new(shape: TextSegmentList, location_name: "textMessageSegments"))
    SourceAttribution.struct_class = Types::SourceAttribution

    SourceAttributions.member = Shapes::ShapeRef.new(shape: SourceAttribution)

    SourceDetails.add_member(:image_source_details, Shapes::ShapeRef.new(shape: ImageSourceDetails, location_name: "imageSourceDetails"))
    SourceDetails.add_member(:audio_source_details, Shapes::ShapeRef.new(shape: AudioSourceDetails, location_name: "audioSourceDetails"))
    SourceDetails.add_member(:video_source_details, Shapes::ShapeRef.new(shape: VideoSourceDetails, location_name: "videoSourceDetails"))
    SourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceDetails.add_member_subclass(:image_source_details, Types::SourceDetails::ImageSourceDetails)
    SourceDetails.add_member_subclass(:audio_source_details, Types::SourceDetails::AudioSourceDetails)
    SourceDetails.add_member_subclass(:video_source_details, Types::SourceDetails::VideoSourceDetails)
    SourceDetails.add_member_subclass(:unknown, Types::SourceDetails::Unknown)
    SourceDetails.struct_class = Types::SourceDetails

    StartDataSourceSyncJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    StartDataSourceSyncJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StartDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    StartDataSourceSyncJobRequest.struct_class = Types::StartDataSourceSyncJobRequest

    StartDataSourceSyncJobResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: ExecutionId, location_name: "executionId"))
    StartDataSourceSyncJobResponse.struct_class = Types::StartDataSourceSyncJobResponse

    StopDataSourceSyncJobRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    StopDataSourceSyncJobRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    StopDataSourceSyncJobRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    StopDataSourceSyncJobRequest.struct_class = Types::StopDataSourceSyncJobRequest

    StopDataSourceSyncJobResponse.struct_class = Types::StopDataSourceSyncJobResponse

    StringAttributeBoostingConfiguration.add_member(:boosting_level, Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, required: true, location_name: "boostingLevel"))
    StringAttributeBoostingConfiguration.add_member(:attribute_value_boosting, Shapes::ShapeRef.new(shape: StringAttributeValueBoosting, location_name: "attributeValueBoosting"))
    StringAttributeBoostingConfiguration.struct_class = Types::StringAttributeBoostingConfiguration

    StringAttributeValueBoosting.key = Shapes::ShapeRef.new(shape: String)
    StringAttributeValueBoosting.value = Shapes::ShapeRef.new(shape: StringAttributeValueBoostingLevel)

    StringListAttributeBoostingConfiguration.add_member(:boosting_level, Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, required: true, location_name: "boostingLevel"))
    StringListAttributeBoostingConfiguration.struct_class = Types::StringListAttributeBoostingConfiguration

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Subscription.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    Subscription.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: "subscriptionArn"))
    Subscription.add_member(:principal, Shapes::ShapeRef.new(shape: SubscriptionPrincipal, location_name: "principal"))
    Subscription.add_member(:current_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "currentSubscription"))
    Subscription.add_member(:next_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "nextSubscription"))
    Subscription.struct_class = Types::Subscription

    SubscriptionDetails.add_member(:type, Shapes::ShapeRef.new(shape: SubscriptionType, location_name: "type"))
    SubscriptionDetails.struct_class = Types::SubscriptionDetails

    SubscriptionPrincipal.add_member(:user, Shapes::ShapeRef.new(shape: UserIdentifier, location_name: "user"))
    SubscriptionPrincipal.add_member(:group, Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: "group"))
    SubscriptionPrincipal.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SubscriptionPrincipal.add_member_subclass(:user, Types::SubscriptionPrincipal::User)
    SubscriptionPrincipal.add_member_subclass(:group, Types::SubscriptionPrincipal::Group)
    SubscriptionPrincipal.add_member_subclass(:unknown, Types::SubscriptionPrincipal::Unknown)
    SubscriptionPrincipal.struct_class = Types::SubscriptionPrincipal

    Subscriptions.member = Shapes::ShapeRef.new(shape: Subscription)

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

    TextInputEvent.add_member(:user_message, Shapes::ShapeRef.new(shape: UserMessage, required: true, location_name: "userMessage"))
    TextInputEvent.struct_class = Types::TextInputEvent

    TextOutputEvent.add_member(:system_message_type, Shapes::ShapeRef.new(shape: SystemMessageType, location_name: "systemMessageType"))
    TextOutputEvent.add_member(:conversation_id, Shapes::ShapeRef.new(shape: ConversationId, location_name: "conversationId"))
    TextOutputEvent.add_member(:user_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "userMessageId"))
    TextOutputEvent.add_member(:system_message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "systemMessageId"))
    TextOutputEvent.add_member(:system_message, Shapes::ShapeRef.new(shape: String, location_name: "systemMessage"))
    TextOutputEvent.struct_class = Types::TextOutputEvent

    TextSegment.add_member(:begin_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "beginOffset"))
    TextSegment.add_member(:end_offset, Shapes::ShapeRef.new(shape: Integer, location_name: "endOffset"))
    TextSegment.add_member(:snippet_excerpt, Shapes::ShapeRef.new(shape: SnippetExcerpt, location_name: "snippetExcerpt"))
    TextSegment.add_member(:media_id, Shapes::ShapeRef.new(shape: SourceAttributionMediaId, deprecated: true, location_name: "mediaId", metadata: {"deprecatedMessage" => "Deprecated in favor of using mediaId within the respective sourceDetails field.", "deprecatedSince" => "2025-02-28"}))
    TextSegment.add_member(:media_mime_type, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "mediaMimeType", metadata: {"deprecatedMessage" => "Deprecated in favor of using mediaMimeType within the respective sourceDetails field.", "deprecatedSince" => "2025-02-28"}))
    TextSegment.add_member(:source_details, Shapes::ShapeRef.new(shape: SourceDetails, location_name: "sourceDetails"))
    TextSegment.struct_class = Types::TextSegment

    TextSegmentList.member = Shapes::ShapeRef.new(shape: TextSegment)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TopicConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: TopicConfigurationName, required: true, location_name: "name"))
    TopicConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: TopicDescription, location_name: "description"))
    TopicConfiguration.add_member(:example_chat_messages, Shapes::ShapeRef.new(shape: ExampleChatMessages, location_name: "exampleChatMessages"))
    TopicConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, required: true, location_name: "rules"))
    TopicConfiguration.struct_class = Types::TopicConfiguration

    TopicConfigurations.member = Shapes::ShapeRef.new(shape: TopicConfiguration)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:identity_center_instance_arn, Shapes::ShapeRef.new(shape: InstanceArn, location_name: "identityCenterInstanceArn"))
    UpdateApplicationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateApplicationRequest.add_member(:attachments_configuration, Shapes::ShapeRef.new(shape: AttachmentsConfiguration, location_name: "attachmentsConfiguration"))
    UpdateApplicationRequest.add_member(:q_apps_configuration, Shapes::ShapeRef.new(shape: QAppsConfiguration, location_name: "qAppsConfiguration"))
    UpdateApplicationRequest.add_member(:personalization_configuration, Shapes::ShapeRef.new(shape: PersonalizationConfiguration, location_name: "personalizationConfiguration"))
    UpdateApplicationRequest.add_member(:auto_subscription_configuration, Shapes::ShapeRef.new(shape: AutoSubscriptionConfiguration, location_name: "autoSubscriptionConfiguration"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateChatControlsConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateChatControlsConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateChatControlsConfigurationRequest.add_member(:response_scope, Shapes::ShapeRef.new(shape: ResponseScope, location_name: "responseScope"))
    UpdateChatControlsConfigurationRequest.add_member(:orchestration_configuration, Shapes::ShapeRef.new(shape: OrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    UpdateChatControlsConfigurationRequest.add_member(:blocked_phrases_configuration_update, Shapes::ShapeRef.new(shape: BlockedPhrasesConfigurationUpdate, location_name: "blockedPhrasesConfigurationUpdate"))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_create_or_update, Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: "topicConfigurationsToCreateOrUpdate"))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_delete, Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: "topicConfigurationsToDelete"))
    UpdateChatControlsConfigurationRequest.add_member(:creator_mode_configuration, Shapes::ShapeRef.new(shape: CreatorModeConfiguration, location_name: "creatorModeConfiguration"))
    UpdateChatControlsConfigurationRequest.add_member(:hallucination_reduction_configuration, Shapes::ShapeRef.new(shape: HallucinationReductionConfiguration, location_name: "hallucinationReductionConfiguration"))
    UpdateChatControlsConfigurationRequest.struct_class = Types::UpdateChatControlsConfigurationRequest

    UpdateChatControlsConfigurationResponse.struct_class = Types::UpdateChatControlsConfigurationResponse

    UpdateChatResponseConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, required: true, location: "uri", location_name: "chatResponseConfigurationId"))
    UpdateChatResponseConfigurationRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    UpdateChatResponseConfigurationRequest.add_member(:response_configurations, Shapes::ShapeRef.new(shape: ResponseConfigurations, required: true, location_name: "responseConfigurations"))
    UpdateChatResponseConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateChatResponseConfigurationRequest.struct_class = Types::UpdateChatResponseConfigurationRequest

    UpdateChatResponseConfigurationResponse.struct_class = Types::UpdateChatResponseConfigurationResponse

    UpdateDataAccessorRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateDataAccessorRequest.add_member(:data_accessor_id, Shapes::ShapeRef.new(shape: DataAccessorId, required: true, location: "uri", location_name: "dataAccessorId"))
    UpdateDataAccessorRequest.add_member(:action_configurations, Shapes::ShapeRef.new(shape: ActionConfigurationList, required: true, location_name: "actionConfigurations"))
    UpdateDataAccessorRequest.add_member(:authentication_detail, Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: "authenticationDetail"))
    UpdateDataAccessorRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DataAccessorName, location_name: "displayName"))
    UpdateDataAccessorRequest.struct_class = Types::UpdateDataAccessorRequest

    UpdateDataAccessorResponse.struct_class = Types::UpdateDataAccessorResponse

    UpdateDataSourceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateDataSourceRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    UpdateDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, required: true, location: "uri", location_name: "dataSourceId"))
    UpdateDataSourceRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DataSourceName, location_name: "displayName"))
    UpdateDataSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: "configuration"))
    UpdateDataSourceRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: "vpcConfiguration"))
    UpdateDataSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateDataSourceRequest.add_member(:sync_schedule, Shapes::ShapeRef.new(shape: SyncSchedule, location_name: "syncSchedule"))
    UpdateDataSourceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateDataSourceRequest.add_member(:document_enrichment_configuration, Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: "documentEnrichmentConfiguration"))
    UpdateDataSourceRequest.add_member(:media_extraction_configuration, Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: "mediaExtractionConfiguration"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateIndexRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateIndexRequest.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, required: true, location: "uri", location_name: "indexId"))
    UpdateIndexRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "displayName"))
    UpdateIndexRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateIndexRequest.add_member(:capacity_configuration, Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: "capacityConfiguration"))
    UpdateIndexRequest.add_member(:document_attribute_configurations, Shapes::ShapeRef.new(shape: DocumentAttributeConfigurations, location_name: "documentAttributeConfigurations"))
    UpdateIndexRequest.struct_class = Types::UpdateIndexRequest

    UpdateIndexResponse.struct_class = Types::UpdateIndexResponse

    UpdatePluginRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdatePluginRequest.add_member(:plugin_id, Shapes::ShapeRef.new(shape: PluginId, required: true, location: "uri", location_name: "pluginId"))
    UpdatePluginRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: PluginName, location_name: "displayName"))
    UpdatePluginRequest.add_member(:state, Shapes::ShapeRef.new(shape: PluginState, location_name: "state"))
    UpdatePluginRequest.add_member(:server_url, Shapes::ShapeRef.new(shape: Url, location_name: "serverUrl"))
    UpdatePluginRequest.add_member(:custom_plugin_configuration, Shapes::ShapeRef.new(shape: CustomPluginConfiguration, location_name: "customPluginConfiguration"))
    UpdatePluginRequest.add_member(:auth_configuration, Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: "authConfiguration"))
    UpdatePluginRequest.struct_class = Types::UpdatePluginRequest

    UpdatePluginResponse.struct_class = Types::UpdatePluginResponse

    UpdateRetrieverRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateRetrieverRequest.add_member(:retriever_id, Shapes::ShapeRef.new(shape: RetrieverId, required: true, location: "uri", location_name: "retrieverId"))
    UpdateRetrieverRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: "configuration"))
    UpdateRetrieverRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RetrieverName, location_name: "displayName"))
    UpdateRetrieverRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateRetrieverRequest.struct_class = Types::UpdateRetrieverRequest

    UpdateRetrieverResponse.struct_class = Types::UpdateRetrieverResponse

    UpdateSubscriptionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateSubscriptionRequest.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "subscriptionId"))
    UpdateSubscriptionRequest.add_member(:type, Shapes::ShapeRef.new(shape: SubscriptionType, required: true, location_name: "type"))
    UpdateSubscriptionRequest.struct_class = Types::UpdateSubscriptionRequest

    UpdateSubscriptionResponse.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: "subscriptionArn"))
    UpdateSubscriptionResponse.add_member(:current_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "currentSubscription"))
    UpdateSubscriptionResponse.add_member(:next_subscription, Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: "nextSubscription"))
    UpdateSubscriptionResponse.struct_class = Types::UpdateSubscriptionResponse

    UpdateUserRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.add_member(:user_aliases_to_update, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesToUpdate"))
    UpdateUserRequest.add_member(:user_aliases_to_delete, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesToDelete"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user_aliases_added, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesAdded"))
    UpdateUserResponse.add_member(:user_aliases_updated, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesUpdated"))
    UpdateUserResponse.add_member(:user_aliases_deleted, Shapes::ShapeRef.new(shape: UserAliases, location_name: "userAliasesDeleted"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateWebExperienceRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location: "uri", location_name: "applicationId"))
    UpdateWebExperienceRequest.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, required: true, location: "uri", location_name: "webExperienceId"))
    UpdateWebExperienceRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateWebExperienceRequest.add_member(:authentication_configuration, Shapes::ShapeRef.new(shape: WebExperienceAuthConfiguration, deprecated: true, location_name: "authenticationConfiguration", metadata: {"deprecatedMessage" => "Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management."}))
    UpdateWebExperienceRequest.add_member(:title, Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: "title"))
    UpdateWebExperienceRequest.add_member(:subtitle, Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: "subtitle"))
    UpdateWebExperienceRequest.add_member(:welcome_message, Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: "welcomeMessage"))
    UpdateWebExperienceRequest.add_member(:sample_prompts_control_mode, Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: "samplePromptsControlMode"))
    UpdateWebExperienceRequest.add_member(:identity_provider_configuration, Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: "identityProviderConfiguration"))
    UpdateWebExperienceRequest.add_member(:origins, Shapes::ShapeRef.new(shape: WebExperienceOrigins, location_name: "origins"))
    UpdateWebExperienceRequest.add_member(:browser_extension_configuration, Shapes::ShapeRef.new(shape: BrowserExtensionConfiguration, location_name: "browserExtensionConfiguration"))
    UpdateWebExperienceRequest.add_member(:customization_configuration, Shapes::ShapeRef.new(shape: CustomizationConfiguration, location_name: "customizationConfiguration"))
    UpdateWebExperienceRequest.struct_class = Types::UpdateWebExperienceRequest

    UpdateWebExperienceResponse.struct_class = Types::UpdateWebExperienceResponse

    UserAlias.add_member(:index_id, Shapes::ShapeRef.new(shape: IndexId, location_name: "indexId"))
    UserAlias.add_member(:data_source_id, Shapes::ShapeRef.new(shape: DataSourceId, location_name: "dataSourceId"))
    UserAlias.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "userId"))
    UserAlias.struct_class = Types::UserAlias

    UserAliases.member = Shapes::ShapeRef.new(shape: UserAlias)

    UserGroups.member = Shapes::ShapeRef.new(shape: String)

    UserIds.member = Shapes::ShapeRef.new(shape: String)

    UsersAndGroups.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIds, location_name: "userIds"))
    UsersAndGroups.add_member(:user_groups, Shapes::ShapeRef.new(shape: UserGroups, location_name: "userGroups"))
    UsersAndGroups.struct_class = Types::UsersAndGroups

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFields.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VideoExtractionConfiguration.add_member(:video_extraction_status, Shapes::ShapeRef.new(shape: VideoExtractionStatus, required: true, location_name: "videoExtractionStatus"))
    VideoExtractionConfiguration.struct_class = Types::VideoExtractionConfiguration

    VideoSourceDetails.add_member(:media_id, Shapes::ShapeRef.new(shape: MediaId, location_name: "mediaId"))
    VideoSourceDetails.add_member(:media_mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mediaMimeType"))
    VideoSourceDetails.add_member(:start_time_milliseconds, Shapes::ShapeRef.new(shape: Long, location_name: "startTimeMilliseconds"))
    VideoSourceDetails.add_member(:end_time_milliseconds, Shapes::ShapeRef.new(shape: Long, location_name: "endTimeMilliseconds"))
    VideoSourceDetails.add_member(:video_extraction_type, Shapes::ShapeRef.new(shape: VideoExtractionType, location_name: "videoExtractionType"))
    VideoSourceDetails.struct_class = Types::VideoSourceDetails

    WebExperience.add_member(:web_experience_id, Shapes::ShapeRef.new(shape: WebExperienceId, location_name: "webExperienceId"))
    WebExperience.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    WebExperience.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    WebExperience.add_member(:default_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "defaultEndpoint"))
    WebExperience.add_member(:status, Shapes::ShapeRef.new(shape: WebExperienceStatus, location_name: "status"))
    WebExperience.struct_class = Types::WebExperience

    WebExperienceAuthConfiguration.add_member(:saml_configuration, Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: "samlConfiguration"))
    WebExperienceAuthConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    WebExperienceAuthConfiguration.add_member_subclass(:saml_configuration, Types::WebExperienceAuthConfiguration::SamlConfiguration)
    WebExperienceAuthConfiguration.add_member_subclass(:unknown, Types::WebExperienceAuthConfiguration::Unknown)
    WebExperienceAuthConfiguration.struct_class = Types::WebExperienceAuthConfiguration

    WebExperienceOrigins.member = Shapes::ShapeRef.new(shape: Origin)

    WebExperiences.member = Shapes::ShapeRef.new(shape: WebExperience)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-11-27"

      api.metadata = {
        "apiVersion" => "2023-11-27",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "qbusiness",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2" => "eventstream"},
        "protocols" => ["rest-json"],
        "serviceFullName" => "QBusiness",
        "serviceId" => "QBusiness",
        "signatureVersion" => "v4",
        "signingName" => "qbusiness",
        "uid" => "qbusiness-2023-11-27",
      }

      api.add_operation(:associate_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePermission"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/policy"
        o.input = Shapes::ShapeRef.new(shape: AssociatePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:batch_delete_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteDocument"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/documents/delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:cancel_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/subscriptions/{subscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: CancelSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:chat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Chat"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/conversations"
        o.input = Shapes::ShapeRef.new(shape: ChatInput)
        o.output = Shapes::ShapeRef.new(shape: ChatOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ExternalResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.async = true
      end)

      api.add_operation(:chat_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChatSync"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/conversations?sync"
        o.input = Shapes::ShapeRef.new(shape: ChatSyncInput)
        o.output = Shapes::ShapeRef.new(shape: ChatSyncOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ExternalResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:check_document_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckDocumentAccess"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access"
        o.input = Shapes::ShapeRef.new(shape: CheckDocumentAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckDocumentAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_anonymous_web_experience_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnonymousWebExperienceUrl"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/experiences/{webExperienceId}/anonymous-url"
        o.input = Shapes::ShapeRef.new(shape: CreateAnonymousWebExperienceUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnonymousWebExperienceUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_chat_response_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChatResponseConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/chatresponseconfigurations"
        o.input = Shapes::ShapeRef.new(shape: CreateChatResponseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChatResponseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_data_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataAccessor"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/dataaccessors"
        o.input = Shapes::ShapeRef.new(shape: CreateDataAccessorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataAccessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/users"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttachment"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_chat_response_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChatResponseConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChatResponseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChatResponseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_data_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataAccessor"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/dataaccessors/{dataAccessorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataAccessorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataAccessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disassociate_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePermission"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}/policy/{statementId}"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_chat_response_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetChatResponseConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"
        o.input = Shapes::ShapeRef.new(shape: GetChatResponseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetChatResponseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_data_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataAccessor"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/dataaccessors/{dataAccessorId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataAccessorRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataAccessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMedia"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}"
        o.input = Shapes::ShapeRef.new(shape: GetMediaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMediaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MediaTooLargeException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/policy"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_attachments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttachments"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/attachments"
        o.input = Shapes::ShapeRef.new(shape: ListAttachmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttachmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_chat_response_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChatResponseConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/chatresponseconfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListChatResponseConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChatResponseConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_data_accessors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataAccessors"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/dataaccessors"
        o.input = Shapes::ShapeRef.new(shape: ListDataAccessorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataAccessorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_plugin_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPluginActions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/plugins/{pluginId}/actions"
        o.input = Shapes::ShapeRef.new(shape: ListPluginActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPluginActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_plugin_type_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPluginTypeActions"
        o.http_method = "GET"
        o.http_request_uri = "/pluginTypes/{pluginType}/actions"
        o.input = Shapes::ShapeRef.new(shape: ListPluginTypeActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPluginTypeActionsResponse)
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

      api.add_operation(:list_plugin_type_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPluginTypeMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/pluginTypeMetadata"
        o.input = Shapes::ShapeRef.new(shape: ListPluginTypeMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPluginTypeMetadataResponse)
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

      api.add_operation(:list_plugins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlugins"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/plugins"
        o.input = Shapes::ShapeRef.new(shape: ListPluginsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPluginsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v1/tags/{resourceARN}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:search_relevant_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchRelevantContent"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/relevant-content"
        o.input = Shapes::ShapeRef.new(shape: SearchRelevantContentRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchRelevantContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:start_data_source_sync_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDataSourceSyncJob"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync"
        o.input = Shapes::ShapeRef.new(shape: StartDataSourceSyncJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDataSourceSyncJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_chat_response_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChatResponseConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChatResponseConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChatResponseConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_data_accessor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataAccessor"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/dataaccessors/{dataAccessorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataAccessorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataAccessorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscription"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/subscriptions/{subscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/applications/{applicationId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
