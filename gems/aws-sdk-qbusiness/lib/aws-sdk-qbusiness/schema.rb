# frozen_string_literal: true

# This is generated code!

module Aws::QBusiness
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APISchema = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#APISchema', name: 'APISchema')
    APISchemaType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#APISchemaType', name: 'APISchemaType')
    AccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AccessConfiguration', name: 'AccessConfiguration')
    AccessControl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AccessControl', name: 'AccessControl')
    AccessControls = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AccessControls', name: 'AccessControls')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionConfiguration', name: 'ActionConfiguration')
    ActionConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ActionConfigurationList', name: 'ActionConfigurationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ActionExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionExecution', name: 'ActionExecution')
    ActionExecutionEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionExecutionEvent', name: 'ActionExecutionEvent')
    ActionExecutionPayload = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qbusiness#ActionExecutionPayload', name: 'ActionExecutionPayload')
    ActionExecutionPayloadField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionExecutionPayloadField', name: 'ActionExecutionPayloadField')
    ActionFilterConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionFilterConfiguration', name: 'ActionFilterConfiguration')
    ActionPayloadFieldKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ActionPayloadFieldKey', name: 'ActionPayloadFieldKey', traits: {"smithy.api#length" => {"min" => 1}})
    ActionPayloadFieldNameSeparator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ActionPayloadFieldNameSeparator', name: 'ActionPayloadFieldNameSeparator', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ActionPayloadFieldType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ActionPayloadFieldType', name: 'ActionPayloadFieldType')
    ActionPayloadFieldValue = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.qbusiness#ActionPayloadFieldValue', name: 'ActionPayloadFieldValue')
    ActionReview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionReview', name: 'ActionReview')
    ActionReviewEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionReviewEvent', name: 'ActionReviewEvent')
    ActionReviewPayload = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qbusiness#ActionReviewPayload', name: 'ActionReviewPayload')
    ActionReviewPayloadField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionReviewPayloadField', name: 'ActionReviewPayloadField')
    ActionReviewPayloadFieldAllowedValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionReviewPayloadFieldAllowedValue', name: 'ActionReviewPayloadFieldAllowedValue')
    ActionReviewPayloadFieldAllowedValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ActionReviewPayloadFieldAllowedValues', name: 'ActionReviewPayloadFieldAllowedValues')
    ActionReviewPayloadFieldArrayItemJsonSchema = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.qbusiness#ActionReviewPayloadFieldArrayItemJsonSchema', name: 'ActionReviewPayloadFieldArrayItemJsonSchema')
    ActionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ActionSummary', name: 'ActionSummary')
    Actions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Actions', name: 'Actions')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Application', name: 'Application')
    ApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ApplicationName', name: 'ApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ApplicationStatus', name: 'ApplicationStatus')
    Applications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Applications', name: 'Applications')
    AppliedAttachmentsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AppliedAttachmentsConfiguration', name: 'AppliedAttachmentsConfiguration')
    AppliedCreatorModeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AppliedCreatorModeConfiguration', name: 'AppliedCreatorModeConfiguration')
    AppliedOrchestrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AppliedOrchestrationConfiguration', name: 'AppliedOrchestrationConfiguration')
    AssociatePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AssociatePermissionRequest', name: 'AssociatePermissionRequest')
    AssociatePermissionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AssociatePermissionResponse', name: 'AssociatePermissionResponse')
    AssociatedGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AssociatedGroup', name: 'AssociatedGroup')
    AssociatedGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AssociatedGroups', name: 'AssociatedGroups')
    AssociatedUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AssociatedUser', name: 'AssociatedUser')
    AssociatedUsers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AssociatedUsers', name: 'AssociatedUsers')
    Attachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Attachment', name: 'Attachment')
    AttachmentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#AttachmentId', name: 'AttachmentId', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    AttachmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AttachmentInput', name: 'AttachmentInput')
    AttachmentInputEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AttachmentInputEvent', name: 'AttachmentInputEvent')
    AttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AttachmentList', name: 'AttachmentList')
    AttachmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#AttachmentName', name: 'AttachmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    AttachmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AttachmentOutput', name: 'AttachmentOutput')
    AttachmentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AttachmentStatus', name: 'AttachmentStatus')
    AttachmentsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AttachmentsConfiguration', name: 'AttachmentsConfiguration')
    AttachmentsControlMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AttachmentsControlMode', name: 'AttachmentsControlMode')
    AttachmentsInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AttachmentsInput', name: 'AttachmentsInput', traits: {"smithy.api#length" => {"min" => 1}})
    AttachmentsOutput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AttachmentsOutput', name: 'AttachmentsOutput')
    AttributeFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AttributeFilter', name: 'AttributeFilter')
    AttributeFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#AttributeFilters', name: 'AttributeFilters')
    AttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AttributeType', name: 'AttributeType')
    AttributeValueOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AttributeValueOperator', name: 'AttributeValueOperator')
    AudioExtractionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AudioExtractionConfiguration', name: 'AudioExtractionConfiguration')
    AudioExtractionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AudioExtractionStatus', name: 'AudioExtractionStatus')
    AudioExtractionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AudioExtractionType', name: 'AudioExtractionType')
    AudioSourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AudioSourceDetails', name: 'AudioSourceDetails')
    AuthChallengeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AuthChallengeRequest', name: 'AuthChallengeRequest')
    AuthChallengeRequestEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AuthChallengeRequestEvent', name: 'AuthChallengeRequestEvent')
    AuthChallengeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AuthChallengeResponse', name: 'AuthChallengeResponse')
    AuthChallengeResponseEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AuthChallengeResponseEvent', name: 'AuthChallengeResponseEvent')
    AuthResponseKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#AuthResponseKey', name: 'AuthResponseKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AuthResponseValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#AuthResponseValue', name: 'AuthResponseValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AuthorizationResponseMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qbusiness#AuthorizationResponseMap', name: 'AuthorizationResponseMap')
    AutoSubscriptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#AutoSubscriptionConfiguration', name: 'AutoSubscriptionConfiguration')
    AutoSubscriptionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#AutoSubscriptionStatus', name: 'AutoSubscriptionStatus')
    BasicAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BasicAuthConfiguration', name: 'BasicAuthConfiguration')
    BatchDeleteDocumentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BatchDeleteDocumentRequest', name: 'BatchDeleteDocumentRequest')
    BatchDeleteDocumentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BatchDeleteDocumentResponse', name: 'BatchDeleteDocumentResponse')
    BatchPutDocumentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BatchPutDocumentRequest', name: 'BatchPutDocumentRequest')
    BatchPutDocumentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BatchPutDocumentResponse', name: 'BatchPutDocumentResponse')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.qbusiness#Blob', name: 'Blob')
    BlockedPhrase = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#BlockedPhrase', name: 'BlockedPhrase', traits: {"smithy.api#length" => {"max" => 36}, "smithy.api#pattern" => "^\\P{C}*$"})
    BlockedPhrases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#BlockedPhrases', name: 'BlockedPhrases')
    BlockedPhrasesConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BlockedPhrasesConfiguration', name: 'BlockedPhrasesConfiguration')
    BlockedPhrasesConfigurationUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BlockedPhrasesConfigurationUpdate', name: 'BlockedPhrasesConfigurationUpdate')
    BoostingDurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#BoostingDurationInSeconds', name: 'BoostingDurationInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 999999999}})
    BrowserExtension = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#BrowserExtension', name: 'BrowserExtension', traits: {"smithy.api#enum" => [{"value" => "FIREFOX", "name" => "FIREFOX"}, {"value" => "CHROME", "name" => "CHROME"}]})
    BrowserExtensionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#BrowserExtensionConfiguration', name: 'BrowserExtensionConfiguration')
    BrowserExtensionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#BrowserExtensionList', name: 'BrowserExtensionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}, "smithy.api#uniqueItems" => {}})
    CancelSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CancelSubscriptionRequest', name: 'CancelSubscriptionRequest')
    CancelSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CancelSubscriptionResponse', name: 'CancelSubscriptionResponse')
    ChatInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ChatInput', name: 'ChatInput')
    ChatInputStream = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#ChatInputStream', name: 'ChatInputStream', traits: {"smithy.api#streaming" => {}})
    ChatMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ChatMode', name: 'ChatMode')
    ChatModeConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#ChatModeConfiguration', name: 'ChatModeConfiguration')
    ChatOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ChatOutput', name: 'ChatOutput')
    ChatOutputStream = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#ChatOutputStream', name: 'ChatOutputStream', traits: {"smithy.api#streaming" => {}})
    ChatResponseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ChatResponseConfiguration', name: 'ChatResponseConfiguration')
    ChatResponseConfigurationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ChatResponseConfigurationArn', name: 'ChatResponseConfigurationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ChatResponseConfigurationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ChatResponseConfigurationDetail', name: 'ChatResponseConfigurationDetail')
    ChatResponseConfigurationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ChatResponseConfigurationId', name: 'ChatResponseConfigurationId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ChatResponseConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ChatResponseConfigurationStatus', name: 'ChatResponseConfigurationStatus')
    ChatResponseConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ChatResponseConfigurations', name: 'ChatResponseConfigurations')
    ChatSyncInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ChatSyncInput', name: 'ChatSyncInput')
    ChatSyncOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ChatSyncOutput', name: 'ChatSyncOutput')
    CheckDocumentAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CheckDocumentAccessRequest', name: 'CheckDocumentAccessRequest')
    CheckDocumentAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CheckDocumentAccessResponse', name: 'CheckDocumentAccessResponse')
    ClientIdForOIDC = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ClientIdForOIDC', name: 'ClientIdForOIDC', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.:/()*?=-]*$"})
    ClientIdsForOIDC = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ClientIdsForOIDC', name: 'ClientIdsForOIDC')
    ClientNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ClientNamespace', name: 'ClientNamespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]*$"})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ConfigurationEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ConfigurationEvent', name: 'ConfigurationEvent')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentBlockerRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ContentBlockerRule', name: 'ContentBlockerRule')
    ContentRetrievalRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ContentRetrievalRule', name: 'ContentRetrievalRule')
    ContentSource = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#ContentSource', name: 'ContentSource')
    ContentType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ContentType', name: 'ContentType')
    Conversation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Conversation', name: 'Conversation')
    ConversationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ConversationId', name: 'ConversationId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ConversationSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ConversationSource', name: 'ConversationSource')
    ConversationTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ConversationTitle', name: 'ConversationTitle')
    Conversations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Conversations', name: 'Conversations')
    CopyFromSource = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#CopyFromSource', name: 'CopyFromSource')
    CreateAnonymousWebExperienceUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateAnonymousWebExperienceUrlRequest', name: 'CreateAnonymousWebExperienceUrlRequest')
    CreateAnonymousWebExperienceUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateAnonymousWebExperienceUrlResponse', name: 'CreateAnonymousWebExperienceUrlResponse')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateApplicationResponse', name: 'CreateApplicationResponse')
    CreateChatResponseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateChatResponseConfigurationRequest', name: 'CreateChatResponseConfigurationRequest')
    CreateChatResponseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateChatResponseConfigurationResponse', name: 'CreateChatResponseConfigurationResponse')
    CreateDataAccessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateDataAccessorRequest', name: 'CreateDataAccessorRequest')
    CreateDataAccessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateDataAccessorResponse', name: 'CreateDataAccessorResponse')
    CreateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateDataSourceRequest', name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateDataSourceResponse', name: 'CreateDataSourceResponse')
    CreateIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateIndexRequest', name: 'CreateIndexRequest')
    CreateIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateIndexResponse', name: 'CreateIndexResponse')
    CreatePluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreatePluginRequest', name: 'CreatePluginRequest')
    CreatePluginResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreatePluginResponse', name: 'CreatePluginResponse')
    CreateRetrieverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateRetrieverRequest', name: 'CreateRetrieverRequest')
    CreateRetrieverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateRetrieverResponse', name: 'CreateRetrieverResponse')
    CreateSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateSubscriptionRequest', name: 'CreateSubscriptionRequest')
    CreateSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateSubscriptionResponse', name: 'CreateSubscriptionResponse')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateUserResponse', name: 'CreateUserResponse')
    CreateWebExperienceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateWebExperienceRequest', name: 'CreateWebExperienceRequest')
    CreateWebExperienceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreateWebExperienceResponse', name: 'CreateWebExperienceResponse')
    CreatorModeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CreatorModeConfiguration', name: 'CreatorModeConfiguration')
    CreatorModeControl = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#CreatorModeControl', name: 'CreatorModeControl')
    CustomCSSUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#CustomCSSUrl', name: 'CustomCSSUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.css)?$"})
    CustomPluginConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CustomPluginConfiguration', name: 'CustomPluginConfiguration')
    CustomizationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#CustomizationConfiguration', name: 'CustomizationConfiguration')
    DataAccessor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataAccessor', name: 'DataAccessor')
    DataAccessorArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataAccessorArn', name: 'DataAccessorArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    DataAccessorAuthenticationConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#DataAccessorAuthenticationConfiguration', name: 'DataAccessorAuthenticationConfiguration')
    DataAccessorAuthenticationDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataAccessorAuthenticationDetail', name: 'DataAccessorAuthenticationDetail')
    DataAccessorAuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DataAccessorAuthenticationType', name: 'DataAccessorAuthenticationType')
    DataAccessorExternalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataAccessorExternalId', name: 'DataAccessorExternalId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataAccessorExternalIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DataAccessorExternalIds', name: 'DataAccessorExternalIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DataAccessorId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataAccessorId', name: 'DataAccessorId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    DataAccessorIdcTrustedTokenIssuerConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataAccessorIdcTrustedTokenIssuerConfiguration', name: 'DataAccessorIdcTrustedTokenIssuerConfiguration')
    DataAccessorName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataAccessorName', name: 'DataAccessorName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    DataAccessors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DataAccessors', name: 'DataAccessors')
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataSource', name: 'DataSource')
    DataSourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataSourceArn', name: 'DataSourceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    DataSourceConfiguration = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.qbusiness#DataSourceConfiguration', name: 'DataSourceConfiguration')
    DataSourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataSourceId', name: 'DataSourceId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    DataSourceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DataSourceIds', name: 'DataSourceIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    DataSourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataSourceName', name: 'DataSourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    DataSourceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DataSourceStatus', name: 'DataSourceStatus')
    DataSourceSyncJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataSourceSyncJob', name: 'DataSourceSyncJob')
    DataSourceSyncJobMetrics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataSourceSyncJobMetrics', name: 'DataSourceSyncJobMetrics')
    DataSourceSyncJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DataSourceSyncJobStatus', name: 'DataSourceSyncJobStatus')
    DataSourceSyncJobs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DataSourceSyncJobs', name: 'DataSourceSyncJobs')
    DataSourceUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DataSourceUserId', name: 'DataSourceUserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    DataSourceVpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DataSourceVpcConfiguration', name: 'DataSourceVpcConfiguration')
    DataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DataSources', name: 'DataSources')
    DateAttributeBoostingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DateAttributeBoostingConfiguration', name: 'DateAttributeBoostingConfiguration')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteApplicationResponse', name: 'DeleteApplicationResponse')
    DeleteAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteAttachmentRequest', name: 'DeleteAttachmentRequest')
    DeleteAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteAttachmentResponse', name: 'DeleteAttachmentResponse')
    DeleteChatControlsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteChatControlsConfigurationRequest', name: 'DeleteChatControlsConfigurationRequest')
    DeleteChatControlsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteChatControlsConfigurationResponse', name: 'DeleteChatControlsConfigurationResponse')
    DeleteChatResponseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteChatResponseConfigurationRequest', name: 'DeleteChatResponseConfigurationRequest')
    DeleteChatResponseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteChatResponseConfigurationResponse', name: 'DeleteChatResponseConfigurationResponse')
    DeleteConversationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteConversationRequest', name: 'DeleteConversationRequest')
    DeleteConversationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteConversationResponse', name: 'DeleteConversationResponse')
    DeleteDataAccessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteDataAccessorRequest', name: 'DeleteDataAccessorRequest')
    DeleteDataAccessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteDataAccessorResponse', name: 'DeleteDataAccessorResponse')
    DeleteDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteDataSourceRequest', name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteDataSourceResponse', name: 'DeleteDataSourceResponse')
    DeleteDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteDocument', name: 'DeleteDocument')
    DeleteDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DeleteDocuments', name: 'DeleteDocuments')
    DeleteGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteGroupResponse', name: 'DeleteGroupResponse')
    DeleteIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteIndexRequest', name: 'DeleteIndexRequest')
    DeleteIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteIndexResponse', name: 'DeleteIndexResponse')
    DeletePluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeletePluginRequest', name: 'DeletePluginRequest')
    DeletePluginResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeletePluginResponse', name: 'DeletePluginResponse')
    DeleteRetrieverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteRetrieverRequest', name: 'DeleteRetrieverRequest')
    DeleteRetrieverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteRetrieverResponse', name: 'DeleteRetrieverResponse')
    DeleteUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteUserResponse', name: 'DeleteUserResponse')
    DeleteWebExperienceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteWebExperienceRequest', name: 'DeleteWebExperienceRequest')
    DeleteWebExperienceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DeleteWebExperienceResponse', name: 'DeleteWebExperienceResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    DisassociatePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DisassociatePermissionRequest', name: 'DisassociatePermissionRequest')
    DisassociatePermissionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DisassociatePermissionResponse', name: 'DisassociatePermissionResponse')
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Document = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Document', name: 'Document')
    DocumentAcl = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAcl', name: 'DocumentAcl')
    DocumentAclCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAclCondition', name: 'DocumentAclCondition')
    DocumentAclConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentAclConditions', name: 'DocumentAclConditions')
    DocumentAclGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAclGroup', name: 'DocumentAclGroup')
    DocumentAclGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentAclGroups', name: 'DocumentAclGroups')
    DocumentAclMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAclMembership', name: 'DocumentAclMembership')
    DocumentAclUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAclUser', name: 'DocumentAclUser')
    DocumentAclUsers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentAclUsers', name: 'DocumentAclUsers')
    DocumentAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAttribute', name: 'DocumentAttribute')
    DocumentAttributeBoostingConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeBoostingConfiguration', name: 'DocumentAttributeBoostingConfiguration')
    DocumentAttributeBoostingLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeBoostingLevel', name: 'DocumentAttributeBoostingLevel')
    DocumentAttributeBoostingOverrideMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeBoostingOverrideMap', name: 'DocumentAttributeBoostingOverrideMap', traits: {"smithy.api#length" => {"min" => 1}})
    DocumentAttributeCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeCondition', name: 'DocumentAttributeCondition')
    DocumentAttributeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeConfiguration', name: 'DocumentAttributeConfiguration')
    DocumentAttributeConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeConfigurations', name: 'DocumentAttributeConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DocumentAttributeKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeKey', name: 'DocumentAttributeKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z0-9_-]*$"})
    DocumentAttributeStringListValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeStringListValue', name: 'DocumentAttributeStringListValue')
    DocumentAttributeStringValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeStringValue', name: 'DocumentAttributeStringValue', traits: {"smithy.api#length" => {"max" => 2048}})
    DocumentAttributeTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeTarget', name: 'DocumentAttributeTarget')
    DocumentAttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributeValue', name: 'DocumentAttributeValue')
    DocumentAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentAttributes', name: 'DocumentAttributes', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    DocumentContent = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#DocumentContent', name: 'DocumentContent')
    DocumentContentOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DocumentContentOperator', name: 'DocumentContentOperator')
    DocumentDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#DocumentDetailList', name: 'DocumentDetailList')
    DocumentDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentDetails', name: 'DocumentDetails')
    DocumentEnrichmentConditionOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DocumentEnrichmentConditionOperator', name: 'DocumentEnrichmentConditionOperator')
    DocumentEnrichmentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#DocumentEnrichmentConfiguration', name: 'DocumentEnrichmentConfiguration')
    DocumentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DocumentId', name: 'DocumentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1825}, "smithy.api#pattern" => "^\\P{C}*$"})
    DocumentMetadataConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#DocumentMetadataConfigurationName', name: 'DocumentMetadataConfigurationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9_][a-zA-Z0-9_-]*$"})
    DocumentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#DocumentStatus', name: 'DocumentStatus')
    Documents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Documents', name: 'Documents', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EligibleDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#EligibleDataSource', name: 'EligibleDataSource')
    EligibleDataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#EligibleDataSources', name: 'EligibleDataSources', traits: {"smithy.api#length" => {"max" => 5}})
    EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#EncryptionConfiguration', name: 'EncryptionConfiguration')
    EndOfInputEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#EndOfInputEvent', name: 'EndOfInputEvent')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ErrorCode', name: 'ErrorCode')
    ErrorDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ErrorDetail', name: 'ErrorDetail')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ExampleChatMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ExampleChatMessage', name: 'ExampleChatMessage', traits: {"smithy.api#length" => {"max" => 350}, "smithy.api#pattern" => "^\\P{C}*$"})
    ExampleChatMessages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ExampleChatMessages', name: 'ExampleChatMessages', traits: {"smithy.api#length" => {"max" => 5}})
    ExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ExecutionId', name: 'ExecutionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    ExternalResourceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ExternalResourceException', name: 'ExternalResourceException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    FailedAttachmentEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#FailedAttachmentEvent', name: 'FailedAttachmentEvent')
    FailedDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#FailedDocument', name: 'FailedDocument')
    FailedDocuments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#FailedDocuments', name: 'FailedDocuments')
    FaviconUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#FaviconUrl', name: 'FaviconUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.(svg|ico))?$"})
    FontUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#FontUrl', name: 'FontUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.(ttf|woff|woff2|otf))?$"})
    GetApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetApplicationRequest', name: 'GetApplicationRequest')
    GetApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetApplicationResponse', name: 'GetApplicationResponse')
    GetChatControlsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetChatControlsConfigurationRequest', name: 'GetChatControlsConfigurationRequest')
    GetChatControlsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetChatControlsConfigurationResponse', name: 'GetChatControlsConfigurationResponse')
    GetChatResponseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetChatResponseConfigurationRequest', name: 'GetChatResponseConfigurationRequest')
    GetChatResponseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetChatResponseConfigurationResponse', name: 'GetChatResponseConfigurationResponse')
    GetDataAccessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetDataAccessorRequest', name: 'GetDataAccessorRequest')
    GetDataAccessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetDataAccessorResponse', name: 'GetDataAccessorResponse')
    GetDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetDataSourceRequest', name: 'GetDataSourceRequest')
    GetDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetDataSourceResponse', name: 'GetDataSourceResponse')
    GetDocumentContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetDocumentContentRequest', name: 'GetDocumentContentRequest')
    GetDocumentContentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetDocumentContentResponse', name: 'GetDocumentContentResponse')
    GetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetGroupResponse', name: 'GetGroupResponse')
    GetIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetIndexRequest', name: 'GetIndexRequest')
    GetIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetIndexResponse', name: 'GetIndexResponse')
    GetMediaRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetMediaRequest', name: 'GetMediaRequest')
    GetMediaResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetMediaResponse', name: 'GetMediaResponse')
    GetPluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetPluginRequest', name: 'GetPluginRequest')
    GetPluginResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetPluginResponse', name: 'GetPluginResponse')
    GetPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetPolicyRequest', name: 'GetPolicyRequest')
    GetPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetPolicyResponse', name: 'GetPolicyResponse')
    GetRetrieverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetRetrieverRequest', name: 'GetRetrieverRequest')
    GetRetrieverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetRetrieverResponse', name: 'GetRetrieverResponse')
    GetUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetUserRequest', name: 'GetUserRequest')
    GetUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetUserResponse', name: 'GetUserResponse')
    GetWebExperienceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetWebExperienceRequest', name: 'GetWebExperienceRequest')
    GetWebExperienceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GetWebExperienceResponse', name: 'GetWebExperienceResponse')
    GroupIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#GroupIdentifier', name: 'GroupIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    GroupMembers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GroupMembers', name: 'GroupMembers')
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    GroupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#GroupStatus', name: 'GroupStatus')
    GroupStatusDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GroupStatusDetail', name: 'GroupStatusDetail')
    GroupStatusDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#GroupStatusDetails', name: 'GroupStatusDetails')
    GroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#GroupSummary', name: 'GroupSummary')
    GroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#GroupSummaryList', name: 'GroupSummaryList')
    HallucinationReductionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#HallucinationReductionConfiguration', name: 'HallucinationReductionConfiguration')
    HallucinationReductionControl = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#HallucinationReductionControl', name: 'HallucinationReductionControl')
    HookConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#HookConfiguration', name: 'HookConfiguration')
    IAMIdentityProviderArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#IAMIdentityProviderArn', name: 'IAMIdentityProviderArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:(oidc-provider|saml-provider)/[a-zA-Z0-9_\\.\\/@\\-]+$"})
    IdcApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#IdcApplicationArn', name: 'IdcApplicationArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdcAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#IdcAuthConfiguration', name: 'IdcAuthConfiguration')
    IdcTrustedTokenIssuerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#IdcTrustedTokenIssuerArn', name: 'IdcTrustedTokenIssuerArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:aws:sso::[0-9]{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IdentityProviderConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#IdentityProviderConfiguration', name: 'IdentityProviderConfiguration')
    IdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#IdentityType', name: 'IdentityType')
    ImageExtractionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ImageExtractionConfiguration', name: 'ImageExtractionConfiguration')
    ImageExtractionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ImageExtractionStatus', name: 'ImageExtractionStatus')
    ImageSourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ImageSourceDetails', name: 'ImageSourceDetails')
    Index = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Index', name: 'Index')
    IndexArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#IndexArn', name: 'IndexArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    IndexCapacityConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#IndexCapacityConfiguration', name: 'IndexCapacityConfiguration')
    IndexCapacityInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#IndexCapacityInteger', name: 'IndexCapacityInteger', traits: {"smithy.api#range" => {"min" => 1}})
    IndexId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#IndexId', name: 'IndexId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    IndexName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#IndexName', name: 'IndexName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    IndexStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#IndexStatistics', name: 'IndexStatistics')
    IndexStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#IndexStatus', name: 'IndexStatus')
    IndexType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#IndexType', name: 'IndexType')
    IndexedTextBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#IndexedTextBytes', name: 'IndexedTextBytes', traits: {"smithy.api#range" => {"min" => 0}})
    IndexedTextDocument = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#IndexedTextDocument', name: 'IndexedTextDocument', traits: {"smithy.api#range" => {"min" => 0}})
    Indices = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Indices', name: 'Indices')
    InlineDocumentEnrichmentConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#InlineDocumentEnrichmentConfiguration', name: 'InlineDocumentEnrichmentConfiguration')
    InlineDocumentEnrichmentConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#InlineDocumentEnrichmentConfigurations', name: 'InlineDocumentEnrichmentConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#InstanceArn', name: 'InstanceArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    Instruction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#Instruction', name: 'Instruction', traits: {"smithy.api#length" => {"min" => 5, "max" => 1000}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    InstructionCollection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#InstructionCollection', name: 'InstructionCollection')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KendraIndexConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#KendraIndexConfiguration', name: 'KendraIndexConfiguration')
    KendraIndexId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#KendraIndexId', name: 'KendraIndexId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    LambdaArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#LambdaArn', name: 'LambdaArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:lambda:[a-z-]*-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?$"})
    LicenseNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#LicenseNotFoundException', name: 'LicenseNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListApplicationsRequest', name: 'ListApplicationsRequest')
    ListApplicationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListApplicationsResponse', name: 'ListApplicationsResponse')
    ListAttachmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListAttachmentsRequest', name: 'ListAttachmentsRequest')
    ListAttachmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListAttachmentsResponse', name: 'ListAttachmentsResponse')
    ListChatResponseConfigurationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListChatResponseConfigurationsRequest', name: 'ListChatResponseConfigurationsRequest')
    ListChatResponseConfigurationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListChatResponseConfigurationsResponse', name: 'ListChatResponseConfigurationsResponse')
    ListConversationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListConversationsRequest', name: 'ListConversationsRequest')
    ListConversationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListConversationsResponse', name: 'ListConversationsResponse')
    ListDataAccessorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDataAccessorsRequest', name: 'ListDataAccessorsRequest')
    ListDataAccessorsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDataAccessorsResponse', name: 'ListDataAccessorsResponse')
    ListDataSourceSyncJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDataSourceSyncJobsRequest', name: 'ListDataSourceSyncJobsRequest')
    ListDataSourceSyncJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDataSourceSyncJobsResponse', name: 'ListDataSourceSyncJobsResponse')
    ListDataSourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDataSourcesRequest', name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDataSourcesResponse', name: 'ListDataSourcesResponse')
    ListDocumentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDocumentsRequest', name: 'ListDocumentsRequest')
    ListDocumentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListDocumentsResponse', name: 'ListDocumentsResponse')
    ListGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListGroupsResponse', name: 'ListGroupsResponse')
    ListIndicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListIndicesRequest', name: 'ListIndicesRequest')
    ListIndicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListIndicesResponse', name: 'ListIndicesResponse')
    ListMessagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListMessagesRequest', name: 'ListMessagesRequest')
    ListMessagesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListMessagesResponse', name: 'ListMessagesResponse')
    ListPluginActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginActionsRequest', name: 'ListPluginActionsRequest')
    ListPluginActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginActionsResponse', name: 'ListPluginActionsResponse')
    ListPluginTypeActionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginTypeActionsRequest', name: 'ListPluginTypeActionsRequest')
    ListPluginTypeActionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginTypeActionsResponse', name: 'ListPluginTypeActionsResponse')
    ListPluginTypeMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginTypeMetadataRequest', name: 'ListPluginTypeMetadataRequest')
    ListPluginTypeMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginTypeMetadataResponse', name: 'ListPluginTypeMetadataResponse')
    ListPluginTypeMetadataSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ListPluginTypeMetadataSummaries', name: 'ListPluginTypeMetadataSummaries')
    ListPluginsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginsRequest', name: 'ListPluginsRequest')
    ListPluginsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListPluginsResponse', name: 'ListPluginsResponse')
    ListRetrieversRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListRetrieversRequest', name: 'ListRetrieversRequest')
    ListRetrieversResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListRetrieversResponse', name: 'ListRetrieversResponse')
    ListSubscriptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListSubscriptionsRequest', name: 'ListSubscriptionsRequest')
    ListSubscriptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListSubscriptionsResponse', name: 'ListSubscriptionsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWebExperiencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListWebExperiencesRequest', name: 'ListWebExperiencesRequest')
    ListWebExperiencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ListWebExperiencesResponse', name: 'ListWebExperiencesResponse')
    LogoUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#LogoUrl', name: 'LogoUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^(https?://[a-zA-Z0-9-_.+%/]+\\.(svg|png))?$"})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#Long', name: 'Long')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResults', name: 'MaxResults')
    MaxResultsIntegerForGetTopicConfigurations = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForGetTopicConfigurations', name: 'MaxResultsIntegerForGetTopicConfigurations', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListApplications = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListApplications', name: 'MaxResultsIntegerForListApplications', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListAttachments = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListAttachments', name: 'MaxResultsIntegerForListAttachments', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListConversations = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListConversations', name: 'MaxResultsIntegerForListConversations', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListDataAccessors = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListDataAccessors', name: 'MaxResultsIntegerForListDataAccessors', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDataSources = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListDataSources', name: 'MaxResultsIntegerForListDataSources', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDataSourcesSyncJobs = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListDataSourcesSyncJobs', name: 'MaxResultsIntegerForListDataSourcesSyncJobs', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListDocuments = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListDocuments', name: 'MaxResultsIntegerForListDocuments', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListGroupsRequest = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListGroupsRequest', name: 'MaxResultsIntegerForListGroupsRequest', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsIntegerForListIndices = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListIndices', name: 'MaxResultsIntegerForListIndices', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListMessages = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListMessages', name: 'MaxResultsIntegerForListMessages', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListPluginActions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListPluginActions', name: 'MaxResultsIntegerForListPluginActions', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListPluginTypeActions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListPluginTypeActions', name: 'MaxResultsIntegerForListPluginTypeActions', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListPluginTypeMetadata = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListPluginTypeMetadata', name: 'MaxResultsIntegerForListPluginTypeMetadata', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListPlugins = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListPlugins', name: 'MaxResultsIntegerForListPlugins', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListRetrieversRequest = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListRetrieversRequest', name: 'MaxResultsIntegerForListRetrieversRequest', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MaxResultsIntegerForListSubscriptions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListSubscriptions', name: 'MaxResultsIntegerForListSubscriptions', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsIntegerForListWebExperiencesRequest = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#MaxResultsIntegerForListWebExperiencesRequest', name: 'MaxResultsIntegerForListWebExperiencesRequest', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MediaExtractionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#MediaExtractionConfiguration', name: 'MediaExtractionConfiguration')
    MediaId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#MediaId', name: 'MediaId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    MediaTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#MediaTooLargeException', name: 'MediaTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MemberGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#MemberGroup', name: 'MemberGroup')
    MemberGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#MemberGroups', name: 'MemberGroups')
    MemberRelation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#MemberRelation', name: 'MemberRelation')
    MemberUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#MemberUser', name: 'MemberUser')
    MemberUsers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#MemberUsers', name: 'MemberUsers')
    MembershipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#MembershipType', name: 'MembershipType')
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Message', name: 'Message')
    MessageBody = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#MessageBody', name: 'MessageBody', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$}$"})
    MessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#MessageId', name: 'MessageId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    MessageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#MessageType', name: 'MessageType')
    MessageUsefulness = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#MessageUsefulness', name: 'MessageUsefulness')
    MessageUsefulnessComment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#MessageUsefulnessComment', name: 'MessageUsefulnessComment', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    MessageUsefulnessFeedback = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#MessageUsefulnessFeedback', name: 'MessageUsefulnessFeedback')
    MessageUsefulnessReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#MessageUsefulnessReason', name: 'MessageUsefulnessReason')
    Messages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Messages', name: 'Messages')
    MetadataEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#MetadataEvent', name: 'MetadataEvent')
    MetricValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#MetricValue', name: 'MetricValue', traits: {"smithy.api#pattern" => "^(([1-9][0-9]*)|0)$"})
    NativeIndexConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#NativeIndexConfiguration', name: 'NativeIndexConfiguration')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 800}})
    NextToken1500 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#NextToken1500', name: 'NextToken1500', traits: {"smithy.api#length" => {"min" => 1, "max" => 1500}})
    NoAuthConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#NoAuthConfiguration', name: 'NoAuthConfiguration')
    NumberAttributeBoostingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#NumberAttributeBoostingConfiguration', name: 'NumberAttributeBoostingConfiguration')
    NumberAttributeBoostingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#NumberAttributeBoostingType', name: 'NumberAttributeBoostingType')
    OAuth2ClientCredentialConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#OAuth2ClientCredentialConfiguration', name: 'OAuth2ClientCredentialConfiguration')
    OpenIDConnectProviderConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#OpenIDConnectProviderConfiguration', name: 'OpenIDConnectProviderConfiguration')
    OrchestrationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#OrchestrationConfiguration', name: 'OrchestrationConfiguration')
    OrchestrationControl = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#OrchestrationControl', name: 'OrchestrationControl')
    Origin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#Origin', name: 'Origin', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(http://|https://)[a-zA-Z0-9-_.]+(?::[0-9]{1,5})?$"})
    OutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#OutputFormat', name: 'OutputFormat')
    Payload = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#Payload', name: 'Payload', traits: {"smithy.api#sensitive" => {}})
    PermissionCondition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PermissionCondition', name: 'PermissionCondition')
    PermissionConditionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PermissionConditionKey', name: 'PermissionConditionKey', traits: {"smithy.api#pattern" => "^aws:PrincipalTag/qbusiness-dataaccessor:[a-zA-Z]+"})
    PermissionConditionOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#PermissionConditionOperator', name: 'PermissionConditionOperator')
    PermissionConditionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PermissionConditionValue', name: 'PermissionConditionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    PermissionConditionValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#PermissionConditionValues', name: 'PermissionConditionValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    PermissionConditions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#PermissionConditions', name: 'PermissionConditions', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PersonalizationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PersonalizationConfiguration', name: 'PersonalizationConfiguration')
    PersonalizationControlMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#PersonalizationControlMode', name: 'PersonalizationControlMode')
    Plugin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Plugin', name: 'Plugin')
    PluginArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PluginArn', name: 'PluginArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    PluginAuthConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#PluginAuthConfiguration', name: 'PluginAuthConfiguration')
    PluginBuildStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#PluginBuildStatus', name: 'PluginBuildStatus')
    PluginConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PluginConfiguration', name: 'PluginConfiguration')
    PluginDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PluginDescription', name: 'PluginDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    PluginId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PluginId', name: 'PluginId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    PluginName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PluginName', name: 'PluginName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    PluginState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#PluginState', name: 'PluginState')
    PluginType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#PluginType', name: 'PluginType')
    PluginTypeCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#PluginTypeCategory', name: 'PluginTypeCategory')
    PluginTypeMetadataSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PluginTypeMetadataSummary', name: 'PluginTypeMetadataSummary')
    Plugins = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Plugins', name: 'Plugins')
    Principal = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#Principal', name: 'Principal')
    PrincipalGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PrincipalGroup', name: 'PrincipalGroup')
    PrincipalRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#PrincipalRoleArn', name: 'PrincipalRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/[a-zA-Z0-9_/+=,.@-]+$"})
    PrincipalUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PrincipalUser', name: 'PrincipalUser')
    Principals = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Principals', name: 'Principals')
    PutFeedbackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PutFeedbackRequest', name: 'PutFeedbackRequest')
    PutGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PutGroupRequest', name: 'PutGroupRequest')
    PutGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#PutGroupResponse', name: 'PutGroupResponse')
    QAppsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#QAppsConfiguration', name: 'QAppsConfiguration')
    QAppsControlMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#QAppsControlMode', name: 'QAppsControlMode')
    QIamAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#QIamAction', name: 'QIamAction', traits: {"smithy.api#pattern" => "^qbusiness:[a-zA-Z]+$"})
    QIamActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#QIamActions', name: 'QIamActions', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    QueryText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#QueryText', name: 'QueryText')
    QuickSightConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#QuickSightConfiguration', name: 'QuickSightConfiguration')
    ReadAccessType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ReadAccessType', name: 'ReadAccessType')
    RelevantContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#RelevantContent', name: 'RelevantContent')
    RelevantContentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#RelevantContentList', name: 'RelevantContentList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ResponseConfiguration', name: 'ResponseConfiguration')
    ResponseConfigurationSummary = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#ResponseConfigurationSummary', name: 'ResponseConfigurationSummary', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ResponseConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ResponseConfigurationType', name: 'ResponseConfigurationType')
    ResponseConfigurations = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qbusiness#ResponseConfigurations', name: 'ResponseConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResponseScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ResponseScope', name: 'ResponseScope')
    Retriever = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Retriever', name: 'Retriever')
    RetrieverArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#RetrieverArn', name: 'RetrieverArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    RetrieverConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#RetrieverConfiguration', name: 'RetrieverConfiguration')
    RetrieverContentSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#RetrieverContentSource', name: 'RetrieverContentSource')
    RetrieverId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#RetrieverId', name: 'RetrieverId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    RetrieverName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#RetrieverName', name: 'RetrieverName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    RetrieverStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#RetrieverStatus', name: 'RetrieverStatus')
    RetrieverType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#RetrieverType', name: 'RetrieverType')
    Retrievers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Retrievers', name: 'Retrievers')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    Rule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Rule', name: 'Rule')
    RuleConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#RuleConfiguration', name: 'RuleConfiguration')
    RuleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#RuleType', name: 'RuleType')
    Rules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Rules', name: 'Rules', traits: {"smithy.api#length" => {"max" => 10}})
    S3 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#S3', name: 'S3')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    S3ObjectKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#S3ObjectKey', name: 'S3ObjectKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SamlAttribute = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SamlAttribute', name: 'SamlAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SamlAuthenticationUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SamlAuthenticationUrl', name: 'SamlAuthenticationUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1284}, "smithy.api#pattern" => "^https://.*$"})
    SamlConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SamlConfiguration', name: 'SamlConfiguration')
    SamlMetadataXML = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SamlMetadataXML', name: 'SamlMetadataXML', traits: {"smithy.api#length" => {"min" => 1000, "max" => 10000000}, "smithy.api#pattern" => "^.*$"})
    SamlProviderConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SamlProviderConfiguration', name: 'SamlProviderConfiguration')
    ScoreAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ScoreAttributes', name: 'ScoreAttributes')
    ScoreConfidence = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ScoreConfidence', name: 'ScoreConfidence')
    SearchRelevantContentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SearchRelevantContentRequest', name: 'SearchRelevantContentRequest')
    SearchRelevantContentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SearchRelevantContentResponse', name: 'SearchRelevantContentResponse')
    SecretArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SecretArn', name: 'SecretArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionDurationInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qbusiness#SessionDurationInMinutes', name: 'SessionDurationInMinutes', traits: {"smithy.api#range" => {"min" => 15, "max" => 60}})
    SnippetExcerpt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SnippetExcerpt', name: 'SnippetExcerpt')
    SnippetExcerptText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SnippetExcerptText', name: 'SnippetExcerptText')
    SourceAttribution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SourceAttribution', name: 'SourceAttribution')
    SourceAttributionMediaId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SourceAttributionMediaId', name: 'SourceAttributionMediaId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    SourceAttributions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#SourceAttributions', name: 'SourceAttributions', traits: {"smithy.api#sparse" => {}})
    SourceDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#SourceDetails', name: 'SourceDetails')
    StartDataSourceSyncJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#StartDataSourceSyncJobRequest', name: 'StartDataSourceSyncJobRequest')
    StartDataSourceSyncJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#StartDataSourceSyncJobResponse', name: 'StartDataSourceSyncJobResponse')
    StatementId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#StatementId', name: 'StatementId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#Status', name: 'Status')
    StopDataSourceSyncJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#StopDataSourceSyncJobRequest', name: 'StopDataSourceSyncJobRequest')
    StopDataSourceSyncJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#StopDataSourceSyncJobResponse', name: 'StopDataSourceSyncJobResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringAttributeBoostingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#StringAttributeBoostingConfiguration', name: 'StringAttributeBoostingConfiguration')
    StringAttributeValueBoosting = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qbusiness#StringAttributeValueBoosting', name: 'StringAttributeValueBoosting', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    StringAttributeValueBoostingLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#StringAttributeValueBoostingLevel', name: 'StringAttributeValueBoostingLevel')
    StringListAttributeBoostingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#StringListAttributeBoostingConfiguration', name: 'StringListAttributeBoostingConfiguration')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#SubnetIds', name: 'SubnetIds')
    Subscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Subscription', name: 'Subscription')
    SubscriptionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SubscriptionArn', name: 'SubscriptionArn', traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    SubscriptionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#SubscriptionDetails', name: 'SubscriptionDetails')
    SubscriptionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SubscriptionId', name: 'SubscriptionId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1224}})
    SubscriptionPrincipal = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#SubscriptionPrincipal', name: 'SubscriptionPrincipal')
    SubscriptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#SubscriptionType', name: 'SubscriptionType')
    Subscriptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Subscriptions', name: 'Subscriptions')
    SyncSchedule = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SyncSchedule', name: 'SyncSchedule', traits: {"smithy.api#length" => {"max" => 998}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    SystemMessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SystemMessageId', name: 'SystemMessageId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{35}$"})
    SystemMessageOverride = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#SystemMessageOverride', name: 'SystemMessageOverride', traits: {"smithy.api#length" => {"max" => 350}, "smithy.api#pattern" => "^\\P{C}*$"})
    SystemMessageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#SystemMessageType', name: 'SystemMessageType')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#TagKeys', name: 'TagKeys', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TextDocumentStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TextDocumentStatistics', name: 'TextDocumentStatistics')
    TextInputEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TextInputEvent', name: 'TextInputEvent')
    TextOutputEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TextOutputEvent', name: 'TextOutputEvent')
    TextSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TextSegment', name: 'TextSegment')
    TextSegmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#TextSegmentList', name: 'TextSegmentList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.qbusiness#Timestamp', name: 'Timestamp')
    Title = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#Title', name: 'Title', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TopicConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#TopicConfiguration', name: 'TopicConfiguration')
    TopicConfigurationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#TopicConfigurationName', name: 'TopicConfigurationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]{0,35}$"})
    TopicConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#TopicConfigurations', name: 'TopicConfigurations', traits: {"smithy.api#length" => {"max" => 10}})
    TopicDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#TopicDescription', name: 'TopicDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 350}, "smithy.api#pattern" => "^\\P{C}*$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateApplicationResponse', name: 'UpdateApplicationResponse')
    UpdateChatControlsConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateChatControlsConfigurationRequest', name: 'UpdateChatControlsConfigurationRequest')
    UpdateChatControlsConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateChatControlsConfigurationResponse', name: 'UpdateChatControlsConfigurationResponse')
    UpdateChatResponseConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateChatResponseConfigurationRequest', name: 'UpdateChatResponseConfigurationRequest')
    UpdateChatResponseConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateChatResponseConfigurationResponse', name: 'UpdateChatResponseConfigurationResponse')
    UpdateDataAccessorRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateDataAccessorRequest', name: 'UpdateDataAccessorRequest')
    UpdateDataAccessorResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateDataAccessorResponse', name: 'UpdateDataAccessorResponse')
    UpdateDataSourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateDataSourceRequest', name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateDataSourceResponse', name: 'UpdateDataSourceResponse')
    UpdateIndexRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateIndexRequest', name: 'UpdateIndexRequest')
    UpdateIndexResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateIndexResponse', name: 'UpdateIndexResponse')
    UpdatePluginRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdatePluginRequest', name: 'UpdatePluginRequest')
    UpdatePluginResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdatePluginResponse', name: 'UpdatePluginResponse')
    UpdateRetrieverRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateRetrieverRequest', name: 'UpdateRetrieverRequest')
    UpdateRetrieverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateRetrieverResponse', name: 'UpdateRetrieverResponse')
    UpdateSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateSubscriptionRequest', name: 'UpdateSubscriptionRequest')
    UpdateSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateSubscriptionResponse', name: 'UpdateSubscriptionResponse')
    UpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateUserResponse', name: 'UpdateUserResponse')
    UpdateWebExperienceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateWebExperienceRequest', name: 'UpdateWebExperienceRequest')
    UpdateWebExperienceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UpdateWebExperienceResponse', name: 'UpdateWebExperienceResponse')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(https?|ftp|file)://([^\\s]*)$"})
    UserAlias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UserAlias', name: 'UserAlias')
    UserAliases = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#UserAliases', name: 'UserAliases')
    UserGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#UserGroups', name: 'UserGroups')
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\P{C}*$"})
    UserIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#UserIdentifier', name: 'UserIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    UserIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#UserIds', name: 'UserIds')
    UserMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#UserMessage', name: 'UserMessage')
    UsersAndGroups = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#UsersAndGroups', name: 'UsersAndGroups')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFields = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#ValidationExceptionFields', name: 'ValidationExceptionFields')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#ValidationExceptionReason', name: 'ValidationExceptionReason')
    VideoExtractionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#VideoExtractionConfiguration', name: 'VideoExtractionConfiguration')
    VideoExtractionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#VideoExtractionStatus', name: 'VideoExtractionStatus')
    VideoExtractionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#VideoExtractionType', name: 'VideoExtractionType')
    VideoSourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#VideoSourceDetails', name: 'VideoSourceDetails')
    WebExperience = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qbusiness#WebExperience', name: 'WebExperience')
    WebExperienceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#WebExperienceArn', name: 'WebExperienceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1284}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    WebExperienceAuthConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.qbusiness#WebExperienceAuthConfiguration', name: 'WebExperienceAuthConfiguration')
    WebExperienceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#WebExperienceId', name: 'WebExperienceId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-]*$"})
    WebExperienceOrigins = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#WebExperienceOrigins', name: 'WebExperienceOrigins', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    WebExperienceSamplePromptsControlMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#WebExperienceSamplePromptsControlMode', name: 'WebExperienceSamplePromptsControlMode')
    WebExperienceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qbusiness#WebExperienceStatus', name: 'WebExperienceStatus')
    WebExperienceSubtitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#WebExperienceSubtitle', name: 'WebExperienceSubtitle', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    WebExperienceTitle = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#WebExperienceTitle', name: 'WebExperienceTitle', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    WebExperienceWelcomeMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qbusiness#WebExperienceWelcomeMessage', name: 'WebExperienceWelcomeMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}})
    WebExperiences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qbusiness#WebExperiences', name: 'WebExperiences')

    APISchema.add_member(:payload, Types::APISchema::Payload, Smithy::Schema::Shapes::ShapeRef.new(shape: Payload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The JSON or YAML-formatted payload defining the OpenAPI schema for a custom plugin. </p>"}))
    APISchema.add_member(:s3, Types::APISchema::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3, location_name: 's3', traits: {"smithy.api#documentation" => "<p>Contains details about the S3 object containing the OpenAPI schema for a custom plugin. The schema could be in either JSON or YAML format.</p>"}))
    APISchema.add_member(:unknown, Types::APISchema::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    APISchema.type = Types::APISchema
    APISchemaType.add_member(:open_api_v3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN_API_V3', traits: {"smithy.api#enumValue" => "OPEN_API_V3"}))
    AccessConfiguration.add_member(:access_controls, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControls, location_name: 'accessControls', traits: {"smithy.api#documentation" => "<p>A list of <code>AccessControlList</code> objects.</p>", "smithy.api#required" => {}}))
    AccessConfiguration.add_member(:member_relation, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberRelation, location_name: 'memberRelation', traits: {"smithy.api#documentation" => "<p>Describes the member relation within the <code>AccessControlList</code> object.</p>"}))
    AccessConfiguration.type = Types::AccessConfiguration
    AccessControl.add_member(:principals, Smithy::Schema::Shapes::ShapeRef.new(shape: Principals, location_name: 'principals', traits: {"smithy.api#documentation" => "<p>Contains a list of principals, where a principal can be either a <code>USER</code> or a <code>GROUP</code>. Each principal can be have the following type of document access: <code>ALLOW</code> or <code>DENY</code>.</p>", "smithy.api#required" => {}}))
    AccessControl.add_member(:member_relation, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberRelation, location_name: 'memberRelation', traits: {"smithy.api#documentation" => "<p>Describes the member relation within a principal list.</p>"}))
    AccessControl.type = Types::AccessControl
    AccessControls.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControl)
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionConfiguration.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: QIamAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The Amazon Q Business action that is allowed.</p>", "smithy.api#required" => {}}))
    ActionConfiguration.add_member(:filter_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionFilterConfiguration, location_name: 'filterConfiguration', traits: {"smithy.api#documentation" => "<p>The filter configuration for the action, if any.</p>"}))
    ActionConfiguration.type = Types::ActionConfiguration
    ActionConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfiguration)
    ActionExecution.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin the action is attached to.</p>", "smithy.api#required" => {}}))
    ActionExecution.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionPayload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>A mapping of field names to the field values in input that an end user provides to Amazon Q Business requests to perform their plugin action. </p>", "smithy.api#required" => {}}))
    ActionExecution.add_member(:payload_field_name_separator, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: 'payloadFieldNameSeparator', traits: {"smithy.api#documentation" => "<p>A string used to retain information about the hierarchical contexts within an action execution event payload.</p>", "smithy.api#required" => {}}))
    ActionExecution.type = Types::ActionExecution
    ActionExecutionEvent.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin for which the action is being requested.</p>", "smithy.api#required" => {}}))
    ActionExecutionEvent.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionPayload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>A mapping of field names to the field values in input that an end user provides to Amazon Q Business requests to perform their plugin action. </p>", "smithy.api#required" => {}}))
    ActionExecutionEvent.add_member(:payload_field_name_separator, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: 'payloadFieldNameSeparator', traits: {"smithy.api#documentation" => "<p>A string used to retain information about the hierarchical contexts within a action execution event payload.</p>", "smithy.api#required" => {}}))
    ActionExecutionEvent.type = Types::ActionExecutionEvent
    ActionExecutionPayload.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldKey)
    ActionExecutionPayload.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionPayloadField)
    ActionExecutionPayloadField.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The content of a user input field in an plugin action execution payload.</p>", "smithy.api#required" => {}}))
    ActionExecutionPayloadField.type = Types::ActionExecutionPayloadField
    ActionFilterConfiguration.add_member(:document_attribute_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'documentAttributeFilter', traits: {"smithy.api#required" => {}}))
    ActionFilterConfiguration.type = Types::ActionFilterConfiguration
    ActionPayloadFieldType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    ActionPayloadFieldType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "NUMBER"}))
    ActionPayloadFieldType.add_member(:array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARRAY', traits: {"smithy.api#enumValue" => "ARRAY"}))
    ActionPayloadFieldType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    ActionReview.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin associated with the action review.</p>"}))
    ActionReview.add_member(:plugin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'pluginType', traits: {"smithy.api#documentation" => "<p>The type of plugin.</p>"}))
    ActionReview.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewPayload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>Field values that an end user needs to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>"}))
    ActionReview.add_member(:payload_field_name_separator, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: 'payloadFieldNameSeparator', traits: {"smithy.api#documentation" => "<p>A string used to retain information about the hierarchical contexts within an action review payload.</p>"}))
    ActionReview.type = Types::ActionReview
    ActionReviewEvent.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the conversation with which the action review event is associated.</p>"}))
    ActionReviewEvent.add_member(:user_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'userMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the conversation with which the plugin action is associated.</p>"}))
    ActionReviewEvent.add_member(:system_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'systemMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Q Business AI generated associated with the action review event.</p>"}))
    ActionReviewEvent.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin associated with the action review event.</p>"}))
    ActionReviewEvent.add_member(:plugin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'pluginType', traits: {"smithy.api#documentation" => "<p>The type of plugin.</p>"}))
    ActionReviewEvent.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewPayload, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>Field values that an end user needs to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>"}))
    ActionReviewEvent.add_member(:payload_field_name_separator, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldNameSeparator, location_name: 'payloadFieldNameSeparator', traits: {"smithy.api#documentation" => "<p>A string used to retain information about the hierarchical contexts within an action review event payload.</p>"}))
    ActionReviewEvent.type = Types::ActionReviewEvent
    ActionReviewPayload.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldKey)
    ActionReviewPayload.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewPayloadField)
    ActionReviewPayloadField.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p> The name of the field. </p>"}))
    ActionReviewPayloadField.add_member(:display_order, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'displayOrder', traits: {"smithy.api#documentation" => "<p>The display order of fields in a payload.</p>"}))
    ActionReviewPayloadField.add_member(:display_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'displayDescription', traits: {"smithy.api#documentation" => "<p>The field level description of each action review input field. This could be an explanation of the field. In the Amazon Q Business web experience, these descriptions could be used to display as tool tips to help users understand the field. </p>"}))
    ActionReviewPayloadField.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of field. </p>"}))
    ActionReviewPayloadField.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The field value.</p>"}))
    ActionReviewPayloadField.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldAllowedValues, location_name: 'allowedValues', traits: {"smithy.api#documentation" => "<p>Information about the field values that an end user can use to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>"}))
    ActionReviewPayloadField.add_member(:allowed_format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'allowedFormat', traits: {"smithy.api#documentation" => "<p>The expected data format for the action review input field value. For example, in PTO request, <code>from</code> and <code>to</code> would be of <code>datetime</code> allowed format. </p>"}))
    ActionReviewPayloadField.add_member(:array_item_json_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldArrayItemJsonSchema, location_name: 'arrayItemJsonSchema', traits: {"smithy.api#documentation" => "<p>Use to create a custom form with array fields (fields with nested objects inside an array).</p>"}))
    ActionReviewPayloadField.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'required', traits: {"smithy.api#documentation" => "<p>Information about whether the field is required.</p>"}))
    ActionReviewPayloadField.type = Types::ActionReviewPayloadField
    ActionReviewPayloadFieldAllowedValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The field value.</p>"}))
    ActionReviewPayloadFieldAllowedValue.add_member(:display_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionPayloadFieldValue, location_name: 'displayValue', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>"}))
    ActionReviewPayloadFieldAllowedValue.type = Types::ActionReviewPayloadFieldAllowedValue
    ActionReviewPayloadFieldAllowedValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewPayloadFieldAllowedValue)
    ActionSummary.add_member(:action_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'actionIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Q Business plugin action.</p>"}))
    ActionSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name assigned by Amazon Q Business to a plugin action. You can't modify this value.</p>"}))
    ActionSummary.add_member(:instruction_example, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'instructionExample', traits: {"smithy.api#documentation" => "<p>An Amazon Q Business suggested prompt and end user can use to invoke a plugin action. This value can be modified and sent as input to initiate an action. For example:</p> <ul> <li> <p>Create a Jira task</p> </li> <li> <p>Create a chat assistant task to find the root cause of a specific incident</p> </li> </ul>"}))
    ActionSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of an Amazon Q Business plugin action.</p>"}))
    ActionSummary.type = Types::ActionSummary
    Actions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActionSummary)
    Application.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Q Business application.</p>"}))
    Application.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier for the Amazon Q Business application.</p>"}))
    Application.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was created.</p>"}))
    Application.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was last updated. </p>"}))
    Application.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Amazon Q Business application. The application is ready to use when the status is <code>ACTIVE</code>.</p>"}))
    Application.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'identityType', traits: {"smithy.api#documentation" => "<p>The authentication type being used by a Amazon Q Business application.</p>"}))
    Application.add_member(:quick_sight_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickSightConfiguration, location_name: 'quickSightConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon QuickSight configuration for an Amazon Q Business application that uses QuickSight as the identity provider.</p>"}))
    Application.type = Types::Application
    ApplicationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ApplicationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApplicationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ApplicationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    Applications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    AppliedAttachmentsConfiguration.add_member(:attachments_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsControlMode, location_name: 'attachmentsControlMode', traits: {"smithy.api#documentation" => "<p>Information about whether file upload during chat functionality is activated for your application.</p>"}))
    AppliedAttachmentsConfiguration.type = Types::AppliedAttachmentsConfiguration
    AppliedCreatorModeConfiguration.add_member(:creator_mode_control, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorModeControl, location_name: 'creatorModeControl', traits: {"smithy.api#documentation" => "<p> Information about whether creator mode is enabled or disabled for an Amazon Q Business application. </p>", "smithy.api#required" => {}}))
    AppliedCreatorModeConfiguration.type = Types::AppliedCreatorModeConfiguration
    AppliedOrchestrationConfiguration.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationControl, location_name: 'control', traits: {"smithy.api#documentation" => "<p> Information about whether chat orchestration is enabled or disabled for an Amazon Q Business application. </p>", "smithy.api#required" => {}}))
    AppliedOrchestrationConfiguration.type = Types::AppliedOrchestrationConfiguration
    AssociatePermissionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociatePermissionRequest.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StatementId, location_name: 'statementId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the policy statement.</p>", "smithy.api#required" => {}}))
    AssociatePermissionRequest.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: QIamActions, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The list of Amazon Q Business actions that the ISV is allowed to perform.</p>", "smithy.api#required" => {}}))
    AssociatePermissionRequest.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionConditions, location_name: 'conditions', traits: {"smithy.api#documentation" => "<p>The conditions that restrict when the permission is effective. These conditions can be used to limit the permission based on specific attributes of the request.</p>"}))
    AssociatePermissionRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalRoleArn, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the IAM role for the ISV that is being granted permission.</p>", "smithy.api#required" => {}}))
    AssociatePermissionRequest.type = Types::AssociatePermissionRequest
    AssociatePermissionResponse.add_member(:statement, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statement', traits: {"smithy.api#documentation" => "<p>The JSON representation of the added permission statement.</p>"}))
    AssociatePermissionResponse.type = Types::AssociatePermissionResponse
    AssociatedGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the group associated with the user. This is used to identify the group in access control decisions.</p>"}))
    AssociatedGroup.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the associated group. This indicates the scope of the group's applicability.</p>"}))
    AssociatedGroup.type = Types::AssociatedGroup
    AssociatedGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedGroup)
    AssociatedUser.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the associated user. This is used to identify the user in access control decisions.</p>"}))
    AssociatedUser.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the associated user. This indicates the scope of the user's association.</p>"}))
    AssociatedUser.type = Types::AssociatedUser
    AssociatedUsers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedUser)
    Attachment.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business attachment.</p>"}))
    Attachment.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business conversation the attachment is associated with.</p>"}))
    Attachment.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Filename of the Amazon Q Business attachment.</p>"}))
    Attachment.add_member(:copy_from, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyFromSource, location_name: 'copyFrom', traits: {"smithy.api#documentation" => "<p>A CopyFromSource containing a reference to the original source of the Amazon Q Business attachment.</p>"}))
    Attachment.add_member(:file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fileType', traits: {"smithy.api#documentation" => "<p>Filetype of the Amazon Q Business attachment.</p>"}))
    Attachment.add_member(:file_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'fileSize', traits: {"smithy.api#documentation" => "<p>Size in bytes of the Amazon Q Business attachment.</p>"}))
    Attachment.add_member(:md5chksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'md5chksum', traits: {"smithy.api#documentation" => "<p>MD5 checksum of the Amazon Q Business attachment contents.</p>"}))
    Attachment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business attachment was created.</p>"}))
    Attachment.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>AttachmentStatus of the Amazon Q Business attachment.</p>"}))
    Attachment.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>ErrorDetail providing information about a Amazon Q Business attachment error. </p>"}))
    Attachment.type = Types::Attachment
    AttachmentInput.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The contents of the attachment.</p>"}))
    AttachmentInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The filename of the attachment.</p>"}))
    AttachmentInput.add_member(:copy_from, Smithy::Schema::Shapes::ShapeRef.new(shape: CopyFromSource, location_name: 'copyFrom', traits: {"smithy.api#documentation" => "<p>A reference to an existing attachment.</p>"}))
    AttachmentInput.type = Types::AttachmentInput
    AttachmentInputEvent.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentInput, location_name: 'attachment'))
    AttachmentInputEvent.type = Types::AttachmentInputEvent
    AttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    AttachmentOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of a file uploaded during chat.</p>"}))
    AttachmentOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a file uploaded during chat.</p>"}))
    AttachmentOutput.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error associated with a file uploaded during chat.</p>"}))
    AttachmentOutput.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business attachment.</p>"}))
    AttachmentOutput.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business conversation.</p>"}))
    AttachmentOutput.type = Types::AttachmentOutput
    AttachmentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AttachmentStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AttachmentsConfiguration.add_member(:attachments_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsControlMode, location_name: 'attachmentsControlMode', traits: {"smithy.api#documentation" => "<p>Status information about whether file upload functionality is activated or deactivated for your end user.</p>", "smithy.api#required" => {}}))
    AttachmentsConfiguration.type = Types::AttachmentsConfiguration
    AttachmentsControlMode.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AttachmentsControlMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AttachmentsInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentInput)
    AttachmentsOutput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentOutput)
    AttributeFilter.add_member(:and_all_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilters, location_name: 'andAllFilters', traits: {"smithy.api#documentation" => "<p>Performs a logical <code>AND</code> operation on all supplied filters.</p>"}))
    AttributeFilter.add_member(:or_all_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilters, location_name: 'orAllFilters', traits: {"smithy.api#documentation" => "<p> Performs a logical <code>OR</code> operation on all supplied filters. </p>"}))
    AttributeFilter.add_member(:not_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'notFilter', traits: {"smithy.api#documentation" => "<p>Performs a logical <code>NOT</code> operation on all supplied filters. </p>"}))
    AttributeFilter.add_member(:equals_to, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'equalsTo', traits: {"smithy.api#documentation" => "<p>Performs an equals operation on two document attributes or metadata fields. Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value types</a>: <code>dateValue</code>, <code>longValue</code>, <code>stringListValue</code> and <code>stringValue</code>.</p>"}))
    AttributeFilter.add_member(:contains_all, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'containsAll', traits: {"smithy.api#documentation" => "<p>Returns <code>true</code> when a document contains all the specified document attributes or metadata fields. Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value types</a>: <code>stringListValue</code>.</p>"}))
    AttributeFilter.add_member(:contains_any, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'containsAny', traits: {"smithy.api#documentation" => "<p>Returns <code>true</code> when a document contains any of the specified document attributes or metadata fields. Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value types</a>: <code>stringListValue</code>.</p>"}))
    AttributeFilter.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'greaterThan', traits: {"smithy.api#documentation" => "<p>Performs a greater than operation on two document attributes or metadata fields. Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>.</p>"}))
    AttributeFilter.add_member(:greater_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'greaterThanOrEquals', traits: {"smithy.api#documentation" => "<p>Performs a greater or equals than operation on two document attributes or metadata fields. Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>. </p>"}))
    AttributeFilter.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'lessThan', traits: {"smithy.api#documentation" => "<p>Performs a less than operation on two document attributes or metadata fields. Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>.</p>"}))
    AttributeFilter.add_member(:less_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute, location_name: 'lessThanOrEquals', traits: {"smithy.api#documentation" => "<p>Performs a less than or equals operation on two document attributes or metadata fields.Supported for the following <a href=\"https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html\">document attribute value type</a>: <code>dateValue</code> and <code>longValue</code>. </p>"}))
    AttributeFilter.type = Types::AttributeFilter
    AttributeFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter)
    AttributeType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "STRING"}))
    AttributeType.add_member(:string_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING_LIST', traits: {"smithy.api#enumValue" => "STRING_LIST"}))
    AttributeType.add_member(:number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "NUMBER"}))
    AttributeType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    AttributeValueOperator.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    AudioExtractionConfiguration.add_member(:audio_extraction_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioExtractionStatus, location_name: 'audioExtractionStatus', traits: {"smithy.api#documentation" => "<p>The status of audio extraction (ENABLED or DISABLED) for processing audio content from files.</p>", "smithy.api#required" => {}}))
    AudioExtractionConfiguration.type = Types::AudioExtractionConfiguration
    AudioExtractionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AudioExtractionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AudioExtractionType.add_member(:transcript, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSCRIPT', traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    AudioExtractionType.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUMMARY', traits: {"smithy.api#enumValue" => "SUMMARY"}))
    AudioSourceDetails.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the audio media file.</p>"}))
    AudioSourceDetails.add_member(:media_mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mediaMimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the audio file (e.g., audio/mp3, audio/wav).</p>"}))
    AudioSourceDetails.add_member(:start_time_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startTimeMilliseconds', traits: {"smithy.api#documentation" => "<p>The starting timestamp in milliseconds for the relevant audio segment.</p>"}))
    AudioSourceDetails.add_member(:end_time_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'endTimeMilliseconds', traits: {"smithy.api#documentation" => "<p>The ending timestamp in milliseconds for the relevant audio segment.</p>"}))
    AudioSourceDetails.add_member(:audio_extraction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioExtractionType, location_name: 'audioExtractionType', traits: {"smithy.api#documentation" => "<p>The type of audio extraction performed on the content.</p>"}))
    AudioSourceDetails.type = Types::AudioSourceDetails
    AuthChallengeRequest.add_member(:authorization_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'authorizationUrl', traits: {"smithy.api#documentation" => "<p>The URL sent by Amazon Q Business to the third party authentication server to authenticate a custom plugin user through an OAuth protocol.</p>", "smithy.api#required" => {}}))
    AuthChallengeRequest.type = Types::AuthChallengeRequest
    AuthChallengeRequestEvent.add_member(:authorization_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'authorizationUrl', traits: {"smithy.api#documentation" => "<p>The URL sent by Amazon Q Business to a third party authentication server in response to an authentication verification event activated by an end user request to use a custom plugin. </p>", "smithy.api#required" => {}}))
    AuthChallengeRequestEvent.type = Types::AuthChallengeRequestEvent
    AuthChallengeResponse.add_member(:response_map, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationResponseMap, location_name: 'responseMap', traits: {"smithy.api#documentation" => "<p>The mapping of key-value pairs in an authentication challenge response.</p>", "smithy.api#required" => {}}))
    AuthChallengeResponse.type = Types::AuthChallengeResponse
    AuthChallengeResponseEvent.add_member(:response_map, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationResponseMap, location_name: 'responseMap', traits: {"smithy.api#documentation" => "<p>The mapping of key-value pairs in an authentication challenge response.</p>", "smithy.api#required" => {}}))
    AuthChallengeResponseEvent.type = Types::AuthChallengeResponseEvent
    AuthorizationResponseMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthResponseKey)
    AuthorizationResponseMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthResponseValue)
    AutoSubscriptionConfiguration.add_member(:auto_subscribe, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubscriptionStatus, location_name: 'autoSubscribe', traits: {"smithy.api#documentation" => "<p>Describes whether automatic subscriptions are enabled for an Amazon Q Business application using IAM identity federation for user management.</p>", "smithy.api#required" => {}}))
    AutoSubscriptionConfiguration.add_member(:default_subscription_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'defaultSubscriptionType', traits: {"smithy.api#documentation" => "<p>Describes the default subscription type assigned to an Amazon Q Business application using IAM identity federation for user management. If the value for <code>autoSubscribe</code> is set to <code>ENABLED</code> you must select a value for this field.</p>"}))
    AutoSubscriptionConfiguration.type = Types::AutoSubscriptionConfiguration
    AutoSubscriptionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoSubscriptionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    BasicAuthConfiguration.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'secretArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Secrets Manager secret that stores the basic authentication credentials used for plugin configuration..</p>", "smithy.api#required" => {}}))
    BasicAuthConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role used by Amazon Q Business to access the basic authentication credentials stored in a Secrets Manager secret.</p>", "smithy.api#required" => {}}))
    BasicAuthConfiguration.type = Types::BasicAuthConfiguration
    BatchDeleteDocumentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business index that contains the documents to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocuments, location_name: 'documents', traits: {"smithy.api#documentation" => "<p>Documents deleted from the Amazon Q Business index.</p>", "smithy.api#required" => {}}))
    BatchDeleteDocumentRequest.add_member(:data_source_sync_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'dataSourceSyncId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source sync during which the documents were deleted.</p>"}))
    BatchDeleteDocumentRequest.type = Types::BatchDeleteDocumentRequest
    BatchDeleteDocumentResponse.add_member(:failed_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDocuments, location_name: 'failedDocuments', traits: {"smithy.api#documentation" => "<p>A list of documents that couldn't be removed from the Amazon Q Business index. Each entry contains an error message that indicates why the document couldn't be removed from the index. </p>"}))
    BatchDeleteDocumentResponse.type = Types::BatchDeleteDocumentResponse
    BatchPutDocumentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business index to add the documents to. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Documents, location_name: 'documents', traits: {"smithy.api#documentation" => "<p>One or more documents to add to the index.</p>", "smithy.api#required" => {}}))
    BatchPutDocumentRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role with permission to access your S3 bucket.</p>"}))
    BatchPutDocumentRequest.add_member(:data_source_sync_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'dataSourceSyncId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source sync during which the documents were added.</p>"}))
    BatchPutDocumentRequest.type = Types::BatchPutDocumentRequest
    BatchPutDocumentResponse.add_member(:failed_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDocuments, location_name: 'failedDocuments', traits: {"smithy.api#documentation" => "<p> A list of documents that were not added to the Amazon Q Business index because the document failed a validation check. Each document contains an error message that indicates why the document couldn't be added to the index. </p>"}))
    BatchPutDocumentResponse.type = Types::BatchPutDocumentResponse
    BlockedPhrases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedPhrase)
    BlockedPhrasesConfiguration.add_member(:blocked_phrases, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedPhrases, location_name: 'blockedPhrases', traits: {"smithy.api#documentation" => "<p>A list of phrases blocked from a Amazon Q Business web experience chat.</p>"}))
    BlockedPhrasesConfiguration.add_member(:system_message_override, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: 'systemMessageOverride', traits: {"smithy.api#documentation" => "<p>The configured custom message displayed to an end user informing them that they've used a blocked phrase during chat.</p>"}))
    BlockedPhrasesConfiguration.type = Types::BlockedPhrasesConfiguration
    BlockedPhrasesConfigurationUpdate.add_member(:blocked_phrases_to_create_or_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedPhrases, location_name: 'blockedPhrasesToCreateOrUpdate', traits: {"smithy.api#documentation" => "<p>Creates or updates a blocked phrases configuration in your Amazon Q Business application.</p>"}))
    BlockedPhrasesConfigurationUpdate.add_member(:blocked_phrases_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedPhrases, location_name: 'blockedPhrasesToDelete', traits: {"smithy.api#documentation" => "<p>Deletes a blocked phrases configuration in your Amazon Q Business application.</p>"}))
    BlockedPhrasesConfigurationUpdate.add_member(:system_message_override, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: 'systemMessageOverride', traits: {"smithy.api#documentation" => "<p>The configured custom message displayed to your end user when they use blocked phrase during chat.</p>"}))
    BlockedPhrasesConfigurationUpdate.type = Types::BlockedPhrasesConfigurationUpdate
    BrowserExtensionConfiguration.add_member(:enabled_browser_extensions, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserExtensionList, location_name: 'enabledBrowserExtensions', traits: {"smithy.api#documentation" => "<p>Specify the browser extensions allowed for your Amazon Q web experience.</p> <ul> <li> <p> <code>CHROME</code> — Enables the extension for Chromium-based browsers (Google Chrome, Microsoft Edge, Opera, etc.).</p> </li> <li> <p> <code>FIREFOX</code> — Enables the extension for Mozilla Firefox.</p> </li> <li> <p> <code>CHROME</code> and <code>FIREFOX</code> — Enable the extension for Chromium-based browsers and Mozilla Firefox.</p> </li> </ul>", "smithy.api#required" => {}}))
    BrowserExtensionConfiguration.type = Types::BrowserExtensionConfiguration
    BrowserExtensionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserExtension)
    CancelSubscriptionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application for which the subscription is being cancelled.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSubscriptionRequest.add_member(:subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionId, location_name: 'subscriptionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business subscription being cancelled.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSubscriptionRequest.type = Types::CancelSubscriptionRequest
    CancelSubscriptionResponse.add_member(:subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: 'subscriptionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription being cancelled.</p>"}))
    CancelSubscriptionResponse.add_member(:current_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'currentSubscription', traits: {"smithy.api#documentation" => "<p>The type of your current Amazon Q Business subscription.</p>"}))
    CancelSubscriptionResponse.add_member(:next_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'nextSubscription', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Q Business subscription for the next month.</p>"}))
    CancelSubscriptionResponse.type = Types::CancelSubscriptionResponse
    ChatInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to a streaming Amazon Q Business conversation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChatInput.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user attached to the chat input. </p>", "smithy.api#httpQuery" => "userId"}))
    ChatInput.add_member(:user_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroups, location_name: 'userGroups', traits: {"smithy.api#documentation" => "<p>The group names that a user associated with the chat input belongs to.</p>", "smithy.api#httpQuery" => "userGroups"}))
    ChatInput.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business conversation.</p>", "smithy.api#httpQuery" => "conversationId"}))
    ChatInput.add_member(:parent_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'parentMessageId', traits: {"smithy.api#documentation" => "<p>The identifier used to associate a user message with a AI generated response.</p>", "smithy.api#httpQuery" => "parentMessageId"}))
    ChatInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the chat input.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    ChatInput.add_member(:input_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatInputStream, location_name: 'inputStream', traits: {"smithy.api#documentation" => "<p>The streaming input for the <code>Chat</code> API.</p>", "smithy.api#httpPayload" => {}}))
    ChatInput[:http_payload] = :input_stream
    ChatInput[:http_payload_member] = ChatInput.member(:input_stream)
    ChatInput.type = Types::ChatInput
    ChatInputStream.add_member(:configuration_event, Types::ChatInputStream::ConfigurationEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationEvent, location_name: 'configurationEvent', traits: {"smithy.api#documentation" => "<p>A configuration event activated by an end user request to select a specific chat mode.</p>"}))
    ChatInputStream.add_member(:text_event, Types::ChatInputStream::TextEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: TextInputEvent, location_name: 'textEvent', traits: {"smithy.api#documentation" => "<p>Information about the payload of the <code>ChatInputStream</code> event containing the end user message input.</p>"}))
    ChatInputStream.add_member(:attachment_event, Types::ChatInputStream::AttachmentEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentInputEvent, location_name: 'attachmentEvent', traits: {"smithy.api#documentation" => "<p>A request by an end user to upload a file during chat.</p>"}))
    ChatInputStream.add_member(:action_execution_event, Types::ChatInputStream::ActionExecutionEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecutionEvent, location_name: 'actionExecutionEvent', traits: {"smithy.api#documentation" => "<p>A request from an end user to perform an Amazon Q Business plugin action.</p>"}))
    ChatInputStream.add_member(:end_of_input_event, Types::ChatInputStream::EndOfInputEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: EndOfInputEvent, location_name: 'endOfInputEvent', traits: {"smithy.api#documentation" => "<p>The end of the streaming input for the <code>Chat</code> API.</p>"}))
    ChatInputStream.add_member(:auth_challenge_response_event, Types::ChatInputStream::AuthChallengeResponseEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthChallengeResponseEvent, location_name: 'authChallengeResponseEvent', traits: {"smithy.api#documentation" => "<p>An authentication verification event response by a third party authentication server to Amazon Q Business.</p>"}))
    ChatInputStream.add_member(:unknown, Types::ChatInputStream::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ChatInputStream.type = Types::ChatInputStream
    ChatMode.add_member(:retrieval_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRIEVAL_MODE', traits: {"smithy.api#enumValue" => "RETRIEVAL_MODE"}))
    ChatMode.add_member(:creator_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATOR_MODE', traits: {"smithy.api#enumValue" => "CREATOR_MODE"}))
    ChatMode.add_member(:plugin_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLUGIN_MODE', traits: {"smithy.api#enumValue" => "PLUGIN_MODE"}))
    ChatModeConfiguration.add_member(:plugin_configuration, Types::ChatModeConfiguration::PluginConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginConfiguration, location_name: 'pluginConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information required to invoke chat in <code>PLUGIN_MODE</code>.</p>"}))
    ChatModeConfiguration.add_member(:unknown, Types::ChatModeConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ChatModeConfiguration.type = Types::ChatModeConfiguration
    ChatOutput.add_member(:output_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatOutputStream, location_name: 'outputStream', traits: {"smithy.api#documentation" => "<p>The streaming output for the <code>Chat</code> API.</p>", "smithy.api#httpPayload" => {}}))
    ChatOutput[:http_payload] = :output_stream
    ChatOutput[:http_payload_member] = ChatOutput.member(:output_stream)
    ChatOutput.type = Types::ChatOutput
    ChatOutputStream.add_member(:text_event, Types::ChatOutputStream::TextEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: TextOutputEvent, location_name: 'textEvent', traits: {"smithy.api#documentation" => "<p>Information about the payload of the <code>ChatOutputStream</code> event containing the AI-generated message output.</p>"}))
    ChatOutputStream.add_member(:metadata_event, Types::ChatOutputStream::MetadataEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataEvent, location_name: 'metadataEvent', traits: {"smithy.api#documentation" => "<p>A metadata event for a AI-generated text output message in a Amazon Q Business conversation. </p>"}))
    ChatOutputStream.add_member(:action_review_event, Types::ChatOutputStream::ActionReviewEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReviewEvent, location_name: 'actionReviewEvent', traits: {"smithy.api#documentation" => "<p>A request from Amazon Q Business to the end user for information Amazon Q Business needs to successfully complete a requested plugin action.</p>"}))
    ChatOutputStream.add_member(:failed_attachment_event, Types::ChatOutputStream::FailedAttachmentEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedAttachmentEvent, location_name: 'failedAttachmentEvent', traits: {"smithy.api#documentation" => "<p>A failed file upload event during a web experience chat.</p>"}))
    ChatOutputStream.add_member(:auth_challenge_request_event, Types::ChatOutputStream::AuthChallengeRequestEvent, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthChallengeRequestEvent, location_name: 'authChallengeRequestEvent', traits: {"smithy.api#documentation" => "<p>An authentication verification event activated by an end user request to use a custom plugin.</p>"}))
    ChatOutputStream.add_member(:unknown, Types::ChatOutputStream::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ChatOutputStream.type = Types::ChatOutputStream
    ChatResponseConfiguration.add_member(:chat_response_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: 'chatResponseConfigurationId', traits: {"smithy.api#documentation" => "<p>A unique identifier for your chat response configuration settings, used to reference and manage the configuration within the Amazon Q Business service.</p>", "smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:chat_response_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationArn, location_name: 'chatResponseConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the chat response configuration, which uniquely identifies the resource across all Amazon Web Services services and accounts.</p>", "smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A human-readable name for the chat response configuration, making it easier to identify and manage multiple configurations within an organization.</p>", "smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:response_configuration_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseConfigurationSummary, location_name: 'responseConfigurationSummary', traits: {"smithy.api#documentation" => "<p>A summary of the response configuration settings, providing a concise overview of the key parameters that define how responses are generated and formatted.</p>"}))
    ChatResponseConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the chat response configuration, indicating whether it is active, pending, or in another state that affects its availability for use in chat interactions.</p>", "smithy.api#required" => {}}))
    ChatResponseConfiguration.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp indicating when the chat response configuration was initially created, useful for tracking the lifecycle of configuration resources.</p>"}))
    ChatResponseConfiguration.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp indicating when the chat response configuration was last modified, helping administrators track changes and maintain version awareness.</p>"}))
    ChatResponseConfiguration.type = Types::ChatResponseConfiguration
    ChatResponseConfigurationDetail.add_member(:response_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseConfigurations, location_name: 'responseConfigurations', traits: {"smithy.api#documentation" => "<p>A collection of specific response configuration settings that collectively define how responses are generated, formatted, and presented to users in chat interactions.</p>"}))
    ChatResponseConfigurationDetail.add_member(:response_configuration_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'responseConfigurationSummary', traits: {"smithy.api#documentation" => "<p>A summary of the response configuration details, providing a concise overview of the key parameters and settings that define the response generation behavior.</p>"}))
    ChatResponseConfigurationDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the chat response configuration, indicating whether it is active, pending, or in another state that affects its availability for use.</p>"}))
    ChatResponseConfigurationDetail.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error'))
    ChatResponseConfigurationDetail.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp indicating when the detailed chat response configuration was last modified, helping administrators track changes and maintain version awareness.</p>"}))
    ChatResponseConfigurationDetail.type = Types::ChatResponseConfigurationDetail
    ChatResponseConfigurationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ChatResponseConfigurationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ChatResponseConfigurationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ChatResponseConfigurationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ChatResponseConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfiguration)
    ChatSyncInput.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the Amazon Q Business conversation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ChatSyncInput.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user attached to the chat input.</p>", "smithy.api#httpQuery" => "userId"}))
    ChatSyncInput.add_member(:user_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroups, location_name: 'userGroups', traits: {"smithy.api#documentation" => "<p>The group names that a user associated with the chat input belongs to.</p>", "smithy.api#httpQuery" => "userGroups"}))
    ChatSyncInput.add_member(:user_message, Smithy::Schema::Shapes::ShapeRef.new(shape: UserMessage, location_name: 'userMessage', traits: {"smithy.api#documentation" => "<p>A end user message in a conversation.</p>"}))
    ChatSyncInput.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsInput, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>A list of files uploaded directly during chat. You can upload a maximum of 5 files of upto 10 MB each.</p>"}))
    ChatSyncInput.add_member(:action_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecution, location_name: 'actionExecution', traits: {"smithy.api#documentation" => "<p>A request from an end user to perform an Amazon Q Business plugin action.</p>"}))
    ChatSyncInput.add_member(:auth_challenge_response, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthChallengeResponse, location_name: 'authChallengeResponse', traits: {"smithy.api#documentation" => "<p>An authentication verification event response by a third party authentication server to Amazon Q Business.</p>"}))
    ChatSyncInput.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business conversation.</p>"}))
    ChatSyncInput.add_member(:parent_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'parentMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the previous system message in a conversation.</p>"}))
    ChatSyncInput.add_member(:attribute_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'attributeFilter', traits: {"smithy.api#documentation" => "<p>Enables filtering of Amazon Q Business web experience responses based on document attributes or metadata fields.</p>"}))
    ChatSyncInput.add_member(:chat_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatMode, location_name: 'chatMode', traits: {"smithy.api#documentation" => "<p>The <code>chatMode</code> parameter determines the chat modes available to Amazon Q Business users:</p> <ul> <li> <p> <code>RETRIEVAL_MODE</code> - If you choose this mode, Amazon Q generates responses solely from the data sources connected and indexed by the application. If an answer is not found in the data sources or there are no data sources available, Amazon Q will respond with a \"<i>No Answer Found</i>\" message, unless LLM knowledge has been enabled. In that case, Amazon Q will generate a response from the LLM knowledge</p> </li> <li> <p> <code>CREATOR_MODE</code> - By selecting this mode, you can choose to generate responses only from the LLM knowledge. You can also attach files and have Amazon Q generate a response based on the data in those files. If the attached files do not contain an answer for the query, Amazon Q will automatically fall back to generating a response from the LLM knowledge.</p> </li> <li> <p> <code>PLUGIN_MODE</code> - By selecting this mode, users can choose to use plugins in chat to get their responses.</p> </li> </ul> <note> <p>If none of the modes are selected, Amazon Q will only respond using the information from the attached files.</p> </note> <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html\">Admin controls and guardrails</a>, <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html\">Plugins</a>, and <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope\">Response sources</a>.</p>"}))
    ChatSyncInput.add_member(:chat_mode_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatModeConfiguration, location_name: 'chatModeConfiguration', traits: {"smithy.api#documentation" => "<p>The chat mode configuration for an Amazon Q Business application.</p>"}))
    ChatSyncInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify a chat request.</p>", "smithy.api#idempotencyToken" => {}}))
    ChatSyncInput.type = Types::ChatSyncInput
    ChatSyncOutput.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business conversation.</p>"}))
    ChatSyncOutput.add_member(:system_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'systemMessage', traits: {"smithy.api#documentation" => "<p>An AI-generated message in a conversation.</p>"}))
    ChatSyncOutput.add_member(:system_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'systemMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Q Business AI generated message within the conversation.</p>"}))
    ChatSyncOutput.add_member(:user_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'userMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Q Business end user text input message within the conversation.</p>"}))
    ChatSyncOutput.add_member(:action_review, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReview, location_name: 'actionReview', traits: {"smithy.api#documentation" => "<p>A request from Amazon Q Business to the end user for information Amazon Q Business needs to successfully complete a requested plugin action.</p>"}))
    ChatSyncOutput.add_member(:auth_challenge_request, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthChallengeRequest, location_name: 'authChallengeRequest', traits: {"smithy.api#documentation" => "<p>An authentication verification event activated by an end user request to use a custom plugin.</p>"}))
    ChatSyncOutput.add_member(:source_attributions, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAttributions, location_name: 'sourceAttributions', traits: {"smithy.api#documentation" => "<p>The source documents used to generate the conversation response.</p>"}))
    ChatSyncOutput.add_member(:failed_attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsOutput, location_name: 'failedAttachments', traits: {"smithy.api#documentation" => "<p>A list of files which failed to upload during chat.</p>"}))
    ChatSyncOutput.type = Types::ChatSyncOutput
    CheckDocumentAccessRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the application. This is required to identify the specific Amazon Q Business application context for the document access check.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the index. Used to locate the correct index within the application where the document is stored.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user. Used to check the access permissions for this specific user against the document's ACL.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'documentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the document. Specifies which document's access permissions are being checked.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CheckDocumentAccessRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data source. Identifies the specific data source from which the document originates. Should not be used when a document is uploaded directly with BatchPutDocument, as no dataSourceId is available or necessary. </p>", "smithy.api#httpQuery" => "dataSourceId"}))
    CheckDocumentAccessRequest.type = Types::CheckDocumentAccessRequest
    CheckDocumentAccessResponse.add_member(:user_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedGroups, location_name: 'userGroups', traits: {"smithy.api#documentation" => "<p>An array of groups the user is part of for the specified data source. Each group has a name and type.</p>"}))
    CheckDocumentAccessResponse.add_member(:user_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedUsers, location_name: 'userAliases', traits: {"smithy.api#documentation" => "<p>An array of aliases associated with the user. This includes both global and local aliases, each with a name and type.</p>"}))
    CheckDocumentAccessResponse.add_member(:has_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'hasAccess', traits: {"smithy.api#documentation" => "<p>A boolean value indicating whether the specified user has access to the document, either direct access or transitive access via groups and aliases attached to the document.</p>"}))
    CheckDocumentAccessResponse.add_member(:document_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAcl, location_name: 'documentAcl', traits: {"smithy.api#documentation" => "<p>The Access Control List (ACL) associated with the document. Includes allowlist and denylist conditions that determine user access.</p>"}))
    CheckDocumentAccessResponse.type = Types::CheckDocumentAccessResponse
    ClientIdsForOIDC.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdForOIDC)
    ConfigurationEvent.add_member(:chat_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatMode, location_name: 'chatMode', traits: {"smithy.api#documentation" => "<p>The chat modes available to an Amazon Q Business end user.</p> <ul> <li> <p> <code>RETRIEVAL_MODE</code> - The default chat mode for an Amazon Q Business application. When this mode is enabled, Amazon Q Business generates responses only from data sources connected to an Amazon Q Business application.</p> </li> <li> <p> <code>CREATOR_MODE</code> - By selecting this mode, users can choose to generate responses only from the LLM knowledge, without consulting connected data sources, for a chat request.</p> </li> <li> <p> <code>PLUGIN_MODE</code> - By selecting this mode, users can choose to use plugins in chat.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html\">Admin controls and guardrails</a>, <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html\">Plugins</a>, and <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope\">Conversation settings</a>.</p>"}))
    ConfigurationEvent.add_member(:chat_mode_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatModeConfiguration, location_name: 'chatModeConfiguration'))
    ConfigurationEvent.add_member(:attribute_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'attributeFilter'))
    ConfigurationEvent.type = Types::ConfigurationEvent
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message describing a <code>ConflictException</code>.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource affected.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContentBlockerRule.add_member(:system_message_override, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemMessageOverride, location_name: 'systemMessageOverride', traits: {"smithy.api#documentation" => "<p>The configured custom message displayed to an end user informing them that they've used a blocked phrase during chat.</p>"}))
    ContentBlockerRule.type = Types::ContentBlockerRule
    ContentRetrievalRule.add_member(:eligible_data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: EligibleDataSources, location_name: 'eligibleDataSources', traits: {"smithy.api#documentation" => "<p>Specifies data sources in a Amazon Q Business application to use for content generation.</p>"}))
    ContentRetrievalRule.type = Types::ContentRetrievalRule
    ContentSource.add_member(:retriever, Types::ContentSource::Retriever, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverContentSource, location_name: 'retriever', traits: {"smithy.api#documentation" => "<p>The retriever to use as the content source.</p>"}))
    ContentSource.add_member(:unknown, Types::ContentSource::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ContentSource.type = Types::ContentSource
    ContentType.add_member(:pdf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PDF', traits: {"smithy.api#enumValue" => "PDF"}))
    ContentType.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTML', traits: {"smithy.api#enumValue" => "HTML"}))
    ContentType.add_member(:ms_word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MS_WORD', traits: {"smithy.api#enumValue" => "MS_WORD"}))
    ContentType.add_member(:plain_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT', traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    ContentType.add_member(:ppt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PPT', traits: {"smithy.api#enumValue" => "PPT"}))
    ContentType.add_member(:rtf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RTF', traits: {"smithy.api#enumValue" => "RTF"}))
    ContentType.add_member(:xml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XML', traits: {"smithy.api#enumValue" => "XML"}))
    ContentType.add_member(:xslt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XSLT', traits: {"smithy.api#enumValue" => "XSLT"}))
    ContentType.add_member(:ms_excel, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MS_EXCEL', traits: {"smithy.api#enumValue" => "MS_EXCEL"}))
    ContentType.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    ContentType.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    ContentType.add_member(:md, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MD', traits: {"smithy.api#enumValue" => "MD"}))
    Conversation.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business conversation.</p>"}))
    Conversation.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the conversation.</p>"}))
    Conversation.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start time of the conversation.</p>"}))
    Conversation.type = Types::Conversation
    ConversationSource.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business conversation.</p>", "smithy.api#required" => {}}))
    ConversationSource.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business attachment.</p>", "smithy.api#required" => {}}))
    ConversationSource.type = Types::ConversationSource
    Conversations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Conversation)
    CopyFromSource.add_member(:conversation, Types::CopyFromSource::Conversation, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationSource, location_name: 'conversation', traits: {"smithy.api#documentation" => "<p>A reference to an attachment in an existing conversation.</p>"}))
    CopyFromSource.add_member(:unknown, Types::CopyFromSource::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    CopyFromSource.type = Types::CopyFromSource
    CreateAnonymousWebExperienceUrlRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application environment attached to the web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAnonymousWebExperienceUrlRequest.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of the web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAnonymousWebExperienceUrlRequest.add_member(:session_duration_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionDurationInMinutes, location_name: 'sessionDurationInMinutes', traits: {"smithy.api#documentation" => "<p>The duration of the session associated with the unique URL for the web experience.</p>"}))
    CreateAnonymousWebExperienceUrlRequest.type = Types::CreateAnonymousWebExperienceUrlRequest
    CreateAnonymousWebExperienceUrlResponse.add_member(:anonymous_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'anonymousUrl', traits: {"smithy.api#documentation" => "<p>The unique URL for accessing the web experience.</p> <important> <p>This URL can only be used once and must be used within 5 minutes after it's generated.</p> </important>"}))
    CreateAnonymousWebExperienceUrlResponse.type = Types::CreateAnonymousWebExperienceUrlResponse
    CreateApplicationRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A name for the Amazon Q Business application. </p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of an IAM role with permissions to access your Amazon CloudWatch logs and metrics. If this property is not specified, Amazon Q Business will create a <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles.html#slr-permissions\">service linked role (SLR)</a> and use it as the application's role.</p>"}))
    CreateApplicationRequest.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'identityType', traits: {"smithy.api#documentation" => "<p>The authentication type being used by a Amazon Q Business application.</p>"}))
    CreateApplicationRequest.add_member(:iam_identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMIdentityProviderArn, location_name: 'iamIdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an identity provider being used by an Amazon Q Business application.</p>"}))
    CreateApplicationRequest.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application.</p>"}))
    CreateApplicationRequest.add_member(:client_ids_for_oidc, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdsForOIDC, location_name: 'clientIdsForOIDC', traits: {"smithy.api#documentation" => "<p>The OIDC client ID for a Amazon Q Business application.</p>"}))
    CreateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the Amazon Q Business application. </p>"}))
    CreateApplicationRequest.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS key that is used to encrypt your data. Amazon Q Business doesn't support asymmetric keys.</p>"}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize your Amazon Q Business application. You can also use tags to help control access to the application. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"}))
    CreateApplicationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create your Amazon Q Business application.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:attachments_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsConfiguration, location_name: 'attachmentsConfiguration', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>An option to allow end users to upload files directly during chat.</p>"}))
    CreateApplicationRequest.add_member(:q_apps_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsConfiguration, location_name: 'qAppsConfiguration', traits: {"smithy.api#documentation" => "<p>An option to allow end users to create and use Amazon Q Apps in the web experience.</p>"}))
    CreateApplicationRequest.add_member(:personalization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalizationConfiguration, location_name: 'personalizationConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information about chat response personalization. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html\">Personalizing chat responses</a> </p>"}))
    CreateApplicationRequest.add_member(:quick_sight_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickSightConfiguration, location_name: 'quickSightConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon QuickSight configuration for an Amazon Q Business application that uses QuickSight for authentication. This configuration is required if your application uses QuickSight as the identity provider. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html\">Creating an Amazon QuickSight integrated application</a>.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>"}))
    CreateApplicationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the Amazon Q Business application. </p>"}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateChatResponseConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application for which to create the new chat response configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A human-readable name for the new chat response configuration, making it easier to identify and manage among multiple configurations.</p>", "smithy.api#required" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure idempotency of the request. This helps prevent the same configuration from being created multiple times if retries occur.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:response_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseConfigurations, location_name: 'responseConfigurations', traits: {"smithy.api#documentation" => "<p>A collection of response configuration settings that define how Amazon Q Business will generate and format responses to user queries in chat interactions.</p>", "smithy.api#required" => {}}))
    CreateChatResponseConfigurationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs to apply as tags to the new chat response configuration, enabling categorization and management of resources across Amazon Web Services services.</p>"}))
    CreateChatResponseConfigurationRequest.type = Types::CreateChatResponseConfigurationRequest
    CreateChatResponseConfigurationResponse.add_member(:chat_response_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: 'chatResponseConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to a newly created chat response configuration, used for subsequent operations on this resource.</p>", "smithy.api#required" => {}}))
    CreateChatResponseConfigurationResponse.add_member(:chat_response_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationArn, location_name: 'chatResponseConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the newly created chat response configuration, which uniquely identifies the resource across all Amazon Web Services services. </p>", "smithy.api#required" => {}}))
    CreateChatResponseConfigurationResponse.type = Types::CreateChatResponseConfigurationResponse
    CreateDataAccessorRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalRoleArn, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for the ISV that will be accessing the data.</p>", "smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:action_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationList, location_name: 'actionConfigurations', traits: {"smithy.api#documentation" => "<p>A list of action configurations specifying the allowed actions and any associated filters.</p>", "smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier you provide to ensure idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataAccessorRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A friendly name for the data accessor.</p>", "smithy.api#required" => {}}))
    CreateDataAccessorRequest.add_member(:authentication_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: 'authenticationDetail', traits: {"smithy.api#documentation" => "<p>The authentication configuration details for the data accessor. This specifies how the ISV will authenticate when accessing data through this data accessor.</p>"}))
    CreateDataAccessorRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>The tags to associate with the data accessor.</p>"}))
    CreateDataAccessorRequest.type = Types::CreateDataAccessorRequest
    CreateDataAccessorResponse.add_member(:data_accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorId, location_name: 'dataAccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the created data accessor.</p>", "smithy.api#required" => {}}))
    CreateDataAccessorResponse.add_member(:idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: 'idcApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center application created for this data accessor.</p>", "smithy.api#required" => {}}))
    CreateDataAccessorResponse.add_member(:data_accessor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorArn, location_name: 'dataAccessorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the created data accessor.</p>", "smithy.api#required" => {}}))
    CreateDataAccessorResponse.type = Types::CreateDataAccessorResponse
    CreateDataSourceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p> The identifier of the Amazon Q Business application the data source will be attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index that you want to use with the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'displayName', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A name for the data source connector.</p>", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Configuration information to connect your data source repository to Amazon Q Business. Use this parameter to provide a JSON schema with configuration information specific to your data source connector.</p> <p>Each data source has a JSON schema provided by Amazon Q Business that you must use. For example, the Amazon S3 and Web Crawler connectors require the following JSON schemas:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/s3-api.html\">Amazon S3 JSON schema</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/web-crawler-api.html\">Web Crawler JSON schema</a> </p> </li> </ul> <p>You can find configuration templates for your specific data source using the following steps:</p> <ol> <li> <p>Navigate to the <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html\">Supported connectors</a> page in the Amazon Q Business User Guide, and select the data source of your choice.</p> </li> <li> <p>Then, from your specific data source connector page, select <b>Using the API</b>. You will find the JSON schema for your data source, including parameter descriptions, in this section.</p> </li> </ol>", "smithy.api#required" => {}}))
    CreateDataSourceRequest.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: 'vpcConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for an Amazon VPC (Virtual Private Cloud) to connect to your data source. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html\">Using Amazon VPC with Amazon Q Business connectors</a>.</p>"}))
    CreateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the data source connector.</p>"}))
    CreateDataSourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize the data source connector. You can also use tags to help control access to the data source connector. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"}))
    CreateDataSourceRequest.add_member(:sync_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSchedule, location_name: 'syncSchedule', traits: {"smithy.api#documentation" => "<p>Sets the frequency for Amazon Q Business to check the documents in your data source repository and update your index. If you don't set a schedule, Amazon Q Business won't periodically update the index.</p> <p>Specify a <code>cron-</code> format schedule string or an empty string to indicate that the index is updated on demand. You can't specify the <code>Schedule</code> parameter when the <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do, you receive a <code>ValidationException</code> exception. </p>"}))
    CreateDataSourceRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source and required resources.</p>"}))
    CreateDataSourceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token you provide to identify a request to create a data source connector. Multiple calls to the <code>CreateDataSource</code> API with the same client token will create only one data source connector. </p>", "smithy.api#idempotencyToken" => {}}))
    CreateDataSourceRequest.add_member(:document_enrichment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: 'documentEnrichmentConfiguration'))
    CreateDataSourceRequest.add_member(:media_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: 'mediaExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for extracting information from media in documents during ingestion.</p>"}))
    CreateDataSourceRequest.type = Types::CreateDataSourceRequest
    CreateDataSourceResponse.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source connector.</p>"}))
    CreateDataSourceResponse.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceArn, location_name: 'dataSourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of a data source in an Amazon Q Business application. </p>"}))
    CreateDataSourceResponse.type = Types::CreateDataSourceResponse
    CreateIndexRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application using the index.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'displayName', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A name for the Amazon Q Business index.</p>", "smithy.api#required" => {}}))
    CreateIndexRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the Amazon Q Business index.</p>"}))
    CreateIndexRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The index type that's suitable for your needs. For more information on what's included in each type of index, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#index-tiers\">Amazon Q Business tiers</a>.</p>"}))
    CreateIndexRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize the index. You can also use tags to help control access to the index. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"}))
    CreateIndexRequest.add_member(:capacity_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: 'capacityConfiguration', traits: {"smithy.api#documentation" => "<p>The capacity units you want to provision for your index. You can add and remove capacity to fit your usage needs.</p>"}))
    CreateIndexRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create an index. Multiple calls to the <code>CreateIndex</code> API with the same client token will create only one index.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateIndexRequest.type = Types::CreateIndexRequest
    CreateIndexResponse.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier for the Amazon Q Business index.</p>"}))
    CreateIndexResponse.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of an Amazon Q Business index.</p>"}))
    CreateIndexResponse.type = Types::CreateIndexResponse
    CreatePluginRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application that will contain the plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A the name for your plugin.</p>", "smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of plugin you want to create.</p>", "smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:auth_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: 'authConfiguration', traits: {"smithy.api#required" => {}}))
    CreatePluginRequest.add_member(:server_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'serverUrl', traits: {"smithy.api#documentation" => "<p>The source URL used for plugin configuration.</p>"}))
    CreatePluginRequest.add_member(:custom_plugin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginConfiguration, location_name: 'customPluginConfiguration', traits: {"smithy.api#documentation" => "<p>Contains configuration for a custom plugin.</p>"}))
    CreatePluginRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize the data source connector. You can also use tags to help control access to the data source connector. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"}))
    CreatePluginRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create your Amazon Q Business plugin.</p>", "smithy.api#idempotencyToken" => {}}))
    CreatePluginRequest.type = Types::CreatePluginRequest
    CreatePluginResponse.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin created.</p>"}))
    CreatePluginResponse.add_member(:plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginArn, location_name: 'pluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a plugin.</p>"}))
    CreatePluginResponse.add_member(:build_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginBuildStatus, location_name: 'buildStatus', traits: {"smithy.api#documentation" => "<p>The current status of a plugin. A plugin is modified asynchronously.</p>"}))
    CreatePluginResponse.type = Types::CreatePluginResponse
    CreateRetrieverRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of your Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverType, location_name: 'type', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#documentation" => "<p>The type of retriever you are using.</p>", "smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of your retriever.</p>", "smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    CreateRetrieverRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role used by Amazon Q Business to access the basic authentication credentials stored in a Secrets Manager secret.</p>"}))
    CreateRetrieverRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create your Amazon Q Business application retriever.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateRetrieverRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize the retriever. You can also use tags to help control access to the retriever. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"}))
    CreateRetrieverRequest.type = Types::CreateRetrieverRequest
    CreateRetrieverResponse.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The identifier of the retriever you are using.</p>"}))
    CreateRetrieverResponse.add_member(:retriever_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverArn, location_name: 'retrieverArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role associated with a retriever.</p>"}))
    CreateRetrieverResponse.type = Types::CreateRetrieverResponse
    CreateSubscriptionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application the subscription should be added to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSubscriptionRequest.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionPrincipal, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center <code>UserId</code> or <code>GroupId</code> of a user or group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>", "smithy.api#required" => {}}))
    CreateSubscriptionRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of Amazon Q Business subscription you want to create.</p>", "smithy.api#required" => {}}))
    CreateSubscriptionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create a subscription for your Amazon Q Business application.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSubscriptionRequest.type = Types::CreateSubscriptionRequest
    CreateSubscriptionResponse.add_member(:subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionId, location_name: 'subscriptionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business subscription created.</p>"}))
    CreateSubscriptionResponse.add_member(:subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: 'subscriptionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription created.</p>"}))
    CreateSubscriptionResponse.add_member(:current_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'currentSubscription', traits: {"smithy.api#documentation" => "<p>The type of your current Amazon Q Business subscription.</p>"}))
    CreateSubscriptionResponse.add_member(:next_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'nextSubscription', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Q Business subscription for the next month.</p>"}))
    CreateSubscriptionResponse.type = Types::CreateSubscriptionResponse
    CreateUserRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application for which the user mapping will be created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user emails attached to a user mapping.</p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:user_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliases', traits: {"smithy.api#documentation" => "<p>The list of user aliases in the mapping.</p>", "smithy.api#length" => {"min" => 0, "max" => 100}}))
    CreateUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to create your Amazon Q Business user mapping.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResponse.type = Types::CreateUserResponse
    CreateWebExperienceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebExperienceRequest.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title for your Amazon Q Business web experience.</p>"}))
    CreateWebExperienceRequest.add_member(:subtitle, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: 'subtitle', traits: {"smithy.api#documentation" => "<p>A subtitle to personalize your Amazon Q Business web experience.</p>"}))
    CreateWebExperienceRequest.add_member(:welcome_message, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: 'welcomeMessage', traits: {"smithy.api#documentation" => "<p>The customized welcome message for end users of an Amazon Q Business web experience.</p>"}))
    CreateWebExperienceRequest.add_member(:sample_prompts_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: 'samplePromptsControlMode', traits: {"smithy.api#documentation" => "<p>Determines whether sample prompts are enabled in the web experience for an end user.</p>"}))
    CreateWebExperienceRequest.add_member(:origins, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceOrigins, location_name: 'origins', traits: {"smithy.api#documentation" => "<p>Sets the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the base URL for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified). </p> <note> <p>You must only submit a <i>base URL</i> and not a full path. For example, <code>https://docs.aws.amazon.com</code>.</p> </note>"}))
    CreateWebExperienceRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service role attached to your web experience.</p> <note> <p>You must provide this value if you're using IAM Identity Center to manage end user access to your application. If you're using legacy identity management to manage user access, you don't need to provide this value.</p> </note>"}))
    CreateWebExperienceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of key-value pairs that identify or categorize your Amazon Q Business web experience. You can also use tags to help control access to the web experience. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>"}))
    CreateWebExperienceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token you provide to identify a request to create an Amazon Q Business web experience. </p>", "smithy.api#idempotencyToken" => {}}))
    CreateWebExperienceRequest.add_member(:identity_provider_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: 'identityProviderConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>"}))
    CreateWebExperienceRequest.add_member(:browser_extension_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserExtensionConfiguration, location_name: 'browserExtensionConfiguration', traits: {"smithy.api#documentation" => "<p>The browser extension configuration for an Amazon Q Business web experience.</p> <note> <p> For Amazon Q Business application using external OIDC-compliant identity providers (IdPs). The IdP administrator must add the browser extension sign-in redirect URLs to the IdP application. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html\">Configure external OIDC identity provider for your browser extensions.</a>. </p> </note>"}))
    CreateWebExperienceRequest.add_member(:customization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationConfiguration, location_name: 'customizationConfiguration', traits: {"smithy.api#documentation" => "<p>Sets the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>"}))
    CreateWebExperienceRequest.type = Types::CreateWebExperienceRequest
    CreateWebExperienceResponse.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience.</p>"}))
    CreateWebExperienceResponse.add_member(:web_experience_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceArn, location_name: 'webExperienceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of an Amazon Q Business web experience.</p>"}))
    CreateWebExperienceResponse.type = Types::CreateWebExperienceResponse
    CreatorModeConfiguration.add_member(:creator_mode_control, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorModeControl, location_name: 'creatorModeControl', traits: {"smithy.api#documentation" => "<p>Status information about whether <code>CREATOR_MODE</code> has been enabled or disabled. The default status is <code>DISABLED</code>.</p>", "smithy.api#required" => {}}))
    CreatorModeConfiguration.type = Types::CreatorModeConfiguration
    CreatorModeControl.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CreatorModeControl.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CustomPluginConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for your custom plugin configuration.</p>", "smithy.api#required" => {}}))
    CustomPluginConfiguration.add_member(:api_schema_type, Smithy::Schema::Shapes::ShapeRef.new(shape: APISchemaType, location_name: 'apiSchemaType', traits: {"smithy.api#documentation" => "<p>The type of OpenAPI schema to use.</p>", "smithy.api#required" => {}}))
    CustomPluginConfiguration.add_member(:api_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: APISchema, location_name: 'apiSchema', traits: {"smithy.api#documentation" => "<p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>"}))
    CustomPluginConfiguration.type = Types::CustomPluginConfiguration
    CustomizationConfiguration.add_member(:custom_css_url, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCSSUrl, location_name: 'customCSSUrl', traits: {"smithy.api#documentation" => "<p>Provides the URL where the custom CSS file is hosted for an Amazon Q web experience.</p>"}))
    CustomizationConfiguration.add_member(:logo_url, Smithy::Schema::Shapes::ShapeRef.new(shape: LogoUrl, location_name: 'logoUrl', traits: {"smithy.api#documentation" => "<p>Provides the URL where the custom logo file is hosted for an Amazon Q web experience.</p>"}))
    CustomizationConfiguration.add_member(:font_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FontUrl, location_name: 'fontUrl', traits: {"smithy.api#documentation" => "<p>Provides the URL where the custom font file is hosted for an Amazon Q web experience.</p>"}))
    CustomizationConfiguration.add_member(:favicon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FaviconUrl, location_name: 'faviconUrl', traits: {"smithy.api#documentation" => "<p>Provides the URL where the custom favicon file is hosted for an Amazon Q web experience.</p>"}))
    CustomizationConfiguration.type = Types::CustomizationConfiguration
    DataAccessor.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the data accessor.</p>"}))
    DataAccessor.add_member(:data_accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorId, location_name: 'dataAccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data accessor.</p>"}))
    DataAccessor.add_member(:data_accessor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorArn, location_name: 'dataAccessorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data accessor.</p>"}))
    DataAccessor.add_member(:idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: 'idcApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the associated IAM Identity Center application.</p>"}))
    DataAccessor.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalRoleArn, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for the ISV associated with this data accessor.</p>"}))
    DataAccessor.add_member(:authentication_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: 'authenticationDetail', traits: {"smithy.api#documentation" => "<p>The authentication configuration details for the data accessor. This specifies how the ISV authenticates when accessing data through this data accessor.</p>"}))
    DataAccessor.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data accessor was created.</p>"}))
    DataAccessor.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data accessor was last updated.</p>"}))
    DataAccessor.type = Types::DataAccessor
    DataAccessorAuthenticationConfiguration.add_member(:idc_trusted_token_issuer_configuration, Types::DataAccessorAuthenticationConfiguration::IdcTrustedTokenIssuerConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorIdcTrustedTokenIssuerConfiguration, location_name: 'idcTrustedTokenIssuerConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration for IAM Identity Center Trusted Token Issuer (TTI) authentication used when the authentication type is <code>AWS_IAM_IDC_TTI</code>.</p>"}))
    DataAccessorAuthenticationConfiguration.add_member(:unknown, Types::DataAccessorAuthenticationConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DataAccessorAuthenticationConfiguration.type = Types::DataAccessorAuthenticationConfiguration
    DataAccessorAuthenticationDetail.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorAuthenticationType, location_name: 'authenticationType', traits: {"smithy.api#documentation" => "<p>The type of authentication to use for the data accessor. This determines how the ISV authenticates when accessing data. You can use one of two authentication types:</p> <ul> <li> <p> <code>AWS_IAM_IDC_TTI</code> - Authentication using IAM Identity Center Trusted Token Issuer (TTI). This authentication type allows the ISV to use a trusted token issuer to generate tokens for accessing the data.</p> </li> <li> <p> <code>AWS_IAM_IDC_AUTH_CODE</code> - Authentication using IAM Identity Center authorization code flow. This authentication type uses the standard OAuth 2.0 authorization code flow for authentication.</p> </li> </ul>", "smithy.api#required" => {}}))
    DataAccessorAuthenticationDetail.add_member(:authentication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorAuthenticationConfiguration, location_name: 'authenticationConfiguration', traits: {"smithy.api#documentation" => "<p>The specific authentication configuration based on the authentication type.</p>"}))
    DataAccessorAuthenticationDetail.add_member(:external_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorExternalIds, location_name: 'externalIds', traits: {"smithy.api#documentation" => "<p>A list of external identifiers associated with this authentication configuration. These are used to correlate the data accessor with external systems.</p>"}))
    DataAccessorAuthenticationDetail.type = Types::DataAccessorAuthenticationDetail
    DataAccessorAuthenticationType.add_member(:aws_iam_idc_tti, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDC_TTI', traits: {"smithy.api#enumValue" => "AWS_IAM_IDC_TTI"}))
    DataAccessorAuthenticationType.add_member(:aws_iam_idc_auth_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDC_AUTH_CODE', traits: {"smithy.api#enumValue" => "AWS_IAM_IDC_AUTH_CODE"}))
    DataAccessorExternalIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorExternalId)
    DataAccessorIdcTrustedTokenIssuerConfiguration.add_member(:idc_trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcTrustedTokenIssuerArn, location_name: 'idcTrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center Trusted Token Issuer that will be used for authentication.</p>", "smithy.api#required" => {}}))
    DataAccessorIdcTrustedTokenIssuerConfiguration.type = Types::DataAccessorIdcTrustedTokenIssuerConfiguration
    DataAccessors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessor)
    DataSource.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Q Business data source.</p>"}))
    DataSource.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business data source.</p>"}))
    DataSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Q Business data source.</p>"}))
    DataSource.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business data source was created.</p>"}))
    DataSource.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business data source was last updated. </p>"}))
    DataSource.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Amazon Q Business data source.</p>"}))
    DataSource.type = Types::DataSource
    DataSourceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId)
    DataSourceStatus.add_member(:pending_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_CREATION', traits: {"smithy.api#enumValue" => "PENDING_CREATION"}))
    DataSourceStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DataSourceStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataSourceStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DataSourceStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    DataSourceSyncJob.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The identifier of a data source synchronization job.</p>"}))
    DataSourceSyncJob.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The Unix time stamp when the data source synchronization job started.</p>"}))
    DataSourceSyncJob.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the synchronization job completed.</p>"}))
    DataSourceSyncJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the synchronization job. When the <code>Status</code> field is set to <code>SUCCEEDED</code>, the synchronization job is done. If the status code is <code>FAILED</code>, the <code>ErrorCode</code> and <code>ErrorMessage</code> fields give you the reason for the failure.</p>"}))
    DataSourceSyncJob.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>If the <code>Status</code> field is set to <code>FAILED</code>, the <code>ErrorCode</code> field indicates the reason the synchronization failed. </p>"}))
    DataSourceSyncJob.add_member(:data_source_error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dataSourceErrorCode', traits: {"smithy.api#documentation" => "<p>If the reason that the synchronization failed is due to an error with the underlying data source, this field contains a code that identifies the error.</p>"}))
    DataSourceSyncJob.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSyncJobMetrics, location_name: 'metrics', traits: {"smithy.api#documentation" => "<p>Maps a batch delete document request to a specific data source sync job. This is optional and should only be supplied when documents are deleted by a data source connector.</p>"}))
    DataSourceSyncJob.type = Types::DataSourceSyncJob
    DataSourceSyncJobMetrics.add_member(:documents_added, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'documentsAdded', traits: {"smithy.api#documentation" => "<p>The current count of documents added from the data source during the data source sync.</p>"}))
    DataSourceSyncJobMetrics.add_member(:documents_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'documentsModified', traits: {"smithy.api#documentation" => "<p>The current count of documents modified in the data source during the data source sync.</p>"}))
    DataSourceSyncJobMetrics.add_member(:documents_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'documentsDeleted', traits: {"smithy.api#documentation" => "<p>The current count of documents deleted from the data source during the data source sync.</p>"}))
    DataSourceSyncJobMetrics.add_member(:documents_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'documentsFailed', traits: {"smithy.api#documentation" => "<p>The current count of documents that failed to sync from the data source during the data source sync.</p>"}))
    DataSourceSyncJobMetrics.add_member(:documents_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'documentsScanned', traits: {"smithy.api#documentation" => "<p>The current count of documents crawled by the ongoing sync job in the data source.</p>"}))
    DataSourceSyncJobMetrics.type = Types::DataSourceSyncJobMetrics
    DataSourceSyncJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataSourceSyncJobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DataSourceSyncJobStatus.add_member(:syncing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING', traits: {"smithy.api#enumValue" => "SYNCING"}))
    DataSourceSyncJobStatus.add_member(:incomplete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPLETE', traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    DataSourceSyncJobStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    DataSourceSyncJobStatus.add_member(:aborted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABORTED', traits: {"smithy.api#enumValue" => "ABORTED"}))
    DataSourceSyncJobStatus.add_member(:syncing_indexing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING_INDEXING', traits: {"smithy.api#enumValue" => "SYNCING_INDEXING"}))
    DataSourceSyncJobs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSyncJob)
    DataSourceVpcConfiguration.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers for subnets within your Amazon VPC. The subnets should be able to connect to each other in the VPC, and they should have outgoing access to the Internet through a NAT device.</p>", "smithy.api#required" => {}}))
    DataSourceVpcConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of identifiers of security groups within your Amazon VPC. The security groups should enable Amazon Q Business to connect to the data source.</p>", "smithy.api#required" => {}}))
    DataSourceVpcConfiguration.type = Types::DataSourceVpcConfiguration
    DataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DateAttributeBoostingConfiguration.add_member(:boosting_level, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, location_name: 'boostingLevel', traits: {"smithy.api#documentation" => "<p>Specifies the priority tier ranking of boosting applied to document attributes. For version 2, this parameter indicates the relative ranking between boosted fields (ONE being highest priority, TWO being second highest, etc.) and determines the order in which attributes influence document ranking in search results. For version 1, this parameter specifies the boosting intensity. For version 2, boosting intensity (VERY HIGH, HIGH, MEDIUM, LOW, NONE) are not supported. Note that in version 2, you are not allowed to boost on only one field and make this value TWO.</p>", "smithy.api#required" => {}}))
    DateAttributeBoostingConfiguration.add_member(:boosting_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: BoostingDurationInSeconds, location_name: 'boostingDurationInSeconds', traits: {"smithy.api#documentation" => "<p>Specifies the duration, in seconds, of a boost applies to a <code>DATE</code> type document attribute.</p>"}))
    DateAttributeBoostingConfiguration.type = Types::DateAttributeBoostingConfiguration
    DeleteApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteAttachmentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Q Business application environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the conversation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentId, location_name: 'attachmentId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the attachment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttachmentRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user involved in the conversation.</p>", "smithy.api#httpQuery" => "userId"}))
    DeleteAttachmentRequest.type = Types::DeleteAttachmentRequest
    DeleteAttachmentResponse.type = Types::DeleteAttachmentResponse
    DeleteChatControlsConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application the chat controls have been configured for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChatControlsConfigurationRequest.type = Types::DeleteChatControlsConfigurationRequest
    DeleteChatControlsConfigurationResponse.type = Types::DeleteChatControlsConfigurationResponse
    DeleteChatResponseConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of theAmazon Q Business application from which to delete the chat response configuration.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: 'chatResponseConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the chat response configuration to delete from the specified application. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteChatResponseConfigurationRequest.type = Types::DeleteChatResponseConfigurationRequest
    DeleteChatResponseConfigurationResponse.type = Types::DeleteChatResponseConfigurationResponse
    DeleteConversationRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience conversation being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConversationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application associated with the conversation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConversationRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user who is deleting the conversation.</p>", "smithy.api#httpQuery" => "userId"}))
    DeleteConversationRequest.type = Types::DeleteConversationRequest
    DeleteConversationResponse.type = Types::DeleteConversationResponse
    DeleteDataAccessorRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAccessorRequest.add_member(:data_accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorId, location_name: 'dataAccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data accessor to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAccessorRequest.type = Types::DeleteDataAccessorRequest
    DeleteDataAccessorResponse.type = Types::DeleteDataAccessorResponse
    DeleteDataSourceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application used with the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index used with the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source connector that you want to delete. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSourceRequest.type = Types::DeleteDataSourceRequest
    DeleteDataSourceResponse.type = Types::DeleteDataSourceResponse
    DeleteDocument.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'documentId', traits: {"smithy.api#documentation" => "<p>The identifier of the deleted document.</p>", "smithy.api#required" => {}}))
    DeleteDocument.type = Types::DeleteDocument
    DeleteDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDocument)
    DeleteGroupRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application in which the group mapping belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index you want to delete the group from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The name of the group you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source linked to the group</p> <p>A group can be tied to multiple data sources. You can delete a group from accessing documents in a certain data source. For example, the groups \"Research\", \"Engineering\", and \"Sales and Marketing\" are all tied to the company's documents stored in the data sources Confluence and Salesforce. You want to delete \"Research\" and \"Engineering\" groups from Salesforce, so that these groups cannot access customer-related documents stored in Salesforce. Only \"Sales and Marketing\" should access documents in the Salesforce data source.</p>", "smithy.api#httpQuery" => "dataSourceId"}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    DeleteIndexRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application the Amazon Q Business index is linked to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIndexRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business index.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIndexRequest.type = Types::DeleteIndexRequest
    DeleteIndexResponse.type = Types::DeleteIndexResponse
    DeletePluginRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier the application attached to the Amazon Q Business plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePluginRequest.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePluginRequest.type = Types::DeletePluginRequest
    DeletePluginResponse.type = Types::DeletePluginResponse
    DeleteRetrieverRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application using the retriever.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRetrieverRequest.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The identifier of the retriever being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRetrieverRequest.type = Types::DeleteRetrieverRequest
    DeleteRetrieverResponse.type = Types::DeleteRetrieverResponse
    DeleteUserRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application from which the user is being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user email being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResponse.type = Types::DeleteUserResponse
    DeleteWebExperienceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the Amazon Q Business web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebExperienceRequest.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience being deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebExperienceRequest.type = Types::DeleteWebExperienceRequest
    DeleteWebExperienceResponse.type = Types::DeleteWebExperienceResponse
    DisassociatePermissionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePermissionRequest.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statementId', traits: {"smithy.api#documentation" => "<p>The statement ID of the permission to remove.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociatePermissionRequest.type = Types::DisassociatePermissionRequest
    DisassociatePermissionResponse.type = Types::DisassociatePermissionResponse
    Document.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the document.</p>", "smithy.api#required" => {}}))
    Document.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>Custom attributes to apply to the document for refining Amazon Q Business web experience responses.</p>"}))
    Document.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The contents of the document.</p>"}))
    Document.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The file type of the document in the Blob field.</p> <p>If you want to index snippets or subsets of HTML documents instead of the entirety of the HTML documents, you add the <code>HTML</code> start and closing tags (<code>&lt;HTML&gt;content&lt;/HTML&gt;</code>) around the content.</p>"}))
    Document.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the document.</p>"}))
    Document.add_member(:access_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessConfiguration, location_name: 'accessConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for access permission to a document.</p>"}))
    Document.add_member(:document_enrichment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: 'documentEnrichmentConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for altering document metadata and content during the document ingestion process.</p>"}))
    Document.add_member(:media_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: 'mediaExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for extracting information from media in the document.</p>"}))
    Document.type = Types::Document
    DocumentAcl.add_member(:allowlist, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclMembership, location_name: 'allowlist', traits: {"smithy.api#documentation" => "<p>The allowlist conditions for the document. Users or groups matching these conditions are granted access to the document.</p>"}))
    DocumentAcl.add_member(:deny_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclMembership, location_name: 'denyList', traits: {"smithy.api#documentation" => "<p>The denylist conditions for the document. Users or groups matching these conditions are denied access to the document, overriding allowlist permissions.</p>"}))
    DocumentAcl.type = Types::DocumentAcl
    DocumentAclCondition.add_member(:member_relation, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberRelation, location_name: 'memberRelation', traits: {"smithy.api#documentation" => "<p>The logical relation between members in the condition, determining how multiple user or group conditions are combined.</p>"}))
    DocumentAclCondition.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclUsers, location_name: 'users', traits: {"smithy.api#documentation" => "<p>An array of user identifiers that this condition applies to. Users listed here are subject to the access rule defined by this condition.</p>"}))
    DocumentAclCondition.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclGroups, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>An array of group identifiers that this condition applies to. Groups listed here are subject to the access rule defined by this condition.</p>"}))
    DocumentAclCondition.type = Types::DocumentAclCondition
    DocumentAclConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclCondition)
    DocumentAclGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the group in the document's ACL. This is used to identify the group when applying access rules.</p>"}))
    DocumentAclGroup.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the group. This indicates the scope of the group's applicability in access control.</p>"}))
    DocumentAclGroup.type = Types::DocumentAclGroup
    DocumentAclGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclGroup)
    DocumentAclMembership.add_member(:member_relation, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberRelation, location_name: 'memberRelation', traits: {"smithy.api#documentation" => "<p>The logical relation between members in the membership rule, determining how multiple conditions are combined.</p>"}))
    DocumentAclMembership.add_member(:conditions, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclConditions, location_name: 'conditions', traits: {"smithy.api#documentation" => "<p>An array of conditions that define the membership rules. Each condition specifies criteria for users or groups to be included in this membership.</p>"}))
    DocumentAclMembership.type = Types::DocumentAclMembership
    DocumentAclUser.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user in the document's ACL. This is used to identify the user when applying access rules.</p>"}))
    DocumentAclUser.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the user. This indicates the scope of the user's applicability in access control.</p>"}))
    DocumentAclUser.type = Types::DocumentAclUser
    DocumentAclUsers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAclUser)
    DocumentAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The identifier for the attribute.</p>", "smithy.api#required" => {}}))
    DocumentAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the attribute. </p>", "smithy.api#required" => {}}))
    DocumentAttribute.type = Types::DocumentAttribute
    DocumentAttributeBoostingConfiguration.add_member(:number_configuration, Types::DocumentAttributeBoostingConfiguration::NumberConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeBoostingConfiguration, location_name: 'numberConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information on boosting <code>NUMBER</code> type document attributes.</p> <p> <code>NUMBER</code> attributes are not supported when using <code>NativeIndexConfiguration</code> version 2, which focuses on <code>DATE</code> attributes for recency and <code>STRING</code> attributes for source prioritization.</p>"}))
    DocumentAttributeBoostingConfiguration.add_member(:string_configuration, Types::DocumentAttributeBoostingConfiguration::StringConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeBoostingConfiguration, location_name: 'stringConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information on boosting <code>STRING</code> type document attributes.</p> <p>Version 2 assigns priority tiers to <code>STRING</code> attributes, establishing clear hierarchical relationships with other boosted attributes.</p>"}))
    DocumentAttributeBoostingConfiguration.add_member(:date_configuration, Types::DocumentAttributeBoostingConfiguration::DateConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: DateAttributeBoostingConfiguration, location_name: 'dateConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information on boosting <code>DATE</code> type document attributes.</p> <p>Version 2 assigns priority tiers to <code>DATE</code> attributes, establishing clear hierarchical relationships with other boosted attributes.</p>"}))
    DocumentAttributeBoostingConfiguration.add_member(:string_list_configuration, Types::DocumentAttributeBoostingConfiguration::StringListConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: StringListAttributeBoostingConfiguration, location_name: 'stringListConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information on boosting <code>STRING_LIST</code> type document attributes.</p> <p> <code>STRING_LIST</code> attributes are not supported when using <code>NativeIndexConfiguration</code> version 2, which focuses on <code>DATE</code> attributes for recency and <code>STRING</code> attributes for source prioritization.</p>"}))
    DocumentAttributeBoostingConfiguration.add_member(:unknown, Types::DocumentAttributeBoostingConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DocumentAttributeBoostingConfiguration.type = Types::DocumentAttributeBoostingConfiguration
    DocumentAttributeBoostingLevel.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    DocumentAttributeBoostingLevel.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    DocumentAttributeBoostingLevel.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    DocumentAttributeBoostingLevel.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    DocumentAttributeBoostingLevel.add_member(:very_high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERY_HIGH', traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    DocumentAttributeBoostingLevel.add_member(:one, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE', traits: {"smithy.api#enumValue" => "ONE"}))
    DocumentAttributeBoostingLevel.add_member(:two, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TWO', traits: {"smithy.api#enumValue" => "TWO"}))
    DocumentAttributeBoostingOverrideMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeKey)
    DocumentAttributeBoostingOverrideMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeBoostingConfiguration)
    DocumentAttributeCondition.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The identifier of the document attribute used for the condition.</p> <p>For example, 'Source_URI' could be an identifier for the attribute or metadata field that contains source URIs associated with the documents.</p> <p>Amazon Q Business currently doesn't support <code>_document_body</code> as an attribute key used for the condition.</p>", "smithy.api#required" => {}}))
    DocumentAttributeCondition.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentEnrichmentConditionOperator, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The identifier of the document attribute used for the condition.</p> <p>For example, 'Source_URI' could be an identifier for the attribute or metadata field that contains source URIs associated with the documents.</p> <p>Amazon Q Business currently does not support <code>_document_body</code> as an attribute key used for the condition.</p>", "smithy.api#required" => {}}))
    DocumentAttributeCondition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: 'value'))
    DocumentAttributeCondition.type = Types::DocumentAttributeCondition
    DocumentAttributeConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadataConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the document attribute.</p>"}))
    DocumentAttributeConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of document attribute.</p>"}))
    DocumentAttributeConfiguration.add_member(:search, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'search', traits: {"smithy.api#documentation" => "<p>Information about whether the document attribute can be used by an end user to search for information on their web experience.</p>"}))
    DocumentAttributeConfiguration.type = Types::DocumentAttributeConfiguration
    DocumentAttributeConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeConfiguration)
    DocumentAttributeStringListValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DocumentAttributeTarget.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents.</p>", "smithy.api#required" => {}}))
    DocumentAttributeTarget.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeValue, location_name: 'value'))
    DocumentAttributeTarget.add_member(:attribute_value_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueOperator, location_name: 'attributeValueOperator', traits: {"smithy.api#documentation" => "<p> <code>TRUE</code> to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to <code>TRUE</code>.</p>"}))
    DocumentAttributeTarget.type = Types::DocumentAttributeTarget
    DocumentAttributeValue.add_member(:string_value, Types::DocumentAttributeValue::StringValue, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeStringValue, location_name: 'stringValue', traits: {"smithy.api#documentation" => "<p>A string.</p>", "smithy.api#length" => {"max" => 2048}}))
    DocumentAttributeValue.add_member(:string_list_value, Types::DocumentAttributeValue::StringListValue, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeStringListValue, location_name: 'stringListValue', traits: {"smithy.api#documentation" => "<p>A list of strings.</p>"}))
    DocumentAttributeValue.add_member(:long_value, Types::DocumentAttributeValue::LongValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'longValue', traits: {"smithy.api#documentation" => "<p>A long integer value. </p>"}))
    DocumentAttributeValue.add_member(:date_value, Types::DocumentAttributeValue::DateValue, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'dateValue', traits: {"smithy.api#documentation" => "<p>A date expressed as an ISO 8601 string.</p> <p>It's important for the time zone to be included in the ISO 8601 date-time format. For example, 2012-03-25T12:30:10+01:00 is the ISO 8601 date-time format for March 25th 2012 at 12:30PM (plus 10 seconds) in Central European Time. </p>"}))
    DocumentAttributeValue.add_member(:unknown, Types::DocumentAttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DocumentAttributeValue.type = Types::DocumentAttributeValue
    DocumentAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttribute)
    DocumentContent.add_member(:blob, Types::DocumentContent::Blob, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'blob', traits: {"smithy.api#documentation" => "<p>The contents of the document. Documents passed to the <code>blob</code> parameter must be base64 encoded. Your code might not need to encode the document file bytes if you're using an Amazon Web Services SDK to call Amazon Q Business APIs. If you are calling the Amazon Q Business endpoint directly using REST, you must base64 encode the contents before sending.</p>"}))
    DocumentContent.add_member(:s3, Types::DocumentContent::S3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3, location_name: 's3', traits: {"smithy.api#documentation" => "<p>The path to the document in an Amazon S3 bucket.</p>"}))
    DocumentContent.add_member(:unknown, Types::DocumentContent::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DocumentContent.type = Types::DocumentContent
    DocumentContentOperator.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    DocumentDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentDetails)
    DocumentDetails.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'documentId', traits: {"smithy.api#documentation" => "<p>The identifier of the document.</p>"}))
    DocumentDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the document.</p>"}))
    DocumentDetails.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error message associated with the document.</p>"}))
    DocumentDetails.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the document was created.</p>"}))
    DocumentDetails.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the document was last updated.</p>"}))
    DocumentDetails.type = Types::DocumentDetails
    DocumentEnrichmentConditionOperator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    DocumentEnrichmentConditionOperator.add_member(:greater_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    DocumentEnrichmentConditionOperator.add_member(:less_than_or_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUALS', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NOT_EQUALS"}))
    DocumentEnrichmentConditionOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    DocumentEnrichmentConditionOperator.add_member(:not_contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONTAINS', traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    DocumentEnrichmentConditionOperator.add_member(:exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXISTS', traits: {"smithy.api#enumValue" => "EXISTS"}))
    DocumentEnrichmentConditionOperator.add_member(:not_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EXISTS', traits: {"smithy.api#enumValue" => "NOT_EXISTS"}))
    DocumentEnrichmentConditionOperator.add_member(:begins_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEGINS_WITH', traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    DocumentEnrichmentConfiguration.add_member(:inline_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineDocumentEnrichmentConfigurations, location_name: 'inlineConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information to alter document attributes or metadata fields and content when ingesting documents into Amazon Q Business.</p>"}))
    DocumentEnrichmentConfiguration.add_member(:pre_extraction_hook_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HookConfiguration, location_name: 'preExtractionHookConfiguration'))
    DocumentEnrichmentConfiguration.add_member(:post_extraction_hook_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HookConfiguration, location_name: 'postExtractionHookConfiguration'))
    DocumentEnrichmentConfiguration.type = Types::DocumentEnrichmentConfiguration
    DocumentStatus.add_member(:received, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECEIVED', traits: {"smithy.api#enumValue" => "RECEIVED"}))
    DocumentStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    DocumentStatus.add_member(:indexed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEXED', traits: {"smithy.api#enumValue" => "INDEXED"}))
    DocumentStatus.add_member(:updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATED', traits: {"smithy.api#enumValue" => "UPDATED"}))
    DocumentStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DocumentStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    DocumentStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    DocumentStatus.add_member(:document_failed_to_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOCUMENT_FAILED_TO_INDEX', traits: {"smithy.api#enumValue" => "DOCUMENT_FAILED_TO_INDEX"}))
    Documents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Document)
    EligibleDataSource.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index the data source is attached to.</p>"}))
    EligibleDataSource.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source.</p>"}))
    EligibleDataSource.type = Types::EligibleDataSource
    EligibleDataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EligibleDataSource)
    EncryptionConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS key. Amazon Q Business doesn't support asymmetric keys.</p>"}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EndOfInputEvent.type = Types::EndOfInputEvent
    ErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "InternalError"}))
    ErrorCode.add_member(:invalid_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_REQUEST', traits: {"smithy.api#enumValue" => "InvalidRequest"}))
    ErrorCode.add_member(:resource_inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_INACTIVE', traits: {"smithy.api#enumValue" => "ResourceInactive"}))
    ErrorCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    ErrorDetail.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The message explaining the Amazon Q Business request error.</p>"}))
    ErrorDetail.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The code associated with the Amazon Q Business request error.</p>"}))
    ErrorDetail.type = Types::ErrorDetail
    ExampleChatMessages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExampleChatMessage)
    ExternalResourceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ExternalResourceException.type = Types::ExternalResourceException
    FailedAttachmentEvent.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p> The identifier of the conversation associated with the failed file upload.</p>"}))
    FailedAttachmentEvent.add_member(:user_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'userMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the end user chat message associated with the file upload.</p>"}))
    FailedAttachmentEvent.add_member(:system_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'systemMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the AI-generated message associated with the file upload.</p>"}))
    FailedAttachmentEvent.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentOutput, location_name: 'attachment'))
    FailedAttachmentEvent.type = Types::FailedAttachmentEvent
    FailedDocument.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the document that couldn't be removed from the Amazon Q Business index.</p>"}))
    FailedDocument.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An explanation for why the document couldn't be removed from the index.</p>"}))
    FailedDocument.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business data source connector that contains the failed document.</p>"}))
    FailedDocument.type = Types::FailedDocument
    FailedDocuments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedDocument)
    GetApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn, location_name: 'applicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'identityType', traits: {"smithy.api#documentation" => "<p>The authentication type being used by a Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:iam_identity_provider_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IAMIdentityProviderArn, location_name: 'iamIdentityProviderArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an identity provider being used by an Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:identity_center_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: 'identityCenterApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS IAM Identity Center instance attached to your Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM with permissions to access your CloudWatch logs and metrics.</p>"}))
    GetApplicationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: 'encryptionConfiguration', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#documentation" => "<p>The identifier of the Amazon Web Services KMS key that is used to encrypt your data. Amazon Q Business doesn't support asymmetric keys.</p>"}))
    GetApplicationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was last updated.</p>"}))
    GetApplicationResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was last updated.</p>"}))
    GetApplicationResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>If the <code>Status</code> field is set to <code>ERROR</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the synchronization to fail.</p>"}))
    GetApplicationResponse.add_member(:attachments_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedAttachmentsConfiguration, location_name: 'attachmentsConfiguration', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Settings for whether end users can upload files directly during chat.</p>"}))
    GetApplicationResponse.add_member(:q_apps_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsConfiguration, location_name: 'qAppsConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for whether end users can create and use Amazon Q Apps in the web experience.</p>"}))
    GetApplicationResponse.add_member(:personalization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalizationConfiguration, location_name: 'personalizationConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information about chat response personalization. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html\">Personalizing chat responses</a>.</p>"}))
    GetApplicationResponse.add_member(:auto_subscription_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubscriptionConfiguration, location_name: 'autoSubscriptionConfiguration', traits: {"smithy.api#documentation" => "<p>Settings for auto-subscription behavior for this application. This is only applicable to SAML and OIDC applications.</p>"}))
    GetApplicationResponse.add_member(:client_ids_for_oidc, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdsForOIDC, location_name: 'clientIdsForOIDC', traits: {"smithy.api#documentation" => "<p>The OIDC client ID for a Amazon Q Business application.</p>"}))
    GetApplicationResponse.add_member(:quick_sight_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QuickSightConfiguration, location_name: 'quickSightConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon QuickSight authentication configuration for the Amazon Q Business application.</p>"}))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetChatControlsConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application for which the chat controls are configured.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChatControlsConfigurationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForGetTopicConfigurations, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of configured chat controls to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetChatControlsConfigurationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business chat controls configured.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetChatControlsConfigurationRequest.type = Types::GetChatControlsConfigurationRequest
    GetChatControlsConfigurationResponse.add_member(:response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseScope, location_name: 'responseScope', traits: {"smithy.api#documentation" => "<p>The response scope configured for a Amazon Q Business application. This determines whether your application uses its retrieval augmented generation (RAG) system to generate answers only from your enterprise data, or also uses the large language models (LLM) knowledge to respons to end user questions in chat.</p>"}))
    GetChatControlsConfigurationResponse.add_member(:orchestration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedOrchestrationConfiguration, location_name: 'orchestrationConfiguration', traits: {"smithy.api#documentation" => "<p> The chat response orchestration settings for your application.</p> <note> <p>Chat orchestration is optimized to work for English language content. For more details on language support in Amazon Q Business, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/supported-languages.html\">Supported languages</a>.</p> </note>"}))
    GetChatControlsConfigurationResponse.add_member(:blocked_phrases, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedPhrasesConfiguration, location_name: 'blockedPhrases', traits: {"smithy.api#documentation" => "<p>The phrases blocked from chat by your chat control configuration.</p>"}))
    GetChatControlsConfigurationResponse.add_member(:topic_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: 'topicConfigurations', traits: {"smithy.api#documentation" => "<p>The topic specific controls configured for a Amazon Q Business application.</p>"}))
    GetChatControlsConfigurationResponse.add_member(:creator_mode_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AppliedCreatorModeConfiguration, location_name: 'creatorModeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration details for <code>CREATOR_MODE</code>.</p>"}))
    GetChatControlsConfigurationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business chat controls configured.</p>"}))
    GetChatControlsConfigurationResponse.add_member(:hallucination_reduction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HallucinationReductionConfiguration, location_name: 'hallucinationReductionConfiguration', traits: {"smithy.api#documentation" => "<p> The hallucination reduction settings for your application.</p>"}))
    GetChatControlsConfigurationResponse.type = Types::GetChatControlsConfigurationResponse
    GetChatResponseConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application containing the chat response configuration to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: 'chatResponseConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the chat response configuration to retrieve from the specified application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetChatResponseConfigurationRequest.type = Types::GetChatResponseConfigurationRequest
    GetChatResponseConfigurationResponse.add_member(:chat_response_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: 'chatResponseConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the retrieved chat response configuration.</p>"}))
    GetChatResponseConfigurationResponse.add_member(:chat_response_configuration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationArn, location_name: 'chatResponseConfigurationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the retrieved chat response configuration, which uniquely identifies the resource across all Amazon Web Services services. </p>"}))
    GetChatResponseConfigurationResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The human-readable name of the retrieved chat response configuration, making it easier to identify among multiple configurations.</p>"}))
    GetChatResponseConfigurationResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp indicating when the chat response configuration was initially created.</p>"}))
    GetChatResponseConfigurationResponse.add_member(:in_use_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationDetail, location_name: 'inUseConfiguration', traits: {"smithy.api#documentation" => "<p>The currently active configuration settings that are being used to generate responses in the Amazon Q Business application.</p>"}))
    GetChatResponseConfigurationResponse.add_member(:last_update_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationDetail, location_name: 'lastUpdateConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the most recent update to the configuration, including timestamp and modification details.</p>"}))
    GetChatResponseConfigurationResponse.type = Types::GetChatResponseConfigurationResponse
    GetDataAccessorRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAccessorRequest.add_member(:data_accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorId, location_name: 'dataAccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data accessor to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAccessorRequest.type = Types::GetDataAccessorRequest
    GetDataAccessorResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:data_accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorId, location_name: 'dataAccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:data_accessor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorArn, location_name: 'dataAccessorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application associated with this data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: 'idcApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center application associated with this data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalRoleArn, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for the ISV associated with this data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:action_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationList, location_name: 'actionConfigurations', traits: {"smithy.api#documentation" => "<p>The list of action configurations specifying the allowed actions and any associated filters.</p>"}))
    GetDataAccessorResponse.add_member(:authentication_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: 'authenticationDetail', traits: {"smithy.api#documentation" => "<p>The authentication configuration details for the data accessor. This specifies how the ISV authenticates when accessing data through this data accessor.</p>"}))
    GetDataAccessorResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data accessor was created.</p>"}))
    GetDataAccessorResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the data accessor was last updated.</p>"}))
    GetDataAccessorResponse.type = Types::GetDataAccessorResponse
    GetDataSourceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identfier of the index used with the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSourceRequest.type = Types::GetDataSourceRequest
    GetDataSourceResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>"}))
    GetDataSourceResponse.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index linked to the data source connector.</p>"}))
    GetDataSourceResponse.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source connector.</p>"}))
    GetDataSourceResponse.add_member(:data_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceArn, location_name: 'dataSourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data source.</p>"}))
    GetDataSourceResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name for the data source connector.</p>"}))
    GetDataSourceResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the data source connector. For example, <code>S3</code>.</p>"}))
    GetDataSourceResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The details of how the data source connector is configured.</p>"}))
    GetDataSourceResponse.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: 'vpcConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information for an Amazon VPC (Virtual Private Cloud) to connect to your data source.</p>"}))
    GetDataSourceResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the data source connector was created.</p>"}))
    GetDataSourceResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the data source connector was last updated.</p>"}))
    GetDataSourceResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the data source connector.</p>"}))
    GetDataSourceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the data source connector. When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail.</p>"}))
    GetDataSourceResponse.add_member(:sync_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSchedule, location_name: 'syncSchedule', traits: {"smithy.api#documentation" => "<p>The schedule for Amazon Q Business to update the index.</p>"}))
    GetDataSourceResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role with permission to access the data source and required resources.</p>"}))
    GetDataSourceResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail.</p>"}))
    GetDataSourceResponse.add_member(:document_enrichment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: 'documentEnrichmentConfiguration'))
    GetDataSourceResponse.add_member(:media_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: 'mediaExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for extracting information from media in documents for the data source. </p>"}))
    GetDataSourceResponse.type = Types::GetDataSourceResponse
    GetDocumentContentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application containing the document. This ensures the request is scoped to the correct application environment and its associated security policies.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index where documents are indexed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source from which the document was ingested. This field is not present if the document is ingested by directly calling the BatchPutDocument API. If the document is from a file-upload data source, the datasource will be \"uploaded-docs-file-stat-datasourceid\".</p>", "smithy.api#httpQuery" => "dataSourceId"}))
    GetDocumentContentRequest.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'documentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the document that is indexed via BatchPutDocument API or file-upload or connector sync. It is also found in chat or chatSync response.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDocumentContentRequest.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'outputFormat', traits: {"smithy.api#documentation" => "<p>Raw document outputFormat.</p>", "smithy.api#httpQuery" => "outputFormat"}))
    GetDocumentContentRequest.type = Types::GetDocumentContentRequest
    GetDocumentContentResponse.add_member(:presigned_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'presignedUrl', traits: {"smithy.api#documentation" => "<p>A pre-signed URL that provides temporary access to download the document content directly from Amazon Q Business. The URL expires after 5 minutes for security purposes. This URL is generated only after successful ACL validation.</p>", "smithy.api#required" => {}}))
    GetDocumentContentResponse.add_member(:mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the document content (e.g., application/pdf, text/plain, application/vnd.openxmlformats-officedocument.wordprocessingml.document).</p>", "smithy.api#required" => {}}))
    GetDocumentContentResponse.type = Types::GetDocumentContentResponse
    GetGroupRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application id the group is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index the group is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source the group is attached to.</p>", "smithy.api#httpQuery" => "dataSourceId"}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStatusDetail, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the group.</p>"}))
    GetGroupResponse.add_member(:status_history, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStatusDetails, location_name: 'statusHistory', traits: {"smithy.api#documentation" => "<p>The status history of the group.</p>"}))
    GetGroupResponse.type = Types::GetGroupResponse
    GetIndexRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application connected to the index.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIndexRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business index you want information on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIndexRequest.type = Types::GetIndexRequest
    GetIndexResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application associated with the index.</p>"}))
    GetIndexResponse.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business index.</p>"}))
    GetIndexResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Q Business index.</p>"}))
    GetIndexResponse.add_member(:index_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexArn, location_name: 'indexArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the Amazon Q Business index. </p>"}))
    GetIndexResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the index. When the value is <code>ACTIVE</code>, the index is ready for use. If the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a message that explains why.</p>"}))
    GetIndexResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of index attached to your Amazon Q Business application.</p>"}))
    GetIndexResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the Amazon Q Business index.</p>"}))
    GetIndexResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business index was created.</p>"}))
    GetIndexResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business index was last updated.</p>"}))
    GetIndexResponse.add_member(:capacity_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: 'capacityConfiguration', traits: {"smithy.api#documentation" => "<p>The storage capacity units chosen for your Amazon Q Business index.</p>"}))
    GetIndexResponse.add_member(:document_attribute_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeConfigurations, location_name: 'documentAttributeConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information for document attributes or metadata. Document metadata are fields associated with your documents. For example, the company department name associated with each document. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes\">Understanding document attributes</a>.</p>"}))
    GetIndexResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a message that explains why.</p>"}))
    GetIndexResponse.add_member(:index_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatistics, location_name: 'indexStatistics', traits: {"smithy.api#documentation" => "<p>Provides information about the number of documents indexed.</p>"}))
    GetIndexResponse.type = Types::GetIndexResponse
    GetMediaRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business which contains the media object.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business conversation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business message.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>The identifier of the media object. You can find this in the <code>sourceAttributions</code> returned by the <code>Chat</code>, <code>ChatSync</code>, and <code>ListMessages</code> API responses.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMediaRequest.type = Types::GetMediaRequest
    GetMediaResponse.add_member(:media_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'mediaBytes', traits: {"smithy.api#documentation" => "<p>The base64-encoded bytes of the media object.</p>"}))
    GetMediaResponse.add_member(:media_mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mediaMimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the media object (image/png).</p>"}))
    GetMediaResponse.type = Types::GetMediaResponse
    GetPluginRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application which contains the plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPluginRequest.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPluginRequest.type = Types::GetPluginRequest
    GetPluginResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application which contains the plugin.</p>"}))
    GetPluginResponse.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin.</p>"}))
    GetPluginResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the plugin.</p>"}))
    GetPluginResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the plugin.</p>"}))
    GetPluginResponse.add_member(:server_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'serverUrl', traits: {"smithy.api#documentation" => "<p>The source URL used for plugin configuration.</p>"}))
    GetPluginResponse.add_member(:auth_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: 'authConfiguration'))
    GetPluginResponse.add_member(:custom_plugin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginConfiguration, location_name: 'customPluginConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information required to create a custom plugin.</p>"}))
    GetPluginResponse.add_member(:build_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginBuildStatus, location_name: 'buildStatus', traits: {"smithy.api#documentation" => "<p>The current status of a plugin. A plugin is modified asynchronously.</p>"}))
    GetPluginResponse.add_member(:plugin_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginArn, location_name: 'pluginArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role with permission to access resources needed to create the plugin.</p>"}))
    GetPluginResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current state of the plugin.</p>"}))
    GetPluginResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the plugin was created.</p>"}))
    GetPluginResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the plugin was last updated.</p>"}))
    GetPluginResponse.type = Types::GetPluginResponse
    GetPolicyRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The JSON representation of the permission policy.</p>"}))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetRetrieverRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application using the retriever.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetrieverRequest.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The identifier of the retriever.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRetrieverRequest.type = Types::GetRetrieverRequest
    GetRetrieverResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application using the retriever. </p>"}))
    GetRetrieverResponse.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The identifier of the retriever.</p>"}))
    GetRetrieverResponse.add_member(:retriever_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverArn, location_name: 'retrieverArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role associated with the retriever.</p>"}))
    GetRetrieverResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the retriever.</p>"}))
    GetRetrieverResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the retriever.</p>"}))
    GetRetrieverResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the retriever.</p>"}))
    GetRetrieverResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: 'configuration'))
    GetRetrieverResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role with the permission to access the retriever and required resources.</p>"}))
    GetRetrieverResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the retriever was created.</p>"}))
    GetRetrieverResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the retriever was last updated.</p>"}))
    GetRetrieverResponse.type = Types::GetRetrieverResponse
    GetUserRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application connected to the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The user email address attached to the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetUserRequest.type = Types::GetUserRequest
    GetUserResponse.add_member(:user_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliases', traits: {"smithy.api#documentation" => "<p>A list of user aliases attached to a user.</p>"}))
    GetUserResponse.type = Types::GetUserResponse
    GetWebExperienceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebExperienceRequest.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebExperienceRequest.type = Types::GetWebExperienceRequest
    GetWebExperienceResponse.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the web experience.</p>"}))
    GetWebExperienceResponse.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience.</p>"}))
    GetWebExperienceResponse.add_member(:web_experience_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceArn, location_name: 'webExperienceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role with the permission to access the Amazon Q Business web experience and required resources.</p>"}))
    GetWebExperienceResponse.add_member(:default_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'defaultEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of your Amazon Q Business web experience.</p>"}))
    GetWebExperienceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the Amazon Q Business web experience. When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail. </p>"}))
    GetWebExperienceResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business web experience was last created.</p>"}))
    GetWebExperienceResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business web experience was last updated.</p>"}))
    GetWebExperienceResponse.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title for your Amazon Q Business web experience. </p>"}))
    GetWebExperienceResponse.add_member(:subtitle, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: 'subtitle', traits: {"smithy.api#documentation" => "<p>The subtitle for your Amazon Q Business web experience. </p>"}))
    GetWebExperienceResponse.add_member(:welcome_message, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: 'welcomeMessage', traits: {"smithy.api#documentation" => "<p>The customized welcome message for end users of an Amazon Q Business web experience.</p>"}))
    GetWebExperienceResponse.add_member(:sample_prompts_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: 'samplePromptsControlMode', traits: {"smithy.api#documentation" => "<p>Determines whether sample prompts are enabled in the web experience for an end user.</p>"}))
    GetWebExperienceResponse.add_member(:origins, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceOrigins, location_name: 'origins', traits: {"smithy.api#documentation" => "<p>Gets the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the base URL for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified). </p>"}))
    GetWebExperienceResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the service role attached to your web experience.</p>"}))
    GetWebExperienceResponse.add_member(:identity_provider_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: 'identityProviderConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>"}))
    GetWebExperienceResponse.add_member(:authentication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceAuthConfiguration, location_name: 'authenticationConfiguration', traits: {"smithy.api#deprecated" => {"message" => "Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management."}, "smithy.api#documentation" => "<p>The authentication configuration information for your Amazon Q Business web experience.</p>"}))
    GetWebExperienceResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'error', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail.</p>"}))
    GetWebExperienceResponse.add_member(:browser_extension_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserExtensionConfiguration, location_name: 'browserExtensionConfiguration', traits: {"smithy.api#documentation" => "<p>The browser extension configuration for an Amazon Q Business web experience.</p>"}))
    GetWebExperienceResponse.add_member(:customization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationConfiguration, location_name: 'customizationConfiguration', traits: {"smithy.api#documentation" => "<p>Gets the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>"}))
    GetWebExperienceResponse.type = Types::GetWebExperienceResponse
    GroupMembers.add_member(:member_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberGroups, location_name: 'memberGroups', traits: {"smithy.api#documentation" => "<p>A list of sub groups that belong to a group. For example, the sub groups \"Research\", \"Engineering\", and \"Sales and Marketing\" all belong to the group \"Company\".</p>"}))
    GroupMembers.add_member(:member_users, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberUsers, location_name: 'memberUsers', traits: {"smithy.api#documentation" => "<p>A list of users that belong to a group. For example, a list of interns all belong to the \"Interns\" group.</p>"}))
    GroupMembers.add_member(:s3_path_for_group_members, Smithy::Schema::Shapes::ShapeRef.new(shape: S3, location_name: 's3PathForGroupMembers'))
    GroupMembers.type = Types::GroupMembers
    GroupStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    GroupStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    GroupStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    GroupStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    GroupStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    GroupStatusDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a group.</p>"}))
    GroupStatusDetail.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was last updated.</p>"}))
    GroupStatusDetail.add_member(:error_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetail, location_name: 'errorDetail', traits: {"smithy.api#documentation" => "<p>The details of an error associated a group status.</p>"}))
    GroupStatusDetail.type = Types::GroupStatusDetail
    GroupStatusDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStatusDetail)
    GroupSummary.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The name of the group the summary information is for.</p>"}))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummary)
    HallucinationReductionConfiguration.add_member(:hallucination_reduction_control, Smithy::Schema::Shapes::ShapeRef.new(shape: HallucinationReductionControl, location_name: 'hallucinationReductionControl', traits: {"smithy.api#documentation" => "<p>Controls whether hallucination reduction has been enabled or disabled for your application. The default status is <code>DISABLED</code>. </p>"}))
    HallucinationReductionConfiguration.type = Types::HallucinationReductionConfiguration
    HallucinationReductionControl.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    HallucinationReductionControl.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    HookConfiguration.add_member(:invocation_condition, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: 'invocationCondition', traits: {"smithy.api#documentation" => "<p>The condition used for when a Lambda function should be invoked.</p> <p>For example, you can specify a condition that if there are empty date-time values, then Amazon Q Business should invoke a function that inserts the current date-time.</p>"}))
    HookConfiguration.add_member(:lambda_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaArn, location_name: 'lambdaArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Lambda function during ingestion. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cde-lambda-operations.html\">Using Lambda functions for Amazon Q Business document enrichment</a>.</p>"}))
    HookConfiguration.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 's3BucketName', traits: {"smithy.api#documentation" => "<p>Stores the original, raw documents or the structured, parsed documents before and after altering them. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/cde-lambda-operations.html#cde-lambda-operations-data-contracts\">Data contracts for Lambda functions</a>.</p>"}))
    HookConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a role with permission to run <code>PreExtractionHookConfiguration</code> and <code>PostExtractionHookConfiguration</code> for altering document metadata and content during the document ingestion process.</p>"}))
    HookConfiguration.type = Types::HookConfiguration
    IdcAuthConfiguration.add_member(:idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcApplicationArn, location_name: 'idcApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM Identity Center Application used to configure authentication.</p>", "smithy.api#required" => {}}))
    IdcAuthConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role with permissions to perform actions on Amazon Web Services services on your behalf.</p>", "smithy.api#required" => {}}))
    IdcAuthConfiguration.type = Types::IdcAuthConfiguration
    IdentityProviderConfiguration.add_member(:saml_configuration, Types::IdentityProviderConfiguration::SamlConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlProviderConfiguration, location_name: 'samlConfiguration'))
    IdentityProviderConfiguration.add_member(:open_id_connect_configuration, Types::IdentityProviderConfiguration::OpenIdConnectConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: OpenIDConnectProviderConfiguration, location_name: 'openIDConnectConfiguration'))
    IdentityProviderConfiguration.add_member(:unknown, Types::IdentityProviderConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IdentityProviderConfiguration.type = Types::IdentityProviderConfiguration
    IdentityType.add_member(:aws_iam_idp_saml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDP_SAML', traits: {"smithy.api#enumValue" => "AWS_IAM_IDP_SAML"}))
    IdentityType.add_member(:aws_iam_idp_oidc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDP_OIDC', traits: {"smithy.api#enumValue" => "AWS_IAM_IDP_OIDC"}))
    IdentityType.add_member(:aws_iam_idc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDC', traits: {"smithy.api#enumValue" => "AWS_IAM_IDC"}))
    IdentityType.add_member(:aws_quicksight_idp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_QUICKSIGHT_IDP', traits: {"smithy.api#enumValue" => "AWS_QUICKSIGHT_IDP"}))
    IdentityType.add_member(:anonymous, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANONYMOUS', traits: {"smithy.api#enumValue" => "ANONYMOUS"}))
    ImageExtractionConfiguration.add_member(:image_extraction_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageExtractionStatus, location_name: 'imageExtractionStatus', traits: {"smithy.api#documentation" => "<p>Specify whether to extract semantic meaning from images and visuals from documents.</p>", "smithy.api#required" => {}}))
    ImageExtractionConfiguration.type = Types::ImageExtractionConfiguration
    ImageExtractionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ImageExtractionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ImageSourceDetails.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the image file.</p>"}))
    ImageSourceDetails.add_member(:media_mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mediaMimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the image file.</p>"}))
    ImageSourceDetails.type = Types::ImageSourceDetails
    Index.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the index.</p>"}))
    Index.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier for the index.</p>"}))
    Index.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the index was created.</p>"}))
    Index.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the index was last updated.</p>"}))
    Index.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the index. When the status is <code>ACTIVE</code>, the index is ready.</p>"}))
    Index.type = Types::Index
    IndexCapacityConfiguration.add_member(:units, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexCapacityInteger, location_name: 'units', traits: {"smithy.api#documentation" => "<p>The number of storage units configured for an Amazon Q Business index.</p>"}))
    IndexCapacityConfiguration.type = Types::IndexCapacityConfiguration
    IndexStatistics.add_member(:text_document_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: TextDocumentStatistics, location_name: 'textDocumentStatistics', traits: {"smithy.api#documentation" => "<p>The number of documents indexed.</p>"}))
    IndexStatistics.type = Types::IndexStatistics
    IndexStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    IndexStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IndexStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    IndexStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    IndexType.add_member(:enterprise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTERPRISE', traits: {"smithy.api#enumValue" => "ENTERPRISE"}))
    IndexType.add_member(:starter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTER', traits: {"smithy.api#enumValue" => "STARTER"}))
    Indices.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Index)
    InlineDocumentEnrichmentConfiguration.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeCondition, location_name: 'condition'))
    InlineDocumentEnrichmentConfiguration.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeTarget, location_name: 'target'))
    InlineDocumentEnrichmentConfiguration.add_member(:document_content_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentContentOperator, location_name: 'documentContentOperator', traits: {"smithy.api#documentation" => "<p> <code>TRUE</code> to delete content if the condition used for the target attribute is met.</p>"}))
    InlineDocumentEnrichmentConfiguration.type = Types::InlineDocumentEnrichmentConfiguration
    InlineDocumentEnrichmentConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InlineDocumentEnrichmentConfiguration)
    InstructionCollection.add_member(:response_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'responseLength', traits: {"smithy.api#documentation" => "<p>Specifies the desired length of responses generated by Amazon Q Business. This parameter allows administrators to control whether responses are concise and brief or more detailed and comprehensive.</p>"}))
    InstructionCollection.add_member(:target_audience, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'targetAudience', traits: {"smithy.api#documentation" => "<p>Defines the intended audience for the responses, allowing Amazon Q Business to tailor its language, terminology, and explanations appropriately. This could range from technical experts to general users with varying levels of domain knowledge.</p>"}))
    InstructionCollection.add_member(:perspective, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'perspective', traits: {"smithy.api#documentation" => "<p>Determines the point of view or perspective from which Amazon Q Business generates responses, such as first-person, second-person, or third-person perspective, affecting how information is presented to users.</p>"}))
    InstructionCollection.add_member(:output_style, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'outputStyle', traits: {"smithy.api#documentation" => "<p>Specifies the formatting and structural style of responses, such as bullet points, paragraphs, step-by-step instructions, or other organizational formats that enhance readability and comprehension.</p>"}))
    InstructionCollection.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'identity', traits: {"smithy.api#documentation" => "<p>Defines the persona or identity that Amazon Q Business should adopt when responding to users, allowing for customization of the assistant's character, role, or representation within an organization.</p>"}))
    InstructionCollection.add_member(:tone, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'tone', traits: {"smithy.api#documentation" => "<p>Controls the emotional tone and communication style of responses, such as formal, casual, technical, friendly, or professional, to align with organizational communication standards and user expectations.</p>"}))
    InstructionCollection.add_member(:custom_instructions, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'customInstructions', traits: {"smithy.api#documentation" => "<p>Allows administrators to provide specific, custom instructions that guide how Amazon Q Business should respond in particular scenarios or to certain types of queries, enabling fine-grained control over response generation.</p>"}))
    InstructionCollection.add_member(:examples, Smithy::Schema::Shapes::ShapeRef.new(shape: Instruction, location_name: 'examples', traits: {"smithy.api#documentation" => "<p>Provides sample responses or templates that Amazon Q Business can reference when generating responses, helping to establish consistent patterns and formats for different types of user queries.</p>"}))
    InstructionCollection.type = Types::InstructionCollection
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    KendraIndexConfiguration.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraIndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Kendra index.</p>", "smithy.api#required" => {}}))
    KendraIndexConfiguration.type = Types::KendraIndexConfiguration
    LicenseNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    LicenseNotFoundException.type = Types::LicenseNotFoundException
    ListApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business applications.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListApplications, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Amazon Q Business applications to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token. You can use this token in a subsequent request to retrieve the next set of applications.</p>"}))
    ListApplicationsResponse.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: Applications, location_name: 'applications', traits: {"smithy.api#documentation" => "<p>An array of summary information on the configuration of one or more Amazon Q Business applications.</p>"}))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListAttachmentsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAttachmentsRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business web experience conversation.</p>", "smithy.api#httpQuery" => "conversationId"}))
    ListAttachmentsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the user involved in the Amazon Q Business web experience conversation.</p>", "smithy.api#httpQuery" => "userId"}))
    ListAttachmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of attachments returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of attachments.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAttachmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListAttachments, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of attachements to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAttachmentsRequest.type = Types::ListAttachmentsRequest
    ListAttachmentsResponse.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentList, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>An array of information on one or more attachments.</p>"}))
    ListAttachmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of attachments.</p>"}))
    ListAttachmentsResponse.type = Types::ListAttachmentsResponse
    ListChatResponseConfigurationsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application for which to list available chat response configurations.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListChatResponseConfigurationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of chat response configurations to return in a single response. This parameter helps control pagination of results when many configurations exist.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListChatResponseConfigurationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token used to retrieve the next set of results when the number of configurations exceeds the specified <code>maxResults</code> value.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListChatResponseConfigurationsRequest.type = Types::ListChatResponseConfigurationsRequest
    ListChatResponseConfigurationsResponse.add_member(:chat_response_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurations, location_name: 'chatResponseConfigurations', traits: {"smithy.api#documentation" => "<p>A list of chat response configuration summaries, each containing key information about an available configuration in the specified application.</p>"}))
    ListChatResponseConfigurationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that can be used in a subsequent request to retrieve additional chat response configurations if the results were truncated due to the <code>maxResults</code> parameter.</p>"}))
    ListChatResponseConfigurationsResponse.type = Types::ListChatResponseConfigurationsResponse
    ListConversationsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListConversationsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user involved in the Amazon Q Business web experience conversation. </p>", "smithy.api#httpQuery" => "userId"}))
    ListConversationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business conversations.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListConversationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListConversations, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Amazon Q Business conversations to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListConversationsRequest.type = Types::ListConversationsRequest
    ListConversationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of messages.</p>"}))
    ListConversationsResponse.add_member(:conversations, Smithy::Schema::Shapes::ShapeRef.new(shape: Conversations, location_name: 'conversations', traits: {"smithy.api#documentation" => "<p>An array of summary information on the configuration of one or more Amazon Q Business web experiences.</p>"}))
    ListConversationsResponse.type = Types::ListConversationsResponse
    ListDataAccessorsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataAccessorsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken1500, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. (You received this token from a previous call.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataAccessorsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataAccessors, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataAccessorsRequest.type = Types::ListDataAccessorsRequest
    ListDataAccessorsResponse.add_member(:data_accessors, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessors, location_name: 'dataAccessors', traits: {"smithy.api#documentation" => "<p>The list of data accessors.</p>"}))
    ListDataAccessorsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken1500, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next set of results, if there are any.</p>"}))
    ListDataAccessorsResponse.type = Types::ListDataAccessorsResponse
    ListDataSourceSyncJobsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p> The identifier of the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application connected to the data source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index used with the Amazon Q Business data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourceSyncJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incpmplete because there is more data to retriever, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of responses.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataSourceSyncJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSourcesSyncJobs, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of synchronization jobs to return in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataSourceSyncJobsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> The start time of the data source connector sync. </p>", "smithy.api#httpQuery" => "startTime"}))
    ListDataSourceSyncJobsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p> The end time of the data source connector sync.</p>", "smithy.api#httpQuery" => "endTime"}))
    ListDataSourceSyncJobsRequest.add_member(:status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSyncJobStatus, location_name: 'statusFilter', traits: {"smithy.api#documentation" => "<p>Only returns synchronization jobs with the <code>Status</code> field equal to the specified status.</p>", "smithy.api#httpQuery" => "syncStatus"}))
    ListDataSourceSyncJobsRequest.type = Types::ListDataSourceSyncJobsRequest
    ListDataSourceSyncJobsResponse.add_member(:history, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceSyncJobs, location_name: 'history', traits: {"smithy.api#documentation" => "<p>A history of synchronization jobs for the data source connector.</p>"}))
    ListDataSourceSyncJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token. You can use this token in any subsequent request to retrieve the next set of jobs.</p>"}))
    ListDataSourceSyncJobsResponse.type = Types::ListDataSourceSyncJobsResponse
    ListDataSourcesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the data source connectors.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index used with one or more data source connectors.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business data source connectors.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataSourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDataSources, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of data source connectors to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataSourcesRequest.type = Types::ListDataSourcesRequest
    ListDataSourcesResponse.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>An array of summary information for one or more data source connector.</p>"}))
    ListDataSourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token. You can use this token in a subsequent request to retrieve the next set of data source connectors.</p>"}))
    ListDataSourcesResponse.type = Types::ListDataSourcesResponse
    ListDocumentsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application id the documents are attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDocumentsRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index the documents are attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDocumentsRequest.add_member(:data_source_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceIds, location_name: 'dataSourceIds', traits: {"smithy.api#documentation" => "<p>The identifier of the data sources the documents are attached to.</p>", "smithy.api#httpQuery" => "dataSourceIds"}))
    ListDocumentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of documents.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDocumentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListDocuments, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of documents to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDocumentsRequest.type = Types::ListDocumentsRequest
    ListDocumentsResponse.add_member(:document_detail_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentDetailList, location_name: 'documentDetailList', traits: {"smithy.api#documentation" => "<p>A list of document details.</p>"}))
    ListDocumentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of documents.</p>"}))
    ListDocumentsResponse.type = Types::ListDocumentsResponse
    ListGroupsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application for getting a list of groups mapped to users.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index for getting a list of groups mapped to users.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:updated_earlier_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedEarlierThan', traits: {"smithy.api#documentation" => "<p>The timestamp identifier used for the latest <code>PUT</code> or <code>DELETE</code> action for mapping users to their groups.</p>", "smithy.api#httpQuery" => "updatedEarlierThan", "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source for getting a list of groups mapped to users.</p>", "smithy.api#httpQuery" => "dataSourceId"}))
    ListGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of groups that are mapped to users.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListGroupsRequest, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of returned groups that are mapped to users.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token that you can use in the subsequent request to retrieve the next set of groups that are mapped to users.</p>"}))
    ListGroupsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Summary information for list of groups that are mapped to users.</p>"}))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListIndicesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application connected to the index.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListIndicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the maxResults response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business indices.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListIndicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListIndices, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of indices to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListIndicesRequest.type = Types::ListIndicesRequest
    ListIndicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token that you can use in the subsequent request to retrieve the next set of indexes.</p>"}))
    ListIndicesResponse.add_member(:indices, Smithy::Schema::Shapes::ShapeRef.new(shape: Indices, location_name: 'indices', traits: {"smithy.api#documentation" => "<p>An array of information on the items in one or more indexes.</p>"}))
    ListIndicesResponse.type = Types::ListIndicesResponse
    ListMessagesRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience conversation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier for the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMessagesRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user involved in the Amazon Q Business web experience conversation.</p>", "smithy.api#httpQuery" => "userId"}))
    ListMessagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of messages returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of messages.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMessagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListMessages, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of messages to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMessagesRequest.type = Types::ListMessagesRequest
    ListMessagesResponse.add_member(:messages, Smithy::Schema::Shapes::ShapeRef.new(shape: Messages, location_name: 'messages', traits: {"smithy.api#documentation" => "<p>An array of information on one or more messages.</p>"}))
    ListMessagesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of messages.</p>"}))
    ListMessagesResponse.type = Types::ListMessagesResponse
    ListPluginActionsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application the plugin is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginActionsRequest.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of plugin actions returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of plugin actions.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPluginActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPluginActions, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of plugin actions to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPluginActionsRequest.type = Types::ListPluginActionsRequest
    ListPluginActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of plugin actions.</p>"}))
    ListPluginActionsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of information on one or more plugin actions.</p>"}))
    ListPluginActionsResponse.type = Types::ListPluginActionsResponse
    ListPluginTypeActionsRequest.add_member(:plugin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'pluginType', traits: {"smithy.api#documentation" => "<p>The type of the plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginTypeActionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of plugins returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of plugins.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPluginTypeActionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPluginTypeActions, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of plugins to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPluginTypeActionsRequest.type = Types::ListPluginTypeActionsRequest
    ListPluginTypeActionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of plugins.</p>"}))
    ListPluginTypeActionsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: Actions, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of information on one or more plugins.</p>"}))
    ListPluginTypeActionsResponse.type = Types::ListPluginTypeActionsResponse
    ListPluginTypeMetadataRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the metadata returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of metadata.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPluginTypeMetadataRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPluginTypeMetadata, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of plugin metadata items to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPluginTypeMetadataRequest.type = Types::ListPluginTypeMetadataRequest
    ListPluginTypeMetadataResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of plugin metadata.</p>"}))
    ListPluginTypeMetadataResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginTypeMetadataSummaries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of information on plugin metadata.</p>"}))
    ListPluginTypeMetadataResponse.type = Types::ListPluginTypeMetadataResponse
    ListPluginTypeMetadataSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PluginTypeMetadataSummary)
    ListPluginsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application the plugin is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPluginsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of plugins.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPluginsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListPlugins, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of documents to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListPluginsRequest.type = Types::ListPluginsRequest
    ListPluginsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of plugins.</p>"}))
    ListPluginsResponse.add_member(:plugins, Smithy::Schema::Shapes::ShapeRef.new(shape: Plugins, location_name: 'plugins', traits: {"smithy.api#documentation" => "<p>Information about a configured plugin.</p>"}))
    ListPluginsResponse.type = Types::ListPluginsResponse
    ListRetrieversRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application using the retriever.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRetrieversRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the number of retrievers returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of retrievers.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRetrieversRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListRetrieversRequest, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of retrievers returned.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRetrieversRequest.type = Types::ListRetrieversRequest
    ListRetrieversResponse.add_member(:retrievers, Smithy::Schema::Shapes::ShapeRef.new(shape: Retrievers, location_name: 'retrievers', traits: {"smithy.api#documentation" => "<p>An array of summary information for one or more retrievers.</p>"}))
    ListRetrieversResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of retrievers.</p>"}))
    ListRetrieversResponse.type = Types::ListRetrieversResponse
    ListSubscriptionsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the subscription.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubscriptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business subscriptions.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSubscriptionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListSubscriptions, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Amazon Q Business subscriptions to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSubscriptionsRequest.type = Types::ListSubscriptionsRequest
    ListSubscriptionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token. You can use this token in a subsequent request to retrieve the next set of subscriptions.</p>"}))
    ListSubscriptionsResponse.add_member(:subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriptions, location_name: 'subscriptions', traits: {"smithy.api#documentation" => "<p>An array of summary information on the subscriptions configured for an Amazon Q Business application.</p>"}))
    ListSubscriptionsResponse.type = Types::ListSubscriptionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business application or data source to get a list of tags for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags associated with the Amazon Q Business application or data source.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebExperiencesRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application linked to the listed web experiences.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebExperiencesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business conversations.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWebExperiencesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsIntegerForListWebExperiencesRequest, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of Amazon Q Business Web Experiences to return.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListWebExperiencesRequest.type = Types::ListWebExperiencesRequest
    ListWebExperiencesResponse.add_member(:web_experiences, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperiences, location_name: 'webExperiences', traits: {"smithy.api#documentation" => "<p>An array of summary information for one or more Amazon Q Business experiences.</p>"}))
    ListWebExperiencesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of messages.</p>"}))
    ListWebExperiencesResponse.type = Types::ListWebExperiencesResponse
    MediaExtractionConfiguration.add_member(:image_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageExtractionConfiguration, location_name: 'imageExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for extracting semantic meaning from images in documents. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html\">Extracting semantic meaning from images and visuals</a>. </p>"}))
    MediaExtractionConfiguration.add_member(:audio_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioExtractionConfiguration, location_name: 'audioExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings for extracting and processing audio content from media files.</p>"}))
    MediaExtractionConfiguration.add_member(:video_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoExtractionConfiguration, location_name: 'videoExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration settings for extracting and processing video content from media files.</p>"}))
    MediaExtractionConfiguration.type = Types::MediaExtractionConfiguration
    MediaTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    MediaTooLargeException.type = Types::MediaTooLargeException
    MemberGroup.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The name of the sub group.</p>", "smithy.api#required" => {}}))
    MemberGroup.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the sub group.</p>"}))
    MemberGroup.type = Types::MemberGroup
    MemberGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberGroup)
    MemberRelation.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AND', traits: {"smithy.api#enumValue" => "AND"}))
    MemberRelation.add_member(:or, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OR', traits: {"smithy.api#enumValue" => "OR"}))
    MemberUser.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceUserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user you want to map to a group.</p>", "smithy.api#required" => {}}))
    MemberUser.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the user.</p>"}))
    MemberUser.type = Types::MemberUser
    MemberUsers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MemberUser)
    MembershipType.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INDEX', traits: {"smithy.api#enumValue" => "INDEX"}))
    MembershipType.add_member(:datasource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATASOURCE', traits: {"smithy.api#enumValue" => "DATASOURCE"}))
    Message.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience message.</p>"}))
    Message.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The content of the Amazon Q Business web experience message.</p>"}))
    Message.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'time', traits: {"smithy.api#documentation" => "<p>The timestamp of the first Amazon Q Business web experience message.</p>"}))
    Message.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of Amazon Q Business message, whether <code>HUMAN</code> or <code>AI</code> generated.</p>"}))
    Message.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsOutput, location_name: 'attachments', traits: {"smithy.api#documentation" => "<p>A file directly uploaded into an Amazon Q Business web experience chat.</p>"}))
    Message.add_member(:source_attribution, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAttributions, location_name: 'sourceAttribution', traits: {"smithy.api#documentation" => "<p>The source documents used to generate Amazon Q Business web experience message.</p>"}))
    Message.add_member(:action_review, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionReview, location_name: 'actionReview'))
    Message.add_member(:action_execution, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionExecution, location_name: 'actionExecution'))
    Message.type = Types::Message
    MessageType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    MessageType.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    MessageUsefulness.add_member(:useful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USEFUL', traits: {"smithy.api#enumValue" => "USEFUL"}))
    MessageUsefulness.add_member(:not_useful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_USEFUL', traits: {"smithy.api#enumValue" => "NOT_USEFUL"}))
    MessageUsefulnessFeedback.add_member(:usefulness, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageUsefulness, location_name: 'usefulness', traits: {"smithy.api#documentation" => "<p>The usefulness value assigned by an end user to a message.</p>", "smithy.api#required" => {}}))
    MessageUsefulnessFeedback.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageUsefulnessReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for a usefulness rating.</p>"}))
    MessageUsefulnessFeedback.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageUsefulnessComment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>A comment given by an end user on the usefulness of an AI-generated chat message.</p>"}))
    MessageUsefulnessFeedback.add_member(:submitted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'submittedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the feedback was submitted.</p>", "smithy.api#required" => {}}))
    MessageUsefulnessFeedback.type = Types::MessageUsefulnessFeedback
    MessageUsefulnessReason.add_member(:not_factually_correct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FACTUALLY_CORRECT', traits: {"smithy.api#enumValue" => "NOT_FACTUALLY_CORRECT"}))
    MessageUsefulnessReason.add_member(:harmful_or_unsafe, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HARMFUL_OR_UNSAFE', traits: {"smithy.api#enumValue" => "HARMFUL_OR_UNSAFE"}))
    MessageUsefulnessReason.add_member(:incorrect_or_missing_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCORRECT_OR_MISSING_SOURCES', traits: {"smithy.api#enumValue" => "INCORRECT_OR_MISSING_SOURCES"}))
    MessageUsefulnessReason.add_member(:not_helpful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_HELPFUL', traits: {"smithy.api#enumValue" => "NOT_HELPFUL"}))
    MessageUsefulnessReason.add_member(:factually_correct, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FACTUALLY_CORRECT', traits: {"smithy.api#enumValue" => "FACTUALLY_CORRECT"}))
    MessageUsefulnessReason.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    MessageUsefulnessReason.add_member(:relevant_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELEVANT_SOURCES', traits: {"smithy.api#enumValue" => "RELEVANT_SOURCES"}))
    MessageUsefulnessReason.add_member(:helpful, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HELPFUL', traits: {"smithy.api#enumValue" => "HELPFUL"}))
    MessageUsefulnessReason.add_member(:not_based_on_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_BASED_ON_DOCUMENTS', traits: {"smithy.api#enumValue" => "NOT_BASED_ON_DOCUMENTS"}))
    MessageUsefulnessReason.add_member(:not_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COMPLETE', traits: {"smithy.api#enumValue" => "NOT_COMPLETE"}))
    MessageUsefulnessReason.add_member(:not_concise, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONCISE', traits: {"smithy.api#enumValue" => "NOT_CONCISE"}))
    MessageUsefulnessReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))
    Messages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Message)
    MetadataEvent.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the conversation with which the generated metadata is associated.</p>"}))
    MetadataEvent.add_member(:user_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'userMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Q Business end user text input message within the conversation.</p>"}))
    MetadataEvent.add_member(:system_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'systemMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Q Business AI generated message within the conversation.</p>"}))
    MetadataEvent.add_member(:source_attributions, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAttributions, location_name: 'sourceAttributions', traits: {"smithy.api#documentation" => "<p>The source documents used to generate the conversation response.</p>"}))
    MetadataEvent.add_member(:final_text_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'finalTextMessage', traits: {"smithy.api#documentation" => "<p>The final text output message generated by the system.</p>"}))
    MetadataEvent.type = Types::MetadataEvent
    NativeIndexConfiguration.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier for the Amazon Q Business index.</p>", "smithy.api#required" => {}}))
    NativeIndexConfiguration.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'version', traits: {"smithy.api#documentation" => "<p>A read-only field that specifies the version of the <code>NativeIndexConfiguration</code>.</p> <p>Amazon Q Business introduces enhanced document retrieval capabilities in version 2 of <code>NativeIndexConfiguration</code>, focusing on streamlined metadata boosting that prioritizes recency and source relevance to deliver more accurate responses to your queries. Version 2 has the following differences from version 1:</p> <ul> <li> <p>Version 2 supports a single Date field (created_at OR last_updated_at) for recency boosting</p> </li> <li> <p>Version 2 supports a single String field with an ordered list of up to 5 values</p> </li> <li> <p>Version 2 introduces number-based boost levels (ONE, TWO) alongside the text-based levels</p> </li> <li> <p>Version 2 allows specifying prioritization between Date and String fields</p> </li> <li> <p>Version 2 maintains backward compatibility with existing configurations</p> </li> </ul>"}))
    NativeIndexConfiguration.add_member(:boosting_override, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeBoostingOverrideMap, location_name: 'boostingOverride', traits: {"smithy.api#documentation" => "<p>Overrides the default boosts applied by Amazon Q Business to supported document attribute data types.</p>"}))
    NativeIndexConfiguration.type = Types::NativeIndexConfiguration
    NoAuthConfiguration.type = Types::NoAuthConfiguration
    NumberAttributeBoostingConfiguration.add_member(:boosting_level, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, location_name: 'boostingLevel', traits: {"smithy.api#documentation" => "<p>Specifies the priority of boosted document attributes in relation to other boosted attributes. This parameter determines how strongly the attribute influences document ranking in search results. <code>NUMBER</code> attributes can serve as additional boosting factors when needed, but are not supported when using <code>NativeIndexConfiguration</code> version 2.</p>", "smithy.api#required" => {}}))
    NumberAttributeBoostingConfiguration.add_member(:boosting_type, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeBoostingType, location_name: 'boostingType', traits: {"smithy.api#documentation" => "<p>Specifies whether higher or lower numeric values should be prioritized when boosting. Valid values are ASCENDING (higher numbers are more important) and DESCENDING (lower numbers are more important).</p>"}))
    NumberAttributeBoostingConfiguration.type = Types::NumberAttributeBoostingConfiguration
    NumberAttributeBoostingType.add_member(:prioritize_larger_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIORITIZE_LARGER_VALUES', traits: {"smithy.api#enumValue" => "PRIORITIZE_LARGER_VALUES"}))
    NumberAttributeBoostingType.add_member(:prioritize_smaller_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIORITIZE_SMALLER_VALUES', traits: {"smithy.api#enumValue" => "PRIORITIZE_SMALLER_VALUES"}))
    OAuth2ClientCredentialConfiguration.add_member(:secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'secretArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Secrets Manager secret that stores the OAuth 2.0 credentials/token used for plugin configuration.</p>", "smithy.api#required" => {}}))
    OAuth2ClientCredentialConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM role used by Amazon Q Business to access the OAuth 2.0 authentication credentials stored in a Secrets Manager secret.</p>", "smithy.api#required" => {}}))
    OAuth2ClientCredentialConfiguration.add_member(:authorization_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'authorizationUrl', traits: {"smithy.api#documentation" => "<p>The redirect URL required by the OAuth 2.0 protocol for Amazon Q Business to authenticate a plugin user through a third party authentication server.</p>"}))
    OAuth2ClientCredentialConfiguration.add_member(:token_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'tokenUrl', traits: {"smithy.api#documentation" => "<p>The URL required by the OAuth 2.0 protocol to exchange an end user authorization code for an access token.</p>"}))
    OAuth2ClientCredentialConfiguration.type = Types::OAuth2ClientCredentialConfiguration
    OpenIDConnectProviderConfiguration.add_member(:secrets_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'secretsArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a Secrets Manager secret containing the OIDC client secret.</p>", "smithy.api#required" => {}}))
    OpenIDConnectProviderConfiguration.add_member(:secrets_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'secretsRole', traits: {"smithy.api#documentation" => "<p>An IAM role with permissions to access KMS to decrypt the Secrets Manager secret containing your OIDC client secret.</p>", "smithy.api#required" => {}}))
    OpenIDConnectProviderConfiguration.type = Types::OpenIDConnectProviderConfiguration
    OrchestrationConfiguration.add_member(:control, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationControl, location_name: 'control', traits: {"smithy.api#documentation" => "<p> Status information about whether chat orchestration is activated or deactivated for your Amazon Q Business application.</p>", "smithy.api#required" => {}}))
    OrchestrationConfiguration.type = Types::OrchestrationConfiguration
    OrchestrationControl.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    OrchestrationControl.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    OutputFormat.add_member(:raw, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RAW', traits: {"smithy.api#enumValue" => "RAW"}))
    PermissionCondition.add_member(:condition_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionConditionOperator, location_name: 'conditionOperator', traits: {"smithy.api#documentation" => "<p>The operator to use for the condition evaluation. This determines how the condition values are compared.</p>", "smithy.api#required" => {}}))
    PermissionCondition.add_member(:condition_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionConditionKey, location_name: 'conditionKey', traits: {"smithy.api#documentation" => "<p>The key for the condition. This identifies the attribute that the condition applies to.</p>", "smithy.api#required" => {}}))
    PermissionCondition.add_member(:condition_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionConditionValues, location_name: 'conditionValues', traits: {"smithy.api#documentation" => "<p>The values to compare against using the specified condition operator.</p>", "smithy.api#required" => {}}))
    PermissionCondition.type = Types::PermissionCondition
    PermissionConditionOperator.add_member(:string_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING_EQUALS', traits: {"smithy.api#enumValue" => "StringEquals"}))
    PermissionConditionValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionConditionValue)
    PermissionConditions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionCondition)
    PersonalizationConfiguration.add_member(:personalization_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalizationControlMode, location_name: 'personalizationControlMode', traits: {"smithy.api#documentation" => "<p>An option to allow Amazon Q Business to customize chat responses using user specific metadata—specifically, location and job information—in your IAM Identity Center instance.</p>", "smithy.api#required" => {}}))
    PersonalizationConfiguration.type = Types::PersonalizationConfiguration
    PersonalizationControlMode.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PersonalizationControlMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    Plugin.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin.</p>"}))
    Plugin.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the plugin.</p>"}))
    Plugin.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the plugin.</p>"}))
    Plugin.add_member(:server_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'serverUrl', traits: {"smithy.api#documentation" => "<p>The plugin server URL used for configuration.</p>"}))
    Plugin.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The current status of the plugin.</p>"}))
    Plugin.add_member(:build_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginBuildStatus, location_name: 'buildStatus', traits: {"smithy.api#documentation" => "<p>The status of the plugin.</p>"}))
    Plugin.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the plugin was created.</p>"}))
    Plugin.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the plugin was last updated.</p>"}))
    Plugin.type = Types::Plugin
    PluginAuthConfiguration.add_member(:basic_auth_configuration, Types::PluginAuthConfiguration::BasicAuthConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthConfiguration, location_name: 'basicAuthConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the basic authentication credentials used to configure a plugin.</p>"}))
    PluginAuthConfiguration.add_member(:o_auth2_client_credential_configuration, Types::PluginAuthConfiguration::OAuth2ClientCredentialConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: OAuth2ClientCredentialConfiguration, location_name: 'oAuth2ClientCredentialConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the OAuth 2.0 authentication credential/token used to configure a plugin.</p>"}))
    PluginAuthConfiguration.add_member(:no_auth_configuration, Types::PluginAuthConfiguration::NoAuthConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: NoAuthConfiguration, location_name: 'noAuthConfiguration', traits: {"smithy.api#documentation" => "<p>Information about invoking a custom plugin without any authentication.</p>"}))
    PluginAuthConfiguration.add_member(:idc_auth_configuration, Types::PluginAuthConfiguration::IdcAuthConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcAuthConfiguration, location_name: 'idcAuthConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the IAM Identity Center Application used to configure authentication for a plugin.</p>"}))
    PluginAuthConfiguration.add_member(:unknown, Types::PluginAuthConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PluginAuthConfiguration.type = Types::PluginAuthConfiguration
    PluginBuildStatus.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    PluginBuildStatus.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    PluginBuildStatus.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PluginBuildStatus.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    PluginBuildStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    PluginBuildStatus.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    PluginBuildStatus.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PluginConfiguration.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p> The identifier of the plugin you want to use.</p>", "smithy.api#required" => {}}))
    PluginConfiguration.type = Types::PluginConfiguration
    PluginState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PluginState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PluginType.add_member(:service_now, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_NOW', traits: {"smithy.api#enumValue" => "SERVICE_NOW"}))
    PluginType.add_member(:salesforce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SALESFORCE', traits: {"smithy.api#enumValue" => "SALESFORCE"}))
    PluginType.add_member(:jira, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JIRA', traits: {"smithy.api#enumValue" => "JIRA"}))
    PluginType.add_member(:zendesk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZENDESK', traits: {"smithy.api#enumValue" => "ZENDESK"}))
    PluginType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    PluginType.add_member(:quicksight, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUICKSIGHT', traits: {"smithy.api#enumValue" => "QUICKSIGHT"}))
    PluginType.add_member(:servicenow_now_platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICENOW_NOW_PLATFORM', traits: {"smithy.api#enumValue" => "SERVICENOW_NOW_PLATFORM"}))
    PluginType.add_member(:jira_cloud, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JIRA_CLOUD', traits: {"smithy.api#enumValue" => "JIRA_CLOUD"}))
    PluginType.add_member(:salesforce_crm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SALESFORCE_CRM', traits: {"smithy.api#enumValue" => "SALESFORCE_CRM"}))
    PluginType.add_member(:zendesk_suite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZENDESK_SUITE', traits: {"smithy.api#enumValue" => "ZENDESK_SUITE"}))
    PluginType.add_member(:atlassian_confluence, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATLASSIAN_CONFLUENCE', traits: {"smithy.api#enumValue" => "ATLASSIAN_CONFLUENCE"}))
    PluginType.add_member(:google_calendar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOOGLE_CALENDAR', traits: {"smithy.api#enumValue" => "GOOGLE_CALENDAR"}))
    PluginType.add_member(:microsoft_teams, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_TEAMS', traits: {"smithy.api#enumValue" => "MICROSOFT_TEAMS"}))
    PluginType.add_member(:microsoft_exchange, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MICROSOFT_EXCHANGE', traits: {"smithy.api#enumValue" => "MICROSOFT_EXCHANGE"}))
    PluginType.add_member(:pagerduty_advance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGERDUTY_ADVANCE', traits: {"smithy.api#enumValue" => "PAGERDUTY_ADVANCE"}))
    PluginType.add_member(:smartsheet, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMARTSHEET', traits: {"smithy.api#enumValue" => "SMARTSHEET"}))
    PluginType.add_member(:asana, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASANA', traits: {"smithy.api#enumValue" => "ASANA"}))
    PluginTypeCategory.add_member(:crm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CRM', traits: {"smithy.api#enumValue" => "Customer relationship management (CRM)"}))
    PluginTypeCategory.add_member(:project_management, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROJECT_MANAGEMENT', traits: {"smithy.api#enumValue" => "Project management"}))
    PluginTypeCategory.add_member(:communication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMMUNICATION', traits: {"smithy.api#enumValue" => "Communication"}))
    PluginTypeCategory.add_member(:productivity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCTIVITY', traits: {"smithy.api#enumValue" => "Productivity"}))
    PluginTypeCategory.add_member(:ticketing_management, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TICKETING_MANAGEMENT', traits: {"smithy.api#enumValue" => "Ticketing and incident management"}))
    PluginTypeMetadataSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the plugin.</p>"}))
    PluginTypeMetadataSummary.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginTypeCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the plugin type.</p>"}))
    PluginTypeMetadataSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description assigned by Amazon Q Business to a plugin. You can't modify this value.</p>"}))
    PluginTypeMetadataSummary.type = Types::PluginTypeMetadataSummary
    Plugins.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Plugin)
    Principal.add_member(:user, Types::Principal::User, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalUser, location_name: 'user', traits: {"smithy.api#documentation" => "<p>The user associated with the principal.</p>"}))
    Principal.add_member(:group, Types::Principal::Group, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalGroup, location_name: 'group', traits: {"smithy.api#documentation" => "<p> The group associated with the principal.</p>"}))
    Principal.add_member(:unknown, Types::Principal::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Principal.type = Types::Principal
    PrincipalGroup.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>"}))
    PrincipalGroup.add_member(:access, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadAccessType, location_name: 'access', traits: {"smithy.api#documentation" => "<p>Provides information about whether to allow or deny access to the principal.</p>", "smithy.api#required" => {}}))
    PrincipalGroup.add_member(:membership_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'membershipType', traits: {"smithy.api#documentation" => "<p>The type of group.</p>"}))
    PrincipalGroup.type = Types::PrincipalGroup
    PrincipalUser.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The identifier of the user. </p>"}))
    PrincipalUser.add_member(:access, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadAccessType, location_name: 'access', traits: {"smithy.api#documentation" => "<p>Provides information about whether to allow or deny access to the principal.</p>", "smithy.api#required" => {}}))
    PrincipalUser.add_member(:membership_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'membershipType', traits: {"smithy.api#documentation" => "<p>The type of group.</p>"}))
    PrincipalUser.type = Types::PrincipalUser
    Principals.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Principal)
    PutFeedbackRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application associated with the feedback.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user giving the feedback.</p>", "smithy.api#httpQuery" => "userId"}))
    PutFeedbackRequest.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the conversation the feedback is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemMessageId, location_name: 'messageId', traits: {"smithy.api#documentation" => "<p>The identifier of the chat message that the feedback was given for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutFeedbackRequest.add_member(:message_copied_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'messageCopiedAt', traits: {"smithy.api#documentation" => "<p>The timestamp for when the feedback was recorded.</p>"}))
    PutFeedbackRequest.add_member(:message_usefulness, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageUsefulnessFeedback, location_name: 'messageUsefulness', traits: {"smithy.api#documentation" => "<p>The feedback usefulness value given by the user to the chat message.</p>"}))
    PutFeedbackRequest.type = Types::PutFeedbackRequest
    PutGroupRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application in which the user and group mapping belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGroupRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index in which you want to map users to their groups.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The list that contains your users or sub groups that belong the same group. For example, the group \"Company\" includes the user \"CEO\" and the sub groups \"Research\", \"Engineering\", and \"Sales and Marketing\".</p>", "smithy.api#required" => {}}))
    PutGroupRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source for which you want to map users to their groups. This is useful if a group is tied to multiple data sources, but you only want the group to access documents of a certain data source. For example, the groups \"Research\", \"Engineering\", and \"Sales and Marketing\" are all tied to the company's documents stored in the data sources Confluence and Salesforce. However, \"Sales and Marketing\" team only needs access to customer-related documents stored in Salesforce.</p>"}))
    PutGroupRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: MembershipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the group.</p>", "smithy.api#required" => {}}))
    PutGroupRequest.add_member(:group_members, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupMembers, location_name: 'groupMembers', traits: {"smithy.api#required" => {}}))
    PutGroupRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that has access to the S3 file that contains your list of users that belong to a group.</p>"}))
    PutGroupRequest.type = Types::PutGroupRequest
    PutGroupResponse.type = Types::PutGroupResponse
    QAppsConfiguration.add_member(:q_apps_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsControlMode, location_name: 'qAppsControlMode', traits: {"smithy.api#documentation" => "<p>Status information about whether end users can create and use Amazon Q Apps in the web experience.</p>", "smithy.api#required" => {}}))
    QAppsConfiguration.type = Types::QAppsConfiguration
    QAppsControlMode.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    QAppsControlMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    QIamActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QIamAction)
    QuickSightConfiguration.add_member(:client_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientNamespace, location_name: 'clientNamespace', traits: {"smithy.api#documentation" => "<p>The Amazon QuickSight namespace that is used as the identity provider. For more information about QuickSight namespaces, see <a href=\"https://docs.aws.amazon.com/quicksight/latest/developerguide/namespace-operations.html\">Namespace operations</a>. </p>", "smithy.api#required" => {}}))
    QuickSightConfiguration.type = Types::QuickSightConfiguration
    ReadAccessType.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    ReadAccessType.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    RelevantContent.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The actual content of the relevant item.</p>"}))
    RelevantContent.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentId, location_name: 'documentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the document containing the relevant content.</p>"}))
    RelevantContent.add_member(:document_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'documentTitle', traits: {"smithy.api#documentation" => "<p>The title of the document containing the relevant content.</p>"}))
    RelevantContent.add_member(:document_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'documentUri', traits: {"smithy.api#documentation" => "<p>The URI of the document containing the relevant content.</p>"}))
    RelevantContent.add_member(:document_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributes, location_name: 'documentAttributes', traits: {"smithy.api#documentation" => "<p>Additional attributes of the document containing the relevant content.</p>"}))
    RelevantContent.add_member(:score_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreAttributes, location_name: 'scoreAttributes', traits: {"smithy.api#documentation" => "<p>Attributes related to the relevance score of the content.</p>"}))
    RelevantContent.type = Types::RelevantContent
    RelevantContentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RelevantContent)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message describing a <code>ResourceNotFoundException</code>.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource affected.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseConfiguration.add_member(:instruction_collection, Smithy::Schema::Shapes::ShapeRef.new(shape: InstructionCollection, location_name: 'instructionCollection', traits: {"smithy.api#documentation" => "<p>A collection of instructions that guide how Amazon Q Business generates responses, including parameters for response length, target audience, perspective, output style, identity, tone, and custom instructions.</p>"}))
    ResponseConfiguration.type = Types::ResponseConfiguration
    ResponseConfigurationType.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ResponseConfigurations.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseConfigurationType)
    ResponseConfigurations.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseConfiguration)
    ResponseScope.add_member(:enterprise_content_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTERPRISE_CONTENT_ONLY', traits: {"smithy.api#enumValue" => "ENTERPRISE_CONTENT_ONLY"}))
    ResponseScope.add_member(:extended_knowledge_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTENDED_KNOWLEDGE_ENABLED', traits: {"smithy.api#enumValue" => "EXTENDED_KNOWLEDGE_ENABLED"}))
    Retriever.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application using the retriever.</p>"}))
    Retriever.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The identifier of the retriever used by your Amazon Q Business application.</p>"}))
    Retriever.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of your retriever.</p>"}))
    Retriever.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of your retriever.</p>"}))
    Retriever.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of your retriever.</p>"}))
    Retriever.type = Types::Retriever
    RetrieverConfiguration.add_member(:native_index_configuration, Types::RetrieverConfiguration::NativeIndexConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: NativeIndexConfiguration, location_name: 'nativeIndexConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information on how a Amazon Q Business index used as a retriever for your Amazon Q Business application is configured.</p>"}))
    RetrieverConfiguration.add_member(:kendra_index_configuration, Types::RetrieverConfiguration::KendraIndexConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: KendraIndexConfiguration, location_name: 'kendraIndexConfiguration', traits: {"smithy.api#documentation" => "<p>Provides information on how the Amazon Kendra index used as a retriever for your Amazon Q Business application is configured.</p>"}))
    RetrieverConfiguration.add_member(:unknown, Types::RetrieverConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RetrieverConfiguration.type = Types::RetrieverConfiguration
    RetrieverContentSource.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the retriever to use as the content source.</p>", "smithy.api#required" => {}}))
    RetrieverContentSource.type = Types::RetrieverContentSource
    RetrieverStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    RetrieverStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    RetrieverStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RetrieverType.add_member(:native_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NATIVE_INDEX', traits: {"smithy.api#enumValue" => "NATIVE_INDEX"}))
    RetrieverType.add_member(:kendra_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KENDRA_INDEX', traits: {"smithy.api#enumValue" => "KENDRA_INDEX"}))
    Retrievers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Retriever)
    Rule.add_member(:included_users_and_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: UsersAndGroups, location_name: 'includedUsersAndGroups', traits: {"smithy.api#documentation" => "<p>Users and groups to be included in a rule.</p>"}))
    Rule.add_member(:excluded_users_and_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: UsersAndGroups, location_name: 'excludedUsersAndGroups', traits: {"smithy.api#documentation" => "<p>Users and groups to be excluded from a rule.</p>"}))
    Rule.add_member(:rule_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleType, location_name: 'ruleType', traits: {"smithy.api#documentation" => "<p>The type of rule.</p>", "smithy.api#required" => {}}))
    Rule.add_member(:rule_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleConfiguration, location_name: 'ruleConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration information for a rule.</p>"}))
    Rule.type = Types::Rule
    RuleConfiguration.add_member(:content_blocker_rule, Types::RuleConfiguration::ContentBlockerRule, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentBlockerRule, location_name: 'contentBlockerRule', traits: {"smithy.api#documentation" => "<p>A rule for configuring how Amazon Q Business responds when it encounters a a blocked topic.</p>"}))
    RuleConfiguration.add_member(:content_retrieval_rule, Types::RuleConfiguration::ContentRetrievalRule, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentRetrievalRule, location_name: 'contentRetrievalRule'))
    RuleConfiguration.add_member(:unknown, Types::RuleConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RuleConfiguration.type = Types::RuleConfiguration
    RuleType.add_member(:content_blocker_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT_BLOCKER_RULE', traits: {"smithy.api#enumValue" => "CONTENT_BLOCKER_RULE"}))
    RuleType.add_member(:content_retrieval_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTENT_RETRIEVAL_RULE', traits: {"smithy.api#enumValue" => "CONTENT_RETRIEVAL_RULE"}))
    Rules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Rule)
    S3.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket that contains the file.</p>", "smithy.api#required" => {}}))
    S3.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of the file.</p>", "smithy.api#required" => {}}))
    S3.type = Types::S3
    SamlConfiguration.add_member(:metadata_xml, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlMetadataXML, location_name: 'metadataXML', traits: {"smithy.api#documentation" => "<p>The metadata XML that your IdP generated.</p>", "smithy.api#required" => {}}))
    SamlConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role assumed by users when they authenticate into their Amazon Q Business web experience, containing the relevant Amazon Q Business permissions for conversing with Amazon Q Business.</p>", "smithy.api#required" => {}}))
    SamlConfiguration.add_member(:user_id_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlAttribute, location_name: 'userIdAttribute', traits: {"smithy.api#documentation" => "<p>The user attribute name in your IdP that maps to the user email.</p>", "smithy.api#required" => {}}))
    SamlConfiguration.add_member(:user_group_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlAttribute, location_name: 'userGroupAttribute', traits: {"smithy.api#documentation" => "<p>The group attribute name in your IdP that maps to user groups.</p>"}))
    SamlConfiguration.type = Types::SamlConfiguration
    SamlProviderConfiguration.add_member(:authentication_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlAuthenticationUrl, location_name: 'authenticationUrl', traits: {"smithy.api#documentation" => "<p>The URL where Amazon Q Business end users will be redirected for authentication. </p>", "smithy.api#required" => {}}))
    SamlProviderConfiguration.type = Types::SamlProviderConfiguration
    ScoreAttributes.add_member(:score_confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: ScoreConfidence, location_name: 'scoreConfidence', traits: {"smithy.api#documentation" => "<p>The confidence level of the relevance score.</p>"}))
    ScoreAttributes.type = Types::ScoreAttributes
    ScoreConfidence.add_member(:very_high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERY_HIGH', traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    ScoreConfidence.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ScoreConfidence.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ScoreConfidence.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ScoreConfidence.add_member(:not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    SearchRelevantContentRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application to search.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SearchRelevantContentRequest.add_member(:query_text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryText, location_name: 'queryText', traits: {"smithy.api#documentation" => "<p>The text to search for.</p>", "smithy.api#required" => {}}))
    SearchRelevantContentRequest.add_member(:content_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentSource, location_name: 'contentSource', traits: {"smithy.api#documentation" => "<p>The source of content to search in.</p>", "smithy.api#required" => {}}))
    SearchRelevantContentRequest.add_member(:attribute_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeFilter, location_name: 'attributeFilter'))
    SearchRelevantContentRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    SearchRelevantContentRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. (You received this token from a previous call.)</p>"}))
    SearchRelevantContentRequest.type = Types::SearchRelevantContentRequest
    SearchRelevantContentResponse.add_member(:relevant_content, Smithy::Schema::Shapes::ShapeRef.new(shape: RelevantContentList, location_name: 'relevantContent', traits: {"smithy.api#documentation" => "<p>The list of relevant content items found.</p>"}))
    SearchRelevantContentResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next set of results, if there are any.</p>"}))
    SearchRelevantContentResponse.type = Types::SearchRelevantContentResponse
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message describing a <code>ServiceQuotaExceededException</code>.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource affected.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource affected.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SnippetExcerpt.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: SnippetExcerptText, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The relevant text excerpt from a source that was used to generate a citation text segment in an Amazon Q chat response.</p>"}))
    SnippetExcerpt.type = Types::SnippetExcerpt
    SourceAttribution.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the document which is the source for the Amazon Q Business generated response. </p>"}))
    SourceAttribution.add_member(:snippet, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'snippet', traits: {"smithy.api#documentation" => "<p>The content extract from the document on which the generated response is based. </p>"}))
    SourceAttribution.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL of the document which is the source for the Amazon Q Business generated response. </p>"}))
    SourceAttribution.add_member(:citation_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'citationNumber', traits: {"smithy.api#documentation" => "<p>The number attached to a citation in an Amazon Q Business generated response.</p>"}))
    SourceAttribution.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was last updated.</p>"}))
    SourceAttribution.add_member(:text_message_segments, Smithy::Schema::Shapes::ShapeRef.new(shape: TextSegmentList, location_name: 'textMessageSegments', traits: {"smithy.api#documentation" => "<p>A text extract from a source document that is used for source attribution.</p>"}))
    SourceAttribution.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'documentId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the source document used in the citation, obtained from the Amazon Q Business index during chat response generation. This ID is used as input to the <code>GetDocumentContent</code> API to retrieve the actual document content for user verification.</p>"}))
    SourceAttribution.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index containing the source document's metadata and access control information. This links the citation back to the specific Amazon Q Business index where the document's searchable content and permissions are stored.</p>"}))
    SourceAttribution.add_member(:datasource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'datasourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source from which the document was ingested. This field is not present if the document is ingested by directly calling the BatchPutDocument API (similar to checkDocumentAccess). If the document is from a file-upload data source, the datasource will be \"uploaded-docs-file-stat-datasourceid\".</p>"}))
    SourceAttribution.type = Types::SourceAttribution
    SourceAttributions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAttribution)
    SourceDetails.add_member(:image_source_details, Types::SourceDetails::ImageSourceDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSourceDetails, location_name: 'imageSourceDetails', traits: {"smithy.api#documentation" => "<p>Details specific to image content within the source.</p>"}))
    SourceDetails.add_member(:audio_source_details, Types::SourceDetails::AudioSourceDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioSourceDetails, location_name: 'audioSourceDetails', traits: {"smithy.api#documentation" => "<p>Details specific to audio content within the source.</p>"}))
    SourceDetails.add_member(:video_source_details, Types::SourceDetails::VideoSourceDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoSourceDetails, location_name: 'videoSourceDetails', traits: {"smithy.api#documentation" => "<p>Details specific to video content within the source.</p>"}))
    SourceDetails.add_member(:unknown, Types::SourceDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SourceDetails.type = Types::SourceDetails
    StartDataSourceSyncJobRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p> The identifier of the data source connector. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of Amazon Q Business application the data source is connected to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index used with the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDataSourceSyncJobRequest.type = Types::StartDataSourceSyncJobRequest
    StartDataSourceSyncJobResponse.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionId, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>The identifier for a particular synchronization job.</p>"}))
    StartDataSourceSyncJobResponse.type = Types::StartDataSourceSyncJobResponse
    Status.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    Status.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    StopDataSourceSyncJobRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p> The identifier of the data source connector. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application that the data source is connected to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index used with the Amazon Q Business data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDataSourceSyncJobRequest.type = Types::StopDataSourceSyncJobRequest
    StopDataSourceSyncJobResponse.type = Types::StopDataSourceSyncJobResponse
    StringAttributeBoostingConfiguration.add_member(:boosting_level, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, location_name: 'boostingLevel', traits: {"smithy.api#documentation" => "<p>Specifies the priority tier ranking of boosting applied to document attributes. For version 2, this parameter indicates the relative ranking between boosted fields (ONE being highest priority, TWO being second highest, etc.) and determines the order in which attributes influence document ranking in search results. For version 1, this parameter specifies the boosting intensity. For version 2, boosting intensity (VERY HIGH, HIGH, MEDIUM, LOW, NONE) are not supported. Note that in version 2, you are not allowed to boost on only one field and make this value TWO.</p>", "smithy.api#required" => {}}))
    StringAttributeBoostingConfiguration.add_member(:attribute_value_boosting, Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValueBoosting, location_name: 'attributeValueBoosting', traits: {"smithy.api#documentation" => "<p>Specifies specific values of a <code>STRING</code> type document attribute being boosted. When using <code>NativeIndexConfiguration</code> version 2, you can specify up to five values in order of priority.</p>"}))
    StringAttributeBoostingConfiguration.type = Types::StringAttributeBoostingConfiguration
    StringAttributeValueBoosting.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringAttributeValueBoosting.value = Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValueBoostingLevel)
    StringAttributeValueBoostingLevel.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    StringAttributeValueBoostingLevel.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    StringAttributeValueBoostingLevel.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    StringAttributeValueBoostingLevel.add_member(:very_high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VERY_HIGH', traits: {"smithy.api#enumValue" => "VERY_HIGH"}))
    StringAttributeValueBoostingLevel.add_member(:one, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE', traits: {"smithy.api#enumValue" => "ONE"}))
    StringAttributeValueBoostingLevel.add_member(:two, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TWO', traits: {"smithy.api#enumValue" => "TWO"}))
    StringAttributeValueBoostingLevel.add_member(:three, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE', traits: {"smithy.api#enumValue" => "THREE"}))
    StringAttributeValueBoostingLevel.add_member(:four, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOUR', traits: {"smithy.api#enumValue" => "FOUR"}))
    StringAttributeValueBoostingLevel.add_member(:five, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIVE', traits: {"smithy.api#enumValue" => "FIVE"}))
    StringListAttributeBoostingConfiguration.add_member(:boosting_level, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeBoostingLevel, location_name: 'boostingLevel', traits: {"smithy.api#documentation" => "<p>Specifies the priority of boosted document attributes in relation to other boosted attributes. This parameter determines how strongly the attribute influences document ranking in search results. <code>STRING_LIST</code> attributes can serve as additional boosting factors when needed, but are not supported when using <code>NativeIndexConfiguration</code> version 2.</p>", "smithy.api#required" => {}}))
    StringListAttributeBoostingConfiguration.type = Types::StringListAttributeBoostingConfiguration
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Subscription.add_member(:subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionId, location_name: 'subscriptionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business subscription to be updated.</p>"}))
    Subscription.add_member(:subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: 'subscriptionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription that was updated.</p>"}))
    Subscription.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionPrincipal, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The IAM Identity Center <code>UserId</code> or <code>GroupId</code> of a user or group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>"}))
    Subscription.add_member(:current_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'currentSubscription', traits: {"smithy.api#documentation" => "<p>The type of your current Amazon Q Business subscription.</p>"}))
    Subscription.add_member(:next_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'nextSubscription', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Q Business subscription for the next month.</p>"}))
    Subscription.type = Types::Subscription
    SubscriptionDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> The type of an Amazon Q Business subscription. </p>"}))
    SubscriptionDetails.type = Types::SubscriptionDetails
    SubscriptionPrincipal.add_member(:user, Types::SubscriptionPrincipal::User, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentifier, location_name: 'user', traits: {"smithy.api#documentation" => "<p>The identifier of a user in the IAM Identity Center instance connected to the Amazon Q Business application.</p>"}))
    SubscriptionPrincipal.add_member(:group, Types::SubscriptionPrincipal::Group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'group', traits: {"smithy.api#documentation" => "<p>The identifier of a group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>"}))
    SubscriptionPrincipal.add_member(:unknown, Types::SubscriptionPrincipal::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    SubscriptionPrincipal.type = Types::SubscriptionPrincipal
    SubscriptionType.add_member(:q_lite, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Q_LITE', traits: {"smithy.api#enumValue" => "Q_LITE"}))
    SubscriptionType.add_member(:q_business, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Q_BUSINESS', traits: {"smithy.api#enumValue" => "Q_BUSINESS"}))
    Subscriptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subscription)
    SystemMessageType.add_member(:response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESPONSE', traits: {"smithy.api#enumValue" => "RESPONSE"}))
    SystemMessageType.add_member(:grounded_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUNDED_RESPONSE', traits: {"smithy.api#enumValue" => "GROUNDED_RESPONSE"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p> The key for the tag. Keys are not case sensitive and must be unique for the Amazon Q Business application or data source.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value associated with the tag. The value may be an empty string but it can't be null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business application or data source to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag keys to add to the Amazon Q Business application or data source. If a tag already exists, the existing value is replaced with the new value.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TextDocumentStatistics.add_member(:indexed_text_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexedTextBytes, location_name: 'indexedTextBytes', traits: {"smithy.api#documentation" => "<p>The total size, in bytes, of the indexed documents.</p>"}))
    TextDocumentStatistics.add_member(:indexed_text_document_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexedTextDocument, location_name: 'indexedTextDocumentCount', traits: {"smithy.api#documentation" => "<p>The number of text documents indexed.</p>"}))
    TextDocumentStatistics.type = Types::TextDocumentStatistics
    TextInputEvent.add_member(:user_message, Smithy::Schema::Shapes::ShapeRef.new(shape: UserMessage, location_name: 'userMessage', traits: {"smithy.api#documentation" => "<p>A user message in a text message input event.</p>", "smithy.api#required" => {}}))
    TextInputEvent.type = Types::TextInputEvent
    TextOutputEvent.add_member(:system_message_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemMessageType, location_name: 'systemMessageType', traits: {"smithy.api#documentation" => "<p>The type of AI-generated message in a <code>TextOutputEvent</code>. Amazon Q Business currently supports two types of messages:</p> <ul> <li> <p> <code>RESPONSE</code> - The Amazon Q Business system response.</p> </li> <li> <p> <code>GROUNDED_RESPONSE</code> - The corrected, hallucination-reduced, response returned by Amazon Q Business. Available only if hallucination reduction is supported and configured for the application and detected in the end user chat query by Amazon Q Business.</p> </li> </ul>"}))
    TextOutputEvent.add_member(:conversation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConversationId, location_name: 'conversationId', traits: {"smithy.api#documentation" => "<p>The identifier of the conversation with which the text output event is associated.</p>"}))
    TextOutputEvent.add_member(:user_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'userMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an end user message in a <code>TextOutputEvent</code>.</p>"}))
    TextOutputEvent.add_member(:system_message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageId, location_name: 'systemMessageId', traits: {"smithy.api#documentation" => "<p>The identifier of an AI-generated message in a <code>TextOutputEvent</code>.</p>"}))
    TextOutputEvent.add_member(:system_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'systemMessage', traits: {"smithy.api#documentation" => "<p>An AI-generated message in a <code>TextOutputEvent</code>.</p>"}))
    TextOutputEvent.type = Types::TextOutputEvent
    TextSegment.add_member(:begin_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'beginOffset', traits: {"smithy.api#documentation" => "<p>The zero-based location in the response string where the source attribution starts.</p>"}))
    TextSegment.add_member(:end_offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'endOffset', traits: {"smithy.api#documentation" => "<p>The zero-based location in the response string where the source attribution ends.</p>"}))
    TextSegment.add_member(:snippet_excerpt, Smithy::Schema::Shapes::ShapeRef.new(shape: SnippetExcerpt, location_name: 'snippetExcerpt', traits: {"smithy.api#documentation" => "<p>The relevant text excerpt from a source that was used to generate a citation text segment in an Amazon Q Business chat response.</p>"}))
    TextSegment.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAttributionMediaId, location_name: 'mediaId', traits: {"smithy.api#deprecated" => {"since" => "2025-02-28", "message" => "Deprecated in favor of using mediaId within the respective sourceDetails field."}, "smithy.api#documentation" => "<p>The identifier of the media object associated with the text segment in the source attribution.</p>"}))
    TextSegment.add_member(:media_mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mediaMimeType', traits: {"smithy.api#deprecated" => {"since" => "2025-02-28", "message" => "Deprecated in favor of using mediaMimeType within the respective sourceDetails field."}, "smithy.api#documentation" => "<p>The MIME type (image/png) of the media object associated with the text segment in the source attribution.</p>"}))
    TextSegment.add_member(:source_details, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDetails, location_name: 'sourceDetails', traits: {"smithy.api#documentation" => "<p>Source information for a segment of extracted text, including its media type.</p>"}))
    TextSegment.type = Types::TextSegment
    TextSegmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TextSegment)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TopicConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicConfigurationName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for your topic control configuration.</p>", "smithy.api#required" => {}}))
    TopicConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for your topic control configuration. Use this to outline how the large language model (LLM) should use this topic control configuration.</p>"}))
    TopicConfiguration.add_member(:example_chat_messages, Smithy::Schema::Shapes::ShapeRef.new(shape: ExampleChatMessages, location_name: 'exampleChatMessages', traits: {"smithy.api#documentation" => "<p>A list of example phrases that you expect the end user to use in relation to the topic.</p>"}))
    TopicConfiguration.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: Rules, location_name: 'rules', traits: {"smithy.api#documentation" => "<p>Rules defined for a topic configuration.</p>", "smithy.api#required" => {}}))
    TopicConfiguration.type = Types::TopicConfiguration
    TopicConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TopicConfiguration)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business application, or data source to remove the tag from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys to remove from the Amazon Q Business application or data source. If a tag key does not exist on the resource, it is ignored.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:identity_center_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceArn, location_name: 'identityCenterInstanceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application.</p>"}))
    UpdateApplicationRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A name for the Amazon Q Business application.</p>"}))
    UpdateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the Amazon Q Business application.</p>"}))
    UpdateApplicationRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>An Amazon Web Services Identity and Access Management (IAM) role that gives Amazon Q Business permission to access Amazon CloudWatch logs and metrics.</p>"}))
    UpdateApplicationRequest.add_member(:attachments_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentsConfiguration, location_name: 'attachmentsConfiguration', traits: {"smithy.api#documentation" => "<p>An option to allow end users to upload files directly during chat.</p>"}))
    UpdateApplicationRequest.add_member(:q_apps_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: QAppsConfiguration, location_name: 'qAppsConfiguration', traits: {"smithy.api#documentation" => "<p>An option to allow end users to create and use Amazon Q Apps in the web experience.</p>"}))
    UpdateApplicationRequest.add_member(:personalization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PersonalizationConfiguration, location_name: 'personalizationConfiguration', traits: {"smithy.api#documentation" => "<p>Configuration information about chat response personalization. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html\">Personalizing chat responses</a>.</p>"}))
    UpdateApplicationRequest.add_member(:auto_subscription_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubscriptionConfiguration, location_name: 'autoSubscriptionConfiguration', traits: {"smithy.api#documentation" => "<p>An option to enable updating the default subscription type assigned to an Amazon Q Business application using IAM identity federation for user management.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateChatControlsConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application for which the chat controls are configured.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChatControlsConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A token that you provide to identify the request to update a Amazon Q Business application chat configuration.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateChatControlsConfigurationRequest.add_member(:response_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseScope, location_name: 'responseScope', traits: {"smithy.api#documentation" => "<p>The response scope configured for your application. This determines whether your application uses its retrieval augmented generation (RAG) system to generate answers only from your enterprise data, or also uses the large language models (LLM) knowledge to respons to end user questions in chat.</p>"}))
    UpdateChatControlsConfigurationRequest.add_member(:orchestration_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationConfiguration, location_name: 'orchestrationConfiguration', traits: {"smithy.api#documentation" => "<p> The chat response orchestration settings for your application.</p>"}))
    UpdateChatControlsConfigurationRequest.add_member(:blocked_phrases_configuration_update, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockedPhrasesConfigurationUpdate, location_name: 'blockedPhrasesConfigurationUpdate', traits: {"smithy.api#documentation" => "<p>The phrases blocked from chat by your chat control configuration.</p>"}))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_create_or_update, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: 'topicConfigurationsToCreateOrUpdate', traits: {"smithy.api#documentation" => "<p>The configured topic specific chat controls you want to update.</p>"}))
    UpdateChatControlsConfigurationRequest.add_member(:topic_configurations_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicConfigurations, location_name: 'topicConfigurationsToDelete', traits: {"smithy.api#documentation" => "<p>The configured topic specific chat controls you want to delete.</p>"}))
    UpdateChatControlsConfigurationRequest.add_member(:creator_mode_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatorModeConfiguration, location_name: 'creatorModeConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration details for <code>CREATOR_MODE</code>.</p>"}))
    UpdateChatControlsConfigurationRequest.add_member(:hallucination_reduction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HallucinationReductionConfiguration, location_name: 'hallucinationReductionConfiguration', traits: {"smithy.api#documentation" => "<p> The hallucination reduction settings for your application.</p>"}))
    UpdateChatControlsConfigurationRequest.type = Types::UpdateChatControlsConfigurationRequest
    UpdateChatControlsConfigurationResponse.type = Types::UpdateChatControlsConfigurationResponse
    UpdateChatResponseConfigurationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application containing the chat response configuration to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChatResponseConfigurationRequest.add_member(:chat_response_configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatResponseConfigurationId, location_name: 'chatResponseConfigurationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the chat response configuration to update within the specified application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateChatResponseConfigurationRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The new human-readable name to assign to the chat response configuration, making it easier to identify among multiple configurations.</p>"}))
    UpdateChatResponseConfigurationRequest.add_member(:response_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseConfigurations, location_name: 'responseConfigurations', traits: {"smithy.api#documentation" => "<p>The updated collection of response configuration settings that define how Amazon Q Business generates and formats responses to user queries.</p>", "smithy.api#required" => {}}))
    UpdateChatResponseConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier to ensure idempotency of the request. This helps prevent the same update from being processed multiple times if retries occur.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateChatResponseConfigurationRequest.type = Types::UpdateChatResponseConfigurationRequest
    UpdateChatResponseConfigurationResponse.type = Types::UpdateChatResponseConfigurationResponse
    UpdateDataAccessorRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAccessorRequest.add_member(:data_accessor_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorId, location_name: 'dataAccessorId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the data accessor to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAccessorRequest.add_member(:action_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionConfigurationList, location_name: 'actionConfigurations', traits: {"smithy.api#documentation" => "<p>The updated list of action configurations specifying the allowed actions and any associated filters.</p>", "smithy.api#required" => {}}))
    UpdateDataAccessorRequest.add_member(:authentication_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorAuthenticationDetail, location_name: 'authenticationDetail', traits: {"smithy.api#documentation" => "<p>The updated authentication configuration details for the data accessor. This specifies how the ISV will authenticate when accessing data through this data accessor.</p>"}))
    UpdateDataAccessorRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataAccessorName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The updated friendly name for the data accessor.</p>"}))
    UpdateDataAccessorRequest.type = Types::UpdateDataAccessorRequest
    UpdateDataAccessorResponse.type = Types::UpdateDataAccessorResponse
    UpdateDataSourceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p> The identifier of the Amazon Q Business application the data source is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index attached to the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source connector.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSourceRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>A name of the data source connector.</p>"}))
    UpdateDataSourceRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceConfiguration, location_name: 'configuration'))
    UpdateDataSourceRequest.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceVpcConfiguration, location_name: 'vpcConfiguration'))
    UpdateDataSourceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the data source connector.</p>"}))
    UpdateDataSourceRequest.add_member(:sync_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncSchedule, location_name: 'syncSchedule', traits: {"smithy.api#documentation" => "<p>The chosen update frequency for your data source.</p>"}))
    UpdateDataSourceRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source and required resources.</p>"}))
    UpdateDataSourceRequest.add_member(:document_enrichment_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentEnrichmentConfiguration, location_name: 'documentEnrichmentConfiguration'))
    UpdateDataSourceRequest.add_member(:media_extraction_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaExtractionConfiguration, location_name: 'mediaExtractionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for extracting information from media in documents for your data source.</p>"}))
    UpdateDataSourceRequest.type = Types::UpdateDataSourceRequest
    UpdateDataSourceResponse.type = Types::UpdateDataSourceResponse
    UpdateIndexRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application connected to the index.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business index.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateIndexRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Q Business index.</p>"}))
    UpdateIndexRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the Amazon Q Business index.</p>"}))
    UpdateIndexRequest.add_member(:capacity_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexCapacityConfiguration, location_name: 'capacityConfiguration', traits: {"smithy.api#documentation" => "<p>The storage capacity units you want to provision for your Amazon Q Business index. You can add and remove capacity to fit your usage needs.</p>"}))
    UpdateIndexRequest.add_member(:document_attribute_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentAttributeConfigurations, location_name: 'documentAttributeConfigurations', traits: {"smithy.api#documentation" => "<p>Configuration information for document metadata or fields. Document metadata are fields or attributes associated with your documents. For example, the company department name associated with each document. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes\">Understanding document attributes</a>.</p>"}))
    UpdateIndexRequest.type = Types::UpdateIndexRequest
    UpdateIndexResponse.type = Types::UpdateIndexResponse
    UpdatePluginRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application the plugin is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePluginRequest.add_member(:plugin_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginId, location_name: 'pluginId', traits: {"smithy.api#documentation" => "<p>The identifier of the plugin.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePluginRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of the plugin.</p>"}))
    UpdatePluginRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginState, location_name: 'state', traits: {"smithy.api#documentation" => "<p>The status of the plugin. </p>"}))
    UpdatePluginRequest.add_member(:server_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'serverUrl', traits: {"smithy.api#documentation" => "<p>The source URL used for plugin configuration.</p>"}))
    UpdatePluginRequest.add_member(:custom_plugin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPluginConfiguration, location_name: 'customPluginConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for a custom plugin.</p>"}))
    UpdatePluginRequest.add_member(:auth_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PluginAuthConfiguration, location_name: 'authConfiguration', traits: {"smithy.api#documentation" => "<p>The authentication configuration the plugin is using.</p>"}))
    UpdatePluginRequest.type = Types::UpdatePluginRequest
    UpdatePluginResponse.type = Types::UpdatePluginResponse
    UpdateRetrieverRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of your Amazon Q Business application.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRetrieverRequest.add_member(:retriever_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverId, location_name: 'retrieverId', traits: {"smithy.api#documentation" => "<p>The identifier of your retriever.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRetrieverRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverConfiguration, location_name: 'configuration'))
    UpdateRetrieverRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieverName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The name of your retriever.</p>"}))
    UpdateRetrieverRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role with permission to access the retriever and required resources. </p>"}))
    UpdateRetrieverRequest.type = Types::UpdateRetrieverRequest
    UpdateRetrieverResponse.type = Types::UpdateRetrieverResponse
    UpdateSubscriptionRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application where the subscription update should take effect.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionRequest.add_member(:subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionId, location_name: 'subscriptionId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business subscription to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriptionRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Q Business subscription to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSubscriptionRequest.type = Types::UpdateSubscriptionRequest
    UpdateSubscriptionResponse.add_member(:subscription_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionArn, location_name: 'subscriptionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription that was updated.</p>"}))
    UpdateSubscriptionResponse.add_member(:current_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'currentSubscription', traits: {"smithy.api#documentation" => "<p>The type of your current Amazon Q Business subscription.</p>"}))
    UpdateSubscriptionResponse.add_member(:next_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionDetails, location_name: 'nextSubscription', traits: {"smithy.api#documentation" => "<p>The type of the Amazon Q Business subscription for the next month.</p>"}))
    UpdateSubscriptionResponse.type = Types::UpdateSubscriptionResponse
    UpdateUserRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application the user is attached to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The email id attached to the user.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:user_aliases_to_update, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliasesToUpdate', traits: {"smithy.api#documentation" => "<p>The user aliases attached to the user id that are to be updated.</p>"}))
    UpdateUserRequest.add_member(:user_aliases_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliasesToDelete', traits: {"smithy.api#documentation" => "<p>The user aliases attached to the user id that are to be deleted.</p>"}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResponse.add_member(:user_aliases_added, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliasesAdded', traits: {"smithy.api#documentation" => "<p>The user aliases that have been to be added to a user id.</p>"}))
    UpdateUserResponse.add_member(:user_aliases_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliasesUpdated', traits: {"smithy.api#documentation" => "<p>The user aliases attached to a user id that have been updated.</p>"}))
    UpdateUserResponse.add_member(:user_aliases_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAliases, location_name: 'userAliasesDeleted', traits: {"smithy.api#documentation" => "<p>The user aliases that have been deleted from a user id.</p>"}))
    UpdateUserResponse.type = Types::UpdateUserResponse
    UpdateWebExperienceRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'applicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business application attached to the web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebExperienceRequest.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Q Business web experience.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebExperienceRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the role with permission to access the Amazon Q Business web experience and required resources.</p>"}))
    UpdateWebExperienceRequest.add_member(:authentication_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceAuthConfiguration, location_name: 'authenticationConfiguration', traits: {"smithy.api#deprecated" => {"message" => "Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management."}, "smithy.api#documentation" => "<p>The authentication configuration of the Amazon Q Business web experience.</p>"}))
    UpdateWebExperienceRequest.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceTitle, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the Amazon Q Business web experience.</p>"}))
    UpdateWebExperienceRequest.add_member(:subtitle, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceSubtitle, location_name: 'subtitle', traits: {"smithy.api#documentation" => "<p>The subtitle of the Amazon Q Business web experience.</p>"}))
    UpdateWebExperienceRequest.add_member(:welcome_message, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceWelcomeMessage, location_name: 'welcomeMessage', traits: {"smithy.api#documentation" => "<p>A customized welcome message for an end user in an Amazon Q Business web experience.</p>"}))
    UpdateWebExperienceRequest.add_member(:sample_prompts_control_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceSamplePromptsControlMode, location_name: 'samplePromptsControlMode', traits: {"smithy.api#documentation" => "<p>Determines whether sample prompts are enabled in the web experience for an end user.</p>"}))
    UpdateWebExperienceRequest.add_member(:identity_provider_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityProviderConfiguration, location_name: 'identityProviderConfiguration', traits: {"smithy.api#documentation" => "<p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>"}))
    UpdateWebExperienceRequest.add_member(:origins, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceOrigins, location_name: 'origins', traits: {"smithy.api#documentation" => "<p>Updates the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the <i>base URL</i> for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified).</p> <note> <ul> <li> <p>Any values except <code>null</code> submitted as part of this update will replace all previous values.</p> </li> <li> <p>You must only submit a <i>base URL</i> and not a full path. For example, <code>https://docs.aws.amazon.com</code>.</p> </li> </ul> </note>"}))
    UpdateWebExperienceRequest.add_member(:browser_extension_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserExtensionConfiguration, location_name: 'browserExtensionConfiguration', traits: {"smithy.api#documentation" => "<p>The browser extension configuration for an Amazon Q Business web experience.</p> <note> <p> For Amazon Q Business application using external OIDC-compliant identity providers (IdPs). The IdP administrator must add the browser extension sign-in redirect URLs to the IdP application. For more information, see <a href=\"https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html\">Configure external OIDC identity provider for your browser extensions.</a>. </p> </note>"}))
    UpdateWebExperienceRequest.add_member(:customization_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationConfiguration, location_name: 'customizationConfiguration', traits: {"smithy.api#documentation" => "<p>Updates the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>"}))
    UpdateWebExperienceRequest.type = Types::UpdateWebExperienceRequest
    UpdateWebExperienceResponse.type = Types::UpdateWebExperienceResponse
    UserAlias.add_member(:index_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexId, location_name: 'indexId', traits: {"smithy.api#documentation" => "<p>The identifier of the index that the user aliases are associated with.</p>"}))
    UserAlias.add_member(:data_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: 'dataSourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the data source that the user aliases are associated with.</p>"}))
    UserAlias.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The identifier of the user id associated with the user aliases.</p>", "smithy.api#required" => {}}))
    UserAlias.type = Types::UserAlias
    UserAliases.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserAlias)
    UserGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UserIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UsersAndGroups.add_member(:user_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIds, location_name: 'userIds', traits: {"smithy.api#documentation" => "<p>The user ids associated with a topic control rule.</p>"}))
    UsersAndGroups.add_member(:user_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: UserGroups, location_name: 'userGroups', traits: {"smithy.api#documentation" => "<p>The user group names associated with a topic control rule.</p>"}))
    UsersAndGroups.type = Types::UsersAndGroups
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message describing the <code>ValidationException</code>.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the <code>ValidationException</code>.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFields, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The input field(s) that failed validation.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The field name where the invalid entry was detected.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFields.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    VideoExtractionConfiguration.add_member(:video_extraction_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoExtractionStatus, location_name: 'videoExtractionStatus', traits: {"smithy.api#documentation" => "<p>The status of video extraction (ENABLED or DISABLED) for processing video content from files.</p>", "smithy.api#required" => {}}))
    VideoExtractionConfiguration.type = Types::VideoExtractionConfiguration
    VideoExtractionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    VideoExtractionStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    VideoExtractionType.add_member(:transcript, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSCRIPT', traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    VideoExtractionType.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUMMARY', traits: {"smithy.api#enumValue" => "SUMMARY"}))
    VideoSourceDetails.add_member(:media_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaId, location_name: 'mediaId', traits: {"smithy.api#documentation" => "<p>Unique identifier for the video media file.</p>"}))
    VideoSourceDetails.add_member(:media_mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mediaMimeType', traits: {"smithy.api#documentation" => "<p>The MIME type of the video file (e.g., video/mp4, video/avi).</p>"}))
    VideoSourceDetails.add_member(:start_time_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startTimeMilliseconds', traits: {"smithy.api#documentation" => "<p>The starting timestamp in milliseconds for the relevant video segment.</p>"}))
    VideoSourceDetails.add_member(:end_time_milliseconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'endTimeMilliseconds', traits: {"smithy.api#documentation" => "<p>The ending timestamp in milliseconds for the relevant video segment.</p>"}))
    VideoSourceDetails.add_member(:video_extraction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoExtractionType, location_name: 'videoExtractionType', traits: {"smithy.api#documentation" => "<p>The type of video extraction performed on the content.</p>"}))
    VideoSourceDetails.type = Types::VideoSourceDetails
    WebExperience.add_member(:web_experience_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceId, location_name: 'webExperienceId', traits: {"smithy.api#documentation" => "<p>The identifier of your Amazon Q Business web experience.</p>"}))
    WebExperience.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when the Amazon Q Business application was last updated.</p>"}))
    WebExperience.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The Unix timestamp when your Amazon Q Business web experience was updated.</p>"}))
    WebExperience.add_member(:default_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'defaultEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URLs for your Amazon Q Business web experience. The URLs are unique and fully hosted by Amazon Web Services.</p>"}))
    WebExperience.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperienceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of your Amazon Q Business web experience.</p>"}))
    WebExperience.type = Types::WebExperience
    WebExperienceAuthConfiguration.add_member(:saml_configuration, Types::WebExperienceAuthConfiguration::SamlConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: 'samlConfiguration'))
    WebExperienceAuthConfiguration.add_member(:unknown, Types::WebExperienceAuthConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    WebExperienceAuthConfiguration.type = Types::WebExperienceAuthConfiguration
    WebExperienceOrigins.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Origin)
    WebExperienceSamplePromptsControlMode.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    WebExperienceSamplePromptsControlMode.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    WebExperienceStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    WebExperienceStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WebExperienceStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    WebExperienceStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    WebExperienceStatus.add_member(:pending_auth_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AUTH_CONFIG', traits: {"smithy.api#enumValue" => "PENDING_AUTH_CONFIG"}))
    WebExperiences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WebExperience)

    ExpertQ = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qbusiness#ExpertQ"
      service.name = "ExpertQ"
      service.version = "2023-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "QBusiness", "cloudFormationName" => "QBusiness", "arnNamespace" => "qbusiness", "cloudTrailEventSource" => "qbusiness.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "qbusiness"}, "aws.protocols#restJson1" => {"http" => ["h2", "http/1.1"], "eventStreamHttp" => ["h2"]}, "smithy.api#title" => "QBusiness"}
      service.add_operation(:associate_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#AssociatePermission"
        operation.name = "AssociatePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatePermissionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/policy", "method" => "POST"}}
      end)
      service.add_operation(:batch_delete_document, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#BatchDeleteDocument"
        operation.name = "BatchDeleteDocument"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDocumentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteDocumentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/indices/{indexId}/documents/delete"}}
      end)
      service.add_operation(:batch_put_document, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#BatchPutDocument"
        operation.name = "BatchPutDocument"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutDocumentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchPutDocumentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/indices/{indexId}/documents"}}
      end)
      service.add_operation(:cancel_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CancelSubscription"
        operation.name = "CancelSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/subscriptions/{subscriptionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:chat, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#Chat"
        operation.name = "Chat"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations", "method" => "POST"}}
      end)
      service.add_operation(:chat_sync, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ChatSync"
        operation.name = "ChatSync"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatSyncInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ChatSyncOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalResourceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations?sync", "method" => "POST"}}
      end)
      service.add_operation(:check_document_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CheckDocumentAccess"
        operation.name = "CheckDocumentAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDocumentAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckDocumentAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_anonymous_web_experience_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateAnonymousWebExperienceUrl"
        operation.name = "CreateAnonymousWebExperienceUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnonymousWebExperienceUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnonymousWebExperienceUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}/anonymous-url", "method" => "POST"}}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetApplication", "qbusiness:UpdateApplication", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "kms:DescribeKey", "kms:CreateGrant", "sso:CreateApplication", "sso:PutApplicationAuthenticationMethod", "sso:PutApplicationAccessScope", "sso:PutApplicationGrant", "sso:DeleteApplication", "sso:DescribeInstance", "iam:GetSAMLProvider", "quicksight:DescribeAccountSubscription", "quicksight:ListNamespaces"], "smithy.api#http" => {"uri" => "/applications", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_chat_response_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateChatResponseConfiguration"
        operation.name = "CreateChatResponseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChatResponseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateChatResponseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"requiredActions" => ["qbusiness:GetChatResponseConfiguration", "qbusiness:TagResource", "qbusiness:ListTagsForResource"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/chatresponseconfigurations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateDataAccessor"
        operation.name = "CreateDataAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataAccessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataAccessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetDataAccessor", "qbusiness:TagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateDataSource"
        operation.name = "CreateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetDataSource", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateIndex"
        operation.name = "CreateIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetIndex", "qbusiness:TagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices", "method" => "POST"}}
      end)
      service.add_operation(:create_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreatePlugin"
        operation.name = "CreatePlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePluginResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetPlugin", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/plugins"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_retriever, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateRetriever"
        operation.name = "CreateRetriever"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRetrieverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRetrieverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:TagResource", "qbusiness:ListTagsForResource", "qbusiness:GetRetriever", "iam:PassRole"], "smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/retrievers"}}
      end)
      service.add_operation(:create_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateSubscription"
        operation.name = "CreateSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/subscriptions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/users"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_web_experience, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#CreateWebExperience"
        operation.name = "CreateWebExperience"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebExperienceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebExperienceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#requiredActions" => ["qbusiness:GetWebExperience", "qbusiness:TagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "sso:PutApplicationGrant", "sso:UpdateApplication"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences", "method" => "POST"}}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetApplication", "kms:RetireGrant", "sso:DeleteApplication"], "smithy.api#http" => {"uri" => "/applications/{applicationId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteAttachment"
        operation.name = "DeleteAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_chat_controls_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteChatControlsConfiguration"
        operation.name = "DeleteChatControlsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChatControlsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChatControlsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/chatcontrols", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_chat_response_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteChatResponseConfiguration"
        operation.name = "DeleteChatResponseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChatResponseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteChatResponseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["qbusiness:GetChatResponseConfiguration"]}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_conversation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteConversation"
        operation.name = "DeleteConversation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConversationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConversationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteDataAccessor"
        operation.name = "DeleteDataAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataAccessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataAccessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataAccessor"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors/{dataAccessorId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteDataSource"
        operation.name = "DeleteDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataSource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/indices/{indexId}/groups/{groupName}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteIndex"
        operation.name = "DeleteIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetIndex"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeletePlugin"
        operation.name = "DeletePlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePluginResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetPlugin"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/plugins/{pluginId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_retriever, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteRetriever"
        operation.name = "DeleteRetriever"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRetrieverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRetrieverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetRetriever"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/retrievers/{retrieverId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/users/{userId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_web_experience, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DeleteWebExperience"
        operation.name = "DeleteWebExperience"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebExperienceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebExperienceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetWebExperience"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#DisassociatePermission"
        operation.name = "DisassociatePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociatePermissionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/policy/{statementId}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetApplication"
        operation.name = "GetApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_chat_controls_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetChatControlsConfiguration"
        operation.name = "GetChatControlsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChatControlsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChatControlsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/chatcontrols", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetChatControlsConfiguration.new
      end)
      service.add_operation(:get_chat_response_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetChatResponseConfiguration"
        operation.name = "GetChatResponseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChatResponseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetChatResponseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["qbusiness:ListTagsForResource"]}, "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetDataAccessor"
        operation.name = "GetDataAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataAccessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataAccessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors/{dataAccessorId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetDataSource"
        operation.name = "GetDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_document_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetDocumentContent"
        operation.name = "GetDocumentContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentContentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/index/{indexId}/documents/{documentId}/content", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetGroup"
        operation.name = "GetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/indices/{indexId}/groups/{groupName}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetIndex"
        operation.name = "GetIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_media, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetMedia"
        operation.name = "GetMedia"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMediaResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MediaTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetPlugin"
        operation.name = "GetPlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPluginResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/plugins/{pluginId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/policy", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_retriever, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetRetriever"
        operation.name = "GetRetriever"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetrieverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRetrieverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/retrievers/{retrieverId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetUser"
        operation.name = "GetUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/users/{userId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_web_experience, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#GetWebExperience"
        operation.name = "GetWebExperience"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebExperienceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebExperienceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListApplications"
        operation.name = "ListApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_attachments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListAttachments"
        operation.name = "ListAttachments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttachmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/attachments", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttachments.new
      end)
      service.add_operation(:list_chat_response_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListChatResponseConfigurations"
        operation.name = "ListChatResponseConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChatResponseConfigurationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListChatResponseConfigurationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/chatresponseconfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListChatResponseConfigurations.new
      end)
      service.add_operation(:list_conversations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListConversations"
        operation.name = "ListConversations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConversationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConversationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConversations.new
      end)
      service.add_operation(:list_data_accessors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDataAccessors"
        operation.name = "ListDataAccessors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataAccessorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataAccessorsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataAccessors.new
      end)
      service.add_operation(:list_data_source_sync_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDataSourceSyncJobs"
        operation.name = "ListDataSourceSyncJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourceSyncJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourceSyncJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSourceSyncJobs.new
      end)
      service.add_operation(:list_data_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDataSources"
        operation.name = "ListDataSources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSources.new
      end)
      service.add_operation(:list_documents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListDocuments"
        operation.name = "ListDocuments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDocumentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/index/{indexId}/documents", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDocuments.new
      end)
      service.add_operation(:list_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListGroups"
        operation.name = "ListGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/indices/{indexId}/groups"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_indices, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListIndices"
        operation.name = "ListIndices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIndicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIndices.new
      end)
      service.add_operation(:list_messages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListMessages"
        operation.name = "ListMessages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMessagesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMessages.new
      end)
      service.add_operation(:list_plugin_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPluginActions"
        operation.name = "ListPluginActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/plugins/{pluginId}/actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPluginActions.new
      end)
      service.add_operation(:list_plugin_type_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPluginTypeActions"
        operation.name = "ListPluginTypeActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginTypeActionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginTypeActionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pluginTypes/{pluginType}/actions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPluginTypeActions.new
      end)
      service.add_operation(:list_plugin_type_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPluginTypeMetadata"
        operation.name = "ListPluginTypeMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginTypeMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginTypeMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/pluginTypeMetadata"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPluginTypeMetadata.new
      end)
      service.add_operation(:list_plugins, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListPlugins"
        operation.name = "ListPlugins"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPluginsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/plugins"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPlugins.new
      end)
      service.add_operation(:list_retrievers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListRetrievers"
        operation.name = "ListRetrievers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrieversRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRetrieversResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/retrievers", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRetrievers.new
      end)
      service.add_operation(:list_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListSubscriptions"
        operation.name = "ListSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscriptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscriptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/subscriptions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubscriptions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/v1/tags/{resourceARN}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_web_experiences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#ListWebExperiences"
        operation.name = "ListWebExperiences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebExperiencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebExperiencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWebExperiences.new
      end)
      service.add_operation(:put_feedback, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#PutFeedback"
        operation.name = "PutFeedback"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFeedbackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback", "method" => "POST"}}
      end)
      service.add_operation(:put_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#PutGroup"
        operation.name = "PutGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/indices/{indexId}/groups"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_relevant_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#SearchRelevantContent"
        operation.name = "SearchRelevantContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRelevantContentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchRelevantContentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/relevant-content", "method" => "POST"}}
        operation[:paginator] = Paginators::SearchRelevantContent.new
      end)
      service.add_operation(:start_data_source_sync_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#StartDataSourceSyncJob"
        operation.name = "StartDataSourceSyncJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataSourceSyncJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDataSourceSyncJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync", "method" => "POST"}}
      end)
      service.add_operation(:stop_data_source_sync_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#StopDataSourceSyncJob"
        operation.name = "StopDataSourceSyncJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDataSourceSyncJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDataSourceSyncJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/stopsync", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"uri" => "/v1/tags/{resourceARN}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"uri" => "/v1/tags/{resourceARN}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetApplication", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "sso:CreateApplication", "sso:PutApplicationAuthenticationMethod", "sso:PutApplicationAccessScope", "sso:PutApplicationGrant", "sso:DeleteApplication", "sso:DescribeInstance"], "smithy.api#http" => {"uri" => "/applications/{applicationId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_chat_controls_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateChatControlsConfiguration"
        operation.name = "UpdateChatControlsConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChatControlsConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChatControlsConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationId}/chatcontrols", "method" => "PATCH", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_chat_response_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateChatResponseConfiguration"
        operation.name = "UpdateChatResponseConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChatResponseConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateChatResponseConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["qbusiness:GetChatResponseConfiguration", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource"]}, "smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_accessor, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateDataAccessor"
        operation.name = "UpdateDataAccessor"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataAccessorRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataAccessorResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataAccessor", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/dataaccessors/{dataAccessorId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateDataSource"
        operation.name = "UpdateDataSource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetDataSource", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_index, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateIndex"
        operation.name = "UpdateIndex"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateIndexResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetIndex", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/indices/{indexId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_plugin, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdatePlugin"
        operation.name = "UpdatePlugin"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePluginRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePluginResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetPlugin", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole"], "smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/plugins/{pluginId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_retriever, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateRetriever"
        operation.name = "UpdateRetriever"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRetrieverRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRetrieverResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "qbusiness:GetRetriever", "iam:PassRole"], "smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/retrievers/{retrieverId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateSubscription"
        operation.name = "UpdateSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/subscriptions/{subscriptionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/applications/{applicationId}/users/{userId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_web_experience, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qbusiness#UpdateWebExperience"
        operation.name = "UpdateWebExperience"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebExperienceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebExperienceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#requiredActions" => ["qbusiness:GetWebExperience", "qbusiness:TagResource", "qbusiness:UntagResource", "qbusiness:ListTagsForResource", "iam:PassRole", "sso:PutApplicationGrant", "sso:UpdateApplication"], "smithy.api#http" => {"uri" => "/applications/{applicationId}/experiences/{webExperienceId}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
